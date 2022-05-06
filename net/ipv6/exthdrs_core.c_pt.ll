; ModuleID = '/llk/IR/net/ipv6/exthdrs_core.c_pt.bc'
source_filename = "../net/ipv6/exthdrs_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_ext_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_ext_hdr\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_ext_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_skip_exthdr:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_skip_exthdr\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_skip_exthdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_find_tlv:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_find_tlv\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_find_tlv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_find_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_find_hdr\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_find_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.sk_buff = type { %union.anon, %union.anon.114, %union.anon.115, [48 x i8], %union.anon.116, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.118, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.114 = type { ptr }
%union.anon.115 = type { i64 }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type { i32, ptr }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.120, i32, i32, i32, i16, i16, %union.anon.122, %union.anon.123, %union.anon.124, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.120 = type { i32 }
%union.anon.122 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.53 }
%union.anon.53 = type { [4 x i32] }
%struct.ipv6_rt_hdr = type { i8, i8, i8, i8 }

@__kstrtab_ipv6_ext_hdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_ext_hdr = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_ext_hdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_ext_hdr to i32), ptr @__kstrtab_ipv6_ext_hdr, ptr @__kstrtabns_ipv6_ext_hdr }, section "___ksymtab+ipv6_ext_hdr", align 4
@__kstrtab_ipv6_skip_exthdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_skip_exthdr = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_skip_exthdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_skip_exthdr to i32), ptr @__kstrtab_ipv6_skip_exthdr, ptr @__kstrtabns_ipv6_skip_exthdr }, section "___ksymtab+ipv6_skip_exthdr", align 4
@__kstrtab_ipv6_find_tlv = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_find_tlv = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_find_tlv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_find_tlv to i32), ptr @__kstrtab_ipv6_find_tlv, ptr @__kstrtabns_ipv6_find_tlv }, section "___ksymtab_gpl+ipv6_find_tlv", align 4
@__kstrtab_ipv6_find_hdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_find_hdr = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_find_hdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_find_hdr to i32), ptr @__kstrtab_ipv6_find_hdr, ptr @__kstrtabns_ipv6_find_hdr }, section "___ksymtab+ipv6_find_hdr", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_ipv6_ext_hdr, ptr @__ksymtab_ipv6_find_hdr, ptr @__ksymtab_ipv6_find_tlv, ptr @__ksymtab_ipv6_skip_exthdr], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext %0) #0 {
  switch i8 %0, label %2 [
    i8 59, label %3
    i8 51, label %3
    i8 44, label %3
    i8 43, label %3
    i8 0, label %3
    i8 60, label %3
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2, %1, %1, %1, %1, %1, %1
  %4 = phi i1 [ true, %1 ], [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ]
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_skip_exthdr(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = alloca %struct.ipv6_opt_hdr, align 2
  %6 = alloca i16, align 2
  %7 = load i8, ptr %2, align 1
  store i16 0, ptr %3, align 2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %11 = icmp eq ptr %0, null
  br label %12

12:                                               ; preds = %65, %4
  %13 = phi i32 [ %1, %4 ], [ %68, %65 ]
  %14 = phi i8 [ %7, %4 ], [ %67, %65 ]
  switch i8 %14, label %69 [
    i8 59, label %15
    i8 51, label %15
    i8 44, label %15
    i8 43, label %15
    i8 0, label %15
    i8 60, label %15
  ]

15:                                               ; preds = %12, %12, %12, %12, %12, %12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #7
  store i16 0, ptr %5, align 2, !annotation !8
  %16 = icmp eq i8 %14, 59
  br i1 %16, label %57, label %17

17:                                               ; preds = %15
  %18 = load i32, ptr %8, align 8
  %19 = load i32, ptr %9, align 4
  %20 = add i32 %13, %19
  %21 = sub i32 %18, %20
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %27, !prof !9

23:                                               ; preds = %17
  br i1 %11, label %57, label %24

24:                                               ; preds = %23
  %25 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %13, ptr noundef nonnull %5, i32 noundef 2) #7
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %57, label %31

27:                                               ; preds = %17
  %28 = load ptr, ptr %10, align 4
  %29 = getelementptr i8, ptr %28, i32 %13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %57, label %31

31:                                               ; preds = %27, %24
  %32 = phi ptr [ %29, %27 ], [ %5, %24 ]
  switch i8 %14, label %56 [
    i8 44, label %33
    i8 51, label %58
  ]

33:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #7
  store i16 0, ptr %6, align 2, !annotation !8
  %34 = add i32 %13, 2
  %35 = load i32, ptr %8, align 8
  %36 = load i32, ptr %9, align 4
  %37 = add i32 %35, -2
  %38 = add i32 %13, %36
  %39 = sub i32 %37, %38
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %45, !prof !9

41:                                               ; preds = %33
  br i1 %11, label %49, label %42

42:                                               ; preds = %41
  %43 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %34, ptr noundef nonnull %6, i32 noundef 2) #7
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %49, label %50

45:                                               ; preds = %33
  %46 = load ptr, ptr %10, align 4
  %47 = getelementptr i8, ptr %46, i32 %34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %42, %41
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #7
  br label %57

50:                                               ; preds = %45, %42
  %51 = phi ptr [ %47, %45 ], [ %6, %42 ]
  %52 = load i16, ptr %51, align 2
  store i16 %52, ptr %3, align 2
  %53 = and i16 %52, -1793
  %54 = icmp eq i16 %53, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #7
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #7
  br label %69

56:                                               ; preds = %31
  br label %58

57:                                               ; preds = %49, %27, %24, %23, %15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #7
  br label %70

58:                                               ; preds = %56, %31
  %59 = phi i32 [ 3, %56 ], [ 2, %31 ]
  %60 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %32, i32 0, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, %59
  %64 = add nuw nsw i32 %63, 8
  br label %65

65:                                               ; preds = %58, %50
  %66 = phi i32 [ 8, %50 ], [ %64, %58 ]
  %67 = load i8, ptr %32, align 1
  %68 = add i32 %66, %13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #7
  br label %12

69:                                               ; preds = %55, %12
  store i8 %14, ptr %2, align 1
  br label %70

70:                                               ; preds = %69, %57
  %71 = phi i32 [ %13, %69 ], [ -1, %57 ]
  ret i32 %71
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ipv6_find_tlv(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %11 to i32
  %13 = ptrtoint ptr %9 to i32
  %14 = sub i32 %12, %13
  %15 = add i32 %1, 2
  %16 = icmp sgt i32 %15, %14
  br i1 %16, label %49, label %17

17:                                               ; preds = %3
  %18 = getelementptr i8, ptr %9, i32 %1
  %19 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %18, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 3
  %23 = add i32 %1, 8
  %24 = add i32 %23, %22
  %25 = icmp sgt i32 %24, %14
  br i1 %25, label %49, label %26

26:                                               ; preds = %17
  %27 = or i32 %22, 6
  br label %28

28:                                               ; preds = %44, %26
  %29 = phi i32 [ %27, %26 ], [ %47, %44 ]
  %30 = phi i32 [ %15, %26 ], [ %46, %44 ]
  %31 = getelementptr i8, ptr %9, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, %2
  br i1 %34, label %49, label %35

35:                                               ; preds = %28
  %36 = icmp eq i8 %32, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %35
  %38 = add i32 %30, 1
  %39 = getelementptr i8, ptr %9, i32 %38
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = add nuw nsw i32 %41, 2
  %43 = icmp ugt i32 %42, %29
  br i1 %43, label %49, label %44

44:                                               ; preds = %37, %35
  %45 = phi i32 [ %42, %37 ], [ 1, %35 ]
  %46 = add i32 %45, %30
  %47 = sub nsw i32 %29, %45
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %28, label %49

49:                                               ; preds = %44, %37, %28, %17, %3
  %50 = phi i32 [ -1, %17 ], [ -1, %3 ], [ -1, %37 ], [ %30, %28 ], [ -1, %44 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_find_hdr(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef writeonly %3, ptr noundef %4) #1 {
  %6 = alloca %struct.ipv6hdr, align 4
  %7 = alloca %struct.ipv6_opt_hdr, align 2
  %8 = alloca %struct.ipv6_rt_hdr, align 4
  %9 = alloca i16, align 2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = ptrtoint ptr %15 to i32
  %19 = ptrtoint ptr %17 to i32
  %20 = sub i32 %18, %19
  %21 = getelementptr inbounds %struct.ipv6hdr, ptr %15, i32 0, i32 3
  %22 = load i8, ptr %21, align 2
  %23 = icmp eq ptr %3, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  store i16 0, ptr %3, align 2
  br label %25

25:                                               ; preds = %24, %5
  %26 = load i32, ptr %1, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %55, label %28

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %6, i8 0, i32 40, i1 false), !annotation !8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %26, %32
  %34 = sub i32 %30, %33
  %35 = icmp slt i32 %34, 40
  br i1 %35, label %36, label %41, !prof !9

36:                                               ; preds = %28
  %37 = icmp eq ptr %0, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %36
  %39 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %26, ptr noundef nonnull %6, i32 noundef 40) #7
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %50, label %45

41:                                               ; preds = %28
  %42 = load ptr, ptr %16, align 4
  %43 = getelementptr i8, ptr %42, i32 %26
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %41, %38
  %46 = phi ptr [ %43, %41 ], [ %6, %38 ]
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, -16
  %49 = icmp eq i8 %48, 96
  br i1 %49, label %51, label %50

50:                                               ; preds = %45, %41, %38, %36
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #7
  br label %190

51:                                               ; preds = %45
  %52 = load i32, ptr %1, align 4
  %53 = getelementptr inbounds %struct.ipv6hdr, ptr %46, i32 0, i32 3
  %54 = load i8, ptr %53, align 2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #7
  br label %55

55:                                               ; preds = %51, %25
  %56 = phi i32 [ %52, %51 ], [ %20, %25 ]
  %57 = phi i8 [ %54, %51 ], [ %22, %25 ]
  %58 = add i32 %56, 40
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %60 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %61 = icmp eq ptr %0, null
  %62 = icmp eq ptr %4, null
  %63 = icmp slt i32 %2, 0
  br label %64

64:                                               ; preds = %185, %55
  %65 = phi i32 [ %58, %55 ], [ %187, %185 ]
  %66 = phi i8 [ %57, %55 ], [ %186, %185 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #7
  store i16 0, ptr %7, align 2, !annotation !8
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, %2
  %69 = zext i1 %68 to i8
  switch i8 %66, label %70 [
    i8 60, label %72
    i8 0, label %72
    i8 43, label %72
    i8 44, label %72
    i8 51, label %72
  ]

70:                                               ; preds = %64
  %71 = or i1 %63, %68
  br i1 %71, label %181, label %179

72:                                               ; preds = %64, %64, %64, %64, %64
  %73 = load i32, ptr %59, align 8
  %74 = load i32, ptr %60, align 4
  %75 = add i32 %65, %74
  %76 = sub i32 %73, %75
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %82, !prof !9

78:                                               ; preds = %72
  br i1 %61, label %179, label %79

79:                                               ; preds = %78
  %80 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %65, ptr noundef nonnull %7, i32 noundef 2) #7
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %179, label %86

82:                                               ; preds = %72
  %83 = load ptr, ptr %16, align 4
  %84 = getelementptr i8, ptr %83, i32 %65
  %85 = icmp eq ptr %84, null
  br i1 %85, label %179, label %86

86:                                               ; preds = %82, %79
  %87 = phi ptr [ %84, %82 ], [ %7, %79 ]
  switch i8 %66, label %167 [
    i8 43, label %88
    i8 44, label %116
    i8 51, label %155
  ]

88:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4, !annotation !8
  %89 = load i32, ptr %59, align 8
  %90 = load i32, ptr %60, align 4
  %91 = add i32 %65, %90
  %92 = sub i32 %89, %91
  %93 = icmp slt i32 %92, 4
  br i1 %93, label %94, label %98, !prof !9

94:                                               ; preds = %88
  br i1 %61, label %115, label %95

95:                                               ; preds = %94
  %96 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %65, ptr noundef nonnull %8, i32 noundef 4) #7
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %115, label %102

98:                                               ; preds = %88
  %99 = load ptr, ptr %16, align 4
  %100 = getelementptr i8, ptr %99, i32 %65
  %101 = icmp eq ptr %100, null
  br i1 %101, label %115, label %102

102:                                              ; preds = %98, %95
  %103 = phi ptr [ %100, %98 ], [ %8, %95 ]
  br i1 %62, label %113, label %104

104:                                              ; preds = %102
  %105 = load i32, ptr %4, align 4
  %106 = and i32 %105, 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %103, i32 0, i32 3
  %110 = load i8, ptr %109, align 1
  %111 = icmp eq i8 %110, 0
  %112 = select i1 %111, i8 0, i8 %69
  br label %113

113:                                              ; preds = %108, %104, %102
  %114 = phi i8 [ %112, %108 ], [ %69, %102 ], [ %69, %104 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  br label %167

115:                                              ; preds = %98, %95, %94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  br label %179

116:                                              ; preds = %86
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #7
  store i16 0, ptr %9, align 2, !annotation !8
  br i1 %62, label %120, label %117

117:                                              ; preds = %116
  %118 = load i32, ptr %4, align 4
  %119 = or i32 %118, 1
  store i32 %119, ptr %4, align 4
  br label %120

120:                                              ; preds = %117, %116
  %121 = add i32 %65, 2
  %122 = load i32, ptr %59, align 8
  %123 = load i32, ptr %60, align 4
  %124 = add i32 %122, -2
  %125 = add i32 %65, %123
  %126 = sub i32 %124, %125
  %127 = icmp slt i32 %126, 2
  br i1 %127, label %128, label %132, !prof !9

128:                                              ; preds = %120
  br i1 %61, label %182, label %129

129:                                              ; preds = %128
  %130 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %121, ptr noundef nonnull %9, i32 noundef 2) #7
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %182, label %136

132:                                              ; preds = %120
  %133 = load ptr, ptr %16, align 4
  %134 = getelementptr i8, ptr %133, i32 %121
  %135 = icmp eq ptr %134, null
  br i1 %135, label %182, label %136

136:                                              ; preds = %132, %129
  %137 = phi ptr [ %134, %132 ], [ %9, %129 ]
  %138 = load i16, ptr %137, align 2
  %139 = and i16 %138, -1793
  %140 = call i16 @llvm.bswap.i16(i16 %139)
  store i16 %140, ptr %9, align 2
  %141 = icmp eq i16 %139, 0
  br i1 %141, label %154, label %142

142:                                              ; preds = %136
  br i1 %63, label %143, label %151

143:                                              ; preds = %142
  %144 = load i8, ptr %87, align 1
  switch i8 %144, label %145 [
    i8 60, label %151
    i8 0, label %151
    i8 43, label %151
    i8 44, label %151
    i8 51, label %151
  ]

145:                                              ; preds = %143
  br i1 %23, label %148, label %146

146:                                              ; preds = %145
  store i16 %140, ptr %3, align 2
  %147 = load i8, ptr %87, align 1
  br label %148

148:                                              ; preds = %146, %145
  %149 = phi i8 [ %147, %146 ], [ %144, %145 ]
  %150 = zext i8 %149 to i32
  br label %182

151:                                              ; preds = %143, %143, %143, %143, %143, %142
  br i1 %68, label %152, label %182

152:                                              ; preds = %151
  br i1 %23, label %184, label %153

153:                                              ; preds = %152
  store i16 %140, ptr %3, align 2
  br label %184

154:                                              ; preds = %136
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #7
  br label %174

155:                                              ; preds = %86
  br i1 %62, label %161, label %156

156:                                              ; preds = %155
  %157 = load i32, ptr %4, align 4
  %158 = and i32 %157, 2
  %159 = icmp ne i32 %158, 0
  %160 = and i1 %63, %159
  br i1 %160, label %181, label %161

161:                                              ; preds = %156, %155
  %162 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %87, i32 0, i32 1
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i32
  %165 = shl nuw nsw i32 %164, 2
  %166 = add nuw nsw i32 %165, 8
  br label %174

167:                                              ; preds = %113, %86
  %168 = phi i8 [ %114, %113 ], [ %69, %86 ]
  %169 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %87, i32 0, i32 1
  %170 = load i8, ptr %169, align 1
  %171 = zext i8 %170 to i32
  %172 = shl nuw nsw i32 %171, 3
  %173 = add nuw nsw i32 %172, 8
  br label %174

174:                                              ; preds = %167, %161, %154
  %175 = phi i8 [ %69, %154 ], [ %69, %161 ], [ %168, %167 ]
  %176 = phi i32 [ 8, %154 ], [ %166, %161 ], [ %173, %167 ]
  %177 = icmp eq i8 %175, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %174
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #7
  br label %188

179:                                              ; preds = %115, %82, %79, %78, %70
  %180 = phi i32 [ -2, %70 ], [ -74, %115 ], [ -74, %79 ], [ -74, %78 ], [ -74, %82 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #7
  br label %190

181:                                              ; preds = %156, %70
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #7
  br label %188

182:                                              ; preds = %151, %148, %132, %129, %128
  %183 = phi i32 [ %150, %148 ], [ -2, %151 ], [ -74, %129 ], [ -74, %128 ], [ -74, %132 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #7
  br label %190

184:                                              ; preds = %153, %152
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #7
  br label %188

185:                                              ; preds = %174
  %186 = load i8, ptr %87, align 1
  %187 = add i32 %176, %65
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #7
  br label %64

188:                                              ; preds = %184, %181, %178
  store i32 %65, ptr %1, align 4
  %189 = zext i8 %66 to i32
  br label %190

190:                                              ; preds = %188, %182, %179, %50
  %191 = phi i32 [ %189, %188 ], [ -74, %50 ], [ %180, %179 ], [ %183, %182 ]
  ret i32 %191
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
