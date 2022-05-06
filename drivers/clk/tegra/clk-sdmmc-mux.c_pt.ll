; ModuleID = '/llk/IR/drivers/clk/tegra/clk-sdmmc-mux.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-sdmmc-mux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.tegra_sdmmc_mux = type { %struct.clk_hw, ptr, ptr, ptr, %struct.tegra_clk_periph_gate, i8 }
%struct.tegra_clk_periph_gate = type { i32, %struct.clk_hw, ptr, i8, i32, ptr, ptr }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@tegra_clk_sdmmc_mux_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_sdmmc_mux_enable, ptr @clk_sdmmc_mux_disable, ptr @clk_sdmmc_mux_is_enabled, ptr @clk_sdmmc_mux_disable_unused, ptr null, ptr @clk_sdmmc_mux_restore_context, ptr @clk_sdmmc_mux_recalc_rate, ptr null, ptr @clk_sdmmc_mux_determine_rate, ptr @clk_sdmmc_mux_set_parent, ptr @clk_sdmmc_mux_get_parent, ptr @clk_sdmmc_mux_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@mux_sdmmc_parents = internal constant [5 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 4
@periph_clk_enb_refcnt = external dso_local local_unnamed_addr global ptr, align 4
@tegra_clk_periph_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str = private unnamed_addr constant [34 x i8] c"drivers/clk/tegra/clk-sdmmc-mux.c\00", align 1
@mux_non_lj_idx = internal unnamed_addr constant [5 x i8] c"\00\03\07\04\06", align 1
@mux_lj_idx = internal unnamed_addr constant [5 x i8] c"\00\01\02\05\06", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unknown parent selector %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"pll_p\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"pll_c4_out2\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"pll_c4_out0\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"pll_c4_out1\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"clk_m\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_sdmmc_mux_div(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #6
  %9 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 12, i1 false), !annotation !8
  %10 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @tegra_clk_sdmmc_mux_ops, ptr %10, align 4
  store ptr %0, ptr %8, align 4
  %11 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 %5, ptr %11, align 4
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr @mux_sdmmc_parents, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 5, ptr %13, align 4
  %14 = tail call ptr @get_reg_bank(i32 noundef %3) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %16

16:                                               ; preds = %7
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 64) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.clk_hw, ptr %18, i32 0, i32 2
  store ptr %8, ptr %21, align 8
  %22 = getelementptr i8, ptr %1, i32 %2
  %23 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %18, i32 0, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %18, i32 0, i32 2
  store ptr %6, ptr %24, align 8
  %25 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %18, i32 0, i32 4, i32 2
  store ptr %1, ptr %25, align 8
  %26 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %18, i32 0, i32 4, i32 6
  store ptr %14, ptr %26, align 8
  %27 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %28 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %18, i32 0, i32 4, i32 5
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %18, i32 0, i32 4, i32 4
  store i32 %3, ptr %29, align 8
  %30 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %18, i32 0, i32 4, i32 3
  store i8 4, ptr %30, align 4
  %31 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %18, i32 0, i32 5
  store i8 %4, ptr %31, align 4
  %32 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %18, i32 0, i32 3
  store ptr @tegra_clk_periph_gate_ops, ptr %32, align 4
  %33 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %18) #6
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  call void @kfree(ptr noundef nonnull %18) #6
  br label %38

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %18, i32 0, i32 4, i32 1, i32 1
  store ptr %33, ptr %37, align 8
  br label %38

38:                                               ; preds = %36, %35, %16, %7
  %39 = phi ptr [ %33, %35 ], [ %33, %36 ], [ inttoptr (i32 -22 to ptr), %7 ], [ inttoptr (i32 -12 to ptr), %16 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #6
  ret ptr %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_reg_bank(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sdmmc_mux_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %0, i32 0, i32 4, i32 1
  %5 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %0, i32 0, i32 4, i32 1, i32 1
  store ptr %6, ptr %7, align 4
  %8 = load ptr, ptr %0, align 4
  store ptr %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %4) #6
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_sdmmc_mux_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %0, i32 0, i32 4, i32 1
  %5 = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sdmmc_mux_is_enabled(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %0, i32 0, i32 4, i32 1
  %5 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %0, i32 0, i32 4, i32 1, i32 1
  store ptr %6, ptr %7, align 4
  %8 = load ptr, ptr %0, align 4
  store ptr %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %4) #6
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_sdmmc_mux_disable_unused(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %0, i32 0, i32 4, i32 1
  %5 = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_sdmmc_mux_restore_context(ptr noundef %0) #0 {
  %2 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #6
  %3 = tail call i32 @clk_hw_get_rate(ptr noundef %2) #6
  %4 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #6
  %5 = tail call i32 @clk_hw_get_parent_index(ptr noundef %0) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef null) #6
  br label %25

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !10
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %5, 255
  %15 = getelementptr [5 x i8], ptr @mux_non_lj_idx, i32 0, i32 %14
  %16 = getelementptr [5 x i8], ptr @mux_lj_idx, i32 0, i32 %14
  %17 = select i1 %13, ptr %16, ptr %15
  %18 = load i8, ptr %17, align 1
  %19 = and i32 %11, 536870911
  %20 = zext i8 %18 to i32
  %21 = shl i32 %20, 29
  %22 = or i32 %21, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %23 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #6, !srcloc !12
  %24 = tail call i32 @clk_sdmmc_mux_set_rate(ptr noundef %0, i32 noundef %4, i32 noundef %3)
  br label %25

25:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sdmmc_mux_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !10
  %7 = and i32 %6, 255
  %8 = add nuw nsw i32 %7, 2
  %9 = shl nuw nsw i64 %3, 1
  %10 = add nuw nsw i32 %7, 1
  %11 = zext i32 %10 to i64
  %12 = add nuw nsw i64 %9, %11
  %13 = icmp ult i64 %12, 4294967296
  br i1 %13, label %14, label %17, !prof !13

14:                                               ; preds = %2
  %15 = trunc i64 %12 to i32
  %16 = udiv i32 %15, %8
  br label %21

17:                                               ; preds = %2
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %12) #8, !srcloc !14
  %19 = extractvalue { i64, i64 } %18, 1
  %20 = trunc i64 %19 to i32
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i32 [ %16, %14 ], [ %20, %17 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sdmmc_mux_determine_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %5, i32 %7)
  %9 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %8, i32 %10)
  store i32 %11, ptr %1, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %0, i32 0, i32 5
  %15 = load i8, ptr %14, align 4
  %16 = tail call i32 @div_frac_get(i32 noundef %11, i32 noundef %4, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext %15) #6
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 0)
  %18 = load i8, ptr %14, align 4
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  %21 = shl i32 %4, 1
  %22 = add nuw i32 %17, 2
  %23 = add i32 %21, -1
  %24 = add i32 %23, %22
  %25 = select i1 %20, i32 %21, i32 %24
  %26 = udiv i32 %25, %22
  store i32 %26, ptr %1, align 4
  br label %27

27:                                               ; preds = %13, %2
  %28 = phi i32 [ 0, %13 ], [ %4, %2 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sdmmc_mux_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !10
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 0
  %8 = zext i8 %1 to i32
  %9 = getelementptr [5 x i8], ptr @mux_non_lj_idx, i32 0, i32 %8
  %10 = getelementptr [5 x i8], ptr @mux_lj_idx, i32 0, i32 %8
  %11 = select i1 %7, ptr %10, ptr %9
  %12 = load i8, ptr %11, align 1
  %13 = and i32 %5, 536870911
  %14 = zext i8 %12 to i32
  %15 = shl i32 %14, 29
  %16 = or i32 %15, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %17 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #6, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_sdmmc_mux_get_parent(ptr noundef %0) #0 {
  %2 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !10
  %6 = lshr i32 %5, 29
  %7 = and i32 %5, 255
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, ptr @mux_lj_idx, ptr @mux_non_lj_idx
  %10 = icmp sgt i32 %2, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %19, %1
  %12 = phi i32 [ %20, %19 ], [ 0, %1 ]
  %13 = getelementptr i8, ptr %9, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %6, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = trunc i32 %12 to i8
  br label %23

19:                                               ; preds = %11
  %20 = add nuw nsw i32 %12, 1
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %22, label %11

22:                                               ; preds = %19, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %6) #6
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i8 [ %18, %17 ], [ 0, %22 ]
  ret i8 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sdmmc_mux_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %0, i32 0, i32 5
  %5 = load i8, ptr %4, align 4
  %6 = tail call i32 @div_frac_get(i32 noundef %1, i32 noundef %2, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext %5) #6
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %54, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %10) #6
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ]
  %16 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #6
  %17 = getelementptr inbounds %struct.tegra_sdmmc_mux, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !10
  %20 = lshr i32 %19, 29
  %21 = and i32 %19, 255
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr @mux_lj_idx, ptr @mux_non_lj_idx
  %24 = icmp sgt i32 %16, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %33, %14
  %26 = phi i32 [ %34, %33 ], [ 0, %14 ]
  %27 = getelementptr i8, ptr %23, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %20, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = and i32 %26, 255
  br label %37

33:                                               ; preds = %25
  %34 = add nuw nsw i32 %26, 1
  %35 = icmp eq i32 %34, %16
  br i1 %35, label %36, label %25

36:                                               ; preds = %33, %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %20) #6
  br label %37

37:                                               ; preds = %36, %31
  %38 = phi i32 [ %32, %31 ], [ 0, %36 ]
  %39 = icmp eq i32 %6, 0
  %40 = getelementptr [5 x i8], ptr @mux_non_lj_idx, i32 0, i32 %38
  %41 = getelementptr [5 x i8], ptr @mux_lj_idx, i32 0, i32 %38
  %42 = select i1 %39, ptr %41, ptr %40
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 %44, 29
  %46 = or i32 %45, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %47 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %46) #6, !srcloc !12
  %48 = load ptr, ptr %17, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !16
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 429496) #6
  %51 = load ptr, ptr %9, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %51, i32 noundef %15) #6
  br label %54

54:                                               ; preds = %53, %37, %3
  %55 = phi i32 [ %6, %3 ], [ 0, %53 ], [ 0, %37 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_parent_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @div_frac_get(i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind readnone }

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
!10 = !{i64 2847416}
!11 = !{i64 2151106664}
!12 = !{i64 2846998}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148658086, i64 2148658366, i64 2148658700, i64 2148659034}
!15 = !{i64 2151120032}
!16 = !{i64 2151120560}
