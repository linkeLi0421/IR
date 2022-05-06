; ModuleID = '/llk/IR/drivers/clk/mmp/clk-frac.c_pt.bc'
source_filename = "../drivers/clk/mmp/clk-frac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mmp_clk_factor = type { %struct.clk_hw, ptr, ptr, ptr, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.mmp_clk_factor_masks = type { i32, i32, i32, i32, i32, i32 }
%struct.mmp_clk_factor_tbl = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"\013%s: must pass a clk_factor_mask\0A\00", align 1
@__func__.mmp_clk_register_factor = private unnamed_addr constant [24 x i8] c"mmp_clk_register_factor\00", align 1
@clk_factor_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_factor_recalc_rate, ptr @clk_factor_round_rate, ptr null, ptr null, ptr null, ptr @clk_factor_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_factor_init, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mmp_clk_register_factor(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 4
  %10 = alloca %struct.clk_init_data, align 4
  store ptr %1, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #7
  %11 = getelementptr inbounds i8, ptr %10, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %11, i8 0, i32 12, i1 false), !annotation !8
  %12 = icmp eq ptr %4, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mmp_clk_register_factor) #8
  br label %35

15:                                               ; preds = %8
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 32) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.mmp_clk_factor, ptr %17, i32 0, i32 1
  store ptr %3, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mmp_clk_factor, ptr %17, i32 0, i32 2
  store ptr %4, ptr %21, align 8
  %22 = getelementptr inbounds %struct.mmp_clk_factor, ptr %17, i32 0, i32 3
  store ptr %5, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mmp_clk_factor, ptr %17, i32 0, i32 4
  store i32 %6, ptr %23, align 8
  %24 = getelementptr inbounds %struct.clk_hw, ptr %17, i32 0, i32 2
  store ptr %10, ptr %24, align 8
  %25 = getelementptr inbounds %struct.mmp_clk_factor, ptr %17, i32 0, i32 5
  store ptr %7, ptr %25, align 4
  store ptr %0, ptr %10, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 1
  store ptr @clk_factor_ops, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 6
  store i32 %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 2
  store ptr %9, ptr %28, align 4
  %29 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 5
  store i8 1, ptr %29, align 4
  %30 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %17) #7
  %31 = icmp eq ptr %30, null
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  %33 = or i1 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  call void @kfree(ptr noundef nonnull %17) #7
  br label %35

35:                                               ; preds = %34, %19, %15, %13
  %36 = phi ptr [ inttoptr (i32 -22 to ptr), %13 ], [ %30, %34 ], [ %30, %19 ], [ inttoptr (i32 -12 to ptr), %15 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #7
  ret ptr %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_factor_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmp_clk_factor, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmp_clk_factor, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  %8 = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %4, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %7, %9
  %11 = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %4, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %4, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %7, %17
  %19 = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %4, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %18, %20
  %22 = zext i32 %1 to i64
  %23 = zext i32 %13 to i64
  %24 = mul nuw i64 %23, %22
  %25 = load ptr, ptr %3, align 4
  %26 = load i32, ptr %25, align 4
  %27 = mul i32 %26, %21
  %28 = icmp ult i64 %24, 4294967296
  br i1 %28, label %29, label %32, !prof !10

29:                                               ; preds = %15
  %30 = trunc i64 %24 to i32
  %31 = udiv i32 %30, %27
  br label %36

32:                                               ; preds = %15
  %33 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %27, i64 %24) #10, !srcloc !11
  %34 = extractvalue { i64, i64 } %33, 1
  %35 = trunc i64 %34 to i32
  br label %36

36:                                               ; preds = %32, %29, %2
  %37 = phi i32 [ 0, %2 ], [ %31, %29 ], [ %35, %32 ]
  ret i32 %37
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @clk_factor_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #6 {
  %4 = getelementptr inbounds %struct.mmp_clk_factor, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %54, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.mmp_clk_factor, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mmp_clk_factor, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  %15 = zext i32 %1 to i64
  br label %16

16:                                               ; preds = %37, %7
  %17 = phi i32 [ 0, %7 ], [ %38, %37 ]
  %18 = phi i64 [ 0, %7 ], [ %35, %37 ]
  %19 = getelementptr %struct.mmp_clk_factor_tbl, ptr %11, i32 %17, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = zext i32 %20 to i64
  %22 = mul nuw i64 %21, %9
  %23 = getelementptr %struct.mmp_clk_factor_tbl, ptr %11, i32 %17
  %24 = load i32, ptr %23, align 4
  %25 = mul i32 %14, %24
  %26 = icmp ult i64 %22, 4294967296
  br i1 %26, label %27, label %31, !prof !10

27:                                               ; preds = %16
  %28 = trunc i64 %22 to i32
  %29 = udiv i32 %28, %25
  %30 = zext i32 %29 to i64
  br label %34

31:                                               ; preds = %16
  %32 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %25, i64 %22) #10, !srcloc !11
  %33 = extractvalue { i64, i64 } %32, 1
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i64 [ %30, %27 ], [ %33, %31 ]
  %36 = icmp ugt i64 %35, %15
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = add nuw i32 %17, 1
  %39 = icmp eq i32 %38, %5
  br i1 %39, label %52, label %16

40:                                               ; preds = %34
  %41 = icmp eq i32 %17, 0
  %42 = icmp eq i32 %17, %5
  %43 = select i1 %41, i1 true, i1 %42
  %44 = trunc i64 %35 to i32
  br i1 %43, label %54, label %45

45:                                               ; preds = %40
  %46 = zext i32 %1 to i64
  %47 = sub i64 %46, %18
  %48 = sub i64 %35, %46
  %49 = icmp ugt i64 %47, %48
  %50 = select i1 %49, i64 %35, i64 %18
  %51 = trunc i64 %50 to i32
  br label %54

52:                                               ; preds = %37
  %53 = trunc i64 %35 to i32
  br label %54

54:                                               ; preds = %52, %45, %40, %3
  %55 = phi i32 [ %44, %40 ], [ 0, %3 ], [ %51, %45 ], [ %53, %52 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_factor_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mmp_clk_factor, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmp_clk_factor, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %3
  %10 = zext i32 %2 to i64
  %11 = getelementptr inbounds %struct.mmp_clk_factor, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %5, align 4
  %14 = zext i32 %1 to i64
  br label %15

15:                                               ; preds = %35, %9
  %16 = phi i32 [ 0, %9 ], [ %36, %35 ]
  %17 = getelementptr %struct.mmp_clk_factor_tbl, ptr %12, i32 %16, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = zext i32 %18 to i64
  %20 = mul nuw i64 %19, %10
  %21 = getelementptr %struct.mmp_clk_factor_tbl, ptr %12, i32 %16
  %22 = load i32, ptr %21, align 4
  %23 = mul i32 %13, %22
  %24 = icmp ult i64 %20, 4294967296
  br i1 %24, label %25, label %29, !prof !10

25:                                               ; preds = %15
  %26 = trunc i64 %20 to i32
  %27 = udiv i32 %26, %23
  %28 = zext i32 %27 to i64
  br label %32

29:                                               ; preds = %15
  %30 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %23, i64 %20) #10, !srcloc !11
  %31 = extractvalue { i64, i64 } %30, 1
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i64 [ %28, %25 ], [ %31, %29 ]
  %34 = icmp ugt i64 %33, %14
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = add nuw i32 %16, 1
  %37 = icmp eq i32 %36, %7
  br i1 %37, label %38, label %15

38:                                               ; preds = %35, %32, %3
  %39 = phi i32 [ 0, %3 ], [ %16, %32 ], [ %7, %35 ]
  %40 = icmp sgt i32 %39, 0
  %41 = sext i1 %40 to i32
  %42 = add i32 %39, %41
  %43 = getelementptr inbounds %struct.mmp_clk_factor, ptr %0, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %38
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %44) #7
  br label %48

48:                                               ; preds = %46, %38
  %49 = phi i32 [ %47, %46 ], [ 0, %38 ]
  %50 = getelementptr inbounds %struct.mmp_clk_factor, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #7, !srcloc !9
  %53 = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %5, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %5, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = shl i32 %54, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %52, %58
  %60 = getelementptr inbounds %struct.mmp_clk_factor, ptr %0, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr %struct.mmp_clk_factor_tbl, ptr %61, i32 %42
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, %54
  %65 = shl i32 %64, %56
  %66 = or i32 %65, %59
  %67 = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %5, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %5, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = shl i32 %68, %70
  %72 = xor i32 %71, -1
  %73 = and i32 %66, %72
  %74 = getelementptr %struct.mmp_clk_factor_tbl, ptr %61, i32 %42, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, %68
  %77 = shl i32 %76, %70
  %78 = or i32 %77, %73
  %79 = load ptr, ptr %50, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %78) #7, !srcloc !12
  %80 = load ptr, ptr %43, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %80, i32 noundef %49) #7
  br label %83

83:                                               ; preds = %82, %48
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_factor_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmp_clk_factor, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmp_clk_factor, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %5) #7
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  %11 = getelementptr inbounds %struct.mmp_clk_factor, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %14 = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %3, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %13, %15
  %17 = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %3, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %16, %18
  %20 = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %3, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %13, %21
  %23 = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %3, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %22, %24
  %26 = getelementptr inbounds %struct.mmp_clk_factor, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct.mmp_clk_factor, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  br i1 %28, label %48, label %31

31:                                               ; preds = %40, %9
  %32 = phi i32 [ %41, %40 ], [ 0, %9 ]
  %33 = getelementptr %struct.mmp_clk_factor_tbl, ptr %30, i32 %32, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %25, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = getelementptr %struct.mmp_clk_factor_tbl, ptr %30, i32 %32
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %19, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %36, %31
  %41 = add nuw i32 %32, 1
  %42 = icmp eq i32 %41, %27
  br i1 %42, label %48, label %31

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %3, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, %13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %66, label %71

48:                                               ; preds = %40, %9
  %49 = shl i32 %18, %15
  %50 = xor i32 %49, -1
  %51 = and i32 %13, %50
  %52 = load i32, ptr %30, align 4
  %53 = and i32 %52, %18
  %54 = shl i32 %53, %15
  %55 = or i32 %54, %51
  %56 = shl i32 %24, %21
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = getelementptr inbounds %struct.mmp_clk_factor_tbl, ptr %30, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, %24
  %62 = shl i32 %61, %21
  %63 = or i32 %58, %62
  %64 = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %3, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  br label %66

66:                                               ; preds = %48, %43
  %67 = phi i32 [ %45, %43 ], [ %65, %48 ]
  %68 = phi i32 [ %13, %43 ], [ %63, %48 ]
  %69 = or i32 %68, %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %70 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %69) #7, !srcloc !12
  br label %71

71:                                               ; preds = %66, %43
  %72 = load ptr, ptr %4, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %72, i32 noundef %10) #7
  br label %75

75:                                               ; preds = %74, %71
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }
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
!9 = !{i64 2991295}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148656126, i64 2148656406, i64 2148656740, i64 2148657074}
!12 = !{i64 2990877}
!13 = !{i64 2151492110}
!14 = !{i64 2151492290}
