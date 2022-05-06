; ModuleID = '/llk/IR/drivers/clk/meson/clk-mpll.c_pt.bc'
source_filename = "../drivers/clk/meson/clk-mpll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_clk_mpll_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_clk_mpll_ro_ops\22\09\09\09\09\09"
module asm "__kstrtabns_meson_clk_mpll_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_clk_mpll_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_clk_mpll_ops\22\09\09\09\09\09"
module asm "__kstrtabns_meson_clk_mpll_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_regmap = type { %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.parm = type { i16, i8, i8 }
%struct.meson_clk_mpll_data = type { %struct.parm, %struct.parm, %struct.parm, %struct.parm, %struct.parm, ptr, i32, ptr, i8 }

@meson_clk_mpll_ro_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mpll_recalc_rate, ptr @mpll_round_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_meson_clk_mpll_ro_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_clk_mpll_ro_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_clk_mpll_ro_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_clk_mpll_ro_ops to i32), ptr @__kstrtab_meson_clk_mpll_ro_ops, ptr @__kstrtabns_meson_clk_mpll_ro_ops }, section "___ksymtab_gpl+meson_clk_mpll_ro_ops", align 4
@meson_clk_mpll_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mpll_recalc_rate, ptr @mpll_round_rate, ptr null, ptr null, ptr null, ptr @mpll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mpll_init, ptr null, ptr null }, align 4
@__kstrtab_meson_clk_mpll_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_clk_mpll_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_clk_mpll_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_clk_mpll_ops to i32), ptr @__kstrtab_meson_clk_mpll_ops, ptr @__kstrtabns_meson_clk_mpll_ops }, section "___ksymtab_gpl+meson_clk_mpll_ops", align 4
@__UNIQUE_ID_description154 = internal constant [41 x i8] c"clk_mpll.description=Amlogic MPLL driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author155 = internal constant [60 x i8] c"clk_mpll.author=Michael Turquette <mturquette@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file156 = internal constant [41 x i8] c"clk_mpll.file=drivers/clk/meson/clk-mpll\00", section ".modinfo", align 1
@__UNIQUE_ID_license157 = internal constant [24 x i8] c"clk_mpll.license=GPL v2\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author155, ptr @__UNIQUE_ID_description154, ptr @__UNIQUE_ID_file156, ptr @__UNIQUE_ID_license157, ptr @__ksymtab_meson_clk_mpll_ops, ptr @__ksymtab_meson_clk_mpll_ro_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mpll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %9 = load i16, ptr %6, align 2
  %10 = zext i16 %9 to i32
  %11 = call i32 @regmap_read(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %4) #5
  %12 = load i32, ptr %4, align 4
  %13 = getelementptr inbounds %struct.parm, ptr %6, i32 0, i32 1
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = shl nsw i32 -1, %15
  %17 = getelementptr inbounds %struct.parm, ptr %6, i32 0, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = add nuw nsw i32 %15, %19
  %21 = sub nsw i32 32, %20
  %22 = lshr i32 -1, %21
  %23 = and i32 %16, %12
  %24 = and i32 %23, %22
  %25 = lshr i32 %24, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %6, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = call i32 @regmap_read(ptr noundef %26, i32 noundef %29, ptr noundef nonnull %3) #5
  %31 = load i32, ptr %3, align 4
  %32 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %6, i32 0, i32 2, i32 1
  %33 = load i8, ptr %32, align 2
  %34 = zext i8 %33 to i32
  %35 = shl nsw i32 -1, %34
  %36 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %6, i32 0, i32 2, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = add nuw nsw i32 %34, %38
  %40 = sub nsw i32 32, %39
  %41 = lshr i32 -1, %40
  %42 = and i32 %35, %31
  %43 = and i32 %42, %41
  %44 = lshr i32 %43, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %45 = shl i32 %44, 14
  %46 = add i32 %45, %25
  %47 = icmp ult i32 %44, 4
  br i1 %47, label %62, label %48

48:                                               ; preds = %2
  %49 = zext i32 %1 to i64
  %50 = shl nuw nsw i64 %49, 14
  %51 = zext i32 %46 to i64
  %52 = add nsw i64 %51, -1
  %53 = add nsw i64 %52, %50
  %54 = icmp ult i64 %53, 4294967296
  br i1 %54, label %55, label %58, !prof !9

55:                                               ; preds = %48
  %56 = trunc i64 %53 to i32
  %57 = udiv i32 %56, %46
  br label %62

58:                                               ; preds = %48
  %59 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %46, i64 %53) #6, !srcloc !10
  %60 = extractvalue { i64, i64 } %59, 1
  %61 = trunc i64 %60 to i32
  br label %62

62:                                               ; preds = %58, %55, %2
  %63 = phi i32 [ -22, %2 ], [ %57, %55 ], [ %61, %58 ]
  %64 = call i32 @llvm.smax.i32(i32 %63, i32 0)
  ret i32 %64
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @mpll_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %2, align 4
  %7 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %5, i32 0, i32 8
  %8 = load i8, ptr %7, align 4
  %9 = zext i32 %6 to i64
  %10 = freeze i32 %6
  %11 = udiv i32 %10, %1
  %12 = zext i32 %11 to i64
  %13 = mul i32 %11, %1
  %14 = sub i32 %10, %13
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 14
  %17 = and i8 %8, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %3
  %20 = lshr i32 %1, 1
  %21 = zext i32 %20 to i64
  %22 = add nuw nsw i64 %16, %21
  %23 = icmp ult i64 %22, 4294967296
  br i1 %23, label %24, label %27, !prof !9

24:                                               ; preds = %19
  %25 = trunc i64 %22 to i32
  %26 = udiv i32 %25, %1
  br label %43

27:                                               ; preds = %19
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %22) #6, !srcloc !10
  %29 = extractvalue { i64, i64 } %28, 1
  %30 = trunc i64 %29 to i32
  br label %43

31:                                               ; preds = %3
  %32 = zext i32 %1 to i64
  %33 = add nsw i64 %32, -1
  %34 = add nsw i64 %16, %33
  %35 = icmp ult i64 %34, 4294967296
  br i1 %35, label %36, label %39, !prof !9

36:                                               ; preds = %31
  %37 = trunc i64 %34 to i32
  %38 = udiv i32 %37, %1
  br label %43

39:                                               ; preds = %31
  %40 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %34) #6, !srcloc !10
  %41 = extractvalue { i64, i64 } %40, 1
  %42 = trunc i64 %41 to i32
  br label %43

43:                                               ; preds = %39, %36, %27, %24
  %44 = phi i32 [ %26, %24 ], [ %30, %27 ], [ %38, %36 ], [ %42, %39 ]
  %45 = icmp eq i32 %44, 16384
  %46 = select i1 %45, i32 0, i32 %44
  %47 = zext i1 %45 to i64
  %48 = add nuw nsw i64 %12, %47
  %49 = icmp ult i64 %48, 4
  %50 = icmp ugt i64 %48, 511
  %51 = select i1 %50, i32 16383, i32 %46
  %52 = tail call i64 @llvm.umin.i64(i64 %48, i64 511)
  %53 = select i1 %49, i32 0, i32 %51
  %54 = tail call i64 @llvm.umax.i64(i64 %52, i64 4)
  %55 = trunc i64 %54 to i32
  %56 = shl nuw nsw i32 %55, 14
  %57 = add i32 %56, %53
  %58 = shl nuw nsw i64 %9, 14
  %59 = zext i32 %57 to i64
  %60 = add nsw i64 %59, -1
  %61 = add nsw i64 %60, %58
  %62 = icmp ult i64 %61, 4294967296
  br i1 %62, label %63, label %66, !prof !9

63:                                               ; preds = %43
  %64 = trunc i64 %61 to i32
  %65 = udiv i32 %64, %57
  br label %70

66:                                               ; preds = %43
  %67 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %57, i64 %61) #6, !srcloc !10
  %68 = extractvalue { i64, i64 } %67, 1
  %69 = trunc i64 %68 to i32
  br label %70

70:                                               ; preds = %66, %63
  %71 = phi i32 [ %65, %63 ], [ %69, %66 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mpll_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %5, i32 0, i32 8
  %7 = load i8, ptr %6, align 4
  %8 = udiv i32 %2, %1
  %9 = zext i32 %8 to i64
  %10 = mul i32 %8, %1
  %11 = sub i32 %2, %10
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 14
  %14 = and i8 %7, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %3
  %17 = lshr i32 %1, 1
  %18 = zext i32 %17 to i64
  %19 = add nuw nsw i64 %13, %18
  %20 = icmp ult i64 %19, 4294967296
  br i1 %20, label %21, label %24, !prof !9

21:                                               ; preds = %16
  %22 = trunc i64 %19 to i32
  %23 = udiv i32 %22, %1
  br label %40

24:                                               ; preds = %16
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %19) #6, !srcloc !10
  %26 = extractvalue { i64, i64 } %25, 1
  %27 = trunc i64 %26 to i32
  br label %40

28:                                               ; preds = %3
  %29 = zext i32 %1 to i64
  %30 = add nsw i64 %29, -1
  %31 = add nsw i64 %13, %30
  %32 = icmp ult i64 %31, 4294967296
  br i1 %32, label %33, label %36, !prof !9

33:                                               ; preds = %28
  %34 = trunc i64 %31 to i32
  %35 = udiv i32 %34, %1
  br label %40

36:                                               ; preds = %28
  %37 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %31) #6, !srcloc !10
  %38 = extractvalue { i64, i64 } %37, 1
  %39 = trunc i64 %38 to i32
  br label %40

40:                                               ; preds = %36, %33, %24, %21
  %41 = phi i32 [ %23, %21 ], [ %27, %24 ], [ %35, %33 ], [ %39, %36 ]
  %42 = icmp eq i32 %41, 16384
  %43 = select i1 %42, i32 0, i32 %41
  %44 = zext i1 %42 to i64
  %45 = add nuw nsw i64 %9, %44
  %46 = icmp ult i64 %45, 4
  %47 = icmp ugt i64 %45, 511
  %48 = select i1 %47, i32 16383, i32 %43
  %49 = tail call i64 @llvm.umin.i64(i64 %45, i64 511)
  %50 = select i1 %46, i32 0, i32 %48
  %51 = tail call i64 @llvm.umax.i64(i64 %49, i64 4)
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %5, i32 0, i32 7
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %40
  %57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %54) #5
  br label %58

58:                                               ; preds = %56, %40
  %59 = phi i32 [ %57, %56 ], [ 0, %40 ]
  %60 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load i16, ptr %5, align 2
  %63 = zext i16 %62 to i32
  %64 = getelementptr inbounds %struct.parm, ptr %5, i32 0, i32 1
  %65 = load i8, ptr %64, align 2
  %66 = zext i8 %65 to i32
  %67 = shl nsw i32 -1, %66
  %68 = getelementptr inbounds %struct.parm, ptr %5, i32 0, i32 2
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = add nuw nsw i32 %66, %70
  %72 = sub nsw i32 32, %71
  %73 = lshr i32 -1, %72
  %74 = and i32 %73, %67
  %75 = shl i32 %50, %66
  %76 = tail call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef %63, i32 noundef %74, i32 noundef %75, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %77 = load ptr, ptr %60, align 4
  %78 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %5, i32 0, i32 2
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %5, i32 0, i32 2, i32 1
  %82 = load i8, ptr %81, align 2
  %83 = zext i8 %82 to i32
  %84 = shl nsw i32 -1, %83
  %85 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %5, i32 0, i32 2, i32 2
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = add nuw nsw i32 %83, %87
  %89 = sub nsw i32 32, %88
  %90 = lshr i32 -1, %89
  %91 = and i32 %90, %84
  %92 = shl i32 %52, %83
  %93 = tail call i32 @regmap_update_bits_base(ptr noundef %77, i32 noundef %80, i32 noundef %91, i32 noundef %92, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %94 = load ptr, ptr %53, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %58
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %94, i32 noundef %59) #5
  br label %97

97:                                               ; preds = %96, %58
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mpll_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %3, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regmap_multi_reg_write(ptr noundef %9, ptr noundef %11, i32 noundef %5) #5
  br label %13

13:                                               ; preds = %7, %1
  %14 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %3, i32 0, i32 1
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %3, i32 0, i32 1, i32 1
  %20 = load i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = shl nsw i32 -1, %21
  %23 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %3, i32 0, i32 1, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = add nuw nsw i32 %21, %25
  %27 = sub nsw i32 32, %26
  %28 = lshr i32 -1, %27
  %29 = and i32 %28, %22
  %30 = shl nuw i32 1, %21
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %18, i32 noundef %29, i32 noundef %30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %32 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %3, i32 0, i32 3, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %13
  %36 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %3, i32 0, i32 3
  %37 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %3, i32 0, i32 8
  %38 = load i8, ptr %37, align 4
  %39 = lshr i8 %38, 1
  %40 = and i8 %39, 1
  %41 = zext i8 %40 to i32
  %42 = load ptr, ptr %14, align 4
  %43 = load i16, ptr %36, align 2
  %44 = zext i16 %43 to i32
  %45 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %3, i32 0, i32 3, i32 1
  %46 = load i8, ptr %45, align 2
  %47 = zext i8 %46 to i32
  %48 = shl nsw i32 -1, %47
  %49 = zext i8 %33 to i32
  %50 = add nuw nsw i32 %47, %49
  %51 = sub nsw i32 32, %50
  %52 = lshr i32 -1, %51
  %53 = and i32 %52, %48
  %54 = shl nuw i32 %41, %47
  %55 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef %44, i32 noundef %53, i32 noundef %54, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %56

56:                                               ; preds = %35, %13
  %57 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %3, i32 0, i32 4, i32 2
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %3, i32 0, i32 4
  %62 = load ptr, ptr %14, align 4
  %63 = load i16, ptr %61, align 2
  %64 = zext i16 %63 to i32
  %65 = getelementptr inbounds %struct.meson_clk_mpll_data, ptr %3, i32 0, i32 4, i32 1
  %66 = load i8, ptr %65, align 2
  %67 = zext i8 %66 to i32
  %68 = shl nsw i32 -1, %67
  %69 = zext i8 %58 to i32
  %70 = add nuw nsw i32 %67, %69
  %71 = sub nsw i32 32, %70
  %72 = lshr i32 -1, %71
  %73 = and i32 %72, %68
  %74 = shl nuw i32 1, %67
  %75 = tail call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef %64, i32 noundef %73, i32 noundef %74, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %76

76:                                               ; preds = %60, %56
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148655428, i64 2148655708, i64 2148656042, i64 2148656376}
