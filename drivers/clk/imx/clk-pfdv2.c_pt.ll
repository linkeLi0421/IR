; ModuleID = '/llk/IR/drivers/clk/imx/clk-pfdv2.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-pfdv2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_clk_hw_pfdv2:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_clk_hw_pfdv2\22\09\09\09\09\09"
module asm "__kstrtabns_imx_clk_hw_pfdv2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_pfdv2 = type { %struct.clk_hw, ptr, i8, i8, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [28 x i8] c"drivers/clk/imx/clk-pfdv2.c\00", align 1
@clk_pfdv2_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pfdv2_enable, ptr @clk_pfdv2_disable, ptr @clk_pfdv2_is_enabled, ptr null, ptr null, ptr null, ptr @clk_pfdv2_recalc_rate, ptr null, ptr @clk_pfdv2_determine_rate, ptr null, ptr null, ptr @clk_pfdv2_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_imx_clk_hw_pfdv2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_clk_hw_pfdv2 = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_clk_hw_pfdv2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_clk_hw_pfdv2 to i32), ptr @__kstrtab_imx_clk_hw_pfdv2, ptr @__kstrtabns_imx_clk_hw_pfdv2 }, section "___ksymtab_gpl+imx_clk_hw_pfdv2", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@pfd_lock = internal global %struct.spinlock zeroinitializer, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_imx_clk_hw_pfdv2], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_pfdv2(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #7
  %8 = getelementptr inbounds i8, ptr %7, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 12, i1 false), !annotation !8
  %9 = icmp ugt i8 %4, 3
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef null) #7
  br label %11

11:                                               ; preds = %10, %5
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 20) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.clk_pfdv2, ptr %13, i32 0, i32 1
  store ptr %3, ptr %16, align 4
  %17 = shl i8 %4, 3
  %18 = or i8 %17, 7
  %19 = getelementptr inbounds %struct.clk_pfdv2, ptr %13, i32 0, i32 2
  store i8 %18, ptr %19, align 8
  %20 = or i8 %17, 6
  %21 = getelementptr inbounds %struct.clk_pfdv2, ptr %13, i32 0, i32 3
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.clk_pfdv2, ptr %13, i32 0, i32 4
  store i8 %17, ptr %22, align 2
  store ptr %1, ptr %7, align 4
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 1
  store ptr @clk_pfdv2_ops, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 2
  store ptr %6, ptr %24, align 4
  %25 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 5
  store i8 1, ptr %25, align 4
  %26 = icmp eq i32 %0, 0
  %27 = select i1 %26, i32 5, i32 1
  %28 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 6
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.clk_hw, ptr %13, i32 0, i32 2
  store ptr %7, ptr %29, align 8
  %30 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %13) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %15
  call void @kfree(ptr noundef nonnull %13) #7
  %33 = inttoptr i32 %30 to ptr
  br label %34

34:                                               ; preds = %32, %15, %11
  %35 = phi ptr [ %33, %32 ], [ %13, %15 ], [ inttoptr (i32 -12 to ptr), %11 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #7
  ret ptr %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pfdv2_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pfd_lock) #7
  %3 = getelementptr inbounds %struct.clk_pfdv2, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !10
  %6 = getelementptr inbounds %struct.clk_pfdv2, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = xor i32 %9, -1
  %11 = and i32 %5, %10
  %12 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #7, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pfd_lock, i32 noundef %2) #7
  %13 = tail call i64 @ktime_get() #7
  %14 = add i64 %13, 1000000
  %15 = getelementptr inbounds %struct.clk_pfdv2, ptr %0, i32 0, i32 3
  br label %16

16:                                               ; preds = %24, %1
  %17 = load ptr, ptr %3, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %19 = load i8, ptr %15, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %16
  %25 = tail call i64 @ktime_get() #7
  %26 = icmp sgt i64 %25, %14
  br i1 %26, label %27, label %16

27:                                               ; preds = %24
  %28 = load ptr, ptr %3, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %30 = load i8, ptr %15, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %29
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 -110, i32 0
  br label %36

36:                                               ; preds = %27, %16
  %37 = phi i32 [ %35, %27 ], [ 0, %16 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_pfdv2_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pfd_lock) #7
  %3 = getelementptr inbounds %struct.clk_pfdv2, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !10
  %6 = getelementptr inbounds %struct.clk_pfdv2, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = or i32 %9, %5
  %11 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #7, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pfd_lock, i32 noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pfdv2_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_pfdv2, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !10
  %5 = getelementptr inbounds %struct.clk_pfdv2, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = xor i32 %4, -1
  %9 = lshr i32 %8, %7
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pfdv2_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_pfdv2, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !10
  %6 = getelementptr inbounds %struct.clk_pfdv2, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = lshr i32 %5, %8
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 63
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %2
  %14 = zext i32 %1 to i64
  %15 = mul nuw nsw i64 %14, 18
  %16 = zext i8 %11 to i32
  %17 = icmp ult i64 %15, 4294967296
  br i1 %17, label %18, label %21, !prof !14

18:                                               ; preds = %13
  %19 = trunc i64 %15 to i32
  %20 = udiv i32 %19, %16
  br label %25

21:                                               ; preds = %13
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %16, i64 %15) #9, !srcloc !15
  %23 = extractvalue { i64, i64 } %22, 1
  %24 = trunc i64 %23 to i32
  br label %25

25:                                               ; preds = %21, %18, %2
  %26 = phi i32 [ 0, %2 ], [ %20, %18 ], [ %24, %21 ]
  ret i32 %26
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pfdv2_determine_rate(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #5 {
  %3 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  store i32 480000000, ptr %3, align 4
  %4 = getelementptr inbounds i32, ptr %3, i32 1
  store i32 528000000, ptr %4, align 4
  %5 = getelementptr inbounds i32, ptr %3, i32 2
  %6 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %5, align 4
  %8 = load i32, ptr %1, align 4
  %9 = lshr i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = add nuw nsw i64 %10, 8640000000
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %11) #9, !srcloc !15
  %13 = extractvalue { i64, i64 } %12, 1
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 255
  %16 = call i32 @llvm.umin.i32(i32 %15, i32 35)
  %17 = call i32 @llvm.umax.i32(i32 %16, i32 12)
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %17, i64 8640000000) #9, !srcloc !15
  %19 = extractvalue { i64, i64 } %18, 1
  %20 = getelementptr inbounds [3 x i32], ptr %3, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %21 to i64
  %23 = mul nuw nsw i64 %22, 18
  %24 = add nuw nsw i64 %23, %10
  %25 = icmp ult i64 %24, 4294967296
  br i1 %25, label %30, label %26, !prof !14

26:                                               ; preds = %2
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %24) #9, !srcloc !15
  %28 = extractvalue { i64, i64 } %27, 1
  %29 = trunc i64 %28 to i32
  br label %33

30:                                               ; preds = %2
  %31 = trunc i64 %24 to i32
  %32 = udiv i32 %31, %8
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i32 [ %32, %30 ], [ %29, %26 ]
  %35 = and i32 %34, 255
  %36 = call i32 @llvm.umin.i32(i32 %35, i32 35)
  %37 = call i32 @llvm.umax.i32(i32 %36, i32 12)
  %38 = icmp ult i64 %23, 4294967296
  br i1 %38, label %42, label %39, !prof !14

39:                                               ; preds = %33
  %40 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %37, i64 %23) #9, !srcloc !15
  %41 = extractvalue { i64, i64 } %40, 1
  br label %46

42:                                               ; preds = %33
  %43 = trunc i64 %23 to i32
  %44 = udiv i32 %43, %37
  %45 = zext i32 %44 to i64
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi i64 [ %45, %42 ], [ %41, %39 ]
  %48 = getelementptr inbounds [3 x i32], ptr %3, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = zext i32 %49 to i64
  %51 = mul nuw nsw i64 %50, 18
  %52 = add nuw nsw i64 %51, %10
  %53 = icmp ult i64 %52, 4294967296
  br i1 %53, label %58, label %54, !prof !14

54:                                               ; preds = %46
  %55 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %52) #9, !srcloc !15
  %56 = extractvalue { i64, i64 } %55, 1
  %57 = trunc i64 %56 to i32
  br label %61

58:                                               ; preds = %46
  %59 = trunc i64 %52 to i32
  %60 = udiv i32 %59, %8
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i32 [ %60, %58 ], [ %57, %54 ]
  %63 = and i32 %62, 255
  %64 = call i32 @llvm.umin.i32(i32 %63, i32 35)
  %65 = call i32 @llvm.umax.i32(i32 %64, i32 12)
  %66 = icmp ult i64 %51, 4294967296
  br i1 %66, label %70, label %67, !prof !14

67:                                               ; preds = %61
  %68 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %65, i64 %51) #9, !srcloc !15
  %69 = extractvalue { i64, i64 } %68, 1
  br label %74

70:                                               ; preds = %61
  %71 = trunc i64 %51 to i32
  %72 = udiv i32 %71, %65
  %73 = zext i32 %72 to i64
  br label %74

74:                                               ; preds = %70, %67
  %75 = phi i64 [ %73, %70 ], [ %69, %67 ]
  %76 = zext i32 %8 to i64
  %77 = sub i64 %75, %76
  %78 = tail call i64 @llvm.abs.i64(i64 %77, i1 false)
  %79 = sub i64 %47, %76
  %80 = tail call i64 @llvm.abs.i64(i64 %79, i1 false)
  %81 = sub i64 %19, %76
  %82 = tail call i64 @llvm.abs.i64(i64 %81, i1 false)
  %83 = xor i32 %8, -1
  %84 = tail call i32 @llvm.abs.i32(i32 %83, i1 false)
  %85 = sext i32 %84 to i64
  %86 = icmp slt i64 %82, %85
  %87 = trunc i64 %19 to i32
  %88 = select i1 %86, i32 %87, i32 -1
  %89 = sub i32 %88, %8
  %90 = tail call i32 @llvm.abs.i32(i32 %89, i1 false)
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %80, %91
  %93 = trunc i64 %47 to i32
  %94 = select i1 %92, i32 %93, i32 %88
  %95 = sub i32 %94, %8
  %96 = tail call i32 @llvm.abs.i32(i32 %95, i1 false)
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %78, %97
  %99 = trunc i64 %75 to i32
  %100 = select i1 %98, i32 %99, i32 %94
  %101 = select i1 %86, i32 480000000, i32 %7
  %102 = select i1 %92, i32 %21, i32 %101
  %103 = select i1 %98, i32 %49, i32 %102
  store i32 %103, ptr %6, align 4
  store i32 %100, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pfdv2_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = zext i32 %2 to i64
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %55, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.clk_pfdv2, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !10
  %10 = getelementptr inbounds %struct.clk_pfdv2, ptr %0, i32 0, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %6
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pfd_lock) #7
  %18 = load ptr, ptr %7, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !10
  %20 = load i8, ptr %10, align 4
  %21 = zext i8 %20 to i32
  %22 = shl nuw i32 1, %21
  %23 = or i32 %22, %19
  %24 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #7, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pfd_lock, i32 noundef %17) #7
  br label %25

25:                                               ; preds = %16, %6
  %26 = mul nuw nsw i64 %4, 18
  %27 = lshr i32 %1, 1
  %28 = zext i32 %27 to i64
  %29 = add nuw nsw i64 %26, %28
  %30 = icmp ult i64 %29, 4294967296
  br i1 %30, label %31, label %34, !prof !14

31:                                               ; preds = %25
  %32 = trunc i64 %29 to i32
  %33 = udiv i32 %32, %1
  br label %38

34:                                               ; preds = %25
  %35 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %29) #9, !srcloc !15
  %36 = extractvalue { i64, i64 } %35, 1
  %37 = trunc i64 %36 to i32
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i32 [ %33, %31 ], [ %37, %34 ]
  %40 = and i32 %39, 255
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 35)
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 12)
  %43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pfd_lock) #7
  %44 = load ptr, ptr %7, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7, !srcloc !10
  %46 = getelementptr inbounds %struct.clk_pfdv2, ptr %0, i32 0, i32 4
  %47 = load i8, ptr %46, align 2
  %48 = zext i8 %47 to i32
  %49 = shl i32 63, %48
  %50 = xor i32 %49, -1
  %51 = and i32 %45, %50
  %52 = shl i32 %42, %48
  %53 = or i32 %51, %52
  %54 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %53) #7, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pfd_lock, i32 noundef %43) #7
  br label %55

55:                                               ; preds = %38, %3
  %56 = phi i32 [ 0, %38 ], [ -22, %3 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind readnone }

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
!10 = !{i64 2845731}
!11 = !{i64 2845313}
!12 = !{i64 2151093928}
!13 = !{i64 2151094235}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2148656401, i64 2148656681, i64 2148657015, i64 2148657349}
