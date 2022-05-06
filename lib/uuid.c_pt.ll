; ModuleID = '/llk/IR/lib/uuid.c_pt.bc'
source_filename = "../lib/uuid.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_guid_null:\09\09\09\09\09"
module asm "\09.asciz \09\22guid_null\22\09\09\09\09\09"
module asm "__kstrtabns_guid_null:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uuid_null:\09\09\09\09\09"
module asm "\09.asciz \09\22uuid_null\22\09\09\09\09\09"
module asm "__kstrtabns_uuid_null:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generate_random_uuid:\09\09\09\09\09"
module asm "\09.asciz \09\22generate_random_uuid\22\09\09\09\09\09"
module asm "__kstrtabns_generate_random_uuid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generate_random_guid:\09\09\09\09\09"
module asm "\09.asciz \09\22generate_random_guid\22\09\09\09\09\09"
module asm "__kstrtabns_generate_random_guid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_guid_gen:\09\09\09\09\09"
module asm "\09.asciz \09\22guid_gen\22\09\09\09\09\09"
module asm "__kstrtabns_guid_gen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uuid_gen:\09\09\09\09\09"
module asm "\09.asciz \09\22uuid_gen\22\09\09\09\09\09"
module asm "__kstrtabns_uuid_gen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uuid_is_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22uuid_is_valid\22\09\09\09\09\09"
module asm "__kstrtabns_uuid_is_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_guid_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22guid_parse\22\09\09\09\09\09"
module asm "__kstrtabns_guid_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uuid_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22uuid_parse\22\09\09\09\09\09"
module asm "__kstrtabns_uuid_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.guid_t = type { [16 x i8] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.uuid_t = type { [16 x i8] }

@guid_null = dso_local constant %struct.guid_t zeroinitializer, align 1
@__kstrtab_guid_null = external dso_local constant [0 x i8], align 1
@__kstrtabns_guid_null = external dso_local constant [0 x i8], align 1
@__ksymtab_guid_null = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @guid_null to i32), ptr @__kstrtab_guid_null, ptr @__kstrtabns_guid_null }, section "___ksymtab+guid_null", align 4
@uuid_null = dso_local constant %struct.uuid_t zeroinitializer, align 1
@__kstrtab_uuid_null = external dso_local constant [0 x i8], align 1
@__kstrtabns_uuid_null = external dso_local constant [0 x i8], align 1
@__ksymtab_uuid_null = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uuid_null to i32), ptr @__kstrtab_uuid_null, ptr @__kstrtabns_uuid_null }, section "___ksymtab+uuid_null", align 4
@guid_index = dso_local local_unnamed_addr constant [16 x i8] c"\03\02\01\00\05\04\07\06\08\09\0A\0B\0C\0D\0E\0F", align 1
@uuid_index = dso_local local_unnamed_addr constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 1
@__kstrtab_generate_random_uuid = external dso_local constant [0 x i8], align 1
@__kstrtabns_generate_random_uuid = external dso_local constant [0 x i8], align 1
@__ksymtab_generate_random_uuid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generate_random_uuid to i32), ptr @__kstrtab_generate_random_uuid, ptr @__kstrtabns_generate_random_uuid }, section "___ksymtab+generate_random_uuid", align 4
@__kstrtab_generate_random_guid = external dso_local constant [0 x i8], align 1
@__kstrtabns_generate_random_guid = external dso_local constant [0 x i8], align 1
@__ksymtab_generate_random_guid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generate_random_guid to i32), ptr @__kstrtab_generate_random_guid, ptr @__kstrtabns_generate_random_guid }, section "___ksymtab+generate_random_guid", align 4
@__kstrtab_guid_gen = external dso_local constant [0 x i8], align 1
@__kstrtabns_guid_gen = external dso_local constant [0 x i8], align 1
@__ksymtab_guid_gen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @guid_gen to i32), ptr @__kstrtab_guid_gen, ptr @__kstrtabns_guid_gen }, section "___ksymtab_gpl+guid_gen", align 4
@__kstrtab_uuid_gen = external dso_local constant [0 x i8], align 1
@__kstrtabns_uuid_gen = external dso_local constant [0 x i8], align 1
@__ksymtab_uuid_gen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uuid_gen to i32), ptr @__kstrtab_uuid_gen, ptr @__kstrtabns_uuid_gen }, section "___ksymtab_gpl+uuid_gen", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__kstrtab_uuid_is_valid = external dso_local constant [0 x i8], align 1
@__kstrtabns_uuid_is_valid = external dso_local constant [0 x i8], align 1
@__ksymtab_uuid_is_valid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uuid_is_valid to i32), ptr @__kstrtab_uuid_is_valid, ptr @__kstrtabns_uuid_is_valid }, section "___ksymtab+uuid_is_valid", align 4
@__kstrtab_guid_parse = external dso_local constant [0 x i8], align 1
@__kstrtabns_guid_parse = external dso_local constant [0 x i8], align 1
@__ksymtab_guid_parse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @guid_parse to i32), ptr @__kstrtab_guid_parse, ptr @__kstrtabns_guid_parse }, section "___ksymtab+guid_parse", align 4
@__kstrtab_uuid_parse = external dso_local constant [0 x i8], align 1
@__kstrtabns_uuid_parse = external dso_local constant [0 x i8], align 1
@__ksymtab_uuid_parse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uuid_parse to i32), ptr @__kstrtab_uuid_parse, ptr @__kstrtabns_uuid_parse }, section "___ksymtab+uuid_parse", align 4
@__uuid_parse.si = internal unnamed_addr constant [16 x i8] c"\00\02\04\06\09\0B\0E\10\13\15\18\1A\1C\1E \22", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_generate_random_guid, ptr @__ksymtab_generate_random_uuid, ptr @__ksymtab_guid_gen, ptr @__ksymtab_guid_null, ptr @__ksymtab_guid_parse, ptr @__ksymtab_uuid_gen, ptr @__ksymtab_uuid_is_valid, ptr @__ksymtab_uuid_null, ptr @__ksymtab_uuid_parse], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @generate_random_uuid(ptr noundef %0) #0 {
  tail call void @get_random_bytes(ptr noundef %0, i32 noundef 16) #3
  %2 = getelementptr i8, ptr %0, i32 6
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 15
  %5 = or i8 %4, 64
  store i8 %5, ptr %2, align 1
  %6 = getelementptr i8, ptr %0, i32 8
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 63
  %9 = or i8 %8, -128
  store i8 %9, ptr %6, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @generate_random_guid(ptr noundef %0) #0 {
  tail call void @get_random_bytes(ptr noundef %0, i32 noundef 16) #3
  %2 = getelementptr i8, ptr %0, i32 7
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 15
  %5 = or i8 %4, 64
  store i8 %5, ptr %2, align 1
  %6 = getelementptr i8, ptr %0, i32 8
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 63
  %9 = or i8 %8, -128
  store i8 %9, ptr %6, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @guid_gen(ptr noundef %0) #0 {
  tail call void @prandom_bytes(ptr noundef %0, i32 noundef 16) #3
  %2 = getelementptr i8, ptr %0, i32 8
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 63
  %5 = or i8 %4, -128
  store i8 %5, ptr %2, align 1
  %6 = getelementptr [16 x i8], ptr %0, i32 0, i32 7
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 15
  %9 = or i8 %8, 64
  store i8 %9, ptr %6, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uuid_gen(ptr noundef %0) #0 {
  tail call void @prandom_bytes(ptr noundef %0, i32 noundef 16) #3
  %2 = getelementptr i8, ptr %0, i32 8
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 63
  %5 = or i8 %4, -128
  store i8 %5, ptr %2, align 1
  %6 = getelementptr [16 x i8], ptr %0, i32 0, i32 6
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 15
  %9 = or i8 %8, 64
  store i8 %9, ptr %6, align 1
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @uuid_is_valid(ptr nocapture noundef readonly %0) #2 {
  br label %2

2:                                                ; preds = %17, %1
  %3 = phi i1 [ true, %1 ], [ %19, %17 ]
  %4 = phi i32 [ 0, %1 ], [ %18, %17 ]
  switch i32 %4, label %9 [
    i32 23, label %5
    i32 18, label %5
    i32 13, label %5
    i32 8, label %5
  ]

5:                                                ; preds = %2, %2, %2, %2
  %6 = getelementptr i8, ptr %0, i32 %4
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 45
  br i1 %8, label %17, label %21

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 %4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 68
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %9, %5
  %18 = add nuw nsw i32 %4, 1
  %19 = icmp ult i32 %4, 35
  %20 = icmp eq i32 %18, 36
  br i1 %20, label %21, label %2

21:                                               ; preds = %17, %9, %5
  %22 = phi i1 [ %19, %17 ], [ %3, %9 ], [ %3, %5 ]
  %23 = xor i1 %22, true
  ret i1 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @guid_parse(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  br label %3

3:                                                ; preds = %18, %2
  %4 = phi i1 [ true, %2 ], [ %20, %18 ]
  %5 = phi i32 [ 0, %2 ], [ %19, %18 ]
  switch i32 %5, label %10 [
    i32 23, label %6
    i32 18, label %6
    i32 13, label %6
    i32 8, label %6
  ]

6:                                                ; preds = %3, %3, %3, %3
  %7 = getelementptr i8, ptr %0, i32 %5
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 45
  br i1 %9, label %18, label %22

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 %5
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 68
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %10, %6
  %19 = add nuw nsw i32 %5, 1
  %20 = icmp ult i32 %5, 35
  %21 = icmp eq i32 %19, 36
  br i1 %21, label %22, label %3

22:                                               ; preds = %18, %10, %6
  %23 = phi i1 [ %20, %18 ], [ %4, %10 ], [ %4, %6 ]
  br i1 %23, label %45, label %24

24:                                               ; preds = %24, %22
  %25 = phi i32 [ %43, %24 ], [ 0, %22 ]
  %26 = getelementptr [16 x i8], ptr @__uuid_parse.si, i32 0, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr i8, ptr %0, i32 %28
  %30 = load i8, ptr %29, align 1
  %31 = tail call i32 @hex_to_bin(i8 noundef zeroext %30) #3
  %32 = add nuw nsw i32 %28, 1
  %33 = getelementptr i8, ptr %0, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = tail call i32 @hex_to_bin(i8 noundef zeroext %34) #3
  %36 = shl i32 %31, 4
  %37 = or i32 %35, %36
  %38 = trunc i32 %37 to i8
  %39 = getelementptr i8, ptr @guid_index, i32 %25
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr i8, ptr %1, i32 %41
  store i8 %38, ptr %42, align 1
  %43 = add nuw nsw i32 %25, 1
  %44 = icmp eq i32 %43, 16
  br i1 %44, label %45, label %24

45:                                               ; preds = %24, %22
  %46 = phi i32 [ -22, %22 ], [ 0, %24 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uuid_parse(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  br label %3

3:                                                ; preds = %18, %2
  %4 = phi i1 [ true, %2 ], [ %20, %18 ]
  %5 = phi i32 [ 0, %2 ], [ %19, %18 ]
  switch i32 %5, label %10 [
    i32 23, label %6
    i32 18, label %6
    i32 13, label %6
    i32 8, label %6
  ]

6:                                                ; preds = %3, %3, %3, %3
  %7 = getelementptr i8, ptr %0, i32 %5
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 45
  br i1 %9, label %18, label %22

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 %5
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 68
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %10, %6
  %19 = add nuw nsw i32 %5, 1
  %20 = icmp ult i32 %5, 35
  %21 = icmp eq i32 %19, 36
  br i1 %21, label %22, label %3

22:                                               ; preds = %18, %10, %6
  %23 = phi i1 [ %20, %18 ], [ %4, %10 ], [ %4, %6 ]
  br i1 %23, label %45, label %24

24:                                               ; preds = %24, %22
  %25 = phi i32 [ %43, %24 ], [ 0, %22 ]
  %26 = getelementptr [16 x i8], ptr @__uuid_parse.si, i32 0, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr i8, ptr %0, i32 %28
  %30 = load i8, ptr %29, align 1
  %31 = tail call i32 @hex_to_bin(i8 noundef zeroext %30) #3
  %32 = add nuw nsw i32 %28, 1
  %33 = getelementptr i8, ptr %0, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = tail call i32 @hex_to_bin(i8 noundef zeroext %34) #3
  %36 = shl i32 %31, 4
  %37 = or i32 %35, %36
  %38 = trunc i32 %37 to i8
  %39 = getelementptr i8, ptr @uuid_index, i32 %25
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr i8, ptr %1, i32 %41
  store i8 %38, ptr %42, align 1
  %43 = add nuw nsw i32 %25, 1
  %44 = icmp eq i32 %43, 16
  br i1 %44, label %45, label %24

45:                                               ; preds = %24, %22
  %46 = phi i32 [ -22, %22 ], [ 0, %24 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
