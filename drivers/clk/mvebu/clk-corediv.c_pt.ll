; ModuleID = '/llk/IR/drivers/clk/mvebu/clk-corediv.c_pt.bc'
source_filename = "../drivers/clk/mvebu/clk-corediv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_corediv_soc_desc = type { ptr, i32, %struct.clk_ops, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.clk_corediv_desc = type { i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_corediv = type { %struct.clk_hw, ptr, ptr, ptr, %struct.spinlock }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }

@__of_table_armada370_corediv_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-corediv-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada370_corediv_clk_init }, section "__clk_of_table", align 4
@__of_table_armada375_corediv_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-375-corediv-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada375_corediv_clk_init }, section "__clk_of_table", align 4
@__of_table_armada380_corediv_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-corediv-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada380_corediv_clk_init }, section "__clk_of_table", align 4
@__of_table_mv98dx3236_corediv_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv98dx3236-corediv-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mv98dx3236_corediv_clk_init }, section "__clk_of_table", align 4
@armada370_corediv_soc = internal constant %struct.clk_corediv_soc_desc { ptr @mvebu_corediv_desc, i32 1, %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_corediv_enable, ptr @clk_corediv_disable, ptr @clk_corediv_is_enabled, ptr null, ptr null, ptr null, ptr @clk_corediv_recalc_rate, ptr @clk_corediv_round_rate, ptr null, ptr null, ptr null, ptr @clk_corediv_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 256, i32 24, i32 8 }, align 4
@.str = private unnamed_addr constant [32 x i8] c"drivers/clk/mvebu/clk-corediv.c\00", align 1
@clk_data = internal global %struct.clk_onecell_data zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@mvebu_corediv_desc = internal constant [1 x %struct.clk_corediv_desc] [%struct.clk_corediv_desc { i32 63, i32 8, i32 1 }], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@armada375_corediv_soc = internal constant %struct.clk_corediv_soc_desc { ptr @mvebu_corediv_desc, i32 1, %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_corediv_recalc_rate, ptr @clk_corediv_round_rate, ptr null, ptr null, ptr null, ptr @clk_corediv_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 256, i32 0, i32 4 }, align 4
@armada380_corediv_soc = internal constant %struct.clk_corediv_soc_desc { ptr @mvebu_corediv_desc, i32 1, %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_corediv_enable, ptr @clk_corediv_disable, ptr @clk_corediv_is_enabled, ptr null, ptr null, ptr null, ptr @clk_corediv_recalc_rate, ptr @clk_corediv_round_rate, ptr null, ptr null, ptr null, ptr @clk_corediv_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 256, i32 16, i32 4 }, align 4
@mv98dx3236_corediv_soc = internal constant %struct.clk_corediv_soc_desc { ptr @mv98dx3236_corediv_desc, i32 1, %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_corediv_recalc_rate, ptr @clk_corediv_round_rate, ptr null, ptr null, ptr null, ptr @clk_corediv_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 1024, i32 0, i32 8 }, align 4
@mv98dx3236_corediv_desc = internal constant [1 x %struct.clk_corediv_desc] [%struct.clk_corediv_desc { i32 15, i32 6, i32 27 }], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__of_table_armada370_corediv_clk, ptr @__of_table_armada375_corediv_clk, ptr @__of_table_armada380_corediv_clk, ptr @__of_table_mv98dx3236_corediv_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @armada370_corediv_clk_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @mvebu_corediv_clk_init(ptr noundef %0, ptr noundef nonnull @armada370_corediv_soc) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @armada375_corediv_clk_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @mvebu_corediv_clk_init(ptr noundef %0, ptr noundef nonnull @armada375_corediv_soc) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @armada380_corediv_clk_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @mvebu_corediv_clk_init(ptr noundef %0, ptr noundef nonnull @armada380_corediv_soc) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mv98dx3236_corediv_clk_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @mvebu_corediv_clk_init(ptr noundef %0, ptr noundef nonnull @mv98dx3236_corediv_soc) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @mvebu_corediv_clk_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca %struct.clk_init_data, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 263, i32 noundef 9, ptr noundef null) #9
  br label %61

9:                                                ; preds = %2
  %10 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #9
  store ptr %10, ptr %4, align 4
  %11 = getelementptr inbounds %struct.clk_corediv_soc_desc, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 4) #9
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %19, label %15, !prof !9

15:                                               ; preds = %9
  %16 = extractvalue { i32, i1 } %13, 0
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !9

19:                                               ; preds = %15, %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 273, i32 noundef 9, ptr noundef null) #9
  br label %60

20:                                               ; preds = %15
  %21 = load i32, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 28) #9
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %28, label %24, !prof !9

24:                                               ; preds = %20
  %25 = extractvalue { i32, i1 } %22, 0
  %26 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29, !prof !9

28:                                               ; preds = %24, %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 278, i32 noundef 9, ptr noundef null) #9
  tail call void @kfree(ptr noundef nonnull %17) #9
  br label %60

29:                                               ; preds = %24
  %30 = load i32, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %31 = getelementptr inbounds %struct.clk_corediv, ptr %26, i32 0, i32 4
  store i32 0, ptr %31, align 8
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %58, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  %35 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  %36 = getelementptr inbounds %struct.clk_corediv_soc_desc, ptr %1, i32 0, i32 2
  %37 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  %38 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 6
  br label %39

39:                                               ; preds = %54, %33
  %40 = phi i32 [ 0, %33 ], [ %55, %54 ]
  %41 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %40) #9
  store i8 1, ptr %34, align 4
  store ptr %4, ptr %35, align 4
  %42 = load ptr, ptr %5, align 4
  store ptr %42, ptr %3, align 4
  store ptr %36, ptr %37, align 4
  store i32 0, ptr %38, align 4
  %43 = getelementptr %struct.clk_corediv, ptr %26, i32 %40
  %44 = getelementptr %struct.clk_corediv, ptr %26, i32 %40, i32 3
  store ptr %1, ptr %44, align 4
  %45 = load ptr, ptr %1, align 4
  %46 = getelementptr %struct.clk_corediv_desc, ptr %45, i32 %40
  %47 = getelementptr %struct.clk_corediv, ptr %26, i32 %40, i32 2
  store ptr %46, ptr %47, align 4
  %48 = getelementptr %struct.clk_corediv, ptr %26, i32 %40, i32 1
  store ptr %6, ptr %48, align 4
  %49 = getelementptr inbounds %struct.clk_hw, ptr %43, i32 0, i32 2
  store ptr %3, ptr %49, align 4
  %50 = call ptr @clk_register(ptr noundef null, ptr noundef %43) #9
  %51 = getelementptr ptr, ptr %17, i32 %40
  store ptr %50, ptr %51, align 4
  %52 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %54, !prof !9

53:                                               ; preds = %39
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 298, i32 noundef 9, ptr noundef null) #9
  br label %54

54:                                               ; preds = %53, %39
  %55 = add nuw i32 %40, 1
  %56 = load i32, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %39, label %58

58:                                               ; preds = %54, %29
  store ptr %17, ptr @clk_data, align 4
  %59 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @clk_data) #9
  br label %61

60:                                               ; preds = %28, %19
  tail call void @iounmap(ptr noundef nonnull %6) #9
  br label %61

61:                                               ; preds = %60, %58, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_corediv_enable(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.clk_corediv, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_corediv, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_corediv, ptr %0, i32 0, i32 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.clk_corediv, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %11 = getelementptr inbounds %struct.clk_corediv_desc, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = shl nuw i32 1, %12
  %14 = getelementptr inbounds %struct.clk_corediv_soc_desc, ptr %3, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %13, %15
  %17 = or i32 %16, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %18 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #9, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_corediv_disable(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.clk_corediv, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_corediv, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_corediv, ptr %0, i32 0, i32 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.clk_corediv, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  %11 = getelementptr inbounds %struct.clk_corediv_desc, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = shl nuw i32 1, %12
  %14 = getelementptr inbounds %struct.clk_corediv_soc_desc, ptr %3, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %13, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %10, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %19 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #9, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_corediv_is_enabled(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_corediv, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_corediv, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_corediv_desc, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = shl nuw i32 1, %7
  %9 = getelementptr inbounds %struct.clk_corediv_soc_desc, ptr %3, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %8, %10
  %12 = getelementptr inbounds %struct.clk_corediv, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %15 = and i32 %14, %11
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_corediv_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.clk_corediv, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_corediv, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_corediv, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clk_corediv_soc_desc, ptr %4, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  %13 = getelementptr inbounds %struct.clk_corediv_desc, ptr %6, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %12, %14
  %16 = load i32, ptr %6, align 4
  %17 = and i32 %15, %16
  %18 = udiv i32 %1, %17
  ret i32 %18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_corediv_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #7 {
  %4 = load i32, ptr %2, align 4
  %5 = udiv i32 %4, %1
  %6 = icmp ult i32 %5, 4
  %7 = icmp ugt i32 %5, 6
  %8 = select i1 %7, i32 8, i32 %5
  %9 = select i1 %6, i32 4, i32 %8
  %10 = udiv i32 %4, %9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_corediv_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.clk_corediv, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_corediv, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = udiv i32 %2, %1
  %9 = getelementptr inbounds %struct.clk_corediv, ptr %0, i32 0, i32 4
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #9
  %11 = getelementptr inbounds %struct.clk_corediv, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.clk_corediv_soc_desc, ptr %5, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %12, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !18
  %17 = load i32, ptr %7, align 4
  %18 = getelementptr inbounds %struct.clk_corediv_desc, ptr %7, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %17, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %16, %21
  %23 = and i32 %17, %8
  %24 = shl i32 %23, %19
  %25 = or i32 %22, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %26 = load ptr, ptr %11, align 4
  %27 = load i32, ptr %13, align 4
  %28 = getelementptr i8, ptr %26, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #9, !srcloc !13
  %29 = load ptr, ptr %11, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %31 = getelementptr inbounds %struct.clk_corediv_desc, ptr %7, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = shl nuw i32 1, %32
  %34 = or i32 %33, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %35 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %34) #9, !srcloc !13
  %36 = load ptr, ptr %11, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !22
  %38 = getelementptr inbounds %struct.clk_corediv_soc_desc, ptr %5, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %41 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %40) #9, !srcloc !13
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #9
  %43 = load i32, ptr %38, align 4
  %44 = and i32 %43, -256
  %45 = xor i32 %44, -256
  %46 = and i32 %45, %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %47 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %46) #9, !srcloc !13
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2849887}
!11 = !{i64 2151100130}
!12 = !{i64 2151100398}
!13 = !{i64 2849469}
!14 = !{i64 2151102408}
!15 = !{i64 2151102676}
!16 = !{i64 2151098244}
!17 = !{i64 2151104401}
!18 = !{i64 2151106362}
!19 = !{i64 2151106567}
!20 = !{i64 2151107035}
!21 = !{i64 2151107303}
!22 = !{i64 2151107746}
!23 = !{i64 2151107926}
!24 = !{i64 2151108789}
