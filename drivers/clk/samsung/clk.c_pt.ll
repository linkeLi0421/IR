; ModuleID = '/llk/IR/drivers/clk/samsung/clk.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.samsung_clk_reg_dump = type { i32, i32 }
%struct.samsung_clk_provider = type { ptr, ptr, %struct.spinlock, %struct.clk_hw_onecell_data }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.samsung_clock_alias = type { i32, ptr, ptr }
%struct.samsung_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.samsung_fixed_factor_clock = type { i32, ptr, ptr, i32, i32, i32 }
%struct.samsung_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8 }
%struct.samsung_div_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.samsung_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.samsung_clock_reg_cache = type { %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.samsung_cmu_info = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }

@.str = private unnamed_addr constant [44 x i8] c"could not allocate clock provider context.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"could not register clk provider\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\013%s: clock id missing for index %d\0A\00", align 1
@__func__.samsung_clk_register_alias = private unnamed_addr constant [27 x i8] c"samsung_clk_register_alias\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\013%s: failed to find clock %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\013%s: failed to register lookup %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\013%s: failed to register clock %s\0A\00", align 1
@__func__.samsung_clk_register_fixed_rate = private unnamed_addr constant [32 x i8] c"samsung_clk_register_fixed_rate\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"\013%s: failed to register clock lookup for %s\00", align 1
@__func__.samsung_clk_register_fixed_factor = private unnamed_addr constant [34 x i8] c"samsung_clk_register_fixed_factor\00", align 1
@__func__.samsung_clk_register_mux = private unnamed_addr constant [25 x i8] c"samsung_clk_register_mux\00", align 1
@__func__.samsung_clk_register_div = private unnamed_addr constant [25 x i8] c"samsung_clk_register_div\00", align 1
@__func__.samsung_clk_register_gate = private unnamed_addr constant [26 x i8] c"samsung_clk_register_gate\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"could not allocate register reg_cache.\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"could not allocate register dump storage.\0A\00", align 1
@clock_reg_cache_list = internal global %struct.list_head { ptr @clock_reg_cache_list, ptr @clock_reg_cache_list }, align 4
@samsung_clk_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @samsung_clk_suspend, ptr @samsung_clk_resume, ptr null }, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"%s: failed to map registers\0A\00", align 1
@__func__.samsung_cmu_register_one = private unnamed_addr constant [25 x i8] c"samsung_cmu_register_one\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @samsung_clk_save(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %13, %5 ], [ %1, %3 ]
  %7 = phi i32 [ %12, %5 ], [ %2, %3 ]
  %8 = load i32, ptr %6, align 4
  %9 = getelementptr i8, ptr %0, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %11 = getelementptr inbounds %struct.samsung_clk_reg_dump, ptr %6, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = add i32 %7, -1
  %13 = getelementptr %struct.samsung_clk_reg_dump, ptr %6, i32 1
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %5

15:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @samsung_clk_restore(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %12, %5 ], [ %2, %3 ]
  %7 = phi ptr [ %13, %5 ], [ %1, %3 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  %8 = getelementptr inbounds %struct.samsung_clk_reg_dump, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %7, align 4
  %11 = getelementptr i8, ptr %0, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #10, !srcloc !11
  %12 = add i32 %6, -1
  %13 = getelementptr %struct.samsung_clk_reg_dump, ptr %7, i32 1
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %5

15:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @samsung_clk_alloc_reg_dump(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 8) #10
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %18, label %5, !prof !12

5:                                                ; preds = %2
  %6 = extractvalue { i32, i1 } %3, 0
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ %16, %11 ], [ 0, %9 ]
  %13 = getelementptr i32, ptr %0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.samsung_clk_reg_dump, ptr %7, i32 %12
  store i32 %14, ptr %15, align 8
  %16 = add nuw i32 %12, 1
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %11

18:                                               ; preds = %11, %9, %5, %2
  %19 = phi ptr [ null, %5 ], [ null, %2 ], [ %7, %9 ], [ %7, %11 ]
  ret ptr %19
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @samsung_clk_init(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 section ".init.text" {
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #10
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %7 = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 16) #10
  %8 = select i1 %5, i32 -1, i32 %7
  %9 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.samsung_clk_provider, ptr %9, i32 1
  br label %16

15:                                               ; preds = %3
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str) #12
  unreachable

16:                                               ; preds = %16, %13
  %17 = phi i32 [ 0, %13 ], [ %19, %16 ]
  %18 = getelementptr [0 x ptr], ptr %14, i32 0, i32 %17
  store ptr inttoptr (i32 -2 to ptr), ptr %18, align 4
  %19 = add nuw i32 %17, 1
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %16

21:                                               ; preds = %16, %11
  store ptr %1, ptr %9, align 64
  %22 = getelementptr inbounds %struct.samsung_clk_provider, ptr %9, i32 0, i32 3
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.samsung_clk_provider, ptr %9, i32 0, i32 2
  store i32 0, ptr %23, align 8
  ret ptr %9
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @samsung_clk_of_add_provider(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 section ".init.text" {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.samsung_clk_provider, ptr %1, i32 0, i32 3
  %6 = tail call i32 @of_clk_add_hw_provider(ptr noundef nonnull %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1) #12
  unreachable

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @samsung_clk_add_lookup(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.samsung_clk_provider, ptr %0, i32 1
  %7 = getelementptr [0 x ptr], ptr %6, i32 0, i32 %2
  store ptr %1, ptr %7, align 4
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @samsung_clk_register_alias(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 section ".init.text" {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %34, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.samsung_clk_provider, ptr %0, i32 1
  br label %7

7:                                                ; preds = %30, %5
  %8 = phi ptr [ %1, %5 ], [ %32, %30 ]
  %9 = phi i32 [ 0, %5 ], [ %31, %30 ]
  %10 = load i32, ptr %8, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.samsung_clk_register_alias, i32 noundef %9) #13
  br label %30

14:                                               ; preds = %7
  %15 = getelementptr [0 x ptr], ptr %6, i32 0, i32 %10
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.samsung_clk_register_alias, i32 noundef %10) #13
  br label %30

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.samsung_clock_alias, ptr %8, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.samsung_clock_alias, ptr %8, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @clk_hw_register_clkdev(ptr noundef nonnull %16, ptr noundef %22, ptr noundef %24) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %21, align 4
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.samsung_clk_register_alias, ptr noundef %28) #13
  br label %30

30:                                               ; preds = %27, %20, %18, %12
  %31 = add nuw i32 %9, 1
  %32 = getelementptr %struct.samsung_clock_alias, ptr %8, i32 1
  %33 = icmp eq i32 %31, %2
  br i1 %33, label %34, label %7

34:                                               ; preds = %30, %3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @samsung_clk_register_fixed_rate(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 section ".init.text" {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %39, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.samsung_clk_provider, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.samsung_clk_provider, ptr %0, i32 1
  br label %8

8:                                                ; preds = %35, %5
  %9 = phi ptr [ %1, %5 ], [ %37, %35 ]
  %10 = phi i32 [ 0, %5 ], [ %36, %35 ]
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.samsung_fixed_rate_clock, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.samsung_fixed_rate_clock, ptr %9, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.samsung_fixed_rate_clock, ptr %9, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.samsung_fixed_rate_clock, ptr %9, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef %11, ptr noundef null, ptr noundef %13, ptr noundef %15, ptr noundef null, ptr noundef null, i32 noundef %17, i32 noundef %19, i32 noundef 0, i32 noundef 0) #10
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %31, label %22

22:                                               ; preds = %8
  %23 = load i32, ptr %9, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = getelementptr [0 x ptr], ptr %7, i32 0, i32 %23
  store ptr %20, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load ptr, ptr %12, align 4
  %29 = tail call i32 @clk_hw_register_clkdev(ptr noundef %20, ptr noundef %28, ptr noundef null) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27, %8
  %32 = phi ptr [ @.str.5, %8 ], [ @.str.6, %27 ]
  %33 = load ptr, ptr %12, align 4
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %32, ptr noundef nonnull @__func__.samsung_clk_register_fixed_rate, ptr noundef %33) #13
  br label %35

35:                                               ; preds = %31, %27
  %36 = add nuw i32 %10, 1
  %37 = getelementptr %struct.samsung_fixed_rate_clock, ptr %9, i32 1
  %38 = icmp eq i32 %36, %2
  br i1 %38, label %39, label %8

39:                                               ; preds = %35, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @samsung_clk_register_fixed_factor(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 section ".init.text" {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %36, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.samsung_clk_provider, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.samsung_clk_provider, ptr %0, i32 1
  br label %8

8:                                                ; preds = %32, %5
  %9 = phi ptr [ %1, %5 ], [ %34, %32 ]
  %10 = phi i32 [ 0, %5 ], [ %33, %32 ]
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.samsung_fixed_factor_clock, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.samsung_fixed_factor_clock, ptr %9, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.samsung_fixed_factor_clock, ptr %9, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.samsung_fixed_factor_clock, ptr %9, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.samsung_fixed_factor_clock, ptr %9, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef %11, ptr noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #10
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %27

24:                                               ; preds = %8
  %25 = load ptr, ptr %12, align 4
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.samsung_clk_register_fixed_factor, ptr noundef %25) #13
  br label %32

27:                                               ; preds = %8
  %28 = load i32, ptr %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = getelementptr [0 x ptr], ptr %7, i32 0, i32 %28
  store ptr %22, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %27, %24
  %33 = add nuw i32 %10, 1
  %34 = getelementptr %struct.samsung_fixed_factor_clock, ptr %9, i32 1
  %35 = icmp eq i32 %33, %2
  br i1 %35, label %36, label %8

36:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @samsung_clk_register_mux(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 section ".init.text" {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %48, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.samsung_clk_provider, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.samsung_clk_provider, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.samsung_clk_provider, ptr %0, i32 1
  br label %9

9:                                                ; preds = %44, %5
  %10 = phi ptr [ %1, %5 ], [ %46, %44 ]
  %11 = phi i32 [ 0, %5 ], [ %45, %44 ]
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.samsung_mux_clock, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.samsung_mux_clock, ptr %10, i32 0, i32 3
  %16 = load i8, ptr %15, align 4
  %17 = getelementptr inbounds %struct.samsung_mux_clock, ptr %10, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.samsung_mux_clock, ptr %10, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.samsung_mux_clock, ptr %10, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %21, i32 %23
  %25 = getelementptr inbounds %struct.samsung_mux_clock, ptr %10, i32 0, i32 6
  %26 = load i8, ptr %25, align 4
  %27 = getelementptr inbounds %struct.samsung_mux_clock, ptr %10, i32 0, i32 7
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nsw i32 -1, %29
  %31 = xor i32 %30, -1
  %32 = getelementptr inbounds %struct.samsung_mux_clock, ptr %10, i32 0, i32 8
  %33 = load i8, ptr %32, align 2
  %34 = tail call ptr @__clk_hw_register_mux(ptr noundef %12, ptr noundef null, ptr noundef %14, i8 noundef zeroext %16, ptr noundef %18, ptr noundef null, ptr noundef null, i32 noundef %20, ptr noundef %24, i8 noundef zeroext %26, i32 noundef %31, i8 noundef zeroext %33, ptr noundef null, ptr noundef %7) #10
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %39

36:                                               ; preds = %9
  %37 = load ptr, ptr %13, align 4
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.samsung_clk_register_mux, ptr noundef %37) #13
  br label %44

39:                                               ; preds = %9
  %40 = load i32, ptr %10, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr [0 x ptr], ptr %8, i32 0, i32 %40
  store ptr %34, ptr %43, align 4
  br label %44

44:                                               ; preds = %42, %39, %36
  %45 = add nuw i32 %11, 1
  %46 = getelementptr %struct.samsung_mux_clock, ptr %10, i32 1
  %47 = icmp eq i32 %45, %2
  br i1 %47, label %48, label %9

48:                                               ; preds = %44, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @samsung_clk_register_div(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 section ".init.text" {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %52, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.samsung_clk_provider, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.samsung_clk_provider, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.samsung_clk_provider, ptr %0, i32 1
  br label %9

9:                                                ; preds = %48, %5
  %10 = phi ptr [ %1, %5 ], [ %50, %48 ]
  %11 = phi i32 [ 0, %5 ], [ %49, %48 ]
  %12 = getelementptr inbounds %struct.samsung_div_clock, ptr %10, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.samsung_div_clock, ptr %10, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.samsung_div_clock, ptr %10, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.samsung_div_clock, ptr %10, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.samsung_div_clock, ptr %10, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %22, i32 %24
  %26 = getelementptr inbounds %struct.samsung_div_clock, ptr %10, i32 0, i32 5
  %27 = load i8, ptr %26, align 4
  %28 = getelementptr inbounds %struct.samsung_div_clock, ptr %10, i32 0, i32 6
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr inbounds %struct.samsung_div_clock, ptr %10, i32 0, i32 7
  %31 = load i8, ptr %30, align 2
  br i1 %14, label %34, label %32

32:                                               ; preds = %9
  %33 = tail call ptr @__clk_hw_register_divider(ptr noundef %15, ptr noundef null, ptr noundef %17, ptr noundef %19, ptr noundef null, ptr noundef null, i32 noundef %21, ptr noundef %25, i8 noundef zeroext %27, i8 noundef zeroext %29, i8 noundef zeroext %31, ptr noundef nonnull %13, ptr noundef %7) #10
  br label %36

34:                                               ; preds = %9
  %35 = tail call ptr @__clk_hw_register_divider(ptr noundef %15, ptr noundef null, ptr noundef %17, ptr noundef %19, ptr noundef null, ptr noundef null, i32 noundef %21, ptr noundef %25, i8 noundef zeroext %27, i8 noundef zeroext %29, i8 noundef zeroext %31, ptr noundef null, ptr noundef %7) #10
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %33, %32 ], [ %35, %34 ]
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.samsung_div_clock, ptr %10, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.samsung_clk_register_div, ptr noundef %41) #13
  br label %48

43:                                               ; preds = %36
  %44 = load i32, ptr %10, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = getelementptr [0 x ptr], ptr %8, i32 0, i32 %44
  store ptr %37, ptr %47, align 4
  br label %48

48:                                               ; preds = %46, %43, %39
  %49 = add nuw i32 %11, 1
  %50 = getelementptr %struct.samsung_div_clock, ptr %10, i32 1
  %51 = icmp eq i32 %49, %2
  br i1 %51, label %52, label %9

52:                                               ; preds = %48, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @samsung_clk_register_gate(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 section ".init.text" {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %41, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.samsung_clk_provider, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.samsung_clk_provider, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.samsung_clk_provider, ptr %0, i32 1
  br label %9

9:                                                ; preds = %37, %5
  %10 = phi ptr [ %1, %5 ], [ %39, %37 ]
  %11 = phi i32 [ 0, %5 ], [ %38, %37 ]
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.samsung_gate_clock, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.samsung_gate_clock, ptr %10, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.samsung_gate_clock, ptr %10, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.samsung_gate_clock, ptr %10, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %19, i32 %21
  %23 = getelementptr inbounds %struct.samsung_gate_clock, ptr %10, i32 0, i32 5
  %24 = load i8, ptr %23, align 4
  %25 = getelementptr inbounds %struct.samsung_gate_clock, ptr %10, i32 0, i32 6
  %26 = load i8, ptr %25, align 1
  %27 = tail call ptr @__clk_hw_register_gate(ptr noundef %12, ptr noundef null, ptr noundef %14, ptr noundef %16, ptr noundef null, ptr noundef null, i32 noundef %18, ptr noundef %22, i8 noundef zeroext %24, i8 noundef zeroext %26, ptr noundef %7) #10
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %32

29:                                               ; preds = %9
  %30 = load ptr, ptr %13, align 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.samsung_clk_register_gate, ptr noundef %30) #13
  br label %37

32:                                               ; preds = %9
  %33 = load i32, ptr %10, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = getelementptr [0 x ptr], ptr %8, i32 0, i32 %33
  store ptr %27, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %32, %29
  %38 = add nuw i32 %11, 1
  %39 = getelementptr %struct.samsung_gate_clock, ptr %10, i32 1
  %40 = icmp eq i32 %38, %2
  br i1 %40, label %41, label %9

41:                                               ; preds = %37, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @samsung_clk_of_register_fixed_ext(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 section ".init.text" {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !13
  %7 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef %3, ptr noundef nonnull %5) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %20, %4
  %10 = phi ptr [ %21, %20 ], [ %7, %4 ]
  %11 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.7, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #10
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i32, ptr %6, align 4
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.of_device_id, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = getelementptr %struct.samsung_fixed_rate_clock, ptr %1, i32 %18, i32 4
  store i32 %14, ptr %19, align 4
  br label %20

20:                                               ; preds = %13, %9
  %21 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %10, ptr noundef %3, ptr noundef nonnull %5) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %9

23:                                               ; preds = %20, %4
  call void @samsung_clk_register_fixed_rate(ptr noundef %0, ptr noundef %1, i32 noundef %2) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @samsung_clk_extended_sleep_init(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 28) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.8) #12
  unreachable

10:                                               ; preds = %5
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 8) #10
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %26, label %13, !prof !12

13:                                               ; preds = %10
  %14 = extractvalue { i32, i1 } %11, 0
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ %24, %19 ], [ 0, %17 ]
  %21 = getelementptr i32, ptr %1, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.samsung_clk_reg_dump, ptr %15, i32 %20
  store i32 %22, ptr %23, align 8
  %24 = add nuw i32 %20, 1
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %28, label %19

26:                                               ; preds = %13, %10
  %27 = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %7, i32 0, i32 2
  store ptr null, ptr %27, align 4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.9) #12
  unreachable

28:                                               ; preds = %19, %17
  %29 = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %7, i32 0, i32 2
  store ptr %15, ptr %29, align 4
  %30 = load volatile ptr, ptr @clock_reg_cache_list, align 4
  %31 = icmp eq ptr %30, @clock_reg_cache_list
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @register_syscore_ops(ptr noundef nonnull @samsung_clk_syscore_ops) #10
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %7, i32 0, i32 1
  store ptr %0, ptr %34, align 8
  %35 = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %7, i32 0, i32 3
  store i32 %2, ptr %35, align 8
  %36 = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %7, i32 0, i32 4
  store ptr %3, ptr %36, align 4
  %37 = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %7, i32 0, i32 5
  store i32 %4, ptr %37, align 8
  %38 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @clock_reg_cache_list, i32 0, i32 1), align 4
  store ptr %7, ptr getelementptr inbounds (%struct.list_head, ptr @clock_reg_cache_list, i32 0, i32 1), align 4
  store ptr @clock_reg_cache_list, ptr %7, align 8
  %39 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  store volatile ptr %7, ptr %38, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @samsung_cmu_register_one(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 section ".init.text" {
  %3 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.samsung_cmu_register_one) #12
  unreachable

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.samsung_cmu_info, ptr %1, i32 0, i32 12
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @samsung_clk_init(ptr undef, ptr noundef nonnull %3, i32 noundef %8) #14
  %10 = load ptr, ptr %1, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.samsung_cmu_info, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  tail call void @samsung_clk_register_pll(ptr noundef %9, ptr noundef nonnull %10, i32 noundef %14, ptr noundef nonnull %3) #10
  br label %15

15:                                               ; preds = %12, %6
  %16 = getelementptr inbounds %struct.samsung_cmu_info, ptr %1, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.samsung_cmu_info, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  tail call void @samsung_clk_register_mux(ptr noundef %9, ptr noundef nonnull %17, i32 noundef %21) #14
  br label %22

22:                                               ; preds = %19, %15
  %23 = getelementptr inbounds %struct.samsung_cmu_info, ptr %1, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.samsung_cmu_info, ptr %1, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  tail call void @samsung_clk_register_div(ptr noundef %9, ptr noundef nonnull %24, i32 noundef %28) #14
  br label %29

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %struct.samsung_cmu_info, ptr %1, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.samsung_cmu_info, ptr %1, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  tail call void @samsung_clk_register_gate(ptr noundef %9, ptr noundef nonnull %31, i32 noundef %35) #14
  br label %36

36:                                               ; preds = %33, %29
  %37 = getelementptr inbounds %struct.samsung_cmu_info, ptr %1, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.samsung_cmu_info, ptr %1, i32 0, i32 9
  %42 = load i32, ptr %41, align 4
  tail call void @samsung_clk_register_fixed_rate(ptr noundef %9, ptr noundef nonnull %38, i32 noundef %42) #14
  br label %43

43:                                               ; preds = %40, %36
  %44 = getelementptr inbounds %struct.samsung_cmu_info, ptr %1, i32 0, i32 10
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.samsung_cmu_info, ptr %1, i32 0, i32 11
  %49 = load i32, ptr %48, align 4
  tail call void @samsung_clk_register_fixed_factor(ptr noundef %9, ptr noundef nonnull %45, i32 noundef %49) #14
  br label %50

50:                                               ; preds = %47, %43
  %51 = getelementptr inbounds %struct.samsung_cmu_info, ptr %1, i32 0, i32 15
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.samsung_cmu_info, ptr %1, i32 0, i32 16
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.samsung_cmu_info, ptr %1, i32 0, i32 17
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.samsung_cmu_info, ptr %1, i32 0, i32 18
  %60 = load i32, ptr %59, align 4
  tail call void @samsung_clk_extended_sleep_init(ptr noundef nonnull %3, ptr noundef nonnull %52, i32 noundef %56, ptr noundef %58, i32 noundef %60)
  br label %61

61:                                               ; preds = %54, %50
  %62 = getelementptr inbounds %struct.samsung_cmu_info, ptr %1, i32 0, i32 13
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.samsung_cmu_info, ptr %1, i32 0, i32 14
  %67 = load i32, ptr %66, align 4
  tail call void @samsung_clk_register_cpu(ptr noundef %9, ptr noundef nonnull %63, i32 noundef %67) #10
  br label %68

68:                                               ; preds = %65, %61
  tail call void @samsung_clk_of_add_provider(ptr noundef %0, ptr noundef %9) #14
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_pll(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_cpu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_clk_suspend() #0 {
  %1 = load ptr, ptr @clock_reg_cache_list, align 4
  %2 = icmp eq ptr %1, @clock_reg_cache_list
  br i1 %2, label %46, label %3

3:                                                ; preds = %43, %0
  %4 = phi ptr [ %44, %43 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %4, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi ptr [ %21, %13 ], [ %12, %10 ]
  %15 = phi i32 [ %20, %13 ], [ %8, %10 ]
  %16 = load i32, ptr %14, align 4
  %17 = getelementptr i8, ptr %6, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %19 = getelementptr inbounds %struct.samsung_clk_reg_dump, ptr %14, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = add i32 %15, -1
  %21 = getelementptr %struct.samsung_clk_reg_dump, ptr %14, i32 1
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %13

23:                                               ; preds = %13
  %24 = load ptr, ptr %5, align 4
  br label %25

25:                                               ; preds = %23, %3
  %26 = phi ptr [ %24, %23 ], [ %6, %3 ]
  %27 = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %4, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %4, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %33, %30
  %34 = phi i32 [ %40, %33 ], [ %28, %30 ]
  %35 = phi ptr [ %41, %33 ], [ %32, %30 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  %36 = getelementptr inbounds %struct.samsung_clk_reg_dump, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %35, align 4
  %39 = getelementptr i8, ptr %26, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #10, !srcloc !11
  %40 = add i32 %34, -1
  %41 = getelementptr %struct.samsung_clk_reg_dump, ptr %35, i32 1
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %43, label %33

43:                                               ; preds = %33, %25
  %44 = load ptr, ptr %4, align 4
  %45 = icmp eq ptr %44, @clock_reg_cache_list
  br i1 %45, label %46, label %3

46:                                               ; preds = %43, %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @samsung_clk_resume() #0 {
  %1 = load ptr, ptr @clock_reg_cache_list, align 4
  %2 = icmp eq ptr %1, @clock_reg_cache_list
  br i1 %2, label %26, label %3

3:                                                ; preds = %23, %0
  %4 = phi ptr [ %24, %23 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %4, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i32 [ %20, %13 ], [ %8, %10 ]
  %15 = phi ptr [ %21, %13 ], [ %12, %10 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  %16 = getelementptr inbounds %struct.samsung_clk_reg_dump, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %15, align 4
  %19 = getelementptr i8, ptr %6, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #10, !srcloc !11
  %20 = add i32 %14, -1
  %21 = getelementptr %struct.samsung_clk_reg_dump, ptr %15, i32 1
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %13

23:                                               ; preds = %13, %3
  %24 = load ptr, ptr %4, align 4
  %25 = icmp eq ptr %24, @clock_reg_cache_list
  br i1 %25, label %26, label %3

26:                                               ; preds = %23, %0
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { cold }
attributes #15 = { nounwind allocsize(2) }

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
!8 = !{i64 3029504}
!9 = !{i64 2150622688}
!10 = !{i64 2150622879}
!11 = !{i64 3029086}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"auto-init"}
