; ModuleID = '/llk/IR/drivers/clk/mvebu/dove-divider.c_pt.bc'
source_filename = "../drivers/clk/mvebu/dove-divider.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_onecell_data = type { ptr, i32 }
%struct.dove_clk = type { ptr, %struct.clk_hw, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@.str = private unnamed_addr constant [33 x i8] c"drivers/clk/mvebu/dove-divider.c\00", align 1
@dove_divider_clocks = internal global [4 x ptr] zeroinitializer, align 4
@dove_divider_data = internal global %struct.clk_onecell_data { ptr @dove_divider_clocks, i32 4 }, align 4
@core_pll = internal global [1 x ptr] [ptr @.str.1], align 4
@dove_hw_clocks = internal global [4 x %struct.dove_clk] [%struct.dove_clk { ptr @.str.2, %struct.clk_hw zeroinitializer, ptr null, ptr @dove_divider_lock, i8 1, i8 6, i8 7, i8 0, ptr @axi_divider }, %struct.dove_clk { ptr @.str.3, %struct.clk_hw zeroinitializer, ptr null, ptr @dove_divider_lock, i8 8, i8 13, i8 14, i8 0, ptr null }, %struct.dove_clk { ptr @.str.4, %struct.clk_hw zeroinitializer, ptr null, ptr @dove_divider_lock, i8 15, i8 20, i8 21, i8 0, ptr null }, %struct.dove_clk { ptr @.str.5, %struct.clk_hw zeroinitializer, ptr null, ptr @dove_divider_lock, i8 22, i8 27, i8 28, i8 0, ptr null }], align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"core-pll\00", align 1
@dove_divider_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dove_recalc_rate, ptr @dove_round_rate, ptr null, ptr null, ptr null, ptr @dove_set_clock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@dove_divider_lock = internal global %struct.spinlock zeroinitializer, align 4
@axi_divider = internal global [12 x i32] [i32 -1, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7, i32 8, i32 10, i32 9, i32 0], align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"vmeta\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"lcd\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @dove_divider_clk_init(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = alloca [32 x i8], align 1
  %3 = alloca %struct.clk_init_data, align 4
  %4 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 253, i32 noundef 9, ptr noundef null) #7
  br label %48

7:                                                ; preds = %1
  %8 = load ptr, ptr @core_pll, align 4
  %9 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef %8, ptr noundef null, i32 noundef 0, i32 noundef 2000000000) #7
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %47, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, ptr %3, i32 20
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 3
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false) #7, !annotation !9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #7
  store i32 1, ptr %12, align 4, !annotation !9
  store ptr %2, ptr %3, align 4
  store ptr @dove_divider_ops, ptr %13, align 4
  store ptr @core_pll, ptr %14, align 4
  store ptr null, ptr %15, align 4
  store ptr null, ptr %16, align 4
  store i32 0, ptr %17, align 4
  %18 = load ptr, ptr @dove_hw_clocks, align 4
  %19 = call i32 @strlcpy(ptr noundef nonnull %2, ptr noundef %18, i32 noundef 32) #7
  store ptr %3, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 0, i32 1, i32 2), align 4
  store ptr %4, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 0, i32 2), align 4
  %20 = load i8, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 0, i32 5), align 1
  %21 = load i8, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 0, i32 4), align 4
  %22 = add i8 %20, 1
  %23 = sub i8 %22, %21
  store i8 %23, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 0, i32 7), align 1
  %24 = call ptr @clk_register(ptr noundef null, ptr noundef getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 0, i32 1)) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  store ptr %24, ptr @dove_divider_clocks, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false) #7, !annotation !9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #7
  store i32 1, ptr %12, align 4, !annotation !9
  store ptr %2, ptr %3, align 4
  store ptr @dove_divider_ops, ptr %13, align 4
  store ptr @core_pll, ptr %14, align 4
  store ptr null, ptr %15, align 4
  store ptr null, ptr %16, align 4
  store i32 0, ptr %17, align 4
  %25 = load ptr, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 1), align 4
  %26 = call i32 @strlcpy(ptr noundef nonnull %2, ptr noundef %25, i32 noundef 32) #7
  store ptr %3, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 1, i32 1, i32 2), align 4
  store ptr %4, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 1, i32 2), align 4
  %27 = load i8, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 1, i32 5), align 1
  %28 = load i8, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 1, i32 4), align 4
  %29 = add i8 %27, 1
  %30 = sub i8 %29, %28
  store i8 %30, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 1, i32 7), align 1
  %31 = call ptr @clk_register(ptr noundef null, ptr noundef getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 1, i32 1)) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  store ptr %31, ptr getelementptr inbounds ([4 x ptr], ptr @dove_divider_clocks, i32 0, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false) #7, !annotation !9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #7
  store i32 1, ptr %12, align 4, !annotation !9
  store ptr %2, ptr %3, align 4
  store ptr @dove_divider_ops, ptr %13, align 4
  store ptr @core_pll, ptr %14, align 4
  store ptr null, ptr %15, align 4
  store ptr null, ptr %16, align 4
  store i32 0, ptr %17, align 4
  %32 = load ptr, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 2), align 4
  %33 = call i32 @strlcpy(ptr noundef nonnull %2, ptr noundef %32, i32 noundef 32) #7
  store ptr %3, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 2, i32 1, i32 2), align 4
  store ptr %4, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 2, i32 2), align 4
  %34 = load i8, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 2, i32 5), align 1
  %35 = load i8, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 2, i32 4), align 4
  %36 = add i8 %34, 1
  %37 = sub i8 %36, %35
  store i8 %37, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 2, i32 7), align 1
  %38 = call ptr @clk_register(ptr noundef null, ptr noundef getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 2, i32 1)) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  store ptr %38, ptr getelementptr inbounds ([4 x ptr], ptr @dove_divider_clocks, i32 0, i32 2), align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false) #7, !annotation !9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #7
  store i32 1, ptr %12, align 4, !annotation !9
  store ptr %2, ptr %3, align 4
  store ptr @dove_divider_ops, ptr %13, align 4
  store ptr @core_pll, ptr %14, align 4
  store ptr null, ptr %15, align 4
  store ptr null, ptr %16, align 4
  store i32 0, ptr %17, align 4
  %39 = load ptr, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 3), align 4
  %40 = call i32 @strlcpy(ptr noundef nonnull %2, ptr noundef %39, i32 noundef 32) #7
  store ptr %3, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 3, i32 1, i32 2), align 4
  store ptr %4, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 3, i32 2), align 4
  %41 = load i8, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 3, i32 5), align 1
  %42 = load i8, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 3, i32 4), align 4
  %43 = add i8 %41, 1
  %44 = sub i8 %43, %42
  store i8 %44, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 3, i32 7), align 1
  %45 = call ptr @clk_register(ptr noundef null, ptr noundef getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 3, i32 1)) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  store ptr %45, ptr getelementptr inbounds ([4 x ptr], ptr @dove_divider_clocks, i32 0, i32 3), align 4
  %46 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @dove_divider_data) #7
  br label %48

47:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 256, i32 noundef 9, ptr noundef null) #7
  tail call void @iounmap(ptr noundef nonnull %4) #7
  br label %48

48:                                               ; preds = %47, %11, %6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dove_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr i8, ptr %0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !10
  %6 = getelementptr i8, ptr %0, i32 20
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = lshr i32 %5, %8
  %10 = getelementptr i8, ptr %0, i32 23
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nsw i32 -1, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %9, %14
  %16 = getelementptr i8, ptr %0, i32 24
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = getelementptr i32, ptr %17, i32 %15
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %2
  %23 = phi i32 [ %21, %19 ], [ %15, %2 ]
  %24 = lshr i32 %23, 1
  %25 = add i32 %24, %1
  %26 = udiv i32 %25, %23
  ret i32 %26
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @dove_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #6 {
  %4 = load i32, ptr %2, align 4
  %5 = lshr i32 %1, 1
  %6 = add i32 %4, %5
  %7 = udiv i32 %6, %1
  %8 = getelementptr i8, ptr %0, i32 24
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %3
  %12 = load i32, ptr %9, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %18, %11
  %15 = phi i32 [ %21, %18 ], [ %12, %11 ]
  %16 = phi i32 [ %19, %18 ], [ 0, %11 ]
  %17 = icmp eq i32 %7, %15
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  %19 = add i32 %16, 1
  %20 = getelementptr i32, ptr %9, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %41, label %14

23:                                               ; preds = %3
  %24 = getelementptr i8, ptr %0, i32 23
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 1, %26
  %28 = icmp ult i32 %7, %27
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = add i32 %27, -1
  br label %33

31:                                               ; preds = %23
  %32 = icmp ult i32 %6, %1
  br i1 %32, label %36, label %33

33:                                               ; preds = %31, %29, %14
  %34 = phi i32 [ %30, %29 ], [ %7, %31 ], [ %16, %14 ]
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33, %31
  %37 = phi i32 [ %34, %33 ], [ 1, %31 ]
  %38 = lshr i32 %37, 1
  %39 = add i32 %38, %4
  %40 = udiv i32 %39, %37
  br label %41

41:                                               ; preds = %36, %33, %18, %11
  %42 = phi i32 [ %40, %36 ], [ %34, %33 ], [ -22, %11 ], [ -22, %18 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dove_set_clock(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = lshr i32 %1, 1
  %5 = add i32 %4, %2
  %6 = udiv i32 %5, %1
  %7 = getelementptr i8, ptr %0, i32 24
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr %8, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %65, label %13

13:                                               ; preds = %17, %10
  %14 = phi i32 [ %20, %17 ], [ %11, %10 ]
  %15 = phi i32 [ %18, %17 ], [ 0, %10 ]
  %16 = icmp eq i32 %6, %14
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = add i32 %15, 1
  %19 = getelementptr i32, ptr %8, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %65, label %13

22:                                               ; preds = %3
  %23 = getelementptr i8, ptr %0, i32 23
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp uge i32 %5, %1
  %27 = lshr i32 %6, %25
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %65

30:                                               ; preds = %22, %13
  %31 = phi i32 [ %6, %22 ], [ %15, %13 ]
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %65, label %33

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %0, i32 20
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i32
  %37 = shl i32 %31, %36
  %38 = getelementptr i8, ptr %0, i32 23
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl nsw i32 -1, %40
  %42 = xor i32 %41, -1
  %43 = shl i32 %42, %36
  %44 = getelementptr i8, ptr %0, i32 22
  %45 = load i8, ptr %44, align 2
  %46 = zext i8 %45 to i32
  %47 = shl nuw i32 1, %46
  %48 = getelementptr i8, ptr %0, i32 16
  %49 = load ptr, ptr %48, align 4
  tail call void @_raw_spin_lock(ptr noundef %49) #7
  %50 = getelementptr i8, ptr %0, i32 12
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #7, !srcloc !10
  %54 = or i32 %53, 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %54) #7, !srcloc !11
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #7, !srcloc !10
  %56 = or i32 %47, %43
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = or i32 %58, %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %59) #7, !srcloc !11
  %60 = or i32 %59, %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %60) #7, !srcloc !11
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %59) #7, !srcloc !11
  %62 = load ptr, ptr %48, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  %63 = load i16, ptr %62, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %62, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  br label %65

65:                                               ; preds = %33, %30, %22, %17, %10
  %66 = phi i32 [ 0, %33 ], [ %31, %30 ], [ -22, %22 ], [ -22, %10 ], [ -22, %17 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 3368424}
!11 = !{i64 3368006}
!12 = !{i64 2149091011}
!13 = !{i64 2149086835}
!14 = !{i64 2149086910, i64 2149086937, i64 2149086984, i64 2149087006, i64 2149087034, i64 2149087054}
!15 = !{i64 2149114014}
