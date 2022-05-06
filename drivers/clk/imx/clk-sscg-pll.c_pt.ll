; ModuleID = '/llk/IR/drivers/clk/imx/clk-sscg-pll.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-sscg-pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_clk_hw_sscg_pll:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_clk_hw_sscg_pll\22\09\09\09\09\09"
module asm "__kstrtabns_imx_clk_hw_sscg_pll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_sscg_pll = type { %struct.clk_hw, %struct.clk_ops, ptr, %struct.clk_sscg_pll_setup, i8, i8, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_sscg_pll_setup = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@clk_sscg_pll_ops = internal constant %struct.clk_ops { ptr @clk_sscg_pll_prepare, ptr @clk_sscg_pll_unprepare, ptr @clk_sscg_pll_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_sscg_pll_recalc_rate, ptr null, ptr @clk_sscg_pll_determine_rate, ptr @clk_sscg_pll_set_parent, ptr @clk_sscg_pll_get_parent, ptr @clk_sscg_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_imx_clk_hw_sscg_pll = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_clk_hw_sscg_pll = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_clk_hw_sscg_pll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_clk_hw_sscg_pll to i32), ptr @__kstrtab_imx_clk_hw_sscg_pll, ptr @__kstrtabns_imx_clk_hw_sscg_pll }, section "___ksymtab_gpl+imx_clk_hw_sscg_pll", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_imx_clk_hw_sscg_pll], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_sscg_pll(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %6, i32 noundef %7) #0 {
  %9 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #6
  %10 = getelementptr inbounds i8, ptr %9, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %10, i8 0, i32 12, i1 false), !annotation !8
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 216) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.clk_sscg_pll, ptr %12, i32 0, i32 4
  store i8 %3, ptr %15, align 8
  %16 = getelementptr inbounds %struct.clk_sscg_pll, ptr %12, i32 0, i32 5
  store i8 %4, ptr %16, align 1
  %17 = getelementptr inbounds %struct.clk_sscg_pll, ptr %12, i32 0, i32 6
  store i8 %5, ptr %17, align 2
  %18 = getelementptr inbounds %struct.clk_sscg_pll, ptr %12, i32 0, i32 2
  store ptr %0, ptr %9, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 1
  store ptr @clk_sscg_pll_ops, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 6
  store i32 %7, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 2
  store ptr %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 5
  store i8 %2, ptr %22, align 4
  store ptr %6, ptr %18, align 8
  %23 = getelementptr inbounds %struct.clk_hw, ptr %12, i32 0, i32 2
  store ptr %9, ptr %23, align 8
  %24 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %12) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %14
  call void @kfree(ptr noundef nonnull %12) #6
  %27 = inttoptr i32 %24 to ptr
  br label %28

28:                                               ; preds = %26, %14, %8
  %29 = phi ptr [ %27, %26 ], [ %12, %14 ], [ inttoptr (i32 -12 to ptr), %8 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #6
  ret ptr %29
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

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sscg_pll_prepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  %5 = and i32 %4, -129
  %6 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #6, !srcloc !10
  %7 = load ptr, ptr %2, align 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !9
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = tail call i64 @ktime_get() #6
  %13 = add i64 %12, 70000
  br label %14

14:                                               ; preds = %18, %11
  %15 = load ptr, ptr %2, align 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = tail call i64 @ktime_get() #6
  %20 = icmp sgt i64 %19, %13
  br i1 %20, label %21, label %14

21:                                               ; preds = %18
  %22 = load ptr, ptr %2, align 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  br label %24

24:                                               ; preds = %21, %14
  %25 = phi i32 [ %23, %21 ], [ %16, %14 ]
  %26 = icmp slt i32 %25, 0
  %27 = select i1 %26, i32 0, i32 -110
  br label %28

28:                                               ; preds = %24, %1
  %29 = phi i32 [ %27, %24 ], [ 0, %1 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_sscg_pll_unprepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  %5 = or i32 %4, 128
  %6 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #6, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sscg_pll_is_prepared(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  %5 = lshr i32 %4, 7
  %6 = and i32 %5, 1
  %7 = xor i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sscg_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !9
  %7 = lshr i32 %6, 25
  %8 = and i32 %7, 7
  %9 = lshr i32 %6, 19
  %10 = and i32 %9, 63
  %11 = lshr i32 %6, 13
  %12 = and i32 %11, 63
  %13 = lshr i32 %6, 7
  %14 = and i32 %13, 63
  %15 = lshr i32 %6, 1
  %16 = and i32 %15, 63
  %17 = zext i32 %1 to i64
  %18 = load ptr, ptr %3, align 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %2
  %23 = and i32 %19, 32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %22
  %26 = zext i32 %14 to i64
  %27 = mul nuw nsw i64 %26, %17
  %28 = add nuw nsw i32 %10, 1
  %29 = add nuw nsw i32 %16, 1
  %30 = mul nuw nsw i32 %28, %29
  %31 = icmp ult i64 %27, 4294967296
  br i1 %31, label %32, label %35, !prof !14

32:                                               ; preds = %25
  %33 = trunc i64 %27 to i32
  %34 = udiv i32 %33, %30
  br label %59

35:                                               ; preds = %25
  %36 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %30, i64 %27) #8, !srcloc !15
  %37 = extractvalue { i64, i64 } %36, 1
  %38 = trunc i64 %37 to i32
  br label %59

39:                                               ; preds = %22
  %40 = shl nuw nsw i64 %17, 1
  %41 = add nuw nsw i32 %12, 1
  %42 = add nuw nsw i32 %14, 1
  %43 = mul nuw nsw i32 %41, %42
  %44 = zext i32 %43 to i64
  %45 = mul nuw nsw i64 %40, %44
  %46 = add nuw nsw i32 %8, 1
  %47 = add nuw nsw i32 %10, 1
  %48 = mul nuw nsw i32 %46, %47
  %49 = add nuw nsw i32 %16, 1
  %50 = mul nuw nsw i32 %48, %49
  %51 = icmp ult i64 %45, 4294967296
  br i1 %51, label %52, label %55, !prof !14

52:                                               ; preds = %39
  %53 = trunc i64 %45 to i32
  %54 = udiv i32 %53, %50
  br label %59

55:                                               ; preds = %39
  %56 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %50, i64 %45) #8, !srcloc !15
  %57 = extractvalue { i64, i64 } %56, 1
  %58 = trunc i64 %57 to i32
  br label %59

59:                                               ; preds = %55, %52, %35, %32, %2
  %60 = phi i32 [ %54, %52 ], [ %58, %55 ], [ %34, %32 ], [ %38, %35 ], [ %1, %2 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sscg_pll_determine_rate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = zext i32 %9 to i64
  %11 = add i32 %3, -1200000001
  %12 = icmp ult i32 %11, -1180000001
  br i1 %12, label %48, label %13

13:                                               ; preds = %2
  store i32 %3, ptr %8, align 4
  store i32 %3, ptr %5, align 4
  %14 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 6
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %16) #6
  %18 = tail call i32 @__clk_determine_rate(ptr noundef %17, ptr noundef %1) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3
  %22 = load i32, ptr %1, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(88) %21, i8 0, i32 88, i1 false) #6
  %23 = icmp eq i32 %22, %3
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 5
  store i32 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 8
  store i64 %4, ptr %26, align 8
  br label %27

27:                                               ; preds = %24, %20, %13
  %28 = phi i32 [ %18, %13 ], [ 0, %24 ], [ -22, %20 ]
  %29 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr %17, ptr %29, align 4
  %30 = load i32, ptr %1, align 4
  %31 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 8
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, ptr %1, align 4
  %35 = icmp eq i32 %28, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %27
  %37 = tail call fastcc i32 @__clk_sscg_pll_determine_rate(ptr noundef %0, ptr noundef %1, i64 noundef 25000000, i64 noundef 54000000, i64 noundef %4, i32 noundef 2)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = tail call fastcc i32 @__clk_sscg_pll_determine_rate(ptr noundef %0, ptr noundef %1, i64 noundef 25000000, i64 noundef 235000000, i64 noundef %4, i32 noundef 0)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i64, ptr %32, align 8
  %44 = icmp ult i64 %43, %7
  %45 = icmp ugt i64 %43, %10
  %46 = select i1 %44, i1 true, i1 %45
  %47 = select i1 %46, i32 %40, i32 0
  br label %48

48:                                               ; preds = %42, %39, %36, %27, %2
  %49 = phi i32 [ %47, %42 ], [ -22, %2 ], [ 0, %27 ], [ 0, %36 ], [ 0, %39 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sscg_pll_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !16
  %6 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %5, -49
  %9 = shl i32 %7, 4
  %10 = and i32 %9, 48
  %11 = or i32 %10, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %12 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #6, !srcloc !10
  %13 = load ptr, ptr %3, align 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !9
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = tail call i64 @ktime_get() #6
  %19 = add i64 %18, 70000
  br label %20

20:                                               ; preds = %24, %17
  %21 = load ptr, ptr %3, align 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = tail call i64 @ktime_get() #6
  %26 = icmp sgt i64 %25, %19
  br i1 %26, label %27, label %20

27:                                               ; preds = %24
  %28 = load ptr, ptr %3, align 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  br label %30

30:                                               ; preds = %27, %20
  %31 = phi i32 [ %29, %27 ], [ %22, %20 ]
  %32 = icmp slt i32 %31, 0
  %33 = select i1 %32, i32 0, i32 -110
  br label %34

34:                                               ; preds = %30, %2
  %35 = phi i32 [ %33, %30 ], [ 0, %2 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_sscg_pll_get_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 8
  %4 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 6
  %11 = load i8, ptr %10, align 2
  br label %18

12:                                               ; preds = %1
  %13 = and i32 %6, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 5
  %17 = load i8, ptr %16, align 1
  br label %18

18:                                               ; preds = %15, %12, %9
  %19 = phi i8 [ %11, %9 ], [ %17, %15 ], [ %3, %12 ]
  ret i8 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sscg_pll_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %8 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %7, -49
  %11 = shl i32 %9, 4
  %12 = and i32 %11, 48
  %13 = or i32 %12, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %14 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #6, !srcloc !10
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr i8, ptr %15, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !9
  %18 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %4, align 8
  %23 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %17, -268435455
  %28 = shl i32 %19, 13
  %29 = and i32 %28, 516096
  %30 = or i32 %29, %27
  %31 = shl i32 %21, 7
  %32 = and i32 %31, 8064
  %33 = or i32 %30, %32
  %34 = shl i32 %22, 25
  %35 = and i32 %34, 234881024
  %36 = or i32 %33, %35
  %37 = shl i32 %24, 19
  %38 = and i32 %37, 33030144
  %39 = or i32 %36, %38
  %40 = shl i32 %26, 1
  %41 = and i32 %40, 126
  %42 = or i32 %39, %41
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr i8, ptr %43, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #6, !srcloc !10
  %45 = load ptr, ptr %5, align 8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !9
  %47 = and i32 %46, 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %3
  %50 = tail call i64 @ktime_get() #6
  %51 = add i64 %50, 70000
  br label %52

52:                                               ; preds = %56, %49
  %53 = load ptr, ptr %5, align 8
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = tail call i64 @ktime_get() #6
  %58 = icmp sgt i64 %57, %51
  br i1 %58, label %59, label %52

59:                                               ; preds = %56
  %60 = load ptr, ptr %5, align 8
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  br label %62

62:                                               ; preds = %59, %52
  %63 = phi i32 [ %61, %59 ], [ %54, %52 ]
  %64 = icmp slt i32 %63, 0
  %65 = select i1 %64, i32 0, i32 -110
  br label %66

66:                                               ; preds = %62, %3
  %67 = phi i32 [ %65, %62 ], [ 0, %3 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__clk_sscg_pll_determine_rate(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3
  %8 = trunc i64 %3 to i32
  %9 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 2
  store i32 %8, ptr %9, align 4
  %10 = trunc i64 %2 to i32
  %11 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  switch i32 %5, label %16 [
    i32 1, label %12
    i32 2, label %14
  ]

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 6
  br label %18

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 5
  br label %18

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 4
  br label %18

18:                                               ; preds = %16, %14, %12
  %19 = phi ptr [ %17, %16 ], [ %15, %14 ], [ %13, %12 ]
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %21) #6
  %23 = tail call i32 @__clk_determine_rate(ptr noundef %22, ptr noundef %1) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %197

25:                                               ; preds = %18
  %26 = load i32, ptr %1, align 4
  %27 = zext i32 %26 to i64
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(88) %7, i8 0, i32 88, i1 false) #6
  switch i32 %5, label %197 [
    i32 1, label %28
    i32 2, label %33
    i32 0, label %99
  ]

28:                                               ; preds = %25
  %29 = icmp eq i64 %27, %4
  br i1 %29, label %30, label %197

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 5
  store i32 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 8
  store i64 %4, ptr %32, align 8
  br label %197

33:                                               ; preds = %25
  %34 = add nsw i64 %27, -2400000001
  %35 = icmp ult i64 %34, -800000001
  br i1 %35, label %197, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 1
  %38 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 2
  %39 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 3
  %40 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 4
  %41 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 5
  %42 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 6
  %43 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 7
  %44 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 8
  %45 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 9
  %46 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 11
  %47 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 12
  %48 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 13
  %49 = getelementptr inbounds i8, ptr %7, i32 84
  %50 = trunc i64 %4 to i32
  br label %51

51:                                               ; preds = %95, %36
  %52 = phi i32 [ %55, %95 ], [ 0, %36 ]
  %53 = phi i32 [ %96, %95 ], [ 1200000000, %36 ]
  %54 = phi i32 [ %97, %95 ], [ -22, %36 ]
  %55 = add nuw nsw i32 %52, 1
  %56 = udiv i32 %26, %55
  %57 = zext i32 %56 to i64
  %58 = add nsw i64 %57, -54000000
  %59 = icmp ult i64 %58, 21000001
  br i1 %59, label %60, label %95

60:                                               ; preds = %51
  %61 = udiv i32 %26, %55
  %62 = zext i32 %61 to i64
  %63 = shl nuw nsw i64 %62, 1
  br label %64

64:                                               ; preds = %93, %60
  %65 = phi i32 [ %67, %93 ], [ 0, %60 ]
  %66 = phi i32 [ %89, %93 ], [ %53, %60 ]
  %67 = add nuw nsw i32 %65, 1
  %68 = zext i32 %67 to i64
  %69 = mul nuw i64 %63, %68
  %70 = add i64 %69, -1200000000
  %71 = icmp ult i64 %70, 1200000001
  %72 = trunc i64 %69 to i32
  br label %73

73:                                               ; preds = %88, %64
  %74 = phi i32 [ 0, %64 ], [ %91, %88 ]
  %75 = phi i32 [ %66, %64 ], [ %89, %88 ]
  %76 = phi i32 [ -22, %64 ], [ %90, %88 ]
  br i1 %71, label %77, label %88

77:                                               ; preds = %73
  %78 = shl nuw i32 %74, 1
  %79 = add nuw nsw i32 %78, 2
  %80 = udiv i32 %72, %79
  %81 = sub i32 %80, %50
  %82 = tail call i32 @llvm.abs.i32(i32 %75, i1 false) #6
  %83 = tail call i32 @llvm.abs.i32(i32 %81, i1 false) #6
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = zext i32 %80 to i64
  store i32 0, ptr %7, align 8
  store i32 0, ptr %37, align 4
  store i32 %52, ptr %38, align 8
  store i32 %65, ptr %39, align 4
  store i32 %74, ptr %40, align 8
  store i32 0, ptr %41, align 4
  store i64 %27, ptr %42, align 8
  store i64 %69, ptr %43, align 8
  store i64 %86, ptr %44, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false) #6
  store i64 %57, ptr %46, align 8
  store i64 %4, ptr %47, align 8
  store i32 %81, ptr %48, align 8
  store i32 0, ptr %49, align 4
  %87 = icmp eq i64 %86, %4
  br i1 %87, label %197, label %88

88:                                               ; preds = %85, %77, %73
  %89 = phi i32 [ %75, %77 ], [ %75, %73 ], [ %81, %85 ]
  %90 = phi i32 [ -1, %77 ], [ %76, %73 ], [ -1, %85 ]
  %91 = add nuw nsw i32 %74, 1
  %92 = icmp eq i32 %91, 64
  br i1 %92, label %93, label %73

93:                                               ; preds = %88
  %94 = icmp eq i32 %67, 64
  br i1 %94, label %95, label %64

95:                                               ; preds = %93, %51
  %96 = phi i32 [ %53, %51 ], [ %89, %93 ]
  %97 = phi i32 [ %54, %51 ], [ %90, %93 ]
  %98 = icmp eq i32 %55, 64
  br i1 %98, label %197, label %51

99:                                               ; preds = %25
  %100 = add nsw i64 %27, -235000001
  %101 = icmp ult i64 %100, -210000001
  br i1 %101, label %197, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 1
  %104 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 2
  %105 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 3
  %106 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 4
  %107 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 5
  %108 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 6
  %109 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 7
  %110 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 8
  %111 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 9
  %112 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 10
  %113 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 11
  %114 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 12
  %115 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 13
  %116 = getelementptr inbounds i8, ptr %7, i32 84
  %117 = trunc i64 %4 to i32
  br label %118

118:                                              ; preds = %193, %102
  %119 = phi i32 [ %122, %193 ], [ 0, %102 ]
  %120 = phi i32 [ %194, %193 ], [ 1200000000, %102 ]
  %121 = phi i32 [ %195, %193 ], [ -22, %102 ]
  %122 = add nuw nsw i32 %119, 1
  %123 = udiv i32 %26, %122
  %124 = zext i32 %123 to i64
  %125 = add nsw i64 %124, -25000000
  %126 = icmp ult i64 %125, 29000001
  br i1 %126, label %127, label %193

127:                                              ; preds = %118
  %128 = udiv i32 %26, %122
  %129 = zext i32 %128 to i64
  br label %130

130:                                              ; preds = %189, %127
  %131 = phi i32 [ %133, %189 ], [ 0, %127 ]
  %132 = phi i32 [ %191, %189 ], [ %120, %127 ]
  %133 = add nuw nsw i32 %131, 1
  %134 = shl nuw i32 %133, 1
  %135 = zext i32 %134 to i64
  %136 = mul nuw i64 %129, %135
  %137 = add i64 %136, -2400000001
  %138 = icmp ult i64 %137, -800000001
  br i1 %138, label %189, label %139

139:                                              ; preds = %130
  %140 = trunc i64 %136 to i32
  br label %141

141:                                              ; preds = %185, %139
  %142 = phi i32 [ %145, %185 ], [ 0, %139 ]
  %143 = phi i32 [ %186, %185 ], [ %132, %139 ]
  %144 = phi i32 [ %187, %185 ], [ -22, %139 ]
  %145 = add nuw nsw i32 %142, 1
  %146 = udiv i32 %140, %145
  %147 = zext i32 %146 to i64
  %148 = add nsw i64 %147, -54000000
  %149 = icmp ult i64 %148, 21000001
  br i1 %149, label %150, label %185

150:                                              ; preds = %141
  %151 = udiv i32 %140, %145
  %152 = zext i32 %151 to i64
  %153 = shl nuw nsw i64 %152, 1
  br label %154

154:                                              ; preds = %183, %150
  %155 = phi i32 [ %157, %183 ], [ 0, %150 ]
  %156 = phi i32 [ %179, %183 ], [ %143, %150 ]
  %157 = add nuw nsw i32 %155, 1
  %158 = zext i32 %157 to i64
  %159 = mul nuw i64 %153, %158
  %160 = add i64 %159, -1200000000
  %161 = icmp ult i64 %160, 1200000001
  %162 = trunc i64 %159 to i32
  br label %163

163:                                              ; preds = %178, %154
  %164 = phi i32 [ 0, %154 ], [ %181, %178 ]
  %165 = phi i32 [ %156, %154 ], [ %179, %178 ]
  %166 = phi i32 [ -22, %154 ], [ %180, %178 ]
  br i1 %161, label %167, label %178

167:                                              ; preds = %163
  %168 = shl nuw i32 %164, 1
  %169 = add nuw nsw i32 %168, 2
  %170 = udiv i32 %162, %169
  %171 = sub i32 %170, %117
  %172 = tail call i32 @llvm.abs.i32(i32 %165, i1 false) #6
  %173 = tail call i32 @llvm.abs.i32(i32 %171, i1 false) #6
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %167
  %176 = zext i32 %170 to i64
  store i32 %119, ptr %7, align 8
  store i32 %131, ptr %103, align 4
  store i32 %142, ptr %104, align 8
  store i32 %155, ptr %105, align 4
  store i32 %164, ptr %106, align 8
  store i32 0, ptr %107, align 4
  store i64 %136, ptr %108, align 8
  store i64 %159, ptr %109, align 8
  store i64 %176, ptr %110, align 8
  store i64 %27, ptr %111, align 8
  store i64 %124, ptr %112, align 8
  store i64 %147, ptr %113, align 8
  store i64 %4, ptr %114, align 8
  store i32 %171, ptr %115, align 8
  store i32 0, ptr %116, align 4
  %177 = icmp eq i64 %176, %4
  br i1 %177, label %197, label %178

178:                                              ; preds = %175, %167, %163
  %179 = phi i32 [ %165, %167 ], [ %165, %163 ], [ %171, %175 ]
  %180 = phi i32 [ -1, %167 ], [ %166, %163 ], [ -1, %175 ]
  %181 = add nuw nsw i32 %164, 1
  %182 = icmp eq i32 %181, 64
  br i1 %182, label %183, label %163

183:                                              ; preds = %178
  %184 = icmp eq i32 %157, 64
  br i1 %184, label %185, label %154

185:                                              ; preds = %183, %141
  %186 = phi i32 [ %143, %141 ], [ %179, %183 ]
  %187 = phi i32 [ %144, %141 ], [ %180, %183 ]
  %188 = icmp eq i32 %145, 64
  br i1 %188, label %189, label %141

189:                                              ; preds = %185, %130
  %190 = phi i32 [ -22, %130 ], [ %187, %185 ]
  %191 = phi i32 [ %132, %130 ], [ %186, %185 ]
  %192 = icmp eq i32 %133, 64
  br i1 %192, label %193, label %130

193:                                              ; preds = %189, %118
  %194 = phi i32 [ %120, %118 ], [ %191, %189 ]
  %195 = phi i32 [ %121, %118 ], [ %190, %189 ]
  %196 = icmp eq i32 %122, 8
  br i1 %196, label %197, label %118

197:                                              ; preds = %193, %175, %99, %95, %85, %33, %30, %28, %25, %18
  %198 = phi i32 [ %23, %18 ], [ -22, %25 ], [ 0, %30 ], [ -22, %28 ], [ -22, %33 ], [ -22, %99 ], [ 0, %85 ], [ %97, %95 ], [ 0, %175 ], [ %195, %193 ]
  %199 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr %22, ptr %199, align 4
  %200 = load i32, ptr %1, align 4
  %201 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %200, ptr %201, align 4
  %202 = getelementptr inbounds %struct.clk_sscg_pll, ptr %0, i32 0, i32 3, i32 8
  %203 = load i64, ptr %202, align 8
  %204 = trunc i64 %203 to i32
  store i32 %204, ptr %1, align 4
  ret i32 %198
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_determine_rate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

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
!9 = !{i64 2853634}
!10 = !{i64 2853216}
!11 = !{i64 2151129193}
!12 = !{i64 2151129503}
!13 = !{i64 2151379453}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2148664304, i64 2148664584, i64 2148664918, i64 2148665252}
!16 = !{i64 2151647582}
!17 = !{i64 2151692243}
!18 = !{i64 2151645903}
!19 = !{i64 2151391386}
!20 = !{i64 2151431938}
