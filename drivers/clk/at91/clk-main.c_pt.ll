; ModuleID = '/llk/IR/drivers/clk/at91/clk-main.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-main.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_main_osc = type { %struct.clk_hw, ptr, %struct.at91_clk_pms }
%struct.at91_clk_pms = type { i32, i32, i32, i32 }
%struct.clk_main_rc_osc = type { %struct.clk_hw, ptr, i32, i32, %struct.at91_clk_pms }
%struct.clk_rm9200_main = type { %struct.clk_hw, ptr }
%struct.clk_sam9x5_main = type { %struct.clk_hw, ptr, %struct.at91_clk_pms, i8 }

@main_osc_ops = internal constant %struct.clk_ops { ptr @clk_main_osc_prepare, ptr @clk_main_osc_unprepare, ptr @clk_main_osc_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_main_osc_save_context, ptr @clk_main_osc_restore_context, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@main_rc_osc_ops = internal constant %struct.clk_ops { ptr @clk_main_rc_osc_prepare, ptr @clk_main_rc_osc_unprepare, ptr @clk_main_rc_osc_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_main_rc_osc_save_context, ptr @clk_main_rc_osc_restore_context, ptr @clk_main_rc_osc_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_main_rc_osc_recalc_accuracy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rm9200_main_ops = internal constant %struct.clk_ops { ptr @clk_rm9200_main_prepare, ptr null, ptr @clk_rm9200_main_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_rm9200_main_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sam9x5_main_ops = internal constant %struct.clk_ops { ptr @clk_sam9x5_main_prepare, ptr null, ptr @clk_sam9x5_main_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_sam9x5_main_save_context, ptr @clk_sam9x5_main_restore_context, ptr @clk_sam9x5_main_recalc_rate, ptr null, ptr null, ptr @clk_sam9x5_main_set_parent, ptr @clk_sam9x5_main_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@system_state = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [59 x i8] c"\014Main crystal frequency not set, using approximate value\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_main_osc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 section ".init.text" {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #8
  %7 = getelementptr inbounds i8, ptr %6, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 12, i1 false), !annotation !8
  %8 = icmp ne ptr %1, null
  %9 = icmp ne ptr %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %4
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 32) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %11
  store ptr %1, ptr %6, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 1
  store ptr @main_osc_ops, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  store ptr %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 5
  store i8 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 6
  store i32 8, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_hw, ptr %13, i32 0, i32 2
  store ptr %6, ptr %20, align 8
  %21 = getelementptr inbounds %struct.clk_main_osc, ptr %13, i32 0, i32 1
  store ptr %0, ptr %21, align 4
  br i1 %3, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 @regmap_update_bits_base(ptr noundef %0, i32 noundef 32, i32 noundef 16711682, i32 noundef 3604482, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %24

24:                                               ; preds = %22, %15
  %25 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %13) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  call void @kfree(ptr noundef nonnull %13) #8
  %28 = inttoptr i32 %25 to ptr
  br label %29

29:                                               ; preds = %27, %24, %11, %4
  %30 = phi ptr [ %28, %27 ], [ %13, %24 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %11 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #8
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
define dso_local ptr @at91_clk_register_main_rc_osc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 section ".init.text" {
  %5 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #8
  %6 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 12, i1 false), !annotation !8
  %7 = icmp ne ptr %1, null
  %8 = icmp ne i32 %2, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %4
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 40) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  store ptr %1, ptr %5, align 4
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @main_rc_osc_ops, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 8, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_hw, ptr %12, i32 0, i32 2
  store ptr %5, ptr %19, align 8
  %20 = getelementptr inbounds %struct.clk_main_rc_osc, ptr %12, i32 0, i32 1
  store ptr %0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_main_rc_osc, ptr %12, i32 0, i32 2
  store i32 %2, ptr %21, align 8
  %22 = getelementptr inbounds %struct.clk_main_rc_osc, ptr %12, i32 0, i32 3
  store i32 %3, ptr %22, align 4
  %23 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %12) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  call void @kfree(ptr noundef nonnull %12) #8
  %26 = inttoptr i32 %23 to ptr
  br label %27

27:                                               ; preds = %25, %14, %10, %4
  %28 = phi ptr [ %26, %25 ], [ %12, %14 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %10 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #8
  ret ptr %28
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_rm9200_main(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #8
  %6 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 12, i1 false), !annotation !8
  %7 = icmp eq ptr %1, null
  %8 = icmp eq ptr %2, null
  %9 = or i1 %7, %8
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 16) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  store ptr %1, ptr %5, align 4
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @rm9200_main_ops, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %4, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_hw, ptr %12, i32 0, i32 2
  store ptr %5, ptr %19, align 8
  %20 = getelementptr inbounds %struct.clk_rm9200_main, ptr %12, i32 0, i32 1
  store ptr %0, ptr %20, align 4
  %21 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %12) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  call void @kfree(ptr noundef nonnull %12) #8
  %24 = inttoptr i32 %21 to ptr
  br label %25

25:                                               ; preds = %23, %14, %10, %3
  %26 = phi ptr [ %24, %23 ], [ %12, %14 ], [ inttoptr (i32 -22 to ptr), %3 ], [ inttoptr (i32 -12 to ptr), %10 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #8
  ret ptr %26
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_sam9x5_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 section ".init.text" {
  %5 = alloca %struct.clk_init_data, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #8
  %7 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %8 = icmp eq ptr %1, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %4
  %10 = icmp ne ptr %2, null
  %11 = icmp ne i32 %3, 0
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %9
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 36) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %13
  store ptr %1, ptr %5, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @sam9x5_main_ops, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %2, ptr %19, align 4
  %20 = trunc i32 %3 to i8
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clk_hw, ptr %15, i32 0, i32 2
  store ptr %5, ptr %23, align 8
  %24 = getelementptr inbounds %struct.clk_sam9x5_main, ptr %15, i32 0, i32 1
  store ptr %0, ptr %24, align 4
  %25 = call i32 @regmap_read(ptr noundef %0, i32 noundef 32, ptr noundef nonnull %6) #8
  %26 = load i32, ptr %6, align 4
  %27 = and i32 %26, 3
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.clk_sam9x5_main, ptr %15, i32 0, i32 3
  store i8 %29, ptr %30, align 8
  %31 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %15) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %17
  call void @kfree(ptr noundef nonnull %15) #8
  %34 = inttoptr i32 %31 to ptr
  br label %35

35:                                               ; preds = %33, %17, %13, %9, %4
  %36 = phi ptr [ %34, %33 ], [ %15, %17 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -22 to ptr), %9 ], [ inttoptr (i32 -12 to ptr), %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #8
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_main_osc_prepare(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.clk_main_osc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %3) #8
  %7 = load i32, ptr %3, align 4
  %8 = and i32 %7, -16711681
  store i32 %8, ptr %3, align 4
  %9 = and i32 %7, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = and i32 %7, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = or i32 %8, 3604481
  store i32 %15, ptr %3, align 4
  %16 = call i32 @regmap_write(ptr noundef %5, i32 noundef 32, i32 noundef %15) #8
  br label %17

17:                                               ; preds = %14, %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %18 = call i32 @regmap_read(ptr noundef %5, i32 noundef 104, ptr noundef nonnull %2) #8
  %19 = load i32, ptr %2, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br i1 %21, label %22, label %27

22:                                               ; preds = %22, %17
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %23 = call i32 @regmap_read(ptr noundef %5, i32 noundef 104, ptr noundef nonnull %2) #8
  %24 = load i32, ptr %2, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br i1 %26, label %22, label %27

27:                                               ; preds = %22, %17, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_main_osc_unprepare(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.clk_main_osc, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 32, ptr noundef nonnull %2) #8
  %6 = load i32, ptr %2, align 4
  %7 = and i32 %6, 3
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = and i32 %6, -3604482
  store i32 %10, ptr %2, align 4
  %11 = or i32 %10, 3604480
  %12 = call i32 @regmap_write(ptr noundef %4, i32 noundef 32, i32 noundef %11) #8
  br label %13

13:                                               ; preds = %9, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_main_osc_is_prepared(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.clk_main_osc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %2) #8
  %7 = load i32, ptr %2, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = call i32 @regmap_read(ptr noundef %5, i32 noundef 104, ptr noundef nonnull %3) #8
  %12 = load i32, ptr %3, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  %15 = load i32, ptr %2, align 4
  %16 = and i32 %15, 3
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %14, i1 %17, i1 false
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %10, %1
  %21 = phi i32 [ %19, %10 ], [ 1, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_main_osc_save_context(ptr nocapture noundef %0) #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.clk_main_osc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %2) #8
  %7 = load i32, ptr %2, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = call i32 @regmap_read(ptr noundef %5, i32 noundef 104, ptr noundef nonnull %3) #8
  %12 = load i32, ptr %3, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  %15 = load i32, ptr %2, align 4
  %16 = and i32 %15, 3
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %14, i1 %17, i1 false
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %10, %1
  %21 = phi i32 [ %19, %10 ], [ 1, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %22 = getelementptr inbounds %struct.clk_main_osc, ptr %0, i32 0, i32 2, i32 2
  store i32 %21, ptr %22, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_main_osc_restore_context(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_main_osc, ptr %0, i32 0, i32 2, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @clk_main_osc_prepare(ptr noundef %0)
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_main_rc_osc_prepare(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.clk_main_rc_osc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %3) #8
  %7 = load i32, ptr %3, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 32, i32 noundef 16711688, i32 noundef 3604488, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %12

12:                                               ; preds = %10, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %13 = call i32 @regmap_read(ptr noundef %5, i32 noundef 104, ptr noundef nonnull %2) #8
  %14 = load i32, ptr %2, align 4
  %15 = and i32 %14, 131072
  %16 = icmp eq i32 %15, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br i1 %16, label %17, label %22

17:                                               ; preds = %17, %12
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %18 = call i32 @regmap_read(ptr noundef %5, i32 noundef 104, ptr noundef nonnull %2) #8
  %19 = load i32, ptr %2, align 4
  %20 = and i32 %19, 131072
  %21 = icmp eq i32 %20, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br i1 %21, label %17, label %22

22:                                               ; preds = %17, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_main_rc_osc_unprepare(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.clk_main_rc_osc, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 32, ptr noundef nonnull %2) #8
  %6 = load i32, ptr %2, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 32, i32 noundef 16711688, i32 noundef 3604480, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %11

11:                                               ; preds = %9, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_main_rc_osc_is_prepared(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.clk_main_rc_osc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %2) #8
  %7 = call i32 @regmap_read(ptr noundef %5, i32 noundef 104, ptr noundef nonnull %3) #8
  %8 = load i32, ptr %2, align 4
  %9 = and i32 %8, 8
  %10 = icmp ne i32 %9, 0
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, 131072
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %10, i1 %13, i1 false
  %15 = zext i1 %14 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_main_rc_osc_save_context(ptr nocapture noundef %0) #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.clk_main_rc_osc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %2) #8
  %7 = call i32 @regmap_read(ptr noundef %5, i32 noundef 104, ptr noundef nonnull %3) #8
  %8 = load i32, ptr %2, align 4
  %9 = and i32 %8, 8
  %10 = icmp ne i32 %9, 0
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, 131072
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %10, i1 %13, i1 false
  %15 = zext i1 %14 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %16 = getelementptr inbounds %struct.clk_main_rc_osc, ptr %0, i32 0, i32 4, i32 2
  store i32 %15, ptr %16, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_main_rc_osc_restore_context(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_main_rc_osc, ptr %0, i32 0, i32 4, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @clk_main_rc_osc_prepare(ptr noundef %0)
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_main_rc_osc_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.clk_main_rc_osc, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_main_rc_osc_recalc_accuracy(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.clk_main_rc_osc, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rm9200_main_prepare(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.clk_rm9200_main, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #8
  %7 = icmp ult i32 %6, 518
  %8 = select i1 %7, i32 -1073741822, i32 -1
  %9 = sub i32 %8, %5
  br label %10

10:                                               ; preds = %22, %1
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = call i32 @regmap_read(ptr noundef %4, i32 noundef 36, ptr noundef nonnull %2) #8
  %13 = load i32, ptr %2, align 4
  %14 = and i32 %13, 65536
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load i32, ptr @system_state, align 4
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 6442440) #8
  br label %22

21:                                               ; preds = %16
  call void @usleep_range_state(i32 noundef 30, i32 noundef 518, i32 noundef 2) #8
  br label %22

22:                                               ; preds = %21, %19
  %23 = add i32 %9, %11
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %10, label %25

25:                                               ; preds = %22, %10
  %26 = phi i32 [ 0, %10 ], [ -110, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rm9200_main_is_prepared(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.clk_rm9200_main, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 36, ptr noundef nonnull %2) #8
  %6 = load i32, ptr %2, align 4
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rm9200_main_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.clk_rm9200_main, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  %9 = call i32 @regmap_read(ptr noundef %5, i32 noundef 36, ptr noundef nonnull %3) #8
  %10 = load i32, ptr %3, align 4
  %11 = and i32 %10, 65536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = shl i32 %10, 11
  %15 = and i32 %14, 134215680
  br label %16

16:                                               ; preds = %13, %7, %2
  %17 = phi i32 [ %15, %13 ], [ %1, %2 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_main_prepare(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.clk_sam9x5_main, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 104, ptr noundef nonnull %3) #8
  %7 = load i32, ptr %3, align 4
  %8 = and i32 %7, 65536
  %9 = icmp eq i32 %8, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br i1 %9, label %10, label %15

10:                                               ; preds = %10, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %11 = call i32 @regmap_read(ptr noundef %5, i32 noundef 104, ptr noundef nonnull %3) #8
  %12 = load i32, ptr %3, align 4
  %13 = and i32 %12, 65536
  %14 = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br i1 %14, label %10, label %15

15:                                               ; preds = %10, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %16 = load volatile i32, ptr @jiffies, align 64
  %17 = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #8
  %18 = icmp ult i32 %17, 518
  %19 = select i1 %18, i32 -1073741822, i32 -1
  %20 = sub i32 %19, %16
  br label %21

21:                                               ; preds = %33, %15
  %22 = load volatile i32, ptr @jiffies, align 64
  %23 = call i32 @regmap_read(ptr noundef %5, i32 noundef 36, ptr noundef nonnull %2) #8
  %24 = load i32, ptr %2, align 4
  %25 = and i32 %24, 65536
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load i32, ptr @system_state, align 4
  %29 = icmp ult i32 %28, 3
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 6442440) #8
  br label %33

32:                                               ; preds = %27
  call void @usleep_range_state(i32 noundef 30, i32 noundef 518, i32 noundef 2) #8
  br label %33

33:                                               ; preds = %32, %30
  %34 = add i32 %20, %22
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %21, label %36

36:                                               ; preds = %33, %21
  %37 = phi i32 [ 0, %21 ], [ -110, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_main_is_prepared(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.clk_sam9x5_main, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 104, ptr noundef nonnull %2) #8
  %6 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_main_save_context(ptr nocapture noundef %0) #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.clk_main_rc_osc, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 32, ptr noundef nonnull %3) #8
  %8 = call i32 @regmap_read(ptr noundef %6, i32 noundef 104, ptr noundef nonnull %4) #8
  %9 = load i32, ptr %3, align 4
  %10 = and i32 %9, 8
  %11 = icmp ne i32 %10, 0
  %12 = load i32, ptr %4, align 4
  %13 = and i32 %12, 131072
  %14 = icmp ne i32 %13, 0
  %15 = select i1 %11, i1 %14, i1 false
  %16 = zext i1 %15 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %17 = getelementptr inbounds %struct.clk_sam9x5_main, ptr %0, i32 0, i32 2, i32 2
  store i32 %16, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %18 = load ptr, ptr %5, align 4
  %19 = call i32 @regmap_read(ptr noundef %18, i32 noundef 32, ptr noundef nonnull %2) #8
  %20 = load i32, ptr %2, align 4
  %21 = and i32 %20, 3
  %22 = icmp ne i32 %21, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %23 = zext i1 %22 to i32
  %24 = getelementptr inbounds %struct.clk_sam9x5_main, ptr %0, i32 0, i32 2, i32 3
  store i32 %23, ptr %24, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_sam9x5_main_restore_context(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_sam9x5_main, ptr %0, i32 0, i32 2, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = trunc i32 %3 to i8
  %5 = tail call i32 @clk_sam9x5_main_set_parent(ptr noundef %0, i8 noundef zeroext %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.clk_sam9x5_main, ptr %0, i32 0, i32 2, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @clk_sam9x5_main_prepare(ptr noundef %0)
  br label %13

13:                                               ; preds = %11, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_main_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.clk_sam9x5_main, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  %9 = call i32 @regmap_read(ptr noundef %5, i32 noundef 36, ptr noundef nonnull %3) #8
  %10 = load i32, ptr %3, align 4
  %11 = and i32 %10, 65536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = shl i32 %10, 11
  %15 = and i32 %14, 134215680
  br label %16

16:                                               ; preds = %13, %7, %2
  %17 = phi i32 [ %15, %13 ], [ %1, %2 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_main_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #5 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.clk_sam9x5_main, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = icmp ugt i8 %1, 1
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = call i32 @regmap_read(ptr noundef %6, i32 noundef 32, ptr noundef nonnull %4) #8
  %10 = icmp eq i8 %1, 0
  %11 = load i32, ptr %4, align 4
  %12 = and i32 %11, 16777216
  %13 = icmp eq i32 %12, 0
  br i1 %10, label %15, label %14

14:                                               ; preds = %8
  br i1 %13, label %16, label %29

15:                                               ; preds = %8
  br i1 %13, label %29, label %16

16:                                               ; preds = %15, %14
  %17 = phi i32 [ 16777216, %14 ], [ 0, %15 ]
  store i32 %17, ptr %4, align 4
  %18 = or i32 %17, 3604480
  %19 = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 32, i32 noundef 33488896, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %20 = call i32 @regmap_read(ptr noundef %6, i32 noundef 104, ptr noundef nonnull %3) #8
  %21 = load i32, ptr %3, align 4
  %22 = and i32 %21, 65536
  %23 = icmp eq i32 %22, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br i1 %23, label %24, label %29

24:                                               ; preds = %24, %16
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %25 = call i32 @regmap_read(ptr noundef %6, i32 noundef 104, ptr noundef nonnull %3) #8
  %26 = load i32, ptr %3, align 4
  %27 = and i32 %26, 65536
  %28 = icmp eq i32 %27, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br i1 %28, label %24, label %29

29:                                               ; preds = %24, %16, %15, %14, %2
  %30 = phi i32 [ -22, %2 ], [ 0, %15 ], [ 0, %14 ], [ 0, %16 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_sam9x5_main_get_parent(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.clk_sam9x5_main, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 32, ptr noundef nonnull %2) #8
  %6 = load i32, ptr %2, align 4
  %7 = and i32 %6, 3
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i8 %9
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!9 = !{i64 2151211732}
!10 = !{i64 2151211574}
!11 = !{i64 2151218765}
!12 = !{i64 2151218607}
!13 = !{i64 2151234274}
!14 = !{i64 2151234116}
!15 = !{i64 2151238259}
!16 = !{i64 2151238101}
