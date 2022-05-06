; ModuleID = '/llk/IR/drivers/clk/ux500/clk-sysctrl.c_pt.bc'
source_filename = "../drivers/clk/ux500/clk-sysctrl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_sysctrl = type { %struct.clk_hw, ptr, i8, [4 x i16], [4 x i8], [4 x i8], i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_sysctrl_gate_ops = internal constant %struct.clk_ops { ptr @clk_sysctrl_prepare, ptr @clk_sysctrl_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_sysctrl_gate_fixed_rate_ops = internal constant %struct.clk_ops { ptr @clk_sysctrl_prepare, ptr @clk_sysctrl_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_sysctrl_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_sysctrl_set_parent_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_sysctrl_set_parent, ptr @clk_sysctrl_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [39 x i8] c"clk_sysctrl: invalid arguments passed\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"clk_sysctrl: clk_register failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"clk_sysctrl: %s fail to clear %s.\0A\00", align 1
@__func__.clk_sysctrl_unprepare = private unnamed_addr constant [22 x i8] c"clk_sysctrl_unprepare\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_reg_sysctrl_gate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 4
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store ptr %2, ptr %9, align 4
  store i16 %3, ptr %10, align 2
  store i8 %4, ptr %11, align 1
  store i8 %5, ptr %12, align 1
  %13 = icmp eq ptr %2, null
  %14 = select i1 %13, ptr null, ptr %9
  %15 = xor i1 %13, true
  %16 = zext i1 %15 to i8
  %17 = call fastcc ptr @clk_reg_sysctrl(ptr noundef %0, ptr noundef %1, ptr noundef %14, i8 noundef zeroext %16, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef 0, i32 noundef %6, i32 noundef %7, ptr noundef nonnull @clk_sysctrl_gate_ops)
  ret ptr %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @clk_reg_sysctrl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10) unnamed_addr #0 {
  %12 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %12) #6
  %13 = getelementptr inbounds i8, ptr %12, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %13, i8 0, i32 12, i1 false), !annotation !8
  %14 = icmp eq ptr %0, null
  br i1 %14, label %76, label %15

15:                                               ; preds = %11
  %16 = icmp eq ptr %1, null
  %17 = icmp ugt i8 %3, 4
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str) #7
  br label %76

20:                                               ; preds = %15
  %21 = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %0, i32 noundef 44, i32 noundef 3520) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %76, label %23

23:                                               ; preds = %20
  %24 = load i16, ptr %4, align 2
  %25 = getelementptr inbounds %struct.clk_sysctrl, ptr %21, i32 0, i32 3
  store i16 %24, ptr %25, align 2
  %26 = load i8, ptr %6, align 1
  %27 = getelementptr inbounds %struct.clk_sysctrl, ptr %21, i32 0, i32 5
  store i8 %26, ptr %27, align 2
  %28 = load i8, ptr %5, align 1
  %29 = getelementptr inbounds %struct.clk_sysctrl, ptr %21, i32 0, i32 4
  store i8 %28, ptr %29, align 2
  %30 = icmp ugt i8 %3, 1
  br i1 %30, label %31, label %63

31:                                               ; preds = %23
  %32 = getelementptr i16, ptr %4, i32 1
  %33 = load i16, ptr %32, align 2
  %34 = getelementptr %struct.clk_sysctrl, ptr %21, i32 0, i32 3, i32 1
  store i16 %33, ptr %34, align 2
  %35 = getelementptr i8, ptr %6, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr %struct.clk_sysctrl, ptr %21, i32 0, i32 5, i32 1
  store i8 %36, ptr %37, align 1
  %38 = getelementptr i8, ptr %5, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = getelementptr %struct.clk_sysctrl, ptr %21, i32 0, i32 4, i32 1
  store i8 %39, ptr %40, align 1
  %41 = icmp eq i8 %3, 2
  br i1 %41, label %63, label %42

42:                                               ; preds = %31
  %43 = getelementptr i16, ptr %4, i32 2
  %44 = load i16, ptr %43, align 2
  %45 = getelementptr %struct.clk_sysctrl, ptr %21, i32 0, i32 3, i32 2
  store i16 %44, ptr %45, align 2
  %46 = getelementptr i8, ptr %6, i32 2
  %47 = load i8, ptr %46, align 1
  %48 = getelementptr %struct.clk_sysctrl, ptr %21, i32 0, i32 5, i32 2
  store i8 %47, ptr %48, align 1
  %49 = getelementptr i8, ptr %5, i32 2
  %50 = load i8, ptr %49, align 1
  %51 = getelementptr %struct.clk_sysctrl, ptr %21, i32 0, i32 4, i32 2
  store i8 %50, ptr %51, align 1
  %52 = icmp eq i8 %3, 3
  br i1 %52, label %63, label %53

53:                                               ; preds = %42
  %54 = getelementptr i16, ptr %4, i32 3
  %55 = load i16, ptr %54, align 2
  %56 = getelementptr %struct.clk_sysctrl, ptr %21, i32 0, i32 3, i32 3
  store i16 %55, ptr %56, align 2
  %57 = getelementptr i8, ptr %6, i32 3
  %58 = load i8, ptr %57, align 1
  %59 = getelementptr %struct.clk_sysctrl, ptr %21, i32 0, i32 5, i32 3
  store i8 %58, ptr %59, align 1
  %60 = getelementptr i8, ptr %5, i32 3
  %61 = load i8, ptr %60, align 1
  %62 = getelementptr %struct.clk_sysctrl, ptr %21, i32 0, i32 4, i32 3
  store i8 %61, ptr %62, align 1
  br label %63

63:                                               ; preds = %53, %42, %31, %23
  %64 = getelementptr inbounds %struct.clk_sysctrl, ptr %21, i32 0, i32 2
  store i8 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.clk_sysctrl, ptr %21, i32 0, i32 6
  store i32 %7, ptr %65, align 4
  %66 = getelementptr inbounds %struct.clk_sysctrl, ptr %21, i32 0, i32 7
  store i32 %8, ptr %66, align 4
  %67 = getelementptr inbounds %struct.clk_sysctrl, ptr %21, i32 0, i32 1
  store ptr %0, ptr %67, align 4
  store ptr %1, ptr %12, align 4
  %68 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 1
  store ptr %10, ptr %68, align 4
  %69 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 6
  store i32 %9, ptr %69, align 4
  %70 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 2
  store ptr %2, ptr %70, align 4
  %71 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 5
  store i8 %3, ptr %71, align 4
  %72 = getelementptr inbounds %struct.clk_hw, ptr %21, i32 0, i32 2
  store ptr %12, ptr %72, align 4
  %73 = call ptr @devm_clk_register(ptr noundef nonnull %0, ptr noundef nonnull %21) #6
  %74 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #7
  br label %76

76:                                               ; preds = %75, %63, %20, %19, %11
  %77 = phi ptr [ inttoptr (i32 -22 to ptr), %19 ], [ %73, %75 ], [ %73, %63 ], [ inttoptr (i32 -22 to ptr), %11 ], [ inttoptr (i32 -12 to ptr), %20 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %12) #6
  ret ptr %77
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_reg_sysctrl_gate_fixed_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca ptr, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store ptr %2, ptr %10, align 4
  store i16 %3, ptr %11, align 2
  store i8 %4, ptr %12, align 1
  store i8 %5, ptr %13, align 1
  %14 = icmp eq ptr %2, null
  %15 = select i1 %14, ptr null, ptr %10
  %16 = xor i1 %14, true
  %17 = zext i1 %16 to i8
  %18 = call fastcc ptr @clk_reg_sysctrl(ptr noundef %0, ptr noundef %1, ptr noundef %15, i8 noundef zeroext %17, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef nonnull @clk_sysctrl_gate_fixed_rate_ops)
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_reg_sysctrl_set_parent(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = tail call fastcc ptr @clk_reg_sysctrl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef 0, i32 noundef 0, i32 noundef %7, ptr noundef nonnull @clk_sysctrl_set_parent_ops)
  ret ptr %9
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sysctrl_prepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_sysctrl, ptr %0, i32 0, i32 3
  %3 = load i16, ptr %2, align 2
  %4 = getelementptr inbounds %struct.clk_sysctrl, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 2
  %6 = getelementptr inbounds %struct.clk_sysctrl, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 2
  %8 = tail call i32 @ab8500_sysctrl_write(i16 noundef zeroext %3, i8 noundef zeroext %5, i8 noundef zeroext %7) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.clk_sysctrl, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = lshr i32 %12, 2
  %16 = add i32 %15, %12
  tail call void @usleep_range_state(i32 noundef %12, i32 noundef %16, i32 noundef 2) #6
  br label %17

17:                                               ; preds = %14, %10, %1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_sysctrl_unprepare(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clk_sysctrl, ptr %0, i32 0, i32 3
  %3 = load i16, ptr %2, align 2
  %4 = getelementptr inbounds %struct.clk_sysctrl, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 2
  %6 = tail call i32 @ab8500_sysctrl_write(i16 noundef zeroext %3, i8 noundef zeroext %5, i8 noundef zeroext 0) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.clk_sysctrl, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @clk_hw_get_name(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.clk_sysctrl_unprepare, ptr noundef %11) #7
  br label %12

12:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ab8500_sysctrl_write(i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_sysctrl_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.clk_sysctrl, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sysctrl_set_parent(ptr nocapture noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.clk_sysctrl, ptr %0, i32 0, i32 2
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = getelementptr %struct.clk_sysctrl, ptr %0, i32 0, i32 3, i32 %5
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr %struct.clk_sysctrl, ptr %0, i32 0, i32 4, i32 %5
  %11 = load i8, ptr %10, align 1
  %12 = tail call i32 @ab8500_sysctrl_write(i16 noundef zeroext %7, i8 noundef zeroext %11, i8 noundef zeroext 0) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %9, %2
  %15 = zext i8 %1 to i32
  %16 = getelementptr %struct.clk_sysctrl, ptr %0, i32 0, i32 3, i32 %15
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %14
  %20 = getelementptr %struct.clk_sysctrl, ptr %0, i32 0, i32 4, i32 %15
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr %struct.clk_sysctrl, ptr %0, i32 0, i32 5, i32 %15
  %23 = load i8, ptr %22, align 1
  %24 = tail call i32 @ab8500_sysctrl_write(i16 noundef zeroext %17, i8 noundef zeroext %21, i8 noundef zeroext %23) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %19
  %27 = load i16, ptr %6, align 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = getelementptr %struct.clk_sysctrl, ptr %0, i32 0, i32 4, i32 %5
  %31 = load i8, ptr %30, align 1
  %32 = getelementptr %struct.clk_sysctrl, ptr %0, i32 0, i32 5, i32 %5
  %33 = load i8, ptr %32, align 1
  %34 = tail call i32 @ab8500_sysctrl_write(i16 noundef zeroext %27, i8 noundef zeroext %31, i8 noundef zeroext %33) #6
  br label %36

35:                                               ; preds = %19, %14
  store i8 %1, ptr %3, align 4
  br label %36

36:                                               ; preds = %35, %29, %26, %9
  %37 = phi i32 [ 0, %35 ], [ %12, %9 ], [ %24, %29 ], [ %24, %26 ]
  ret i32 %37
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i8 @clk_sysctrl_get_parent(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_sysctrl, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4
  ret i8 %3
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
