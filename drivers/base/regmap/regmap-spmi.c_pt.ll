; ModuleID = '/llk/IR/drivers/base/regmap/regmap-spmi.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap-spmi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___regmap_init_spmi_base:\09\09\09\09\09"
module asm "\09.asciz \09\22__regmap_init_spmi_base\22\09\09\09\09\09"
module asm "__kstrtabns___regmap_init_spmi_base:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_spmi_base:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_spmi_base\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_spmi_base:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___regmap_init_spmi_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22__regmap_init_spmi_ext\22\09\09\09\09\09"
module asm "__kstrtabns___regmap_init_spmi_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_spmi_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_spmi_ext\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_spmi_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }

@regmap_spmi_base = internal constant %struct.regmap_bus { i8 0, ptr @regmap_spmi_base_write, ptr @regmap_spmi_base_gather_write, ptr null, ptr null, ptr null, ptr @regmap_spmi_base_read, ptr null, ptr null, ptr null, i8 0, i32 3, i32 3, i32 0, i32 0, i8 0 }, align 4
@__kstrtab___regmap_init_spmi_base = external dso_local constant [0 x i8], align 1
@__kstrtabns___regmap_init_spmi_base = external dso_local constant [0 x i8], align 1
@__ksymtab___regmap_init_spmi_base = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__regmap_init_spmi_base to i32), ptr @__kstrtab___regmap_init_spmi_base, ptr @__kstrtabns___regmap_init_spmi_base }, section "___ksymtab_gpl+__regmap_init_spmi_base", align 4
@__kstrtab___devm_regmap_init_spmi_base = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_spmi_base = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_spmi_base = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_spmi_base to i32), ptr @__kstrtab___devm_regmap_init_spmi_base, ptr @__kstrtabns___devm_regmap_init_spmi_base }, section "___ksymtab_gpl+__devm_regmap_init_spmi_base", align 4
@regmap_spmi_ext = internal constant %struct.regmap_bus { i8 0, ptr @regmap_spmi_ext_write, ptr @regmap_spmi_ext_gather_write, ptr null, ptr null, ptr null, ptr @regmap_spmi_ext_read, ptr null, ptr null, ptr null, i8 0, i32 3, i32 3, i32 0, i32 0, i8 0 }, align 4
@__kstrtab___regmap_init_spmi_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns___regmap_init_spmi_ext = external dso_local constant [0 x i8], align 1
@__ksymtab___regmap_init_spmi_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__regmap_init_spmi_ext to i32), ptr @__kstrtab___regmap_init_spmi_ext, ptr @__kstrtabns___regmap_init_spmi_ext }, section "___ksymtab_gpl+__regmap_init_spmi_ext", align 4
@__kstrtab___devm_regmap_init_spmi_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_spmi_ext = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_spmi_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_spmi_ext to i32), ptr @__kstrtab___devm_regmap_init_spmi_ext, ptr @__kstrtabns___devm_regmap_init_spmi_ext }, section "___ksymtab_gpl+__devm_regmap_init_spmi_ext", align 4
@__UNIQUE_ID_file170 = internal constant [49 x i8] c"regmap_spmi.file=drivers/base/regmap/regmap-spmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [24 x i8] c"regmap_spmi.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file170, ptr @__UNIQUE_ID_license171, ptr @__ksymtab___devm_regmap_init_spmi_base, ptr @__ksymtab___devm_regmap_init_spmi_ext, ptr @__ksymtab___regmap_init_spmi_base, ptr @__ksymtab___regmap_init_spmi_ext], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__regmap_init_spmi_base(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @__regmap_init(ptr noundef %0, ptr noundef nonnull @regmap_spmi_base, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_spmi_base(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @__devm_regmap_init(ptr noundef %0, ptr noundef nonnull @regmap_spmi_base, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__regmap_init_spmi_ext(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @__regmap_init(ptr noundef %0, ptr noundef nonnull @regmap_spmi_ext, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_spmi_ext(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @__devm_regmap_init(ptr noundef %0, ptr noundef nonnull @regmap_spmi_ext, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_spmi_base_write(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regmap-spmi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %1, i32 1
  %8 = add i32 %2, -1
  %9 = load i8, ptr %1, align 1
  %10 = icmp eq i8 %9, 0
  %11 = icmp ne i32 %8, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %20

13:                                               ; preds = %6
  %14 = load i8, ptr %7, align 1
  %15 = tail call i32 @spmi_register_zero_write(ptr noundef %0, i8 noundef zeroext %14) #3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %1, i32 2
  %19 = add i32 %2, -2
  br label %20

20:                                               ; preds = %17, %6
  %21 = phi i32 [ %19, %17 ], [ %8, %6 ]
  %22 = phi ptr [ %18, %17 ], [ %7, %6 ]
  %23 = phi i8 [ 1, %17 ], [ %9, %6 ]
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %32, %20
  %26 = phi i8 [ %34, %32 ], [ %23, %20 ]
  %27 = phi ptr [ %33, %32 ], [ %22, %20 ]
  %28 = phi i32 [ %35, %32 ], [ %21, %20 ]
  %29 = load i8, ptr %27, align 1
  %30 = tail call i32 @spmi_register_write(ptr noundef %0, i8 noundef zeroext %26, i8 noundef zeroext %29) #3
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = getelementptr i8, ptr %27, i32 1
  %34 = add i8 %26, 1
  %35 = add i32 %28, -1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %25

37:                                               ; preds = %32, %25, %20, %13
  %38 = phi i32 [ %15, %13 ], [ 0, %20 ], [ 0, %32 ], [ %30, %25 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_spmi_base_gather_write(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = icmp eq i32 %2, 1
  br i1 %6, label %8, label %7, !prof !10

7:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regmap-spmi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 39, 0\0A.popsection", ""() #3, !srcloc !11
  unreachable

8:                                                ; preds = %5
  %9 = load i8, ptr %1, align 1
  %10 = icmp eq i8 %9, 0
  %11 = icmp ne i32 %4, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load i8, ptr %3, align 1
  %15 = tail call i32 @spmi_register_zero_write(ptr noundef %0, i8 noundef zeroext %14) #3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %3, i32 1
  %19 = add i32 %4, -1
  br label %20

20:                                               ; preds = %17, %8
  %21 = phi i32 [ %19, %17 ], [ %4, %8 ]
  %22 = phi ptr [ %18, %17 ], [ %3, %8 ]
  %23 = phi i8 [ 1, %17 ], [ %9, %8 ]
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %32, %20
  %26 = phi i8 [ %34, %32 ], [ %23, %20 ]
  %27 = phi ptr [ %33, %32 ], [ %22, %20 ]
  %28 = phi i32 [ %35, %32 ], [ %21, %20 ]
  %29 = load i8, ptr %27, align 1
  %30 = tail call i32 @spmi_register_write(ptr noundef %0, i8 noundef zeroext %26, i8 noundef zeroext %29) #3
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = getelementptr i8, ptr %27, i32 1
  %34 = add i8 %26, 1
  %35 = add i32 %28, -1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %25

37:                                               ; preds = %32, %25, %20, %13
  %38 = phi i32 [ %15, %13 ], [ 0, %20 ], [ %30, %25 ], [ 0, %32 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_spmi_base_read(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = icmp eq i32 %2, 1
  br i1 %6, label %7, label %11, !prof !10

7:                                                ; preds = %5
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %7
  %10 = load i8, ptr %1, align 1
  br label %12

11:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regmap-spmi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 23, 0\0A.popsection", ""() #3, !srcloc !12
  unreachable

12:                                               ; preds = %12, %9
  %13 = phi i8 [ %17, %12 ], [ %10, %9 ]
  %14 = phi i32 [ %16, %12 ], [ %4, %9 ]
  %15 = phi ptr [ %18, %12 ], [ %3, %9 ]
  %16 = add i32 %14, -1
  %17 = add i8 %13, 1
  %18 = getelementptr i8, ptr %15, i32 1
  %19 = tail call i32 @spmi_register_read(ptr noundef %0, i8 noundef zeroext %13, ptr noundef %15) #3
  %20 = icmp ne i32 %16, 0
  %21 = icmp eq i32 %19, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %12, label %23

23:                                               ; preds = %12, %7
  %24 = phi i32 [ 0, %7 ], [ %19, %12 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spmi_register_zero_write(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spmi_register_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spmi_register_read(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_spmi_ext_write(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp ult i32 %2, 2
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regmap-spmi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 192, 0\0A.popsection", ""() #3, !srcloc !13
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %1, i32 2
  %8 = add i32 %2, -2
  %9 = load i16, ptr %1, align 2
  %10 = icmp ult i16 %9, 256
  %11 = icmp ne i32 %8, 0
  %12 = and i1 %11, %10
  br i1 %12, label %18, label %13

13:                                               ; preds = %26, %6
  %14 = phi i16 [ %9, %6 ], [ %28, %26 ]
  %15 = phi i32 [ %8, %6 ], [ %30, %26 ]
  %16 = phi ptr [ %7, %6 ], [ %29, %26 ]
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %47, label %34

18:                                               ; preds = %26, %6
  %19 = phi ptr [ %29, %26 ], [ %7, %6 ]
  %20 = phi i32 [ %30, %26 ], [ %8, %6 ]
  %21 = phi i16 [ %28, %26 ], [ %9, %6 ]
  %22 = tail call i32 @llvm.umin.i32(i32 %20, i32 16) #3
  %23 = trunc i16 %21 to i8
  %24 = tail call i32 @spmi_ext_register_write(ptr noundef %0, i8 noundef zeroext %23, ptr noundef %19, i32 noundef %22) #3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %18
  %27 = trunc i32 %22 to i16
  %28 = add nuw nsw i16 %21, %27
  %29 = getelementptr i8, ptr %19, i32 %22
  %30 = sub i32 %20, %22
  %31 = icmp ult i16 %28, 256
  %32 = icmp ne i32 %30, 0
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %18, label %13

34:                                               ; preds = %41, %13
  %35 = phi ptr [ %44, %41 ], [ %16, %13 ]
  %36 = phi i32 [ %45, %41 ], [ %15, %13 ]
  %37 = phi i16 [ %43, %41 ], [ %14, %13 ]
  %38 = tail call i32 @llvm.umin.i32(i32 %36, i32 8) #3
  %39 = tail call i32 @spmi_ext_register_writel(ptr noundef %0, i16 noundef zeroext %37, ptr noundef %35, i32 noundef %38) #3
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = trunc i32 %38 to i16
  %43 = add i16 %37, %42
  %44 = getelementptr i8, ptr %35, i32 %38
  %45 = sub i32 %36, %38
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %34

47:                                               ; preds = %41, %34, %18, %13
  %48 = phi i32 [ 0, %13 ], [ 0, %41 ], [ %39, %34 ], [ %24, %18 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_spmi_ext_gather_write(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = icmp eq i32 %2, 2
  br i1 %6, label %8, label %7, !prof !10

7:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regmap-spmi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 157, 0\0A.popsection", ""() #3, !srcloc !14
  unreachable

8:                                                ; preds = %5
  %9 = load i16, ptr %1, align 2
  %10 = icmp ult i16 %9, 256
  %11 = icmp ne i32 %4, 0
  %12 = and i1 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %26, %8
  %14 = phi i16 [ %9, %8 ], [ %28, %26 ]
  %15 = phi i32 [ %4, %8 ], [ %30, %26 ]
  %16 = phi ptr [ %3, %8 ], [ %29, %26 ]
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %47, label %34

18:                                               ; preds = %26, %8
  %19 = phi ptr [ %29, %26 ], [ %3, %8 ]
  %20 = phi i32 [ %30, %26 ], [ %4, %8 ]
  %21 = phi i16 [ %28, %26 ], [ %9, %8 ]
  %22 = tail call i32 @llvm.umin.i32(i32 %20, i32 16)
  %23 = trunc i16 %21 to i8
  %24 = tail call i32 @spmi_ext_register_write(ptr noundef %0, i8 noundef zeroext %23, ptr noundef %19, i32 noundef %22) #3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %18
  %27 = trunc i32 %22 to i16
  %28 = add nuw nsw i16 %21, %27
  %29 = getelementptr i8, ptr %19, i32 %22
  %30 = sub i32 %20, %22
  %31 = icmp ult i16 %28, 256
  %32 = icmp ne i32 %30, 0
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %18, label %13

34:                                               ; preds = %41, %13
  %35 = phi ptr [ %44, %41 ], [ %16, %13 ]
  %36 = phi i32 [ %45, %41 ], [ %15, %13 ]
  %37 = phi i16 [ %43, %41 ], [ %14, %13 ]
  %38 = tail call i32 @llvm.umin.i32(i32 %36, i32 8)
  %39 = tail call i32 @spmi_ext_register_writel(ptr noundef %0, i16 noundef zeroext %37, ptr noundef %35, i32 noundef %38) #3
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = trunc i32 %38 to i16
  %43 = add i16 %37, %42
  %44 = getelementptr i8, ptr %35, i32 %38
  %45 = sub i32 %36, %38
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %34

47:                                               ; preds = %41, %34, %18, %13
  %48 = phi i32 [ 0, %13 ], [ %39, %34 ], [ 0, %41 ], [ %24, %18 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_spmi_ext_read(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = icmp eq i32 %2, 2
  br i1 %6, label %8, label %7, !prof !10

7:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regmap-spmi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #3, !srcloc !15
  unreachable

8:                                                ; preds = %5
  %9 = load i16, ptr %1, align 2
  %10 = icmp ult i16 %9, 256
  %11 = icmp ne i32 %4, 0
  %12 = and i1 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %26, %8
  %14 = phi i16 [ %9, %8 ], [ %28, %26 ]
  %15 = phi i32 [ %4, %8 ], [ %30, %26 ]
  %16 = phi ptr [ %3, %8 ], [ %29, %26 ]
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %47, label %34

18:                                               ; preds = %26, %8
  %19 = phi ptr [ %29, %26 ], [ %3, %8 ]
  %20 = phi i32 [ %30, %26 ], [ %4, %8 ]
  %21 = phi i16 [ %28, %26 ], [ %9, %8 ]
  %22 = tail call i32 @llvm.umin.i32(i32 %20, i32 16)
  %23 = trunc i16 %21 to i8
  %24 = tail call i32 @spmi_ext_register_read(ptr noundef %0, i8 noundef zeroext %23, ptr noundef %19, i32 noundef %22) #3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %18
  %27 = trunc i32 %22 to i16
  %28 = add nuw nsw i16 %21, %27
  %29 = getelementptr i8, ptr %19, i32 %22
  %30 = sub i32 %20, %22
  %31 = icmp ult i16 %28, 256
  %32 = icmp ne i32 %30, 0
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %18, label %13

34:                                               ; preds = %41, %13
  %35 = phi ptr [ %44, %41 ], [ %16, %13 ]
  %36 = phi i32 [ %45, %41 ], [ %15, %13 ]
  %37 = phi i16 [ %43, %41 ], [ %14, %13 ]
  %38 = tail call i32 @llvm.umin.i32(i32 %36, i32 8)
  %39 = tail call i32 @spmi_ext_register_readl(ptr noundef %0, i16 noundef zeroext %37, ptr noundef %35, i32 noundef %38) #3
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = trunc i32 %38 to i16
  %43 = add i16 %37, %42
  %44 = getelementptr i8, ptr %35, i32 %38
  %45 = sub i32 %36, %38
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %34

47:                                               ; preds = %41, %34, %18, %13
  %48 = phi i32 [ 0, %13 ], [ %39, %34 ], [ 0, %41 ], [ %24, %18 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spmi_ext_register_write(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spmi_ext_register_writel(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spmi_ext_register_read(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spmi_ext_register_readl(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2151292546, i64 2151293043, i64 2151292583, i64 2151292639, i64 2151292673, i64 2151292697, i64 2151292738, i64 2151292759, i64 2151292787, i64 2151292821}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2151291497, i64 2151291994, i64 2151291534, i64 2151291590, i64 2151291624, i64 2151291648, i64 2151291689, i64 2151291710, i64 2151291738, i64 2151291772}
!12 = !{i64 2151290440, i64 2151290937, i64 2151290477, i64 2151290533, i64 2151290567, i64 2151290591, i64 2151290632, i64 2151290653, i64 2151290681, i64 2151290715}
!13 = !{i64 2151305291, i64 2151305789, i64 2151305328, i64 2151305384, i64 2151305418, i64 2151305442, i64 2151305483, i64 2151305504, i64 2151305532, i64 2151305566}
!14 = !{i64 2151300908, i64 2151301406, i64 2151300945, i64 2151301001, i64 2151301035, i64 2151301059, i64 2151301100, i64 2151301121, i64 2151301149, i64 2151301183}
!15 = !{i64 2151296517, i64 2151297015, i64 2151296554, i64 2151296610, i64 2151296644, i64 2151296668, i64 2151296709, i64 2151296730, i64 2151296758, i64 2151296792}
