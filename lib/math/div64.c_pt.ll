; ModuleID = '/llk/IR/lib/math/div64.c_pt.bc'
source_filename = "../lib/math/div64.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_div_s64_rem:\09\09\09\09\09"
module asm "\09.asciz \09\22div_s64_rem\22\09\09\09\09\09"
module asm "__kstrtabns_div_s64_rem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_div64_u64_rem:\09\09\09\09\09"
module asm "\09.asciz \09\22div64_u64_rem\22\09\09\09\09\09"
module asm "__kstrtabns_div64_u64_rem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_div64_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22div64_u64\22\09\09\09\09\09"
module asm "__kstrtabns_div64_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_div64_s64:\09\09\09\09\09"
module asm "\09.asciz \09\22div64_s64\22\09\09\09\09\09"
module asm "__kstrtabns_div64_s64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iter_div_u64_rem:\09\09\09\09\09"
module asm "\09.asciz \09\22iter_div_u64_rem\22\09\09\09\09\09"
module asm "__kstrtabns_iter_div_u64_rem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mul_u64_u64_div_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22mul_u64_u64_div_u64\22\09\09\09\09\09"
module asm "__kstrtabns_mul_u64_u64_div_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_div_s64_rem = external dso_local constant [0 x i8], align 1
@__kstrtabns_div_s64_rem = external dso_local constant [0 x i8], align 1
@__ksymtab_div_s64_rem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @div_s64_rem to i32), ptr @__kstrtab_div_s64_rem, ptr @__kstrtabns_div_s64_rem }, section "___ksymtab+div_s64_rem", align 4
@__kstrtab_div64_u64_rem = external dso_local constant [0 x i8], align 1
@__kstrtabns_div64_u64_rem = external dso_local constant [0 x i8], align 1
@__ksymtab_div64_u64_rem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @div64_u64_rem to i32), ptr @__kstrtab_div64_u64_rem, ptr @__kstrtabns_div64_u64_rem }, section "___ksymtab+div64_u64_rem", align 4
@__kstrtab_div64_u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_div64_u64 = external dso_local constant [0 x i8], align 1
@__ksymtab_div64_u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @div64_u64 to i32), ptr @__kstrtab_div64_u64, ptr @__kstrtabns_div64_u64 }, section "___ksymtab+div64_u64", align 4
@__kstrtab_div64_s64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_div64_s64 = external dso_local constant [0 x i8], align 1
@__ksymtab_div64_s64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @div64_s64 to i32), ptr @__kstrtab_div64_s64, ptr @__kstrtabns_div64_s64 }, section "___ksymtab+div64_s64", align 4
@__kstrtab_iter_div_u64_rem = external dso_local constant [0 x i8], align 1
@__kstrtabns_iter_div_u64_rem = external dso_local constant [0 x i8], align 1
@__ksymtab_iter_div_u64_rem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iter_div_u64_rem to i32), ptr @__kstrtab_iter_div_u64_rem, ptr @__kstrtabns_iter_div_u64_rem }, section "___ksymtab+iter_div_u64_rem", align 4
@__kstrtab_mul_u64_u64_div_u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_mul_u64_u64_div_u64 = external dso_local constant [0 x i8], align 1
@__ksymtab_mul_u64_u64_div_u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mul_u64_u64_div_u64 to i32), ptr @__kstrtab_mul_u64_u64_div_u64, ptr @__kstrtabns_mul_u64_u64_div_u64 }, section "___ksymtab+mul_u64_u64_div_u64", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_div64_s64, ptr @__ksymtab_div64_u64, ptr @__ksymtab_div64_u64_rem, ptr @__ksymtab_div_s64_rem, ptr @__ksymtab_iter_div_u64_rem, ptr @__ksymtab_mul_u64_u64_div_u64], section "llvm.metadata"

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @div_s64_rem(i64 noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = icmp slt i64 %0, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %3
  %6 = sub i64 0, %0
  %7 = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %8 = icmp ult i64 %6, 4294967296
  br i1 %8, label %9, label %16, !prof !8

9:                                                ; preds = %5
  %10 = trunc i64 %6 to i32
  %11 = freeze i32 %7
  %12 = udiv i32 %10, %11
  %13 = mul i32 %12, %11
  %14 = sub i32 %10, %13
  %15 = zext i32 %12 to i64
  br label %22

16:                                               ; preds = %5
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %6) #6, !srcloc !9
  %18 = extractvalue { i64, i64 } %17, 0
  %19 = extractvalue { i64, i64 } %17, 1
  %20 = lshr i64 %18, 32
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %16, %9
  %23 = phi i64 [ %15, %9 ], [ %19, %16 ]
  %24 = phi i32 [ %14, %9 ], [ %21, %16 ]
  %25 = sub i32 0, %24
  store i32 %25, ptr %2, align 4
  %26 = icmp sgt i32 %1, 0
  %27 = sub i64 0, %23
  %28 = select i1 %26, i64 %27, i64 %23
  br label %51

29:                                               ; preds = %3
  %30 = icmp slt i32 %1, 0
  %31 = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %32 = icmp ult i64 %0, 4294967296
  br i1 %32, label %33, label %40, !prof !8

33:                                               ; preds = %29
  %34 = trunc i64 %0 to i32
  %35 = freeze i32 %31
  %36 = udiv i32 %34, %35
  %37 = mul i32 %36, %35
  %38 = sub i32 %34, %37
  %39 = zext i32 %36 to i64
  br label %46

40:                                               ; preds = %29
  %41 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %31, i64 %0) #6, !srcloc !9
  %42 = extractvalue { i64, i64 } %41, 0
  %43 = extractvalue { i64, i64 } %41, 1
  %44 = lshr i64 %42, 32
  %45 = trunc i64 %44 to i32
  br label %46

46:                                               ; preds = %40, %33
  %47 = phi i64 [ %39, %33 ], [ %43, %40 ]
  %48 = phi i32 [ %38, %33 ], [ %45, %40 ]
  store i32 %48, ptr %2, align 4
  %49 = sub i64 0, %47
  %50 = select i1 %30, i64 %49, i64 %47
  br label %51

51:                                               ; preds = %46, %22
  %52 = phi i64 [ %28, %22 ], [ %50, %46 ]
  ret i64 %52
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local i64 @div64_u64_rem(i64 noundef %0, i64 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = lshr i64 %1, 32
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = trunc i64 %1 to i32
  %9 = icmp ult i64 %0, 4294967296
  br i1 %9, label %10, label %16, !prof !8

10:                                               ; preds = %7
  %11 = trunc i64 %0 to i32
  %12 = udiv i32 %11, %8
  %13 = mul i32 %12, %8
  %14 = sub i32 %11, %13
  %15 = zext i32 %12 to i64
  br label %22

16:                                               ; preds = %7
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %0) #6, !srcloc !9
  %18 = extractvalue { i64, i64 } %17, 0
  %19 = extractvalue { i64, i64 } %17, 1
  %20 = lshr i64 %18, 32
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %16, %10
  %23 = phi i64 [ %15, %10 ], [ %19, %16 ]
  %24 = phi i32 [ %14, %10 ], [ %21, %16 ]
  %25 = zext i32 %24 to i64
  br label %54

26:                                               ; preds = %3
  %27 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 true) #7, !range !10
  %28 = sub nuw nsw i32 32, %27
  %29 = zext i32 %28 to i64
  %30 = lshr i64 %0, %29
  %31 = lshr i64 %1, %29
  %32 = trunc i64 %31 to i32
  %33 = icmp ult i64 %30, 4294967296
  br i1 %33, label %34, label %38, !prof !8

34:                                               ; preds = %26
  %35 = trunc i64 %30 to i32
  %36 = udiv i32 %35, %32
  %37 = zext i32 %36 to i64
  br label %41

38:                                               ; preds = %26
  %39 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %32, i64 %30) #6, !srcloc !9
  %40 = extractvalue { i64, i64 } %39, 1
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i64 [ %37, %34 ], [ %40, %38 ]
  %43 = icmp eq i64 %42, 0
  %44 = add i64 %42, -1
  %45 = select i1 %43, i64 0, i64 %44
  %46 = mul i64 %45, %1
  %47 = sub i64 %0, %46
  %48 = icmp ult i64 %47, %1
  %49 = select i1 %48, i64 0, i64 %1
  %50 = sub i64 %47, %49
  %51 = xor i1 %48, true
  %52 = zext i1 %51 to i64
  %53 = add nuw i64 %45, %52
  br label %54

54:                                               ; preds = %41, %22
  %55 = phi i64 [ %50, %41 ], [ %25, %22 ]
  %56 = phi i64 [ %53, %41 ], [ %23, %22 ]
  store i64 %55, ptr %2, align 8
  ret i64 %56
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local i64 @div64_u64(i64 noundef %0, i64 noundef %1) #3 {
  %3 = lshr i64 %1, 32
  %4 = trunc i64 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = trunc i64 %1 to i32
  %8 = icmp ult i64 %0, 4294967296
  br i1 %8, label %9, label %13, !prof !8

9:                                                ; preds = %6
  %10 = trunc i64 %0 to i32
  %11 = udiv i32 %10, %7
  %12 = zext i32 %11 to i64
  br label %41

13:                                               ; preds = %6
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %0) #6, !srcloc !9
  %15 = extractvalue { i64, i64 } %14, 1
  br label %41

16:                                               ; preds = %2
  %17 = tail call i32 @llvm.ctlz.i32(i32 %4, i1 true) #7, !range !10
  %18 = sub nuw nsw i32 32, %17
  %19 = zext i32 %18 to i64
  %20 = lshr i64 %0, %19
  %21 = lshr i64 %1, %19
  %22 = trunc i64 %21 to i32
  %23 = icmp ult i64 %20, 4294967296
  br i1 %23, label %24, label %28, !prof !8

24:                                               ; preds = %16
  %25 = trunc i64 %20 to i32
  %26 = udiv i32 %25, %22
  %27 = zext i32 %26 to i64
  br label %31

28:                                               ; preds = %16
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %22, i64 %20) #6, !srcloc !9
  %30 = extractvalue { i64, i64 } %29, 1
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i64 [ %27, %24 ], [ %30, %28 ]
  %33 = icmp eq i64 %32, 0
  %34 = add i64 %32, -1
  %35 = select i1 %33, i64 0, i64 %34
  %36 = mul i64 %35, %1
  %37 = sub i64 %0, %36
  %38 = icmp uge i64 %37, %1
  %39 = zext i1 %38 to i64
  %40 = add nuw i64 %35, %39
  br label %41

41:                                               ; preds = %31, %13, %9
  %42 = phi i64 [ %40, %31 ], [ %12, %9 ], [ %15, %13 ]
  ret i64 %42
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local i64 @div64_s64(i64 noundef %0, i64 noundef %1) #3 {
  %3 = tail call i64 @llvm.abs.i64(i64 %0, i1 false)
  %4 = tail call i64 @llvm.abs.i64(i64 %1, i1 false)
  %5 = lshr i64 %4, 32
  %6 = trunc i64 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = trunc i64 %4 to i32
  %10 = icmp ult i64 %3, 4294967296
  br i1 %10, label %11, label %15, !prof !8

11:                                               ; preds = %8
  %12 = trunc i64 %3 to i32
  %13 = udiv i32 %12, %9
  %14 = zext i32 %13 to i64
  br label %43

15:                                               ; preds = %8
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %3) #6, !srcloc !9
  %17 = extractvalue { i64, i64 } %16, 1
  br label %43

18:                                               ; preds = %2
  %19 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 true) #7, !range !10
  %20 = sub nuw nsw i32 32, %19
  %21 = zext i32 %20 to i64
  %22 = lshr i64 %3, %21
  %23 = lshr i64 %4, %21
  %24 = trunc i64 %23 to i32
  %25 = icmp ult i64 %22, 4294967296
  br i1 %25, label %26, label %30, !prof !8

26:                                               ; preds = %18
  %27 = trunc i64 %22 to i32
  %28 = udiv i32 %27, %24
  %29 = zext i32 %28 to i64
  br label %33

30:                                               ; preds = %18
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %24, i64 %22) #6, !srcloc !9
  %32 = extractvalue { i64, i64 } %31, 1
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i64 [ %29, %26 ], [ %32, %30 ]
  %35 = icmp eq i64 %34, 0
  %36 = add i64 %34, -1
  %37 = select i1 %35, i64 0, i64 %36
  %38 = mul i64 %37, %4
  %39 = sub i64 %3, %38
  %40 = icmp uge i64 %39, %4
  %41 = zext i1 %40 to i64
  %42 = add nuw i64 %37, %41
  br label %43

43:                                               ; preds = %33, %15, %11
  %44 = phi i64 [ %42, %33 ], [ %14, %11 ], [ %17, %15 ]
  %45 = xor i64 %1, %0
  %46 = ashr i64 %45, 63
  %47 = xor i64 %44, %46
  %48 = sub i64 %47, %46
  ret i64 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iter_div_u64_rem(i64 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store i64 %0, ptr %4, align 8
  %5 = zext i32 %1 to i64
  %6 = icmp ugt i64 %5, %0
  br i1 %6, label %14, label %7

7:                                                ; preds = %7, %3
  %8 = phi i64 [ %11, %7 ], [ %0, %3 ]
  %9 = phi i32 [ %12, %7 ], [ 0, %3 ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %4, i64 %8) #7, !srcloc !11
  %10 = load i64, ptr %4, align 8
  %11 = sub i64 %10, %5
  store i64 %11, ptr %4, align 8
  %12 = add i32 %9, 1
  %13 = icmp ult i64 %11, %5
  br i1 %13, label %14, label %7

14:                                               ; preds = %7, %3
  %15 = phi i32 [ 0, %3 ], [ %12, %7 ]
  %16 = phi i64 [ %0, %3 ], [ %11, %7 ]
  store i64 %16, ptr %2, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  ret i32 %15
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local i64 @mul_u64_u64_div_u64(i64 noundef %0, i64 noundef %1, i64 noundef %2) #3 {
  %4 = lshr i64 %0, 32
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 true) #7, !range !10
  %9 = sub nuw nsw i32 64, %8
  br label %16

10:                                               ; preds = %3
  %11 = trunc i64 %0 to i32
  %12 = icmp eq i32 %11, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 false) #7, !range !10
  %14 = sub nuw nsw i32 32, %13
  %15 = select i1 %12, i32 0, i32 %14
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi i32 [ %9, %7 ], [ %15, %10 ]
  %18 = lshr i64 %1, 32
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = tail call i32 @llvm.ctlz.i32(i32 %19, i1 true) #7, !range !10
  %23 = sub nuw nsw i32 64, %22
  br label %30

24:                                               ; preds = %16
  %25 = trunc i64 %1 to i32
  %26 = icmp eq i32 %25, 0
  %27 = tail call i32 @llvm.ctlz.i32(i32 %25, i1 false) #7, !range !10
  %28 = sub nuw nsw i32 32, %27
  %29 = select i1 %26, i32 0, i32 %28
  br label %30

30:                                               ; preds = %24, %21
  %31 = phi i32 [ %23, %21 ], [ %29, %24 ]
  %32 = add nsw i32 %31, %17
  %33 = icmp sgt i32 %32, 64
  br i1 %33, label %34, label %125

34:                                               ; preds = %30
  %35 = lshr i64 %2, 32
  %36 = trunc i64 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = trunc i64 %2 to i32
  %40 = icmp ult i64 %1, 4294967296
  br i1 %40, label %41, label %47, !prof !8

41:                                               ; preds = %38
  %42 = trunc i64 %1 to i32
  %43 = udiv i32 %42, %39
  %44 = mul i32 %43, %39
  %45 = sub i32 %42, %44
  %46 = zext i32 %43 to i64
  br label %53

47:                                               ; preds = %38
  %48 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %39, i64 %1) #6, !srcloc !9
  %49 = extractvalue { i64, i64 } %48, 0
  %50 = extractvalue { i64, i64 } %48, 1
  %51 = lshr i64 %49, 32
  %52 = trunc i64 %51 to i32
  br label %53

53:                                               ; preds = %47, %41
  %54 = phi i64 [ %46, %41 ], [ %50, %47 ]
  %55 = phi i32 [ %45, %41 ], [ %52, %47 ]
  %56 = zext i32 %55 to i64
  br label %85

57:                                               ; preds = %34
  %58 = tail call i32 @llvm.ctlz.i32(i32 %36, i1 true) #7, !range !10
  %59 = sub nuw nsw i32 32, %58
  %60 = zext i32 %59 to i64
  %61 = lshr i64 %1, %60
  %62 = lshr i64 %2, %60
  %63 = trunc i64 %62 to i32
  %64 = icmp ult i64 %61, 4294967296
  br i1 %64, label %65, label %69, !prof !8

65:                                               ; preds = %57
  %66 = trunc i64 %61 to i32
  %67 = udiv i32 %66, %63
  %68 = zext i32 %67 to i64
  br label %72

69:                                               ; preds = %57
  %70 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %63, i64 %61) #6, !srcloc !9
  %71 = extractvalue { i64, i64 } %70, 1
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi i64 [ %68, %65 ], [ %71, %69 ]
  %74 = icmp eq i64 %73, 0
  %75 = add i64 %73, -1
  %76 = select i1 %74, i64 0, i64 %75
  %77 = mul i64 %76, %2
  %78 = sub i64 %1, %77
  %79 = icmp ult i64 %78, %2
  %80 = select i1 %79, i64 0, i64 %2
  %81 = sub i64 %78, %80
  %82 = xor i1 %79, true
  %83 = zext i1 %82 to i64
  %84 = add nuw i64 %76, %83
  br label %85

85:                                               ; preds = %72, %53
  %86 = phi i64 [ %81, %72 ], [ %56, %53 ]
  %87 = phi i64 [ %84, %72 ], [ %54, %53 ]
  %88 = mul i64 %87, %0
  %89 = lshr i64 %0, 32
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = tail call i32 @llvm.ctlz.i32(i32 %90, i1 true) #7, !range !10
  %94 = sub nuw nsw i32 64, %93
  br label %101

95:                                               ; preds = %85
  %96 = trunc i64 %0 to i32
  %97 = icmp eq i32 %96, 0
  %98 = tail call i32 @llvm.ctlz.i32(i32 %96, i1 false) #7, !range !10
  %99 = sub nuw nsw i32 32, %98
  %100 = select i1 %97, i32 0, i32 %99
  br label %101

101:                                              ; preds = %95, %92
  %102 = phi i32 [ %94, %92 ], [ %100, %95 ]
  %103 = lshr i64 %86, 32
  %104 = trunc i64 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = tail call i32 @llvm.ctlz.i32(i32 %104, i1 true) #7, !range !10
  %108 = sub nuw nsw i32 64, %107
  br label %115

109:                                              ; preds = %101
  %110 = trunc i64 %86 to i32
  %111 = icmp eq i32 %110, 0
  %112 = tail call i32 @llvm.ctlz.i32(i32 %110, i1 false) #7, !range !10
  %113 = sub nuw nsw i32 32, %112
  %114 = select i1 %111, i32 0, i32 %113
  br label %115

115:                                              ; preds = %109, %106
  %116 = phi i32 [ %108, %106 ], [ %114, %109 ]
  %117 = add nsw i32 %116, %102
  %118 = icmp sgt i32 %117, 64
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = add nsw i32 %117, -64
  %121 = zext i32 %120 to i64
  %122 = lshr i64 %86, %121
  %123 = lshr i64 %2, %121
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %171, label %125

125:                                              ; preds = %119, %115, %30
  %126 = phi i64 [ %122, %119 ], [ %86, %115 ], [ %1, %30 ]
  %127 = phi i64 [ %123, %119 ], [ %2, %115 ], [ %2, %30 ]
  %128 = phi i64 [ %88, %119 ], [ %88, %115 ], [ 0, %30 ]
  %129 = mul i64 %126, %0
  %130 = lshr i64 %127, 32
  %131 = trunc i64 %130 to i32
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %125
  %134 = trunc i64 %127 to i32
  %135 = icmp ult i64 %129, 4294967296
  br i1 %135, label %136, label %140, !prof !8

136:                                              ; preds = %133
  %137 = trunc i64 %129 to i32
  %138 = udiv i32 %137, %134
  %139 = zext i32 %138 to i64
  br label %168

140:                                              ; preds = %133
  %141 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %134, i64 %129) #6, !srcloc !9
  %142 = extractvalue { i64, i64 } %141, 1
  br label %168

143:                                              ; preds = %125
  %144 = tail call i32 @llvm.ctlz.i32(i32 %131, i1 true) #7, !range !10
  %145 = sub nuw nsw i32 32, %144
  %146 = zext i32 %145 to i64
  %147 = lshr i64 %129, %146
  %148 = lshr i64 %127, %146
  %149 = trunc i64 %148 to i32
  %150 = icmp ult i64 %147, 4294967296
  br i1 %150, label %151, label %155, !prof !8

151:                                              ; preds = %143
  %152 = trunc i64 %147 to i32
  %153 = udiv i32 %152, %149
  %154 = zext i32 %153 to i64
  br label %158

155:                                              ; preds = %143
  %156 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %149, i64 %147) #6, !srcloc !9
  %157 = extractvalue { i64, i64 } %156, 1
  br label %158

158:                                              ; preds = %155, %151
  %159 = phi i64 [ %154, %151 ], [ %157, %155 ]
  %160 = icmp eq i64 %159, 0
  %161 = add i64 %159, -1
  %162 = select i1 %160, i64 0, i64 %161
  %163 = mul i64 %162, %127
  %164 = sub i64 %129, %163
  %165 = icmp uge i64 %164, %127
  %166 = zext i1 %165 to i64
  %167 = add nuw i64 %162, %166
  br label %168

168:                                              ; preds = %158, %140, %136
  %169 = phi i64 [ %167, %158 ], [ %139, %136 ], [ %142, %140 ]
  %170 = add i64 %169, %128
  br label %171

171:                                              ; preds = %168, %119
  %172 = phi i64 [ %170, %168 ], [ %88, %119 ]
  ret i64 %172
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

attributes #0 = { argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2148268793, i64 2148269073, i64 2148269407, i64 2148269741}
!10 = !{i32 0, i32 33}
!11 = !{i64 810398}
