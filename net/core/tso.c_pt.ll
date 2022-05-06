; ModuleID = '/llk/IR/net/core/tso.c_pt.bc'
source_filename = "../net/core/tso.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tso_count_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22tso_count_descs\22\09\09\09\09\09"
module asm "__kstrtabns_tso_count_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tso_build_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22tso_build_hdr\22\09\09\09\09\09"
module asm "__kstrtabns_tso_build_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tso_build_data:\09\09\09\09\09"
module asm "\09.asciz \09\22tso_build_data\22\09\09\09\09\09"
module asm "__kstrtabns_tso_build_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tso_start:\09\09\09\09\09"
module asm "\09.asciz \09\22tso_start\22\09\09\09\09\09"
module asm "__kstrtabns_tso_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.115, %union.anon.116, [48 x i8], %union.anon.117, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.119, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.115 = type { ptr }
%union.anon.116 = type { i64 }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type { i32, ptr }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.121, i32, i32, i32, i16, i16, %union.anon.123, %union.anon.124, %union.anon.125, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.121 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tso_t = type { i32, i32, ptr, i16, i8, i8, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.54 }
%union.anon.54 = type { [4 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.vlan_hdr = type { i16, i16 }

@__kstrtab_tso_count_descs = external dso_local constant [0 x i8], align 1
@__kstrtabns_tso_count_descs = external dso_local constant [0 x i8], align 1
@__ksymtab_tso_count_descs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tso_count_descs to i32), ptr @__kstrtab_tso_count_descs, ptr @__kstrtabns_tso_count_descs }, section "___ksymtab+tso_count_descs", align 4
@__kstrtab_tso_build_hdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_tso_build_hdr = external dso_local constant [0 x i8], align 1
@__ksymtab_tso_build_hdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tso_build_hdr to i32), ptr @__kstrtab_tso_build_hdr, ptr @__kstrtabns_tso_build_hdr }, section "___ksymtab+tso_build_hdr", align 4
@__kstrtab_tso_build_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_tso_build_data = external dso_local constant [0 x i8], align 1
@__ksymtab_tso_build_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tso_build_data to i32), ptr @__kstrtab_tso_build_data, ptr @__kstrtabns_tso_build_data }, section "___ksymtab+tso_build_data", align 4
@__kstrtab_tso_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_tso_start = external dso_local constant [0 x i8], align 1
@__ksymtab_tso_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tso_start to i32), ptr @__kstrtab_tso_start, ptr @__kstrtabns_tso_start }, section "___ksymtab+tso_start", align 4
@.str = private unnamed_addr constant [24 x i8] c"include/linux/if_vlan.h\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_tso_build_data, ptr @__ksymtab_tso_build_hdr, ptr @__ksymtab_tso_count_descs, ptr @__ksymtab_tso_start], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @tso_count_descs(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 5
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = shl nuw nsw i32 %6, 1
  %8 = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 2
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = add nuw nsw i32 %7, %10
  ret i32 %11
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @tso_build_hdr(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, i1 noundef zeroext %4) #1 {
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %11 to i32
  %15 = ptrtoint ptr %13 to i32
  %16 = sub i32 %14, %15
  %17 = getelementptr inbounds %struct.tso_t, ptr %2, i32 0, i32 4
  %18 = load i8, ptr %17, align 2
  %19 = zext i8 %18 to i32
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %7, i32 %23
  %25 = ptrtoint ptr %24 to i32
  %26 = sub i32 %25, %15
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %13, i32 %20, i1 false)
  %27 = getelementptr inbounds %struct.tso_t, ptr %2, i32 0, i32 5
  %28 = load i8, ptr %27, align 1, !range !8
  %29 = icmp eq i8 %28, 0
  %30 = getelementptr i8, ptr %1, i32 %26
  br i1 %29, label %31, label %43

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.tso_t, ptr %2, i32 0, i32 3
  %33 = load i16, ptr %32, align 4
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %35 = getelementptr inbounds %struct.iphdr, ptr %30, i32 0, i32 3
  store i16 %34, ptr %35, align 4
  %36 = add i32 %20, %3
  %37 = sub i32 %36, %26
  %38 = trunc i32 %37 to i16
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %40 = getelementptr inbounds %struct.iphdr, ptr %30, i32 0, i32 2
  store i16 %39, ptr %40, align 2
  %41 = load i16, ptr %32, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %32, align 4
  br label %50

43:                                               ; preds = %5
  %44 = load i8, ptr %17, align 2
  %45 = zext i8 %44 to i32
  %46 = add i32 %45, %3
  %47 = trunc i32 %46 to i16
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  %49 = getelementptr inbounds %struct.ipv6hdr, ptr %30, i32 0, i32 2
  store i16 %48, ptr %49, align 4
  br label %50

50:                                               ; preds = %43, %31
  %51 = load ptr, ptr %6, align 8
  %52 = load i16, ptr %8, align 2
  %53 = zext i16 %52 to i32
  %54 = getelementptr i8, ptr %51, i32 %53
  %55 = load ptr, ptr %12, align 4
  %56 = ptrtoint ptr %54 to i32
  %57 = ptrtoint ptr %55 to i32
  %58 = sub i32 %56, %57
  %59 = getelementptr i8, ptr %1, i32 %58
  %60 = load i8, ptr %17, align 2
  %61 = icmp eq i8 %60, 8
  br i1 %61, label %71, label %62

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.tso_t, ptr %2, i32 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.tcphdr, ptr %59, i32 0, i32 2
  %66 = tail call i32 @llvm.bswap.i32(i32 %64) #7
  store i32 %66, ptr %65, align 1
  br i1 %4, label %76, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.tcphdr, ptr %59, i32 0, i32 4
  %69 = load i16, ptr %68, align 4
  %70 = and i16 %69, -3329
  store i16 %70, ptr %68, align 4
  br label %76

71:                                               ; preds = %50
  %72 = trunc i32 %3 to i16
  %73 = add i16 %72, 8
  %74 = tail call i16 @llvm.bswap.i16(i16 %73)
  %75 = getelementptr inbounds %struct.udphdr, ptr %59, i32 0, i32 2
  store i16 %74, ptr %75, align 2
  br label %76

76:                                               ; preds = %71, %67, %62
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tso_build_data(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.tso_t, ptr %1, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %2
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.tso_t, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %8, %2
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.tso_t, ptr %1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %2
  store ptr %12, ptr %10, align 4
  %13 = icmp eq i32 %8, %2
  br i1 %13, label %14, label %33

14:                                               ; preds = %3
  %15 = load i32, ptr %1, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 2
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i32
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = getelementptr %struct.skb_shared_info, ptr %17, i32 0, i32 12, i32 %15
  %24 = getelementptr %struct.skb_shared_info, ptr %17, i32 0, i32 12, i32 %15, i32 1
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %7, align 4
  %26 = load ptr, ptr %23, align 4
  %27 = tail call ptr @page_address(ptr noundef %26) #7
  %28 = getelementptr %struct.skb_shared_info, ptr %17, i32 0, i32 12, i32 %15, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i8, ptr %27, i32 %29
  store ptr %30, ptr %10, align 4
  %31 = load i32, ptr %1, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %1, align 4
  br label %33

33:                                               ; preds = %22, %14, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tso_start(ptr noundef %0, ptr nocapture noundef %1) #5 {
  %3 = alloca %struct.vlan_hdr, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 17
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  br i1 %9, label %22, label %15

15:                                               ; preds = %2
  %16 = getelementptr i8, ptr %11, i32 %14
  %17 = getelementptr inbounds %struct.tcphdr, ptr %16, i32 0, i32 4
  %18 = load i16, ptr %17, align 4
  %19 = lshr i16 %18, 2
  %20 = and i16 %19, 60
  %21 = zext i16 %20 to i32
  br label %22

22:                                               ; preds = %15, %2
  %23 = phi i32 [ %21, %15 ], [ 8, %2 ]
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %25 = getelementptr i8, ptr %11, i32 %14
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = ptrtoint ptr %25 to i32
  %29 = ptrtoint ptr %27 to i32
  %30 = sub i32 %28, %29
  %31 = add i32 %30, %23
  %32 = trunc i32 %23 to i8
  %33 = getelementptr inbounds %struct.tso_t, ptr %1, i32 0, i32 4
  store i8 %32, ptr %33, align 2
  %34 = load ptr, ptr %24, align 8
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %36 = load i16, ptr %35, align 4
  %37 = zext i16 %36 to i32
  %38 = getelementptr i8, ptr %34, i32 %37
  %39 = getelementptr inbounds %struct.iphdr, ptr %38, i32 0, i32 3
  %40 = load i16, ptr %39, align 4
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %42 = getelementptr inbounds %struct.tso_t, ptr %1, i32 0, i32 3
  store i16 %41, ptr %42, align 4
  %43 = icmp eq i32 %23, 8
  br i1 %43, label %53, label %44

44:                                               ; preds = %22
  %45 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %46 = load ptr, ptr %24, align 8
  %47 = load i16, ptr %45, align 2
  %48 = zext i16 %47 to i32
  %49 = getelementptr i8, ptr %46, i32 %48
  %50 = getelementptr inbounds %struct.tcphdr, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  br label %53

53:                                               ; preds = %44, %22
  %54 = phi i32 [ %52, %44 ], [ 0, %22 ]
  %55 = getelementptr inbounds %struct.tso_t, ptr %1, i32 0, i32 6
  store i32 %54, ptr %55, align 4
  store i32 0, ptr %1, align 4
  %56 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %57 = load i16, ptr %56, align 8
  %58 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %59 = load i16, ptr %58, align 8
  %60 = zext i16 %59 to i32
  switch i16 %57, label %101 [
    i16 -22392, label %61
    i16 129, label %61
  ]

61:                                               ; preds = %53, %53
  %62 = icmp eq i16 %59, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %61
  %64 = icmp ult i16 %59, 4
  br i1 %64, label %65, label %66, !prof !9

65:                                               ; preds = %63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef null) #7
  br label %101

66:                                               ; preds = %63
  %67 = add nsw i32 %60, -4
  br label %68

68:                                               ; preds = %66, %61
  %69 = phi i32 [ %67, %66 ], [ 14, %61 ]
  %70 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %71 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %72 = icmp eq ptr %0, null
  br label %73

73:                                               ; preds = %99, %68
  %74 = phi i32 [ %69, %68 ], [ %100, %99 ]
  %75 = phi i32 [ 8, %68 ], [ %92, %99 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !10
  %76 = load i32, ptr %70, align 8
  %77 = load i32, ptr %71, align 4
  %78 = add i32 %74, %77
  %79 = sub i32 %76, %78
  %80 = icmp sgt i32 %79, 3
  br i1 %80, label %81, label %84, !prof !11

81:                                               ; preds = %73
  %82 = load ptr, ptr %26, align 4
  %83 = getelementptr i8, ptr %82, i32 %74
  br label %89

84:                                               ; preds = %73
  br i1 %72, label %95, label %85

85:                                               ; preds = %84
  %86 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %74, ptr noundef nonnull %3, i32 noundef 4) #7
  %87 = icmp slt i32 %86, 0
  %88 = select i1 %87, ptr null, ptr %3, !prof !9
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi ptr [ %83, %81 ], [ %88, %85 ]
  %91 = icmp eq ptr %90, null
  %92 = add nsw i32 %75, -1
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %91, i1 true, i1 %93, !prof !9
  br i1 %94, label %95, label %96, !prof !9

95:                                               ; preds = %89, %84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %101

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.vlan_hdr, ptr %90, i32 0, i32 1
  %98 = load i16, ptr %97, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  switch i16 %98, label %101 [
    i16 -22392, label %99
    i16 129, label %99
  ]

99:                                               ; preds = %96, %96
  %100 = add nsw i32 %74, 4
  br label %73

101:                                              ; preds = %96, %95, %65, %53
  %102 = phi i16 [ 0, %65 ], [ %57, %53 ], [ 0, %95 ], [ %98, %96 ]
  %103 = icmp eq i16 %102, -8826
  %104 = getelementptr inbounds %struct.tso_t, ptr %1, i32 0, i32 5
  %105 = zext i1 %103 to i8
  store i8 %105, ptr %104, align 1
  %106 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %107 = load i32, ptr %106, align 8
  %108 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %109 = load i32, ptr %108, align 4
  %110 = sub i32 %107, %109
  %111 = sub i32 %110, %31
  %112 = getelementptr inbounds %struct.tso_t, ptr %1, i32 0, i32 1
  store i32 %111, ptr %112, align 4
  %113 = load ptr, ptr %26, align 4
  %114 = getelementptr i8, ptr %113, i32 %31
  %115 = getelementptr inbounds %struct.tso_t, ptr %1, i32 0, i32 2
  store ptr %114, ptr %115, align 4
  %116 = icmp eq i32 %110, %31
  br i1 %116, label %117, label %135

117:                                              ; preds = %101
  %118 = load i32, ptr %1, align 4
  %119 = load ptr, ptr %4, align 4
  %120 = getelementptr inbounds %struct.skb_shared_info, ptr %119, i32 0, i32 2
  %121 = load i8, ptr %120, align 2
  %122 = zext i8 %121 to i32
  %123 = icmp slt i32 %118, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %117
  %125 = getelementptr %struct.skb_shared_info, ptr %119, i32 0, i32 12, i32 %118
  %126 = getelementptr %struct.skb_shared_info, ptr %119, i32 0, i32 12, i32 %118, i32 1
  %127 = load i32, ptr %126, align 4
  store i32 %127, ptr %112, align 4
  %128 = load ptr, ptr %125, align 4
  %129 = call ptr @page_address(ptr noundef %128) #7
  %130 = getelementptr %struct.skb_shared_info, ptr %119, i32 0, i32 12, i32 %118, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr i8, ptr %129, i32 %131
  store ptr %132, ptr %115, align 4
  %133 = load i32, ptr %1, align 4
  %134 = add i32 %133, 1
  store i32 %134, ptr %1, align 4
  br label %135

135:                                              ; preds = %124, %117, %101
  ret i32 %31
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
