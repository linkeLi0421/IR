; ModuleID = '/llk/IR/drivers/clk/renesas/clk-div6.c_pt.bc'
source_filename = "../drivers/clk/renesas/clk-div6.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.div6_clock = type { %struct.clk_hw, ptr, i32, i32, %struct.notifier_block, [0 x i8] }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [51 x i8] c"\013%s: invalid number of parents for DIV6 clock %s\0A\00", align 1
@__func__.cpg_div6_register = private unnamed_addr constant [18 x i8] c"cpg_div6_register\00", align 1
@cpg_div6_clock_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @cpg_div6_clock_enable, ptr @cpg_div6_clock_disable, ptr @cpg_div6_clock_is_enabled, ptr null, ptr null, ptr null, ptr @cpg_div6_clock_recalc_rate, ptr null, ptr @cpg_div6_clock_determine_rate, ptr @cpg_div6_clock_set_parent, ptr @cpg_div6_clock_get_parent, ptr @cpg_div6_clock_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__of_table_cpg_div6_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,cpg-div6-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cpg_div6_clock_init }, section "__clk_of_table", align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"\013%s: %s DIV6 clock set to invalid parent %u\0A\00", align 1
@__func__.cpg_div6_clock_get_parent = private unnamed_addr constant [26 x i8] c"cpg_div6_clock_get_parent\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\013%s: no parent found for %pOFn DIV6 clock\0A\00", align 1
@__func__.cpg_div6_clock_init = private unnamed_addr constant [20 x i8] c"cpg_div6_clock_init\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\013%s: failed to map %pOFn DIV6 clock register\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"\013%s: failed to register %pOFn DIV6 clock (%ld)\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_cpg_div6_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @cpg_div6_register(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 section ".init.text" {
  %6 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 28, i1 false)
  %7 = tail call i32 @llvm.uadd.sat.i32(i32 %1, i32 36) #9
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %53, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.div6_clock, ptr %8, i32 0, i32 1
  store ptr %3, ptr %11, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %13 = and i32 %12, 63
  %14 = add nuw nsw i32 %13, 1
  %15 = getelementptr inbounds %struct.div6_clock, ptr %8, i32 0, i32 2
  store i32 %14, ptr %15, align 16
  switch i32 %1, label %18 [
    i32 1, label %20
    i32 4, label %16
    i32 8, label %17
  ]

16:                                               ; preds = %10
  br label %20

17:                                               ; preds = %10
  br label %20

18:                                               ; preds = %10
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cpg_div6_register, ptr noundef %0) #11
  br label %51

20:                                               ; preds = %17, %16, %10
  %21 = phi i32 [ 192, %16 ], [ 28672, %17 ], [ 0, %10 ]
  %22 = getelementptr inbounds %struct.div6_clock, ptr %8, i32 0, i32 3
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %34, %20
  %24 = phi i32 [ %35, %34 ], [ 0, %20 ]
  %25 = phi i32 [ %36, %34 ], [ 0, %20 ]
  %26 = getelementptr ptr, ptr %2, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = getelementptr ptr, ptr %2, i32 %24
  store ptr %27, ptr %30, align 4
  %31 = trunc i32 %25 to i8
  %32 = getelementptr %struct.div6_clock, ptr %8, i32 0, i32 5, i32 %24
  store i8 %31, ptr %32, align 1
  %33 = add i32 %24, 1
  br label %34

34:                                               ; preds = %29, %23
  %35 = phi i32 [ %33, %29 ], [ %24, %23 ]
  %36 = add nuw i32 %25, 1
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %38, label %23

38:                                               ; preds = %34
  store ptr %0, ptr %6, align 4
  %39 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 1
  store ptr @cpg_div6_clock_ops, ptr %39, align 4
  %40 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  store ptr %2, ptr %40, align 4
  %41 = trunc i32 %35 to i8
  %42 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 5
  store i8 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.clk_hw, ptr %8, i32 0, i32 2
  store ptr %6, ptr %43, align 8
  %44 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %8) #9
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = icmp eq ptr %4, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.div6_clock, ptr %8, i32 0, i32 4
  store ptr @cpg_div6_clock_notifier_call, ptr %49, align 8
  %50 = call i32 @raw_notifier_chain_register(ptr noundef nonnull %4, ptr noundef %49) #9
  br label %53

51:                                               ; preds = %38, %18
  %52 = phi ptr [ inttoptr (i32 -22 to ptr), %18 ], [ %44, %38 ]
  call void @kfree(ptr noundef nonnull %8) #9
  br label %53

53:                                               ; preds = %51, %48, %46, %5
  %54 = phi ptr [ %52, %51 ], [ %44, %48 ], [ %44, %46 ], [ inttoptr (i32 -12 to ptr), %5 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #9
  ret ptr %54
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_div6_clock_notifier_call(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #5 {
  %4 = icmp eq i32 %1, 16
  br i1 %4, label %5, label %27

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -20
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__clk_get_enable_count(ptr noundef %7) #9
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr i8, ptr %0, i32 -12
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9
  br i1 %9, label %21, label %13

13:                                               ; preds = %5
  %14 = and i32 %12, -320
  %15 = getelementptr i8, ptr %0, i32 -8
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 63
  %18 = and i32 %17, 63
  %19 = or i32 %18, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %20 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #9, !srcloc !11
  br label %27

21:                                               ; preds = %5
  %22 = and i32 %12, 63
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 319, i32 256
  %25 = or i32 %24, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %26 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #9, !srcloc !11
  br label %27

27:                                               ; preds = %21, %13, %3
  %28 = phi i32 [ 1, %21 ], [ 1, %13 ], [ 0, %3 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cpg_div6_clock_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %3 = load ptr, ptr %0, align 4
  store ptr %3, ptr %2, align 4
  %4 = tail call i32 @of_clk_get_parent_count(ptr noundef %0) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cpg_div6_clock_init, ptr noundef %0) #11
  br label %38

8:                                                ; preds = %1
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 4) #9
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %38, label %11, !prof !13

11:                                               ; preds = %8
  %12 = extractvalue { i32, i1 } %9, 0
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %38, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.cpg_div6_clock_init, ptr noundef %0) #11
  br label %37

20:                                               ; preds = %15
  %21 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %2) #9
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ %26, %22 ], [ 0, %20 ]
  %24 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %23) #9
  %25 = getelementptr ptr, ptr %13, i32 %23
  store ptr %24, ptr %25, align 4
  %26 = add nuw i32 %23, 1
  %27 = icmp eq i32 %26, %4
  br i1 %27, label %28, label %22

28:                                               ; preds = %22
  %29 = load ptr, ptr %2, align 4
  %30 = call ptr @cpg_div6_register(ptr noundef %29, i32 noundef %4, ptr noundef nonnull %13, ptr noundef nonnull %16, ptr noundef null) #12
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %30) #9
  call void @kfree(ptr noundef nonnull %13) #9
  br label %38

34:                                               ; preds = %28
  %35 = ptrtoint ptr %30 to i32
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cpg_div6_clock_init, ptr noundef %0, i32 noundef %35) #11
  call void @iounmap(ptr noundef nonnull %16) #9
  br label %37

37:                                               ; preds = %34, %18
  call void @kfree(ptr noundef nonnull %13) #9
  br label %38

38:                                               ; preds = %37, %32, %11, %8, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_div6_clock_enable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.div6_clock, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  %5 = and i32 %4, -320
  %6 = getelementptr inbounds %struct.div6_clock, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 63
  %9 = and i32 %8, 63
  %10 = or i32 %9, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %11 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #9, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpg_div6_clock_disable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.div6_clock, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %5 = and i32 %4, 63
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 319, i32 256
  %8 = or i32 %7, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %9 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #9, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_div6_clock_is_enabled(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.div6_clock, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %5 = lshr i32 %4, 8
  %6 = and i32 %5, 1
  %7 = xor i32 %6, 1
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @cpg_div6_clock_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.div6_clock, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = udiv i32 %1, %4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_div6_clock_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #5 {
  %3 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %63, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 2
  %7 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 1
  br label %8

8:                                                ; preds = %51, %5
  %9 = phi i32 [ 0, %5 ], [ %55, %51 ]
  %10 = phi i32 [ 0, %5 ], [ %54, %51 ]
  %11 = phi ptr [ null, %5 ], [ %53, %51 ]
  %12 = phi i32 [ 0, %5 ], [ %56, %51 ]
  %13 = phi i32 [ -1, %5 ], [ %52, %51 ]
  %14 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %12) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %51, label %16

16:                                               ; preds = %8
  %17 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %14) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %51, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %6, align 4
  %21 = add i32 %17, -1
  %22 = add i32 %21, %20
  %23 = udiv i32 %22, %20
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 1)
  %25 = load i32, ptr %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = udiv i32 %17, %25
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 64)
  br label %30

30:                                               ; preds = %27, %19
  %31 = phi i32 [ %29, %27 ], [ 64, %19 ]
  %32 = icmp ult i32 %31, %24
  br i1 %32, label %51, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %1, align 4
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 1, i32 %34
  %37 = lshr i32 %36, 1
  %38 = add i32 %37, %17
  %39 = udiv i32 %38, %36
  %40 = tail call i32 @llvm.umax.i32(i32 %39, i32 1) #9
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 64) #9
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 %24)
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 %31)
  %44 = udiv i32 %17, %43
  %45 = icmp ugt i32 %44, %34
  %46 = sub i32 %44, %34
  %47 = sub i32 %34, %44
  %48 = select i1 %45, i32 %46, i32 %47
  %49 = icmp ult i32 %48, %13
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %33, %30, %16, %8
  %52 = phi i32 [ %13, %30 ], [ %48, %50 ], [ %13, %33 ], [ %13, %16 ], [ %13, %8 ]
  %53 = phi ptr [ %11, %30 ], [ %14, %50 ], [ %11, %33 ], [ %11, %16 ], [ %11, %8 ]
  %54 = phi i32 [ %10, %30 ], [ %17, %50 ], [ %10, %33 ], [ %10, %16 ], [ %10, %8 ]
  %55 = phi i32 [ %9, %30 ], [ %44, %50 ], [ %9, %33 ], [ %9, %16 ], [ %9, %8 ]
  %56 = add nuw i32 %12, 1
  %57 = icmp eq i32 %56, %3
  br i1 %57, label %58, label %8

58:                                               ; preds = %51
  %59 = icmp eq ptr %53, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %54, ptr %61, align 4
  %62 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr %53, ptr %62, align 4
  store i32 %55, ptr %1, align 4
  br label %63

63:                                               ; preds = %60, %58, %2
  %64 = phi i32 [ 0, %60 ], [ -22, %58 ], [ -22, %2 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_div6_clock_set_parent(ptr noundef %0, i8 noundef zeroext %1) #5 {
  %3 = zext i8 %1 to i32
  %4 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #9
  %5 = icmp ugt i32 %4, %3
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr %struct.div6_clock, ptr %0, i32 0, i32 5, i32 %3
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.div6_clock, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.cttz.i32(i32 %11, i1 false) #9, !range !17
  %13 = shl i32 %9, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %14 = getelementptr inbounds %struct.div6_clock, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !19
  %17 = load i32, ptr %10, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = or i32 %19, %13
  %21 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %20) #9, !srcloc !11
  br label %22

22:                                               ; preds = %6, %2
  %23 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @cpg_div6_clock_get_parent(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.div6_clock, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.div6_clock, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %9 = load i32, ptr %2, align 4
  %10 = and i32 %9, %8
  %11 = tail call i32 @llvm.cttz.i32(i32 %9, i1 false) #9, !range !17
  %12 = lshr i32 %10, %11
  %13 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %5
  %16 = trunc i32 %12 to i8
  br label %17

17:                                               ; preds = %24, %15
  %18 = phi i32 [ 0, %15 ], [ %25, %24 ]
  %19 = getelementptr %struct.div6_clock, ptr %0, i32 0, i32 5, i32 %18
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, %16
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = trunc i32 %18 to i8
  br label %32

24:                                               ; preds = %17
  %25 = add nuw i32 %18, 1
  %26 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #9
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %17, label %28

28:                                               ; preds = %24, %5
  %29 = tail call ptr @clk_hw_get_name(ptr noundef %0) #9
  %30 = and i32 %12, 255
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cpg_div6_clock_get_parent, ptr noundef %29, i32 noundef %30) #11
  br label %32

32:                                               ; preds = %28, %22, %1
  %33 = phi i8 [ %23, %22 ], [ 0, %28 ], [ 0, %1 ]
  ret i8 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_div6_clock_set_rate(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = icmp eq i32 %1, 0
  %5 = select i1 %4, i32 1, i32 %1
  %6 = lshr i32 %5, 1
  %7 = add i32 %6, %2
  %8 = udiv i32 %7, %5
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 1) #9
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 64) #9
  %11 = getelementptr inbounds %struct.div6_clock, ptr %0, i32 0, i32 2
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.div6_clock, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !21
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = and i32 %14, -64
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %19 = load i32, ptr %11, align 4
  %20 = add i32 %19, 63
  %21 = and i32 %20, 63
  %22 = or i32 %21, %18
  %23 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #9, !srcloc !11
  br label %24

24:                                               ; preds = %17, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_get_enable_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }
attributes #12 = { cold }

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
!8 = !{i64 2849904}
!9 = !{i64 2150677275}
!10 = !{i64 2150641406}
!11 = !{i64 2849486}
!12 = !{i64 2150643274}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2150641113}
!15 = !{i64 2150643004}
!16 = !{i64 2150644872}
!17 = !{i32 0, i32 33}
!18 = !{i64 2150674453}
!19 = !{i64 2150674933}
!20 = !{i64 2150671978}
!21 = !{i64 2150669997}
!22 = !{i64 2150670320}
