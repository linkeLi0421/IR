; ModuleID = '/llk/IR/drivers/clk/clk-fractional-divider.c_pt.bc'
source_filename = "../drivers/clk/clk-fractional-divider.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_fractional_divider_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_fractional_divider_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_fractional_divider_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_register_fractional_divider:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_register_fractional_divider\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_register_fractional_divider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_register_fractional_divider:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_register_fractional_divider\22\09\09\09\09\09"
module asm "__kstrtabns_clk_register_fractional_divider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_fractional_divider = type { %struct.clk_hw, ptr, i8, i8, i32, i8, i8, i32, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@clk_fractional_divider_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_fd_recalc_rate, ptr @clk_fd_round_rate, ptr null, ptr null, ptr null, ptr @clk_fd_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_fractional_divider_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_fractional_divider_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_fractional_divider_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_fractional_divider_ops to i32), ptr @__kstrtab_clk_fractional_divider_ops, ptr @__kstrtabns_clk_fractional_divider_ops }, section "___ksymtab_gpl+clk_fractional_divider_ops", align 4
@__kstrtab_clk_hw_register_fractional_divider = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_register_fractional_divider = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_register_fractional_divider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_register_fractional_divider to i32), ptr @__kstrtab_clk_hw_register_fractional_divider, ptr @__kstrtabns_clk_hw_register_fractional_divider }, section "___ksymtab_gpl+clk_hw_register_fractional_divider", align 4
@__kstrtab_clk_register_fractional_divider = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_register_fractional_divider = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_register_fractional_divider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_register_fractional_divider to i32), ptr @__kstrtab_clk_register_fractional_divider, ptr @__kstrtabns_clk_register_fractional_divider }, section "___ksymtab_gpl+clk_register_fractional_divider", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_clk_fractional_divider_ops, ptr @__ksymtab_clk_hw_register_fractional_divider, ptr @__ksymtab_clk_register_fractional_divider], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_fractional_divider_general_approximation(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 8
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 4
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %2, align 4
  br i1 %9, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 6
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  br label %27

15:                                               ; preds = %5
  %16 = udiv i32 %10, %1
  %17 = add i32 %16, -1
  %18 = icmp eq i32 %17, 0
  %19 = tail call i32 @llvm.ctlz.i32(i32 %17, i1 false) #6, !range !8
  %20 = sub nuw nsw i32 32, %19
  %21 = select i1 %18, i32 0, i32 %20
  %22 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 6
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = tail call i32 @llvm.usub.sat.i32(i32 %21, i32 %24)
  %26 = shl i32 %1, %25
  br label %27

27:                                               ; preds = %15, %11
  %28 = phi i32 [ %14, %11 ], [ %24, %15 ]
  %29 = phi i32 [ %1, %11 ], [ %26, %15 ]
  %30 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = sub nsw i32 32, %32
  %34 = lshr i32 -1, %33
  %35 = sub nsw i32 32, %28
  %36 = lshr i32 -1, %35
  tail call void @rational_best_approximation(i32 noundef %29, i32 noundef %10, i32 noundef %34, i32 noundef %36, ptr noundef %3, ptr noundef %4) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rational_best_approximation(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_fd_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %4) #6
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 8
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6
  br i1 %13, label %19, label %17

17:                                               ; preds = %8
  %18 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  br label %20

19:                                               ; preds = %8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ %16, %19 ]
  %22 = load ptr, ptr %3, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %22, i32 noundef %9) #6
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, %21
  %29 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 2
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i32
  %32 = lshr i32 %28, %31
  %33 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, %21
  %36 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 5
  %37 = load i8, ptr %36, align 4
  %38 = zext i8 %37 to i32
  %39 = lshr i32 %35, %38
  %40 = load i8, ptr %10, align 4
  %41 = and i8 %40, 1
  %42 = zext i8 %41 to i32
  %43 = add i32 %32, %42
  %44 = add i32 %39, %42
  %45 = icmp ne i32 %44, 0
  %46 = icmp ne i32 %43, 0
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %60

48:                                               ; preds = %25
  %49 = zext i32 %1 to i64
  %50 = zext i32 %43 to i64
  %51 = mul nuw i64 %50, %49
  %52 = icmp ult i64 %51, 4294967296
  br i1 %52, label %53, label %56, !prof !11

53:                                               ; preds = %48
  %54 = trunc i64 %51 to i32
  %55 = udiv i32 %54, %44
  br label %60

56:                                               ; preds = %48
  %57 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %44, i64 %51) #7, !srcloc !12
  %58 = extractvalue { i64, i64 } %57, 1
  %59 = trunc i64 %58 to i32
  br label %60

60:                                               ; preds = %56, %53, %25
  %61 = phi i32 [ %1, %25 ], [ %55, %53 ], [ %59, %56 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_fd_round_rate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !13
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 4
  br label %68

9:                                                ; preds = %3
  %10 = tail call i32 @clk_hw_get_flags(ptr noundef %0) #6
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, ptr %2, align 4
  %15 = icmp ugt i32 %14, %1
  br i1 %15, label %16, label %68

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  call void %18(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  br label %53

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 8
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 4
  %25 = icmp eq i8 %24, 0
  %26 = load i32, ptr %2, align 4
  br i1 %25, label %27, label %31

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 6
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  br label %43

31:                                               ; preds = %21
  %32 = udiv i32 %26, %1
  %33 = add i32 %32, -1
  %34 = icmp eq i32 %33, 0
  %35 = tail call i32 @llvm.ctlz.i32(i32 %33, i1 false) #6, !range !8
  %36 = sub nuw nsw i32 32, %35
  %37 = select i1 %34, i32 0, i32 %36
  %38 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 6
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = tail call i32 @llvm.usub.sat.i32(i32 %37, i32 %40) #6
  %42 = shl i32 %1, %41
  br label %43

43:                                               ; preds = %31, %27
  %44 = phi i32 [ %30, %27 ], [ %40, %31 ]
  %45 = phi i32 [ %1, %27 ], [ %42, %31 ]
  %46 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 3
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = sub nsw i32 32, %48
  %50 = lshr i32 -1, %49
  %51 = sub nsw i32 32, %44
  %52 = lshr i32 -1, %51
  call void @rational_best_approximation(i32 noundef %45, i32 noundef %26, i32 noundef %50, i32 noundef %52, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  br label %53

53:                                               ; preds = %43, %20
  %54 = load i32, ptr %2, align 4
  %55 = zext i32 %54 to i64
  %56 = load i32, ptr %4, align 4
  %57 = zext i32 %56 to i64
  %58 = mul nuw i64 %57, %55
  %59 = load i32, ptr %5, align 4
  %60 = icmp ult i64 %58, 4294967296
  br i1 %60, label %61, label %64, !prof !11

61:                                               ; preds = %53
  %62 = trunc i64 %58 to i32
  %63 = udiv i32 %62, %59
  br label %68

64:                                               ; preds = %53
  %65 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %59, i64 %58) #7, !srcloc !12
  %66 = extractvalue { i64, i64 } %65, 1
  %67 = trunc i64 %66 to i32
  br label %68

68:                                               ; preds = %64, %61, %13, %7
  %69 = phi i32 [ %63, %61 ], [ %67, %64 ], [ %8, %7 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_fd_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !13
  %6 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = sub nsw i32 32, %8
  %10 = lshr i32 -1, %9
  %11 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 6
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = sub nsw i32 32, %13
  %15 = lshr i32 -1, %14
  call void @rational_best_approximation(i32 noundef %1, i32 noundef %2, i32 noundef %10, i32 noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %16 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 8
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load i32, ptr %4, align 4
  %22 = add i32 %21, -1
  store i32 %22, ptr %4, align 4
  %23 = load i32, ptr %5, align 4
  %24 = add i32 %23, -1
  store i32 %24, ptr %5, align 4
  br label %25

25:                                               ; preds = %20, %3
  %26 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %27) #6
  %31 = load i8, ptr %16, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i8 [ %31, %29 ], [ %17, %25 ]
  %34 = phi i32 [ %30, %29 ], [ 0, %25 ]
  %35 = and i8 %33, 2
  %36 = icmp eq i8 %35, 0
  %37 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #6
  br i1 %36, label %42, label %40

40:                                               ; preds = %32
  %41 = call i32 @llvm.bswap.i32(i32 %39) #6
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  br label %43

42:                                               ; preds = %32
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ %39, %42 ]
  %45 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %48, %46
  %50 = xor i32 %49, -1
  %51 = and i32 %44, %50
  %52 = load i32, ptr %4, align 4
  %53 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 2
  %54 = load i8, ptr %53, align 4
  %55 = zext i8 %54 to i32
  %56 = shl i32 %52, %55
  %57 = load i32, ptr %5, align 4
  %58 = getelementptr inbounds %struct.clk_fractional_divider, ptr %0, i32 0, i32 5
  %59 = load i8, ptr %58, align 4
  %60 = zext i8 %59 to i32
  %61 = shl i32 %57, %60
  %62 = or i32 %56, %51
  %63 = or i32 %62, %61
  %64 = load i8, ptr %16, align 4
  %65 = and i8 %64, 2
  %66 = icmp eq i8 %65, 0
  call void asm sideeffect "dsb st", "~{memory}"() #6
  call void @arm_heavy_mb() #6
  br i1 %66, label %70, label %67

67:                                               ; preds = %43
  %68 = call i32 @llvm.bswap.i32(i32 %63) #6
  %69 = load ptr, ptr %37, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %68) #6, !srcloc !14
  br label %72

70:                                               ; preds = %43
  %71 = load ptr, ptr %37, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %63) #6, !srcloc !14
  br label %72

72:                                               ; preds = %70, %67
  %73 = load ptr, ptr %26, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %73, i32 noundef %34) #6
  br label %76

76:                                               ; preds = %75, %72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_hw_register_fractional_divider(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i8 noundef zeroext %9, ptr noundef %10) #0 {
  %12 = alloca ptr, align 4
  %13 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %13) #6
  %14 = getelementptr inbounds i8, ptr %13, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %14, i8 0, i32 12, i1 false), !annotation !13
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 44) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %51, label %18

18:                                               ; preds = %11
  store ptr %1, ptr %13, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 1
  store ptr @clk_fractional_divider_ops, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 6
  store i32 %3, ptr %20, align 4
  %21 = icmp eq ptr %2, null
  %22 = select i1 %21, ptr null, ptr %12
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 2
  store ptr %22, ptr %23, align 4
  %24 = icmp ne ptr %2, null
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 5
  store i8 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_fractional_divider, ptr %16, i32 0, i32 1
  store ptr %4, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_fractional_divider, ptr %16, i32 0, i32 2
  store i8 %5, ptr %28, align 8
  %29 = getelementptr inbounds %struct.clk_fractional_divider, ptr %16, i32 0, i32 3
  store i8 %6, ptr %29, align 1
  %30 = zext i8 %6 to i32
  %31 = sub nsw i32 32, %30
  %32 = lshr i32 -1, %31
  %33 = zext i8 %5 to i32
  %34 = shl i32 %32, %33
  %35 = getelementptr inbounds %struct.clk_fractional_divider, ptr %16, i32 0, i32 4
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.clk_fractional_divider, ptr %16, i32 0, i32 5
  store i8 %7, ptr %36, align 8
  %37 = getelementptr inbounds %struct.clk_fractional_divider, ptr %16, i32 0, i32 6
  store i8 %8, ptr %37, align 1
  %38 = zext i8 %8 to i32
  %39 = sub nsw i32 32, %38
  %40 = lshr i32 -1, %39
  %41 = zext i8 %7 to i32
  %42 = shl i32 %40, %41
  %43 = getelementptr inbounds %struct.clk_fractional_divider, ptr %16, i32 0, i32 7
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.clk_fractional_divider, ptr %16, i32 0, i32 8
  store i8 %9, ptr %44, align 8
  %45 = getelementptr inbounds %struct.clk_fractional_divider, ptr %16, i32 0, i32 10
  store ptr %10, ptr %45, align 8
  %46 = getelementptr inbounds %struct.clk_hw, ptr %16, i32 0, i32 2
  store ptr %13, ptr %46, align 8
  %47 = call i32 @clk_hw_register(ptr noundef %0, ptr noundef nonnull %16) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %18
  call void @kfree(ptr noundef nonnull %16) #6
  %50 = inttoptr i32 %47 to ptr
  br label %51

51:                                               ; preds = %49, %18, %11
  %52 = phi ptr [ %50, %49 ], [ %16, %18 ], [ inttoptr (i32 -12 to ptr), %11 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %13) #6
  ret ptr %52
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_register_fractional_divider(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i8 noundef zeroext %9, ptr noundef %10) #0 {
  %12 = tail call ptr @clk_hw_register_fractional_divider(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i8 noundef zeroext %9, ptr noundef %10)
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.clk_hw, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi ptr [ %16, %14 ], [ %12, %11 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_hw_unregister_fractional_divider(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @clk_hw_unregister(ptr noundef %0) #6
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind allocsize(2) }

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
!8 = !{i32 0, i32 33}
!9 = !{i64 2151449474}
!10 = !{i64 2151449778}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148657725, i64 2148658005, i64 2148658339, i64 2148658673}
!13 = !{!"auto-init"}
!14 = !{i64 2846637}
