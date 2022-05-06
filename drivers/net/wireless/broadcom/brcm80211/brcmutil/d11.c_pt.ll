; ModuleID = '/llk/IR/drivers/net/wireless/broadcom/brcm80211/brcmutil/d11.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmutil/d11.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_brcmu_d11_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22brcmu_d11_attach\22\09\09\09\09\09"
module asm "__kstrtabns_brcmu_d11_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.brcmu_d11inf = type { i8, ptr, ptr }
%struct.brcmu_chan = type { i16, i8, i8, i8, i32, i32 }

@__kstrtab_brcmu_d11_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_brcmu_d11_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_brcmu_d11_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @brcmu_d11_attach to i32), ptr @__kstrtab_brcmu_d11_attach, ptr @__kstrtabns_brcmu_d11_attach }, section "___ksymtab+brcmu_d11_attach", align 4
@.str = private unnamed_addr constant [55 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmutil/d11.c\00", align 1
@brcmu_d11n_decchspec.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid chanspec 0x%04x\0A\00", align 1
@brcmu_d11n_decchspec.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@brcmu_d11ac_decchspec.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@brcmu_d11ac_decchspec.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@brcmu_d11ac_decchspec.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@brcmu_d11ac_decchspec.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_brcmu_d11_attach], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @brcmu_d11_attach(ptr nocapture noundef %0) #0 {
  %2 = load i8, ptr %0, align 4
  %3 = icmp eq i8 %2, 1
  %4 = select i1 %3, ptr @brcmu_d11n_encchspec, ptr @brcmu_d11ac_encchspec
  %5 = select i1 %3, ptr @brcmu_d11n_decchspec, ptr @brcmu_d11ac_decchspec
  %6 = getelementptr inbounds %struct.brcmu_d11inf, ptr %0, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  %7 = getelementptr inbounds %struct.brcmu_d11inf, ptr %0, i32 0, i32 2
  store ptr %5, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmu_d11n_encchspec(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 5
  br i1 %4, label %6, label %11

6:                                                ; preds = %1
  store i32 -1, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 2
  %9 = zext i8 %8 to i16
  %10 = or i16 %9, 768
  br label %30

11:                                               ; preds = %1
  %12 = load i32, ptr %5, align 4
  %13 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 1
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %0, align 2
  switch i32 %12, label %18 [
    i32 -1, label %21
    i32 0, label %16
    i32 1, label %17
  ]

16:                                               ; preds = %11
  br label %21

17:                                               ; preds = %11
  br label %21

18:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 23, i32 noundef 9, ptr noundef null) #3
  %19 = load i16, ptr %0, align 2
  %20 = load i32, ptr %2, align 4
  br label %21

21:                                               ; preds = %18, %17, %16, %11
  %22 = phi i32 [ %20, %18 ], [ %3, %17 ], [ %3, %16 ], [ %3, %11 ]
  %23 = phi i16 [ %19, %18 ], [ %15, %17 ], [ %15, %16 ], [ %15, %11 ]
  %24 = phi i16 [ 0, %18 ], [ 512, %17 ], [ 256, %16 ], [ 768, %11 ]
  %25 = and i16 %23, -769
  %26 = or i16 %25, %24
  store i16 %26, ptr %0, align 2
  switch i32 %22, label %28 [
    i32 0, label %30
    i32 1, label %27
  ]

27:                                               ; preds = %21
  br label %30

28:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 9, ptr noundef null) #3
  %29 = load i16, ptr %0, align 2
  br label %30

30:                                               ; preds = %28, %27, %21, %6
  %31 = phi ptr [ %13, %28 ], [ %13, %27 ], [ %13, %21 ], [ %7, %6 ]
  %32 = phi i16 [ %29, %28 ], [ %26, %27 ], [ %26, %21 ], [ %10, %6 ]
  %33 = phi i16 [ 0, %28 ], [ 3072, %27 ], [ 2048, %21 ], [ 2048, %6 ]
  %34 = and i16 %32, -3073
  %35 = or i16 %34, %33
  %36 = load i8, ptr %31, align 2
  %37 = icmp ult i8 %36, 15
  %38 = select i1 %37, i16 8192, i16 4096
  %39 = or i16 %38, %35
  store i16 %39, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmu_d11n_decchspec(ptr nocapture noundef %0) #1 {
  %2 = load i16, ptr %0, align 4
  %3 = trunc i16 %2 to i8
  %4 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 1
  store i8 %3, ptr %4, align 2
  %5 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 2
  store i8 %3, ptr %5, align 1
  %6 = and i16 %2, 3072
  %7 = zext i16 %6 to i32
  switch i32 %7, label %20 [
    i32 2048, label %8
    i32 3072, label %11
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 4
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 5
  store i32 -1, ptr %10, align 4
  br label %25

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 4
  store i32 1, ptr %12, align 4
  %13 = and i16 %2, 768
  %14 = icmp eq i16 %13, 256
  %15 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 5
  br i1 %14, label %16, label %18

16:                                               ; preds = %11
  store i32 0, ptr %15, align 4
  %17 = add i8 %3, -2
  store i8 %17, ptr %5, align 1
  br label %25

18:                                               ; preds = %11
  store i32 1, ptr %15, align 4
  %19 = add i8 %3, 2
  store i8 %19, ptr %5, align 1
  br label %25

20:                                               ; preds = %1
  %21 = load i1, ptr @brcmu_d11n_decchspec.__already_done, align 1
  br i1 %21, label %25, label %22, !prof !8

22:                                               ; preds = %20
  store i1 true, ptr @brcmu_d11n_decchspec.__already_done, align 1
  %23 = zext i16 %2 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %23) #3
  %24 = load i16, ptr %0, align 4
  br label %25

25:                                               ; preds = %22, %20, %18, %16, %8
  %26 = phi i16 [ %2, %20 ], [ %24, %22 ], [ %2, %16 ], [ %2, %18 ], [ %2, %8 ]
  %27 = and i16 %26, 12288
  %28 = zext i16 %27 to i32
  switch i32 %28, label %33 [
    i32 4096, label %29
    i32 8192, label %31
  ]

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 3
  store i8 1, ptr %30, align 4
  br label %37

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 3
  store i8 0, ptr %32, align 4
  br label %37

33:                                               ; preds = %25
  %34 = load i1, ptr @brcmu_d11n_decchspec.__already_done.2, align 1
  br i1 %34, label %37, label %35, !prof !8

35:                                               ; preds = %33
  store i1 true, ptr @brcmu_d11n_decchspec.__already_done.2, align 1
  %36 = zext i16 %26 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %36) #3
  br label %37

37:                                               ; preds = %35, %33, %31, %29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmu_d11ac_encchspec(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 5
  store i32 0, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ 0, %9 ], [ %7, %5 ]
  %13 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 1
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i16
  %16 = load i16, ptr %0, align 2
  %17 = and i16 %16, -2048
  %18 = or i16 %17, %15
  %19 = trunc i32 %12 to i16
  %20 = shl i16 %19, 8
  %21 = and i16 %20, 1792
  %22 = or i16 %21, %18
  store i16 %22, ptr %0, align 2
  switch i32 %3, label %26 [
    i32 0, label %29
    i32 1, label %23
    i32 2, label %24
    i32 4, label %25
  ]

23:                                               ; preds = %11
  br label %29

24:                                               ; preds = %11
  br label %29

25:                                               ; preds = %11
  br label %29

26:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 72, i32 noundef 9, ptr noundef null) #3
  %27 = load i16, ptr %0, align 2
  %28 = load i8, ptr %13, align 2
  br label %29

29:                                               ; preds = %26, %25, %24, %23, %11
  %30 = phi i8 [ %28, %26 ], [ %14, %25 ], [ %14, %24 ], [ %14, %23 ], [ %14, %11 ]
  %31 = phi i16 [ %27, %26 ], [ %22, %25 ], [ %22, %24 ], [ %22, %23 ], [ %22, %11 ]
  %32 = phi i16 [ 0, %26 ], [ 10240, %25 ], [ 8192, %24 ], [ 6144, %23 ], [ 4096, %11 ]
  %33 = and i16 %31, 2047
  %34 = or i16 %33, %32
  %35 = icmp ult i8 %30, 15
  %36 = select i1 %35, i16 0, i16 -16384
  %37 = or i16 %36, %34
  store i16 %37, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmu_d11ac_decchspec(ptr noundef %0) #1 {
  %2 = load i16, ptr %0, align 4
  %3 = trunc i16 %2 to i8
  %4 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 1
  store i8 %3, ptr %4, align 2
  %5 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 2
  store i8 %3, ptr %5, align 1
  %6 = and i16 %2, 14336
  %7 = zext i16 %6 to i32
  %8 = add nsw i32 %7, -4096
  %9 = lshr exact i32 %8, 11
  switch i32 %9, label %70 [
    i32 0, label %10
    i32 1, label %13
    i32 2, label %27
    i32 3, label %46
  ]

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 4
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 5
  store i32 -1, ptr %12, align 4
  br label %74

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 4
  store i32 1, ptr %14, align 4
  %15 = trunc i16 %2 to i11
  %16 = and i11 %15, -256
  switch i11 %16, label %23 [
    i11 0, label %17
    i11 256, label %20
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 5
  store i32 0, ptr %18, align 4
  %19 = add i8 %3, -2
  store i8 %19, ptr %5, align 1
  br label %74

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 5
  store i32 1, ptr %21, align 4
  %22 = add i8 %3, 2
  store i8 %22, ptr %5, align 1
  br label %74

23:                                               ; preds = %13
  %24 = load i1, ptr @brcmu_d11ac_decchspec.__already_done, align 1
  br i1 %24, label %74, label %25, !prof !8

25:                                               ; preds = %23
  store i1 true, ptr @brcmu_d11ac_decchspec.__already_done, align 1
  %26 = zext i16 %2 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 159, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %26) #3
  br label %74

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 4
  store i32 2, ptr %28, align 4
  %29 = lshr i16 %2, 8
  %30 = and i16 %29, 7
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 5
  store i32 %31, ptr %32, align 4
  %33 = trunc i16 %29 to i3
  switch i3 %33, label %42 [
    i3 0, label %34
    i3 1, label %36
    i3 2, label %38
    i3 3, label %40
  ]

34:                                               ; preds = %27
  %35 = add i8 %3, -6
  store i8 %35, ptr %5, align 1
  br label %74

36:                                               ; preds = %27
  %37 = add i8 %3, -2
  store i8 %37, ptr %5, align 1
  br label %74

38:                                               ; preds = %27
  %39 = add i8 %3, 2
  store i8 %39, ptr %5, align 1
  br label %74

40:                                               ; preds = %27
  %41 = add i8 %3, 6
  store i8 %41, ptr %5, align 1
  br label %74

42:                                               ; preds = %27
  %43 = load i1, ptr @brcmu_d11ac_decchspec.__already_done.3, align 1
  br i1 %43, label %74, label %44, !prof !8

44:                                               ; preds = %42
  store i1 true, ptr @brcmu_d11ac_decchspec.__already_done.3, align 1
  %45 = zext i16 %2 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 180, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %45) #3
  br label %74

46:                                               ; preds = %1
  %47 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 4
  store i32 4, ptr %47, align 4
  %48 = lshr i16 %2, 8
  %49 = and i16 %48, 7
  %50 = zext i16 %49 to i32
  %51 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 5
  store i32 %50, ptr %51, align 4
  %52 = trunc i16 %48 to i3
  switch i3 %52, label %69 [
    i3 0, label %53
    i3 1, label %55
    i3 2, label %57
    i3 3, label %59
    i3 -4, label %61
    i3 -3, label %63
    i3 -2, label %65
    i3 -1, label %67
  ]

53:                                               ; preds = %46
  %54 = add i8 %3, -14
  store i8 %54, ptr %5, align 1
  br label %74

55:                                               ; preds = %46
  %56 = add i8 %3, -10
  store i8 %56, ptr %5, align 1
  br label %74

57:                                               ; preds = %46
  %58 = add i8 %3, -6
  store i8 %58, ptr %5, align 1
  br label %74

59:                                               ; preds = %46
  %60 = add i8 %3, -2
  store i8 %60, ptr %5, align 1
  br label %74

61:                                               ; preds = %46
  %62 = add i8 %3, 2
  store i8 %62, ptr %5, align 1
  br label %74

63:                                               ; preds = %46
  %64 = add i8 %3, 6
  store i8 %64, ptr %5, align 1
  br label %74

65:                                               ; preds = %46
  %66 = add i8 %3, 10
  store i8 %66, ptr %5, align 1
  br label %74

67:                                               ; preds = %46
  %68 = add i8 %3, 14
  store i8 %68, ptr %5, align 1
  br label %74

69:                                               ; preds = %46
  unreachable

70:                                               ; preds = %1
  %71 = load i1, ptr @brcmu_d11ac_decchspec.__already_done.5, align 1
  br i1 %71, label %74, label %72, !prof !8

72:                                               ; preds = %70
  store i1 true, ptr @brcmu_d11ac_decchspec.__already_done.5, align 1
  %73 = zext i16 %2 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %73) #3
  br label %74

74:                                               ; preds = %72, %70, %67, %65, %63, %61, %59, %57, %55, %53, %44, %42, %40, %38, %36, %34, %25, %23, %20, %17, %10
  %75 = load i16, ptr %0, align 4
  %76 = and i16 %75, -16384
  switch i16 %76, label %81 [
    i16 -16384, label %77
    i16 0, label %79
  ]

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 3
  store i8 1, ptr %78, align 4
  br label %85

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.brcmu_chan, ptr %0, i32 0, i32 3
  store i8 0, ptr %80, align 4
  br label %85

81:                                               ; preds = %74
  %82 = load i1, ptr @brcmu_d11ac_decchspec.__already_done.6, align 1
  br i1 %82, label %85, label %83, !prof !8

83:                                               ; preds = %81
  store i1 true, ptr @brcmu_d11ac_decchspec.__already_done.6, align 1
  %84 = zext i16 %75 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 232, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %84) #3
  br label %85

85:                                               ; preds = %83, %81, %79, %77
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
