; ModuleID = '/llk/IR/drivers/clk/imx/clk-pllv4.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-pllv4.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_clk_hw_pllv4:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_clk_hw_pllv4\22\09\09\09\09\09"
module asm "__kstrtabns_imx_clk_hw_pllv4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_pllv4 = type { %struct.clk_hw, ptr, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_pllv4_ops = internal constant %struct.clk_ops { ptr @clk_pllv4_prepare, ptr @clk_pllv4_unprepare, ptr @clk_pllv4_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pllv4_recalc_rate, ptr @clk_pllv4_round_rate, ptr null, ptr null, ptr null, ptr @clk_pllv4_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_imx_clk_hw_pllv4 = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_clk_hw_pllv4 = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_clk_hw_pllv4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_clk_hw_pllv4 to i32), ptr @__kstrtab_imx_clk_hw_pllv4, ptr @__kstrtabns_imx_clk_hw_pllv4 }, section "___ksymtab_gpl+imx_clk_hw_pllv4", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [49 x i8] c"\014%s: unable to round rate %lu, parent rate %lu\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_imx_clk_hw_pllv4], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_pllv4(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #6
  %7 = getelementptr inbounds i8, ptr %6, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 12, i1 false), !annotation !8
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 28) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.clk_pllv4, ptr %9, i32 0, i32 1
  store ptr %3, ptr %12, align 4
  %13 = icmp eq i32 %0, 1
  %14 = select i1 %13, i32 16, i32 8
  %15 = select i1 %13, i32 28, i32 16
  %16 = select i1 %13, i32 24, i32 20
  %17 = getelementptr inbounds %struct.clk_pllv4, ptr %9, i32 0, i32 2
  store i32 %14, ptr %17, align 8
  %18 = getelementptr inbounds %struct.clk_pllv4, ptr %9, i32 0, i32 3
  store i32 %15, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_pllv4, ptr %9, i32 0, i32 4
  store i32 %16, ptr %19, align 8
  store ptr %1, ptr %6, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 1
  store ptr @clk_pllv4_ops, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  store ptr %5, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 5
  store i8 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 6
  store i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_hw, ptr %9, i32 0, i32 2
  store ptr %6, ptr %24, align 8
  %25 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %9) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %11
  call void @kfree(ptr noundef nonnull %9) #6
  %28 = inttoptr i32 %25 to ptr
  br label %29

29:                                               ; preds = %27, %11, %4
  %30 = phi ptr [ %28, %27 ], [ %9, %11 ], [ inttoptr (i32 -12 to ptr), %4 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #6
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

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllv4_prepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_pllv4, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  %5 = or i32 %4, 1
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #6, !srcloc !10
  %7 = tail call i64 @ktime_get() #6
  %8 = add i64 %7, 1000000
  br label %9

9:                                                ; preds = %14, %1
  %10 = load ptr, ptr %2, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %12 = and i32 %11, 16777216
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = tail call i64 @ktime_get() #6
  %16 = icmp sgt i64 %15, %8
  br i1 %16, label %17, label %9

17:                                               ; preds = %14
  %18 = load ptr, ptr %2, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %20 = and i32 %19, 16777216
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 -110, i32 0
  br label %23

23:                                               ; preds = %17, %9
  %24 = phi i32 [ %22, %17 ], [ 0, %9 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_pllv4_unprepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_pllv4, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  %5 = and i32 %4, -2
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #6, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllv4_is_prepared(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_pllv4, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllv4_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_pllv4, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_pllv4, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !9
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.clk_pllv4, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !9
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.clk_pllv4, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %14, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !9
  %19 = zext i32 %1 to i64
  %20 = zext i32 %13 to i64
  %21 = mul nuw i64 %20, %19
  %22 = icmp ult i64 %21, 4294967296
  br i1 %22, label %23, label %26, !prof !13

23:                                               ; preds = %2
  %24 = trunc i64 %21 to i32
  %25 = udiv i32 %24, %18
  br label %30

26:                                               ; preds = %2
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %21) #8, !srcloc !14
  %28 = extractvalue { i64, i64 } %27, 1
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i32 [ %25, %23 ], [ %29, %26 ]
  %32 = lshr i32 %8, 16
  %33 = and i32 %32, 127
  %34 = mul i32 %33, %1
  %35 = add i32 %31, %34
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllv4_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i32, ptr %2, align 4
  %5 = mul i32 %4, 33
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = mul i32 %4, 27
  %9 = icmp ugt i32 %8, %1
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = mul i32 %4, 22
  %12 = icmp ugt i32 %11, %1
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = mul i32 %4, 20
  %15 = icmp ugt i32 %14, %1
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = mul i32 %4, 17
  %18 = icmp ugt i32 %17, %1
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = shl i32 %4, 4
  %21 = icmp ugt i32 %20, %1
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = tail call ptr @clk_hw_get_name(ptr noundef %0) #6
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %23, i32 noundef %1, i32 noundef %4) #9
  br label %60

25:                                               ; preds = %19, %16, %13, %10, %7, %3
  %26 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ], [ %17, %16 ], [ %20, %19 ]
  %27 = icmp ult i32 %4, 1073741824
  %28 = select i1 %27, i32 %4, i32 1000000
  %29 = sub i32 %1, %26
  %30 = zext i32 %29 to i64
  %31 = zext i32 %28 to i64
  %32 = mul nuw nsw i64 %30, %31
  %33 = icmp ult i64 %32, 4294967296
  br i1 %33, label %34, label %38, !prof !13

34:                                               ; preds = %25
  %35 = trunc i64 %32 to i32
  %36 = udiv i32 %35, %4
  %37 = zext i32 %36 to i64
  br label %41

38:                                               ; preds = %25
  %39 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %32) #8, !srcloc !14
  %40 = extractvalue { i64, i64 } %39, 1
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i64 [ %37, %34 ], [ %40, %38 ]
  %43 = trunc i64 %42 to i32
  %44 = icmp ugt i32 %28, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = zext i32 %4 to i64
  %47 = and i64 %42, 4294967295
  %48 = mul nuw i64 %47, %46
  %49 = icmp ult i64 %48, 4294967296
  br i1 %49, label %50, label %53, !prof !13

50:                                               ; preds = %45
  %51 = trunc i64 %48 to i32
  %52 = udiv i32 %51, %28
  br label %57

53:                                               ; preds = %45
  %54 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %28, i64 %48) #8, !srcloc !14
  %55 = extractvalue { i64, i64 } %54, 1
  %56 = trunc i64 %55 to i32
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i32 [ %52, %50 ], [ %56, %53 ]
  %59 = add i32 %58, %26
  br label %60

60:                                               ; preds = %57, %41, %22
  %61 = phi i32 [ %59, %57 ], [ 0, %22 ], [ %26, %41 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllv4_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = udiv i32 %1, %2
  switch i32 %4, label %43 [
    i32 33, label %5
    i32 27, label %5
    i32 22, label %5
    i32 20, label %5
    i32 17, label %5
    i32 16, label %5
  ]

5:                                                ; preds = %3, %3, %3, %3, %3, %3
  %6 = icmp ult i32 %2, 1073741824
  %7 = select i1 %6, i32 %2, i32 1000000
  %8 = mul i32 %4, %2
  %9 = sub i32 %1, %8
  %10 = zext i32 %9 to i64
  %11 = zext i32 %7 to i64
  %12 = mul nuw nsw i64 %10, %11
  %13 = icmp ult i64 %12, 4294967296
  br i1 %13, label %14, label %17, !prof !13

14:                                               ; preds = %5
  %15 = trunc i64 %12 to i32
  %16 = udiv i32 %15, %2
  br label %21

17:                                               ; preds = %5
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %12) #8, !srcloc !14
  %19 = extractvalue { i64, i64 } %18, 1
  %20 = trunc i64 %19 to i32
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i32 [ %16, %14 ], [ %20, %17 ]
  %23 = getelementptr inbounds %struct.clk_pllv4, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.clk_pllv4, ptr %0, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %24, i32 %26
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #6, !srcloc !9
  %29 = and i32 %28, -8323073
  %30 = shl nuw nsw i32 %4, 16
  %31 = or i32 %29, %30
  %32 = load ptr, ptr %23, align 4
  %33 = load i32, ptr %25, align 4
  %34 = getelementptr i8, ptr %32, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #6, !srcloc !10
  %35 = load ptr, ptr %23, align 4
  %36 = getelementptr inbounds %struct.clk_pllv4, ptr %0, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %35, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %22) #6, !srcloc !10
  %39 = load ptr, ptr %23, align 4
  %40 = getelementptr inbounds %struct.clk_pllv4, ptr %0, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i8, ptr %39, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %7) #6, !srcloc !10
  br label %43

43:                                               ; preds = %21, %3
  %44 = phi i32 [ 0, %21 ], [ -22, %3 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind readnone }
attributes #9 = { cold nounwind }

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
!9 = !{i64 2846253}
!10 = !{i64 2845835}
!11 = !{i64 2151094486}
!12 = !{i64 2151094817}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148656923, i64 2148657203, i64 2148657537, i64 2148657871}
