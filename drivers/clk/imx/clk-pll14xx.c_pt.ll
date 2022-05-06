; ModuleID = '/llk/IR/drivers/clk/imx/clk-pll14xx.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-pll14xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_1443x_pll:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_1443x_pll\22\09\09\09\09\09"
module asm "__kstrtabns_imx_1443x_pll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_1443x_dram_pll:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_1443x_dram_pll\22\09\09\09\09\09"
module asm "__kstrtabns_imx_1443x_dram_pll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_1416x_pll:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_1416x_pll\22\09\09\09\09\09"
module asm "__kstrtabns_imx_1416x_pll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_dev_clk_hw_pll14xx:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_dev_clk_hw_pll14xx\22\09\09\09\09\09"
module asm "__kstrtabns_imx_dev_clk_hw_pll14xx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.imx_pll14xx_rate_table = type { i32, i32, i32, i32, i32 }
%struct.imx_pll14xx_clk = type { i32, ptr, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_pll14xx = type { %struct.clk_hw, ptr, i32, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@imx_pll1443x_tbl = internal constant [6 x %struct.imx_pll14xx_rate_table] [%struct.imx_pll14xx_rate_table { i32 1039500000, i32 2, i32 173, i32 1, i32 16384 }, %struct.imx_pll14xx_rate_table { i32 650000000, i32 3, i32 325, i32 2, i32 0 }, %struct.imx_pll14xx_rate_table { i32 594000000, i32 2, i32 198, i32 2, i32 0 }, %struct.imx_pll14xx_rate_table { i32 519750000, i32 2, i32 173, i32 2, i32 16384 }, %struct.imx_pll14xx_rate_table { i32 393216000, i32 2, i32 262, i32 3, i32 9437 }, %struct.imx_pll14xx_rate_table { i32 361267200, i32 3, i32 361, i32 3, i32 17511 }], align 4
@imx_1443x_pll = dso_local global %struct.imx_pll14xx_clk { i32 1, ptr @imx_pll1443x_tbl, i32 6, i32 0 }, align 4
@__kstrtab_imx_1443x_pll = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_1443x_pll = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_1443x_pll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_1443x_pll to i32), ptr @__kstrtab_imx_1443x_pll, ptr @__kstrtabns_imx_1443x_pll }, section "___ksymtab_gpl+imx_1443x_pll", align 4
@imx_1443x_dram_pll = dso_local global %struct.imx_pll14xx_clk { i32 1, ptr @imx_pll1443x_tbl, i32 6, i32 64 }, align 4
@__kstrtab_imx_1443x_dram_pll = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_1443x_dram_pll = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_1443x_dram_pll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_1443x_dram_pll to i32), ptr @__kstrtab_imx_1443x_dram_pll, ptr @__kstrtabns_imx_1443x_dram_pll }, section "___ksymtab_gpl+imx_1443x_dram_pll", align 4
@imx_pll1416x_tbl = internal constant [10 x %struct.imx_pll14xx_rate_table] [%struct.imx_pll14xx_rate_table { i32 1800000000, i32 3, i32 225, i32 0, i32 0 }, %struct.imx_pll14xx_rate_table { i32 1600000000, i32 3, i32 200, i32 0, i32 0 }, %struct.imx_pll14xx_rate_table { i32 1500000000, i32 3, i32 375, i32 1, i32 0 }, %struct.imx_pll14xx_rate_table { i32 1400000000, i32 3, i32 350, i32 1, i32 0 }, %struct.imx_pll14xx_rate_table { i32 1200000000, i32 3, i32 300, i32 1, i32 0 }, %struct.imx_pll14xx_rate_table { i32 1000000000, i32 3, i32 250, i32 1, i32 0 }, %struct.imx_pll14xx_rate_table { i32 800000000, i32 3, i32 200, i32 1, i32 0 }, %struct.imx_pll14xx_rate_table { i32 750000000, i32 2, i32 250, i32 2, i32 0 }, %struct.imx_pll14xx_rate_table { i32 700000000, i32 3, i32 350, i32 2, i32 0 }, %struct.imx_pll14xx_rate_table { i32 600000000, i32 3, i32 300, i32 2, i32 0 }], align 4
@imx_1416x_pll = dso_local global %struct.imx_pll14xx_clk { i32 0, ptr @imx_pll1416x_tbl, i32 10, i32 0 }, align 4
@__kstrtab_imx_1416x_pll = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_1416x_pll = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_1416x_pll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_1416x_pll to i32), ptr @__kstrtab_imx_1416x_pll, ptr @__kstrtabns_imx_1416x_pll }, section "___ksymtab_gpl+imx_1416x_pll", align 4
@clk_pll1416x_min_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll1416x_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_pll1416x_ops = internal constant %struct.clk_ops { ptr @clk_pll14xx_prepare, ptr @clk_pll14xx_unprepare, ptr @clk_pll14xx_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll1416x_recalc_rate, ptr @clk_pll14xx_round_rate, ptr null, ptr null, ptr null, ptr @clk_pll1416x_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_pll1443x_ops = internal constant %struct.clk_ops { ptr @clk_pll14xx_prepare, ptr @clk_pll14xx_unprepare, ptr @clk_pll14xx_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll1443x_recalc_rate, ptr @clk_pll14xx_round_rate, ptr null, ptr null, ptr null, ptr @clk_pll1443x_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [39 x i8] c"\013%s: Unknown pll type for pll clk %s\0A\00", align 1
@__func__.imx_dev_clk_hw_pll14xx = private unnamed_addr constant [23 x i8] c"imx_dev_clk_hw_pll14xx\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\013%s: failed to register pll %s %d\0A\00", align 1
@__kstrtab_imx_dev_clk_hw_pll14xx = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_dev_clk_hw_pll14xx = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_dev_clk_hw_pll14xx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_dev_clk_hw_pll14xx to i32), ptr @__kstrtab_imx_dev_clk_hw_pll14xx, ptr @__kstrtabns_imx_dev_clk_hw_pll14xx }, section "___ksymtab_gpl+imx_dev_clk_hw_pll14xx", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"\013%s: Invalid rate : %lu for pll clk %s\0A\00", align 1
@__func__.clk_pll1416x_set_rate = private unnamed_addr constant [22 x i8] c"clk_pll1416x_set_rate\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__func__.clk_pll1443x_set_rate = private unnamed_addr constant [22 x i8] c"clk_pll1443x_set_rate\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_imx_1416x_pll, ptr @__ksymtab_imx_1443x_dram_pll, ptr @__ksymtab_imx_1443x_pll, ptr @__ksymtab_imx_dev_clk_hw_pll14xx], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @imx_dev_clk_hw_pll14xx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #7
  %8 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 20, i1 false), !annotation !8
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 28) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %5
  store ptr %1, ptr %7, align 4
  %13 = getelementptr inbounds %struct.imx_pll14xx_clk, ptr %4, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 6
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 2
  store ptr %6, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 5
  store i8 1, ptr %17, align 4
  %18 = load i32, ptr %4, align 4
  switch i32 %18, label %30 [
    i32 0, label %19
    i32 1, label %26
  ]

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.imx_pll14xx_clk, ptr %4, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 1
  br i1 %22, label %24, label %25

24:                                               ; preds = %19
  store ptr @clk_pll1416x_min_ops, ptr %23, align 4
  br label %32

25:                                               ; preds = %19
  store ptr @clk_pll1416x_ops, ptr %23, align 4
  br label %32

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 1
  store ptr @clk_pll1443x_ops, ptr %27, align 4
  %28 = getelementptr inbounds %struct.imx_pll14xx_clk, ptr %4, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  br label %32

30:                                               ; preds = %12
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.imx_dev_clk_hw_pll14xx, ptr noundef %1) #9
  call void @kfree(ptr noundef nonnull %10) #7
  br label %48

32:                                               ; preds = %26, %25, %24
  %33 = phi ptr [ null, %24 ], [ %21, %25 ], [ %29, %26 ]
  %34 = getelementptr inbounds %struct.clk_pll14xx, ptr %10, i32 0, i32 1
  store ptr %3, ptr %34, align 4
  %35 = getelementptr inbounds %struct.clk_hw, ptr %10, i32 0, i32 2
  store ptr %7, ptr %35, align 8
  %36 = getelementptr inbounds %struct.clk_pll14xx, ptr %10, i32 0, i32 2
  store i32 %18, ptr %36, align 8
  %37 = getelementptr inbounds %struct.clk_pll14xx, ptr %10, i32 0, i32 3
  store ptr %33, ptr %37, align 4
  %38 = getelementptr inbounds %struct.imx_pll14xx_clk, ptr %4, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.clk_pll14xx, ptr %10, i32 0, i32 4
  store i32 %39, ptr %40, align 8
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !9
  %42 = and i32 %41, -17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %42) #7, !srcloc !10
  %43 = call i32 @clk_hw_register(ptr noundef %0, ptr noundef nonnull %10) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %32
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.imx_dev_clk_hw_pll14xx, ptr noundef %1, i32 noundef %43) #9
  call void @kfree(ptr noundef nonnull %10) #7
  %47 = inttoptr i32 %43 to ptr
  br label %48

48:                                               ; preds = %45, %32, %30, %5
  %49 = phi ptr [ inttoptr (i32 -22 to ptr), %30 ], [ %47, %45 ], [ %10, %32 ], [ inttoptr (i32 -12 to ptr), %5 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #7
  ret ptr %49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll1416x_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.clk_pll14xx, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  %8 = lshr i32 %7, 12
  %9 = and i32 %8, 1023
  %10 = lshr i32 %7, 4
  %11 = and i32 %10, 63
  %12 = and i32 %7, 7
  %13 = zext i32 %9 to i64
  %14 = mul nuw nsw i64 %13, %3
  %15 = shl nuw nsw i32 %11, %12
  %16 = icmp ult i64 %14, 4294967296
  br i1 %16, label %17, label %20, !prof !11

17:                                               ; preds = %2
  %18 = trunc i64 %14 to i32
  %19 = udiv i32 %18, %15
  br label %24

20:                                               ; preds = %2
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %14) #10, !srcloc !12
  %22 = extractvalue { i64, i64 } %21, 1
  %23 = trunc i64 %22 to i32
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i32 [ %19, %17 ], [ %23, %20 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll14xx_prepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_pll14xx, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !9
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = or i32 %4, 16
  %9 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #7, !srcloc !10
  %10 = or i32 %4, 528
  %11 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #7, !srcloc !10
  %12 = tail call i64 @ktime_get() #7
  %13 = add i64 %12, 10000000
  br label %14

14:                                               ; preds = %18, %7
  %15 = load ptr, ptr %2, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = tail call i64 @ktime_get() #7
  %20 = icmp sgt i64 %19, %13
  br i1 %20, label %21, label %14

21:                                               ; preds = %18
  %22 = load ptr, ptr %2, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %14
  %26 = and i32 %10, -17
  %27 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #7, !srcloc !10
  br label %28

28:                                               ; preds = %25, %21, %1
  %29 = phi i32 [ 0, %25 ], [ 0, %1 ], [ -110, %21 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_pll14xx_unprepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_pll14xx, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !9
  %5 = and i32 %4, -513
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #7, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll14xx_is_prepared(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_pll14xx, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !9
  %5 = lshr i32 %4, 9
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @clk_pll14xx_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #6 {
  %4 = getelementptr inbounds %struct.clk_pll14xx, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_pll14xx, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %14, %3
  %10 = phi i32 [ %15, %14 ], [ 0, %3 ]
  %11 = getelementptr %struct.imx_pll14xx_rate_table, ptr %5, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = add nuw nsw i32 %10, 1
  %16 = icmp eq i32 %15, %7
  br i1 %16, label %17, label %9

17:                                               ; preds = %14
  %18 = add i32 %7, -1
  br label %19

19:                                               ; preds = %17, %3
  %20 = phi i32 [ -1, %3 ], [ %18, %17 ]
  %21 = getelementptr %struct.imx_pll14xx_rate_table, ptr %5, i32 %20
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %19, %9
  %24 = phi i32 [ %22, %19 ], [ %12, %9 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll1416x_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_pll14xx, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_pll14xx, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %12, label %19

9:                                                ; preds = %12
  %10 = add nuw nsw i32 %13, 1
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %14 = getelementptr %struct.imx_pll14xx_rate_table, ptr %5, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %17, %9, %3
  %20 = tail call ptr @clk_hw_get_name(ptr noundef %0) #7
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.clk_pll1416x_set_rate, i32 noundef %1, ptr noundef %20) #9
  br label %84

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.clk_pll14xx, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !9
  %27 = lshr i32 %26, 12
  %28 = and i32 %27, 1023
  %29 = getelementptr %struct.imx_pll14xx_rate_table, ptr %5, i32 %13, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %28
  br i1 %31, label %32, label %45

32:                                               ; preds = %22
  %33 = lshr i32 %26, 4
  %34 = and i32 %33, 63
  %35 = getelementptr %struct.imx_pll14xx_rate_table, ptr %5, i32 %13, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %34
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = and i32 %26, -8
  %40 = getelementptr %struct.imx_pll14xx_rate_table, ptr %5, i32 %13, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = or i32 %41, %39
  %43 = load ptr, ptr %23, align 4
  %44 = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #7, !srcloc !10
  br label %84

45:                                               ; preds = %32, %22
  %46 = load ptr, ptr %23, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #7, !srcloc !9
  %48 = or i32 %47, 536870912
  %49 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %48) #7, !srcloc !10
  %50 = and i32 %48, -513
  %51 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %50) #7, !srcloc !10
  %52 = or i32 %50, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %53 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %52) #7, !srcloc !10
  %54 = load i32, ptr %29, align 4
  %55 = shl i32 %54, 12
  %56 = getelementptr %struct.imx_pll14xx_rate_table, ptr %5, i32 %13, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = shl i32 %57, 4
  %59 = or i32 %58, %55
  %60 = getelementptr %struct.imx_pll14xx_rate_table, ptr %5, i32 %13, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = or i32 %59, %61
  %63 = load ptr, ptr %23, align 4
  %64 = getelementptr i8, ptr %63, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #7, !srcloc !10
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 644244) #7
  %66 = or i32 %47, 536871440
  %67 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %66) #7, !srcloc !10
  %68 = tail call i64 @ktime_get() #7
  %69 = add i64 %68, 10000000
  br label %70

70:                                               ; preds = %74, %45
  %71 = load ptr, ptr %23, align 4
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = tail call i64 @ktime_get() #7
  %76 = icmp sgt i64 %75, %69
  br i1 %76, label %77, label %70

77:                                               ; preds = %74
  %78 = load ptr, ptr %23, align 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77, %70
  %82 = and i32 %66, -17
  %83 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %82) #7, !srcloc !10
  br label %84

84:                                               ; preds = %81, %77, %38, %19
  %85 = phi i32 [ 0, %81 ], [ 0, %38 ], [ -22, %19 ], [ -110, %77 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll1443x_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.clk_pll14xx, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !9
  %11 = and i32 %7, 7
  %12 = shl i32 %7, 4
  %13 = and i32 %12, 67043328
  %14 = shl i32 %10, 16
  %15 = ashr exact i32 %14, 16
  %16 = add nsw i32 %15, %13
  %17 = zext i32 %16 to i64
  %18 = mul nuw i64 %17, %3
  %19 = shl i32 %7, 12
  %20 = and i32 %19, 4128768
  %21 = shl nuw nsw i32 %20, %11
  %22 = icmp ult i64 %18, 4294967296
  br i1 %22, label %23, label %26, !prof !11

23:                                               ; preds = %2
  %24 = trunc i64 %18 to i32
  %25 = udiv i32 %24, %21
  br label %30

26:                                               ; preds = %2
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %21, i64 %18) #10, !srcloc !12
  %28 = extractvalue { i64, i64 } %27, 1
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i32 [ %25, %23 ], [ %29, %26 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll1443x_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_pll14xx, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_pll14xx, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %12, label %19

9:                                                ; preds = %12
  %10 = add nuw nsw i32 %13, 1
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %14 = getelementptr %struct.imx_pll14xx_rate_table, ptr %5, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %17, %9, %3
  %20 = tail call ptr @clk_hw_get_name(ptr noundef %0) #7
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.clk_pll1443x_set_rate, i32 noundef %1, ptr noundef %20) #9
  br label %90

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.clk_pll14xx, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !9
  %27 = lshr i32 %26, 12
  %28 = and i32 %27, 1023
  %29 = getelementptr %struct.imx_pll14xx_rate_table, ptr %5, i32 %13, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %28
  br i1 %31, label %32, label %49

32:                                               ; preds = %22
  %33 = lshr i32 %26, 4
  %34 = and i32 %33, 63
  %35 = getelementptr %struct.imx_pll14xx_rate_table, ptr %5, i32 %13, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %34
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = and i32 %26, -8
  %40 = getelementptr %struct.imx_pll14xx_rate_table, ptr %5, i32 %13, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = or i32 %41, %39
  %43 = load ptr, ptr %23, align 4
  %44 = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #7, !srcloc !10
  %45 = getelementptr %struct.imx_pll14xx_rate_table, ptr %5, i32 %13, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = load ptr, ptr %23, align 4
  %48 = getelementptr i8, ptr %47, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #7, !srcloc !10
  br label %90

49:                                               ; preds = %32, %22
  %50 = load ptr, ptr %23, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !9
  %52 = and i32 %51, -513
  %53 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %52) #7, !srcloc !10
  %54 = or i32 %52, 16
  %55 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %54) #7, !srcloc !10
  %56 = load i32, ptr %29, align 4
  %57 = shl i32 %56, 12
  %58 = getelementptr %struct.imx_pll14xx_rate_table, ptr %5, i32 %13, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = shl i32 %59, 4
  %61 = or i32 %60, %57
  %62 = getelementptr %struct.imx_pll14xx_rate_table, ptr %5, i32 %13, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %61, %63
  %65 = load ptr, ptr %23, align 4
  %66 = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #7, !srcloc !10
  %67 = getelementptr %struct.imx_pll14xx_rate_table, ptr %5, i32 %13, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %23, align 4
  %70 = getelementptr i8, ptr %69, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #7, !srcloc !10
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 644244) #7
  %72 = or i32 %51, 528
  %73 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %72) #7, !srcloc !10
  %74 = tail call i64 @ktime_get() #7
  %75 = add i64 %74, 10000000
  br label %76

76:                                               ; preds = %80, %49
  %77 = load ptr, ptr %23, align 4
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = tail call i64 @ktime_get() #7
  %82 = icmp sgt i64 %81, %75
  br i1 %82, label %83, label %76

83:                                               ; preds = %80
  %84 = load ptr, ptr %23, align 4
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83, %76
  %88 = and i32 %72, -17
  %89 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %88) #7, !srcloc !10
  br label %90

90:                                               ; preds = %87, %83, %38, %19
  %91 = phi i32 [ 0, %87 ], [ 0, %38 ], [ -22, %19 ], [ -110, %83 ]
  ret i32 %91
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

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
!9 = !{i64 2851180}
!10 = !{i64 2850762}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148661850, i64 2148662130, i64 2148662464, i64 2148662798}
!13 = !{i64 2151126718}
!14 = !{i64 2151127028}
!15 = !{i64 2151130662}
