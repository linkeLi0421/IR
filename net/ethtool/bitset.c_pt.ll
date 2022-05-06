; ModuleID = '/llk/IR/net/ethtool/bitset.c_pt.bc'
source_filename = "../net/ethtool/bitset.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.10 = type { i16, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.117, %union.anon.118, [48 x i8], %union.anon.119, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.121, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.117 = type { ptr }
%union.anon.118 = type { i64 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i32, ptr }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.123, i32, i32, i32, i16, i16, %union.anon.125, %union.anon.126, %union.anon.127, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.123 = type { i32 }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%union.anon.127 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }

@ethnl_parse_bitset.__msg = internal constant [37 x i8] c"value only allowed in compact bitset\00", align 1
@ethnl_parse_bitset.__msg.1 = internal constant [36 x i8] c"mask only allowed in compact bitset\00", align 1
@.str = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@nla_parse_nested.__msg = internal constant [24 x i8] c"NLA_F_NESTED is missing\00", align 1
@bitset_policy = internal constant <{ %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.10 } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.9 zeroinitializer }, { i8, i8, i16, { %struct.anon.10 } } { i8 3, i8 4, i16 0, { %struct.anon.10 } { %struct.anon.10 { i16 0, i16 32767 } } }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 0, %union.anon.9 zeroinitializer } }>, align 4
@ethnl_update_bitset32_verbose.__msg = internal constant [37 x i8] c"value only allowed in compact bitset\00", align 1
@ethnl_update_bitset32_verbose.__msg.3 = internal constant [36 x i8] c"mask only allowed in compact bitset\00", align 1
@ethnl_update_bitset32_verbose.__msg.4 = internal constant [64 x i8] c"only ETHTOOL_A_BITSET_BITS_BIT allowed in ETHTOOL_A_BITSET_BITS\00", align 1
@ethnl_compact_sanity_checks.__msg = internal constant [32 x i8] c"mask not allowed in list bitset\00", align 1
@ethnl_compact_sanity_checks.__msg.5 = internal constant [31 x i8] c"missing size in compact bitset\00", align 1
@ethnl_compact_sanity_checks.__msg.6 = internal constant [32 x i8] c"missing value in compact bitset\00", align 1
@ethnl_compact_sanity_checks.__msg.7 = internal constant [39 x i8] c"missing mask in compact nonlist bitset\00", align 1
@ethnl_compact_sanity_checks.__msg.8 = internal constant [40 x i8] c"bitset value length does not match size\00", align 1
@ethnl_compact_sanity_checks.__msg.9 = internal constant [39 x i8] c"bitset mask length does not match size\00", align 1
@ethnl_compact_sanity_checks.__msg.10 = internal constant [43 x i8] c"cannot modify bits past kernel bitset size\00", align 1
@bit_policy = internal constant [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 0, %union.anon.9 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.9 zeroinitializer }], align 4
@ethnl_parse_bit.__msg = internal constant [19 x i8] c"bit index too high\00", align 1
@ethnl_parse_bit.__msg.11 = internal constant [28 x i8] c"bit index and name mismatch\00", align 1
@ethnl_parse_bit.__msg.12 = internal constant [19 x i8] c"bit name not found\00", align 1
@ethnl_parse_bit.__msg.13 = internal constant [37 x i8] c"neither bit index nor name specified\00", align 1

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ethnl_bitset32_size(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef readonly %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %1, null
  br i1 %4, label %12, label %7

7:                                                ; preds = %5
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %56, label %9

9:                                                ; preds = %7
  %10 = icmp eq ptr %3, null
  %11 = select i1 %6, ptr %0, ptr %1
  br label %20

12:                                               ; preds = %5
  %13 = add i32 %2, 31
  %14 = select i1 %6, i32 1, i32 2
  %15 = lshr i32 %13, 3
  %16 = and i32 %15, 536870908
  %17 = add nuw nsw i32 %16, 7
  %18 = and i32 %17, 1073741820
  %19 = mul nuw nsw i32 %18, %14
  br label %60

20:                                               ; preds = %52, %9
  %21 = phi i32 [ 0, %9 ], [ %54, %52 ]
  %22 = phi i32 [ 0, %9 ], [ %53, %52 ]
  %23 = getelementptr [32 x i8], ptr %3, i32 %21
  %24 = select i1 %10, ptr null, ptr %23
  %25 = lshr i32 %21, 5
  %26 = getelementptr i32, ptr %11, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %21, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %20
  %33 = icmp eq ptr %24, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %32
  %35 = tail call i32 @strnlen(ptr noundef nonnull %24, i32 noundef 32) #8
  %36 = add i32 %35, 16
  %37 = and i32 %36, -4
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi i32 [ %37, %34 ], [ 8, %32 ]
  br i1 %6, label %47, label %40

40:                                               ; preds = %38
  %41 = getelementptr i32, ptr %0, i32 %25
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, %29
  %44 = icmp eq i32 %43, 0
  %45 = add i32 %39, 4
  %46 = select i1 %44, i32 %39, i32 %45
  br label %47

47:                                               ; preds = %40, %38
  %48 = phi i32 [ %39, %38 ], [ %46, %40 ]
  %49 = add i32 %48, 7
  %50 = and i32 %49, -4
  %51 = add i32 %50, %22
  br label %52

52:                                               ; preds = %47, %20
  %53 = phi i32 [ %51, %47 ], [ %22, %20 ]
  %54 = add nuw i32 %21, 1
  %55 = icmp eq i32 %54, %2
  br i1 %55, label %56, label %20

56:                                               ; preds = %52, %7
  %57 = phi i32 [ 0, %7 ], [ %53, %52 ]
  %58 = add i32 %57, 7
  %59 = and i32 %58, -4
  br label %60

60:                                               ; preds = %56, %12
  %61 = phi i32 [ %19, %12 ], [ %59, %56 ]
  %62 = select i1 %6, i32 23, i32 15
  %63 = add i32 %62, %61
  %64 = and i32 %63, -4
  ret i32 %64
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_put_bitset32(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i32 noundef %4, ptr noundef readonly %5, i1 noundef zeroext %6) local_unnamed_addr #2 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = or i32 %1, 32768
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @nla_put(ptr noundef %0, i32 noundef %10, i32 noundef 0, ptr noundef null) #8
  %14 = icmp slt i32 %13, 0
  %15 = icmp eq ptr %12, null
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %138, label %17

17:                                               ; preds = %7
  %18 = icmp eq ptr %3, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 0, ptr noundef null) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %127

22:                                               ; preds = %19, %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 %4, ptr %9, align 4
  %23 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %127

25:                                               ; preds = %22
  br i1 %6, label %26, label %56

26:                                               ; preds = %25
  %27 = add i32 %4, 31
  %28 = lshr i32 %27, 5
  %29 = shl nuw nsw i32 %28, 2
  %30 = call ptr @nla_reserve(ptr noundef %0, i32 noundef 4, i32 noundef %29) #8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %127, label %32

32:                                               ; preds = %26
  %33 = getelementptr i8, ptr %30, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %33, ptr align 4 %2, i32 %29, i1 false)
  %34 = and i32 %4, 31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = sub nuw nsw i32 32, %34
  %38 = lshr i32 -1, %37
  %39 = add nsw i32 %28, -1
  %40 = getelementptr i32, ptr %33, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %36, %32
  br i1 %18, label %121, label %44

44:                                               ; preds = %43
  %45 = call ptr @nla_reserve(ptr noundef %0, i32 noundef 5, i32 noundef %29) #8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %127, label %47

47:                                               ; preds = %44
  %48 = getelementptr i8, ptr %45, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %48, ptr nonnull align 4 %3, i32 %29, i1 false)
  br i1 %35, label %121, label %49

49:                                               ; preds = %47
  %50 = sub nuw nsw i32 32, %34
  %51 = lshr i32 -1, %50
  %52 = add nsw i32 %28, -1
  %53 = getelementptr i32, ptr %48, i32 %52
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, ptr %53, align 4
  br label %121

56:                                               ; preds = %25
  %57 = load ptr, ptr %11, align 8
  %58 = call i32 @nla_put(ptr noundef %0, i32 noundef 32771, i32 noundef 0, ptr noundef null) #8
  %59 = icmp slt i32 %58, 0
  %60 = icmp eq ptr %57, null
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %127, label %62

62:                                               ; preds = %56
  %63 = icmp eq i32 %4, 0
  br i1 %63, label %115, label %64

64:                                               ; preds = %62
  %65 = icmp eq ptr %5, null
  %66 = select i1 %18, ptr %2, ptr %3
  br label %67

67:                                               ; preds = %112, %64
  %68 = phi i32 [ 0, %64 ], [ %113, %112 ]
  %69 = getelementptr [32 x i8], ptr %5, i32 %68
  %70 = select i1 %65, ptr null, ptr %69
  %71 = lshr i32 %68, 5
  %72 = getelementptr i32, ptr %66, i32 %71
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %68, 31
  %75 = shl nuw i32 1, %74
  %76 = and i32 %73, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %112, label %78

78:                                               ; preds = %67
  %79 = load ptr, ptr %11, align 8
  %80 = call i32 @nla_put(ptr noundef %0, i32 noundef 32769, i32 noundef 0, ptr noundef null) #8
  %81 = icmp slt i32 %80, 0
  %82 = icmp eq ptr %79, null
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %127, label %84

84:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 %68, ptr %8, align 4
  %85 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %127

87:                                               ; preds = %84
  %88 = icmp eq ptr %70, null
  br i1 %88, label %97, label %89

89:                                               ; preds = %87
  %90 = call i32 @strnlen(ptr noundef nonnull %70, i32 noundef 32) #8
  %91 = add i32 %90, 1
  %92 = call ptr @nla_reserve(ptr noundef %0, i32 noundef 2, i32 noundef %91) #8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %127, label %94

94:                                               ; preds = %89
  %95 = getelementptr i8, ptr %92, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %95, ptr nonnull align 1 %70, i32 %90, i1 false) #8
  %96 = getelementptr i8, ptr %95, i32 %90
  store i8 0, ptr %96, align 1
  br label %97

97:                                               ; preds = %94, %87
  br i1 %18, label %106, label %98

98:                                               ; preds = %97
  %99 = getelementptr i32, ptr %2, i32 %71
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, %75
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %103, %98, %97
  %107 = load ptr, ptr %11, align 8
  %108 = ptrtoint ptr %107 to i32
  %109 = ptrtoint ptr %79 to i32
  %110 = sub i32 %108, %109
  %111 = trunc i32 %110 to i16
  store i16 %111, ptr %79, align 2
  br label %112

112:                                              ; preds = %106, %67
  %113 = add nuw i32 %68, 1
  %114 = icmp eq i32 %113, %4
  br i1 %114, label %115, label %67

115:                                              ; preds = %112, %62
  %116 = load ptr, ptr %11, align 8
  %117 = ptrtoint ptr %116 to i32
  %118 = ptrtoint ptr %57 to i32
  %119 = sub i32 %117, %118
  %120 = trunc i32 %119 to i16
  store i16 %120, ptr %57, align 2
  br label %121

121:                                              ; preds = %115, %49, %47, %43
  %122 = load ptr, ptr %11, align 8
  %123 = ptrtoint ptr %122 to i32
  %124 = ptrtoint ptr %12 to i32
  %125 = sub i32 %123, %124
  %126 = trunc i32 %125 to i16
  store i16 %126, ptr %12, align 2
  br label %138

127:                                              ; preds = %103, %89, %84, %78, %56, %44, %26, %22, %19
  %128 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %129 = load ptr, ptr %128, align 4
  %130 = icmp ugt ptr %129, %12
  br i1 %130, label %131, label %133, !prof !8

131:                                              ; preds = %127
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  %132 = load ptr, ptr %128, align 4
  br label %133

133:                                              ; preds = %131, %127
  %134 = phi ptr [ %132, %131 ], [ %129, %127 ]
  %135 = ptrtoint ptr %12 to i32
  %136 = ptrtoint ptr %134 to i32
  %137 = sub i32 %135, %136
  call void @skb_trim(ptr noundef %0, i32 noundef %137) #8
  br label %138

138:                                              ; preds = %133, %121, %7
  %139 = phi i32 [ -90, %133 ], [ 0, %121 ], [ -90, %7 ]
  ret i32 %139
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_bitset_is_compact(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = alloca [6 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.nlattr, ptr %0, i32 0, i32 1
  %5 = load i16, ptr %4, align 2
  %6 = icmp sgt i16 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #8
  br label %37

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 4
  %10 = load i16, ptr %0, align 2
  %11 = zext i16 %10 to i32
  %12 = add nsw i32 %11, -4
  %13 = call i32 @__nla_parse(ptr noundef nonnull %3, i32 noundef 5, ptr noundef %9, i32 noundef %12, ptr noundef nonnull @bitset_policy, i32 noundef 31, ptr noundef null) #8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds [6 x ptr], ptr %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds [6 x ptr], ptr %3, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp ne ptr %21, null
  %23 = getelementptr inbounds [6 x ptr], ptr %3, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = icmp ne ptr %24, null
  %26 = select i1 %22, i1 true, i1 %25
  br i1 %26, label %37, label %27

27:                                               ; preds = %19
  store i8 0, ptr %1, align 1
  br label %37

28:                                               ; preds = %15
  %29 = getelementptr inbounds [6 x ptr], ptr %3, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp ne ptr %30, null
  %32 = getelementptr inbounds [6 x ptr], ptr %3, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp ne ptr %33, null
  %35 = select i1 %31, i1 %34, i1 false
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i8 1, ptr %1, align 1
  br label %37

37:                                               ; preds = %36, %28, %27, %19, %8, %7
  %38 = phi i32 [ 0, %27 ], [ 0, %36 ], [ %13, %8 ], [ -22, %19 ], [ -22, %28 ], [ -22, %7 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %38
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_update_bitset32(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #2 {
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca [6 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 24, i1 false), !annotation !9
  %10 = icmp eq ptr %2, null
  br i1 %10, label %270, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.nlattr, ptr %2, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = icmp sgt i16 %13, -1
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #8
  %16 = icmp eq ptr %4, null
  br i1 %16, label %270, label %17

17:                                               ; preds = %15
  store ptr @nla_parse_nested.__msg, ptr %4, align 4
  %18 = getelementptr inbounds %struct.netlink_ext_ack, ptr %4, i32 0, i32 1
  store ptr %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.netlink_ext_ack, ptr %4, i32 0, i32 2
  store ptr null, ptr %19, align 4
  br label %270

20:                                               ; preds = %11
  %21 = getelementptr i8, ptr %2, i32 4
  %22 = load i16, ptr %2, align 2
  %23 = zext i16 %22 to i32
  %24 = add nsw i32 %23, -4
  %25 = call i32 @__nla_parse(ptr noundef nonnull %9, i32 noundef 5, ptr noundef %21, i32 noundef %24, ptr noundef nonnull @bitset_policy, i32 noundef 31, ptr noundef %4) #8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %270, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds [6 x ptr], ptr %9, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %138, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds ptr, ptr %9, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_update_bitset32_verbose.__msg) #8
  %36 = icmp eq ptr %4, null
  br i1 %36, label %270, label %37

37:                                               ; preds = %35
  store ptr @ethnl_update_bitset32_verbose.__msg, ptr %4, align 4
  %38 = load ptr, ptr %32, align 4
  %39 = getelementptr inbounds %struct.netlink_ext_ack, ptr %4, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.netlink_ext_ack, ptr %4, i32 0, i32 2
  store ptr null, ptr %40, align 4
  br label %270

41:                                               ; preds = %31
  %42 = getelementptr inbounds ptr, ptr %9, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_update_bitset32_verbose.__msg.3) #8
  %46 = icmp eq ptr %4, null
  br i1 %46, label %270, label %47

47:                                               ; preds = %45
  store ptr @ethnl_update_bitset32_verbose.__msg.3, ptr %4, align 4
  %48 = load ptr, ptr %42, align 4
  %49 = getelementptr inbounds %struct.netlink_ext_ack, ptr %4, i32 0, i32 1
  store ptr %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.netlink_ext_ack, ptr %4, i32 0, i32 2
  store ptr null, ptr %50, align 4
  br label %270

51:                                               ; preds = %41
  %52 = getelementptr inbounds ptr, ptr %9, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = icmp ne ptr %53, null
  br i1 %54, label %55, label %82

55:                                               ; preds = %51
  %56 = lshr i32 %1, 5
  %57 = icmp eq i32 %1, 0
  br i1 %57, label %82, label %58

58:                                               ; preds = %55
  %59 = icmp ult i32 %1, 32
  br i1 %59, label %69, label %60

60:                                               ; preds = %66, %58
  %61 = phi i32 [ %67, %66 ], [ 0, %58 ]
  %62 = getelementptr i32, ptr %0, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  store i32 0, ptr %62, align 4
  store i8 1, ptr %5, align 1
  br label %66

66:                                               ; preds = %65, %60
  %67 = add nuw nsw i32 %61, 1
  %68 = icmp eq i32 %67, %56
  br i1 %68, label %69, label %60

69:                                               ; preds = %66, %58
  %70 = and i32 %1, 31
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %69
  %73 = sub nuw nsw i32 32, %70
  %74 = lshr i32 -1, %73
  %75 = getelementptr i32, ptr %0, i32 %56
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, %74
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %72
  %80 = xor i32 %74, -1
  %81 = and i32 %76, %80
  store i32 %81, ptr %75, align 4
  store i8 1, ptr %5, align 1
  br label %82

82:                                               ; preds = %79, %72, %69, %55, %51
  %83 = load i16, ptr %29, align 2
  %84 = icmp ugt i16 %83, 7
  br i1 %84, label %85, label %270

85:                                               ; preds = %82
  %86 = zext i16 %83 to i32
  %87 = add nsw i32 %86, -4
  %88 = getelementptr i8, ptr %29, i32 4
  br label %89

89:                                               ; preds = %130, %85
  %90 = phi ptr [ %136, %130 ], [ %88, %85 ]
  %91 = phi i32 [ %135, %130 ], [ %87, %85 ]
  %92 = load i16, ptr %90, align 2
  %93 = icmp ult i16 %92, 4
  %94 = zext i16 %92 to i32
  %95 = icmp ult i32 %91, %94
  %96 = select i1 %93, i1 true, i1 %95
  br i1 %96, label %270, label %97

97:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 0, ptr %7, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !annotation !9
  %98 = getelementptr inbounds %struct.nlattr, ptr %90, i32 0, i32 1
  %99 = load i16, ptr %98, align 2
  %100 = and i16 %99, 16383
  %101 = icmp eq i16 %100, 1
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_update_bitset32_verbose.__msg.4) #8
  %103 = icmp eq ptr %4, null
  br i1 %103, label %128, label %104

104:                                              ; preds = %102
  store ptr @ethnl_update_bitset32_verbose.__msg.4, ptr %4, align 4
  %105 = getelementptr inbounds %struct.netlink_ext_ack, ptr %4, i32 0, i32 1
  store ptr %90, ptr %105, align 4
  %106 = getelementptr inbounds %struct.netlink_ext_ack, ptr %4, i32 0, i32 2
  store ptr null, ptr %106, align 4
  br label %128

107:                                              ; preds = %97
  %108 = call fastcc i32 @ethnl_parse_bit(ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %1, ptr noundef %90, i1 noundef zeroext %54, ptr noundef %3, ptr noundef %4) #8
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %128, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr %8, align 4
  %112 = lshr i32 %111, 5
  %113 = getelementptr i32, ptr %0, i32 %112
  %114 = load i32, ptr %113, align 4
  %115 = and i32 %111, 31
  %116 = load i8, ptr %7, align 1, !range !10
  %117 = zext i8 %116 to i32
  %118 = lshr i32 %114, %115
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, %117
  br i1 %120, label %130, label %121

121:                                              ; preds = %110
  %122 = shl nuw i32 1, %115
  %123 = icmp eq i8 %116, 0
  %124 = xor i32 %122, -1
  %125 = and i32 %114, %124
  %126 = or i32 %122, %114
  %127 = select i1 %123, i32 %125, i32 %126
  store i32 %127, ptr %113, align 4
  store i8 1, ptr %5, align 1
  br label %130

128:                                              ; preds = %107, %104, %102
  %129 = phi i32 [ -22, %102 ], [ -22, %104 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  br label %270

130:                                              ; preds = %121, %110
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  %131 = load i16, ptr %90, align 2
  %132 = zext i16 %131 to i32
  %133 = add nuw nsw i32 %132, 3
  %134 = and i32 %133, 131068
  %135 = sub nsw i32 %91, %134
  %136 = getelementptr i8, ptr %90, i32 %134
  %137 = icmp sgt i32 %135, 3
  br i1 %137, label %89, label %270

138:                                              ; preds = %27
  %139 = call fastcc i32 @ethnl_compact_sanity_checks(i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %9, ptr noundef %4)
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %270, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds [6 x ptr], ptr %9, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  %145 = getelementptr inbounds [6 x ptr], ptr %9, i32 0, i32 2
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr i8, ptr %146, i32 4
  %148 = load i32, ptr %147, align 4
  %149 = icmp ult i32 %148, %1
  %150 = call i32 @llvm.umin.i32(i32 %148, i32 %1)
  %151 = getelementptr inbounds [6 x ptr], ptr %9, i32 0, i32 4
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr i8, ptr %152, i32 4
  %154 = icmp eq i32 %150, 0
  br i1 %144, label %155, label %191

155:                                              ; preds = %141
  br i1 %154, label %270, label %156

156:                                              ; preds = %155
  %157 = getelementptr inbounds [6 x ptr], ptr %9, i32 0, i32 5
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr i8, ptr %158, i32 4
  br label %160

160:                                              ; preds = %185, %156
  %161 = phi ptr [ %0, %156 ], [ %186, %185 ]
  %162 = phi ptr [ %159, %156 ], [ %190, %185 ]
  %163 = phi ptr [ %153, %156 ], [ %188, %185 ]
  %164 = phi i32 [ %150, %156 ], [ %187, %185 ]
  %165 = icmp eq ptr %162, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %160
  %167 = load i32, ptr %162, align 4
  br label %168

168:                                              ; preds = %166, %160
  %169 = phi i32 [ %167, %166 ], [ -1, %160 ]
  %170 = icmp ult i32 %164, 32
  %171 = sub nuw nsw i32 32, %164
  %172 = lshr i32 -1, %171
  %173 = select i1 %170, i32 %172, i32 -1
  %174 = and i32 %169, %173
  %175 = load i32, ptr %161, align 4
  %176 = xor i32 %174, -1
  %177 = and i32 %175, %176
  %178 = load i32, ptr %163, align 4
  %179 = and i32 %178, %174
  %180 = or i32 %179, %177
  %181 = icmp eq i32 %180, %175
  br i1 %181, label %183, label %182

182:                                              ; preds = %168
  store i32 %180, ptr %161, align 4
  store i8 1, ptr %5, align 1
  br label %183

183:                                              ; preds = %182, %168
  %184 = icmp ult i32 %164, 33
  br i1 %184, label %270, label %185

185:                                              ; preds = %183
  %186 = getelementptr i32, ptr %161, i32 1
  %187 = add i32 %164, -32
  %188 = getelementptr i32, ptr %163, i32 1
  %189 = getelementptr i32, ptr %162, i32 1
  %190 = select i1 %165, ptr null, ptr %189
  br label %160

191:                                              ; preds = %141
  br i1 %154, label %214, label %192

192:                                              ; preds = %210, %191
  %193 = phi ptr [ %211, %210 ], [ %0, %191 ]
  %194 = phi ptr [ %213, %210 ], [ %153, %191 ]
  %195 = phi i32 [ %212, %210 ], [ %150, %191 ]
  %196 = icmp ult i32 %195, 32
  %197 = sub nuw nsw i32 32, %195
  %198 = lshr i32 -1, %197
  %199 = select i1 %196, i32 %198, i32 -1
  %200 = load i32, ptr %193, align 4
  %201 = xor i32 %199, -1
  %202 = and i32 %200, %201
  %203 = load i32, ptr %194, align 4
  %204 = and i32 %203, %199
  %205 = or i32 %204, %202
  %206 = icmp eq i32 %205, %200
  br i1 %206, label %208, label %207

207:                                              ; preds = %192
  store i32 %205, ptr %193, align 4
  store i8 1, ptr %5, align 1
  br label %208

208:                                              ; preds = %207, %192
  %209 = icmp ult i32 %195, 33
  br i1 %209, label %214, label %210

210:                                              ; preds = %208
  %211 = getelementptr i32, ptr %193, i32 1
  %212 = add i32 %195, -32
  %213 = getelementptr i32, ptr %194, i32 1
  br label %192

214:                                              ; preds = %208, %191
  br i1 %149, label %215, label %270

215:                                              ; preds = %214
  %216 = lshr i32 %150, 5
  %217 = lshr i32 %1, 5
  %218 = and i32 %150, 31
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %242, label %220

220:                                              ; preds = %215
  %221 = shl nsw i32 -1, %218
  %222 = icmp eq i32 %217, %216
  br i1 %222, label %223, label %232

223:                                              ; preds = %220
  %224 = and i32 %1, 31
  %225 = sub nuw nsw i32 32, %224
  %226 = lshr i32 -1, %225
  %227 = and i32 %221, %226
  %228 = getelementptr i32, ptr %0, i32 %217
  %229 = load i32, ptr %228, align 4
  %230 = and i32 %229, %227
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %270, label %264

232:                                              ; preds = %220
  %233 = getelementptr i32, ptr %0, i32 %216
  %234 = load i32, ptr %233, align 4
  %235 = and i32 %234, %221
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %232
  %238 = xor i32 %221, -1
  %239 = and i32 %234, %238
  store i32 %239, ptr %233, align 4
  store i8 1, ptr %5, align 1
  br label %240

240:                                              ; preds = %237, %232
  %241 = add nuw nsw i32 %216, 1
  br label %242

242:                                              ; preds = %240, %215
  %243 = phi i32 [ %241, %240 ], [ %216, %215 ]
  %244 = icmp ult i32 %243, %217
  br i1 %244, label %245, label %254

245:                                              ; preds = %251, %242
  %246 = phi i32 [ %252, %251 ], [ %243, %242 ]
  %247 = getelementptr i32, ptr %0, i32 %246
  %248 = load i32, ptr %247, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %245
  store i32 0, ptr %247, align 4
  store i8 1, ptr %5, align 1
  br label %251

251:                                              ; preds = %250, %245
  %252 = add nuw nsw i32 %246, 1
  %253 = icmp eq i32 %252, %217
  br i1 %253, label %254, label %245

254:                                              ; preds = %251, %242
  %255 = and i32 %1, 31
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %270, label %257

257:                                              ; preds = %254
  %258 = sub nuw nsw i32 32, %255
  %259 = lshr i32 -1, %258
  %260 = getelementptr i32, ptr %0, i32 %217
  %261 = load i32, ptr %260, align 4
  %262 = and i32 %261, %259
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %270, label %264

264:                                              ; preds = %257, %223
  %265 = phi i32 [ %227, %223 ], [ %259, %257 ]
  %266 = phi i32 [ %229, %223 ], [ %261, %257 ]
  %267 = phi ptr [ %228, %223 ], [ %260, %257 ]
  %268 = xor i32 %265, -1
  %269 = and i32 %266, %268
  store i32 %269, ptr %267, align 4
  store i8 1, ptr %5, align 1
  br label %270

270:                                              ; preds = %264, %257, %254, %223, %214, %183, %155, %138, %130, %128, %89, %82, %47, %45, %37, %35, %20, %17, %15, %6
  %271 = phi i32 [ 0, %6 ], [ %25, %20 ], [ %139, %138 ], [ 0, %214 ], [ -22, %37 ], [ -22, %35 ], [ -22, %47 ], [ -22, %45 ], [ %129, %128 ], [ 0, %82 ], [ 0, %155 ], [ 0, %223 ], [ 0, %254 ], [ 0, %257 ], [ 0, %264 ], [ -22, %17 ], [ -22, %15 ], [ 0, %183 ], [ 0, %89 ], [ 0, %130 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #8
  ret i32 %271
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethnl_compact_sanity_checks(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef writeonly %3) unnamed_addr #2 {
  %5 = getelementptr ptr, ptr %2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr ptr, ptr %2, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_compact_sanity_checks.__msg) #8
  %13 = icmp eq ptr %3, null
  br i1 %13, label %116, label %14

14:                                               ; preds = %12
  store ptr @ethnl_compact_sanity_checks.__msg, ptr %3, align 4
  %15 = load ptr, ptr %9, align 4
  br label %112

16:                                               ; preds = %8, %4
  %17 = getelementptr ptr, ptr %2, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_compact_sanity_checks.__msg.5) #8
  %21 = icmp eq ptr %3, null
  br i1 %21, label %116, label %22

22:                                               ; preds = %20
  store ptr @ethnl_compact_sanity_checks.__msg.5, ptr %3, align 4
  br label %112

23:                                               ; preds = %16
  %24 = getelementptr ptr, ptr %2, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_compact_sanity_checks.__msg.6) #8
  %28 = icmp eq ptr %3, null
  br i1 %28, label %116, label %29

29:                                               ; preds = %27
  store ptr @ethnl_compact_sanity_checks.__msg.6, ptr %3, align 4
  br label %112

30:                                               ; preds = %23
  br i1 %7, label %31, label %38

31:                                               ; preds = %30
  %32 = getelementptr ptr, ptr %2, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_compact_sanity_checks.__msg.7) #8
  %36 = icmp eq ptr %3, null
  br i1 %36, label %116, label %37

37:                                               ; preds = %35
  store ptr @ethnl_compact_sanity_checks.__msg.7, ptr %3, align 4
  br label %112

38:                                               ; preds = %31, %30
  %39 = getelementptr i8, ptr %18, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 31
  %42 = load i16, ptr %25, align 2
  %43 = zext i16 %42 to i32
  %44 = add nsw i32 %43, -4
  %45 = lshr i32 %41, 3
  %46 = and i32 %45, 536870908
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %38
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_compact_sanity_checks.__msg.8) #8
  %49 = icmp eq ptr %3, null
  br i1 %49, label %116, label %50

50:                                               ; preds = %48
  store ptr @ethnl_compact_sanity_checks.__msg.8, ptr %3, align 4
  %51 = load ptr, ptr %24, align 4
  br label %112

52:                                               ; preds = %38
  %53 = getelementptr ptr, ptr %2, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = load i16, ptr %54, align 2
  %58 = icmp eq i16 %57, %42
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_compact_sanity_checks.__msg.9) #8
  %60 = icmp eq ptr %3, null
  br i1 %60, label %116, label %61

61:                                               ; preds = %59
  store ptr @ethnl_compact_sanity_checks.__msg.9, ptr %3, align 4
  %62 = load ptr, ptr %53, align 4
  br label %112

63:                                               ; preds = %56, %52
  %64 = icmp ugt i32 %40, %0
  br i1 %64, label %65, label %116

65:                                               ; preds = %63
  %66 = select i1 %7, ptr %53, ptr %24
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 4
  %69 = lshr i32 %0, 5
  %70 = lshr i32 %40, 5
  %71 = and i32 %0, 31
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %65
  %74 = shl nsw i32 -1, %71
  %75 = icmp eq i32 %70, %69
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = and i32 %40, 31
  %78 = sub nuw nsw i32 32, %77
  %79 = lshr i32 -1, %78
  %80 = and i32 %79, %74
  %81 = getelementptr i32, ptr %68, i32 %69
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %80, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %116, label %109

85:                                               ; preds = %73
  %86 = getelementptr i32, ptr %68, i32 %69
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, %74
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %85
  %91 = add nuw nsw i32 %69, 1
  br label %92

92:                                               ; preds = %90, %65
  %93 = phi i32 [ %91, %90 ], [ %69, %65 ]
  %94 = getelementptr i32, ptr %68, i32 %93
  %95 = sub nsw i32 %70, %93
  %96 = shl nsw i32 %95, 2
  %97 = tail call ptr @memchr_inv(ptr noundef %94, i32 noundef 0, i32 noundef %96) #8
  %98 = icmp eq ptr %97, null
  %99 = and i32 %40, 31
  %100 = icmp eq i32 %99, 0
  %101 = or i1 %100, %98
  br i1 %101, label %109, label %102

102:                                              ; preds = %92
  %103 = getelementptr i32, ptr %68, i32 %70
  %104 = load i32, ptr %103, align 4
  %105 = sub nuw nsw i32 32, %99
  %106 = lshr i32 -1, %105
  %107 = and i32 %104, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %102, %92, %85, %76
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_compact_sanity_checks.__msg.10) #8
  %110 = icmp eq ptr %3, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %109
  store ptr @ethnl_compact_sanity_checks.__msg.10, ptr %3, align 4
  br label %112

112:                                              ; preds = %111, %61, %50, %37, %29, %22, %14
  %113 = phi ptr [ %67, %111 ], [ %62, %61 ], [ %51, %50 ], [ %1, %37 ], [ %1, %29 ], [ %1, %22 ], [ %15, %14 ]
  %114 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 1
  store ptr %113, ptr %114, align 4
  %115 = getelementptr inbounds %struct.netlink_ext_ack, ptr %3, i32 0, i32 2
  store ptr null, ptr %115, align 4
  br label %116

116:                                              ; preds = %112, %109, %102, %76, %63, %59, %48, %35, %27, %20, %12
  %117 = phi i32 [ -22, %12 ], [ -22, %20 ], [ -22, %27 ], [ -22, %35 ], [ -22, %48 ], [ -22, %59 ], [ 0, %63 ], [ -22, %109 ], [ 0, %102 ], [ 0, %76 ], [ -22, %112 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_parse_bitset(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 {
  %7 = alloca [6 x ptr], align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  %10 = icmp eq ptr %3, null
  br i1 %10, label %156, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.nlattr, ptr %3, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = icmp sgt i16 %13, -1
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #8
  %16 = icmp eq ptr %5, null
  br i1 %16, label %156, label %17

17:                                               ; preds = %15
  store ptr @nla_parse_nested.__msg, ptr %5, align 4
  %18 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 1
  store ptr %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 2
  store ptr null, ptr %19, align 4
  br label %156

20:                                               ; preds = %11
  %21 = getelementptr i8, ptr %3, i32 4
  %22 = load i16, ptr %3, align 2
  %23 = zext i16 %22 to i32
  %24 = add nsw i32 %23, -4
  %25 = call i32 @__nla_parse(ptr noundef nonnull %7, i32 noundef 5, ptr noundef %21, i32 noundef %24, ptr noundef nonnull @bitset_policy, i32 noundef 31, ptr noundef %5) #8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %156, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds [6 x ptr], ptr %7, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp ne ptr %29, null
  %31 = getelementptr inbounds [6 x ptr], ptr %7, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %83

34:                                               ; preds = %27
  %35 = call fastcc i32 @ethnl_compact_sanity_checks(i32 noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %5)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %156, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds [6 x ptr], ptr %7, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = call i32 @llvm.umin.i32(i32 %41, i32 %2)
  %43 = getelementptr inbounds [6 x ptr], ptr %7, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 4
  %46 = add i32 %42, 31
  %47 = lshr i32 %46, 3
  %48 = and i32 %47, 536870908
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %0, ptr align 4 %45, i32 %48, i1 false) #8
  %49 = and i32 %42, 31
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %37
  %52 = sub i32 0, %42
  %53 = and i32 %52, 31
  %54 = lshr i32 -1, %53
  %55 = lshr i32 %42, 5
  %56 = getelementptr i32, ptr %0, i32 %55
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, ptr %56, align 4
  br label %59

59:                                               ; preds = %51, %37
  %60 = icmp ult i32 %41, %2
  br i1 %60, label %61, label %63

61:                                               ; preds = %59
  %62 = sub i32 %2, %42
  call void @__bitmap_clear(ptr noundef %0, i32 noundef %42, i32 noundef %62) #8
  br label %63

63:                                               ; preds = %61, %59
  br i1 %30, label %64, label %68

64:                                               ; preds = %63
  %65 = add i32 %2, 31
  %66 = lshr i32 %65, 3
  %67 = and i32 %66, 536870908
  call void @llvm.memset.p0.i32(ptr align 4 %1, i8 -1, i32 %67, i1 false) #8
  br label %156

68:                                               ; preds = %63
  %69 = getelementptr inbounds [6 x ptr], ptr %7, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %1, ptr align 4 %71, i32 %48, i1 false) #8
  br i1 %50, label %80, label %72

72:                                               ; preds = %68
  %73 = sub i32 0, %42
  %74 = and i32 %73, 31
  %75 = lshr i32 -1, %74
  %76 = lshr i32 %42, 5
  %77 = getelementptr i32, ptr %1, i32 %76
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, ptr %77, align 4
  br label %80

80:                                               ; preds = %72, %68
  br i1 %60, label %81, label %156

81:                                               ; preds = %80
  %82 = sub i32 %2, %42
  call void @__bitmap_clear(ptr noundef %1, i32 noundef %42, i32 noundef %82) #8
  br label %156

83:                                               ; preds = %27
  %84 = getelementptr inbounds [6 x ptr], ptr %7, i32 0, i32 4
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_bitset.__msg) #8
  %88 = icmp eq ptr %5, null
  br i1 %88, label %156, label %89

89:                                               ; preds = %87
  store ptr @ethnl_parse_bitset.__msg, ptr %5, align 4
  %90 = load ptr, ptr %84, align 4
  %91 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 1
  store ptr %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 2
  store ptr null, ptr %92, align 4
  br label %156

93:                                               ; preds = %83
  %94 = getelementptr inbounds [6 x ptr], ptr %7, i32 0, i32 5
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_bitset.__msg.1) #8
  %98 = icmp eq ptr %5, null
  br i1 %98, label %156, label %99

99:                                               ; preds = %97
  store ptr @ethnl_parse_bitset.__msg.1, ptr %5, align 4
  %100 = load ptr, ptr %94, align 4
  %101 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 1
  store ptr %100, ptr %101, align 4
  %102 = getelementptr inbounds %struct.netlink_ext_ack, ptr %5, i32 0, i32 2
  store ptr null, ptr %102, align 4
  br label %156

103:                                              ; preds = %93
  %104 = add i32 %2, 31
  %105 = lshr i32 %104, 3
  %106 = and i32 %105, 536870908
  call void @llvm.memset.p0.i32(ptr align 4 %0, i8 0, i32 %106, i1 false) #8
  br i1 %30, label %107, label %108

107:                                              ; preds = %103
  call void @llvm.memset.p0.i32(ptr align 4 %1, i8 -1, i32 %106, i1 false) #8
  br label %109

108:                                              ; preds = %103
  call void @llvm.memset.p0.i32(ptr align 4 %1, i8 0, i32 %106, i1 false) #8
  br label %109

109:                                              ; preds = %108, %107
  %110 = load i16, ptr %32, align 2
  %111 = icmp ugt i16 %110, 7
  br i1 %111, label %112, label %156

112:                                              ; preds = %109
  %113 = zext i16 %110 to i32
  %114 = add nsw i32 %113, -4
  %115 = getelementptr i8, ptr %32, i32 4
  br label %116

116:                                              ; preds = %148, %112
  %117 = phi ptr [ %154, %148 ], [ %115, %112 ]
  %118 = phi i32 [ %153, %148 ], [ %114, %112 ]
  %119 = load i16, ptr %117, align 2
  %120 = icmp ult i16 %119, 4
  %121 = zext i16 %119 to i32
  %122 = icmp ult i32 %118, %121
  %123 = select i1 %120, i1 true, i1 %122
  br i1 %123, label %156, label %124

124:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #8
  store i8 0, ptr %9, align 1, !annotation !9
  %125 = call fastcc i32 @ethnl_parse_bit(ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %2, ptr noundef %117, i1 noundef zeroext %30, ptr noundef %4, ptr noundef %5)
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %147, label %127

127:                                              ; preds = %124
  %128 = load i8, ptr %9, align 1, !range !10
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %127
  %131 = load i32, ptr %8, align 4
  %132 = and i32 %131, 31
  %133 = shl nuw i32 1, %132
  %134 = lshr i32 %131, 5
  %135 = getelementptr i32, ptr %0, i32 %134
  %136 = load i32, ptr %135, align 4
  %137 = or i32 %133, %136
  store i32 %137, ptr %135, align 4
  br label %138

138:                                              ; preds = %130, %127
  br i1 %30, label %148, label %139

139:                                              ; preds = %138
  %140 = load i32, ptr %8, align 4
  %141 = and i32 %140, 31
  %142 = shl nuw i32 1, %141
  %143 = lshr i32 %140, 5
  %144 = getelementptr i32, ptr %1, i32 %143
  %145 = load i32, ptr %144, align 4
  %146 = or i32 %142, %145
  store i32 %146, ptr %144, align 4
  br label %148

147:                                              ; preds = %124
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %156

148:                                              ; preds = %139, %138
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  %149 = load i16, ptr %117, align 2
  %150 = zext i16 %149 to i32
  %151 = add nuw nsw i32 %150, 3
  %152 = and i32 %151, 131068
  %153 = sub nsw i32 %118, %152
  %154 = getelementptr i8, ptr %117, i32 %152
  %155 = icmp sgt i32 %153, 3
  br i1 %155, label %116, label %156

156:                                              ; preds = %148, %147, %116, %109, %99, %97, %89, %87, %81, %80, %64, %34, %20, %17, %15, %6
  %157 = phi i32 [ %125, %147 ], [ 0, %6 ], [ %25, %20 ], [ %35, %34 ], [ 0, %80 ], [ 0, %64 ], [ -22, %89 ], [ -22, %87 ], [ -22, %99 ], [ -22, %97 ], [ 0, %81 ], [ -22, %17 ], [ -22, %15 ], [ 0, %109 ], [ 0, %148 ], [ 0, %116 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  ret i32 %157
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethnl_parse_bit(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef readonly %5, ptr noundef %6) unnamed_addr #2 {
  %8 = alloca [4 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i32 16, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.nlattr, ptr %3, i32 0, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = icmp sgt i16 %10, -1
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #8
  %13 = icmp eq ptr %6, null
  br i1 %13, label %99, label %14

14:                                               ; preds = %12
  store ptr @nla_parse_nested.__msg, ptr %6, align 4
  %15 = getelementptr inbounds %struct.netlink_ext_ack, ptr %6, i32 0, i32 1
  store ptr %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.netlink_ext_ack, ptr %6, i32 0, i32 2
  store ptr null, ptr %16, align 4
  br label %99

17:                                               ; preds = %7
  %18 = getelementptr i8, ptr %3, i32 4
  %19 = load i16, ptr %3, align 2
  %20 = zext i16 %19 to i32
  %21 = add nsw i32 %20, -4
  %22 = call i32 @__nla_parse(ptr noundef nonnull %8, i32 noundef 3, ptr noundef %18, i32 noundef %21, ptr noundef nonnull @bit_policy, i32 noundef 31, ptr noundef %6) #8
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %99, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds [4 x ptr], ptr %8, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %59, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %26, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %30, %2
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_bit.__msg) #8
  %33 = icmp eq ptr %6, null
  br i1 %33, label %99, label %34

34:                                               ; preds = %32
  store ptr @ethnl_parse_bit.__msg, ptr %6, align 4
  %35 = load ptr, ptr %25, align 4
  %36 = getelementptr inbounds %struct.netlink_ext_ack, ptr %6, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.netlink_ext_ack, ptr %6, i32 0, i32 2
  store ptr null, ptr %37, align 4
  br label %99

38:                                               ; preds = %28
  %39 = icmp eq ptr %5, null
  %40 = getelementptr [32 x i8], ptr %5, i32 %30
  %41 = select i1 %39, ptr null, ptr %40
  %42 = getelementptr inbounds [4 x ptr], ptr %8, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = icmp ne ptr %43, null
  %45 = icmp ne ptr %41, null
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %92

47:                                               ; preds = %38
  %48 = getelementptr i8, ptr %43, i32 4
  %49 = load i16, ptr %43, align 2
  %50 = zext i16 %49 to i32
  %51 = add nsw i32 %50, -4
  %52 = call i32 @strncmp(ptr noundef %48, ptr noundef nonnull %41, i32 noundef %51)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %92, label %54

54:                                               ; preds = %47
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_bit.__msg.11) #8
  %55 = icmp eq ptr %6, null
  br i1 %55, label %99, label %56

56:                                               ; preds = %54
  store ptr @ethnl_parse_bit.__msg.11, ptr %6, align 4
  %57 = getelementptr inbounds %struct.netlink_ext_ack, ptr %6, i32 0, i32 1
  store ptr %3, ptr %57, align 4
  %58 = getelementptr inbounds %struct.netlink_ext_ack, ptr %6, i32 0, i32 2
  store ptr null, ptr %58, align 4
  br label %99

59:                                               ; preds = %24
  %60 = getelementptr inbounds [4 x ptr], ptr %8, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %87, label %63

63:                                               ; preds = %59
  %64 = getelementptr i8, ptr %61, i32 4
  %65 = icmp ne ptr %5, null
  %66 = icmp ne i32 %2, 0
  %67 = and i1 %66, %65
  br i1 %67, label %68, label %81

68:                                               ; preds = %76, %63
  %69 = phi i32 [ %77, %76 ], [ 0, %63 ]
  %70 = getelementptr [32 x i8], ptr %5, i32 %69
  %71 = call i32 @strncmp(ptr noundef %70, ptr noundef %64, i32 noundef 32) #8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = call i32 @strlen(ptr noundef %64) #8
  %75 = icmp ult i32 %74, 33
  br i1 %75, label %79, label %76

76:                                               ; preds = %73, %68
  %77 = add nuw i32 %69, 1
  %78 = icmp eq i32 %77, %2
  br i1 %78, label %81, label %68

79:                                               ; preds = %73
  %80 = icmp slt i32 %69, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %79, %76, %63
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_bit.__msg.12) #8
  %82 = icmp eq ptr %6, null
  br i1 %82, label %99, label %83

83:                                               ; preds = %81
  store ptr @ethnl_parse_bit.__msg.12, ptr %6, align 4
  %84 = load ptr, ptr %60, align 4
  %85 = getelementptr inbounds %struct.netlink_ext_ack, ptr %6, i32 0, i32 1
  store ptr %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.netlink_ext_ack, ptr %6, i32 0, i32 2
  store ptr null, ptr %86, align 4
  br label %99

87:                                               ; preds = %59
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_parse_bit.__msg.13) #8
  %88 = icmp eq ptr %6, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %87
  store ptr @ethnl_parse_bit.__msg.13, ptr %6, align 4
  %90 = getelementptr inbounds %struct.netlink_ext_ack, ptr %6, i32 0, i32 1
  store ptr %3, ptr %90, align 4
  %91 = getelementptr inbounds %struct.netlink_ext_ack, ptr %6, i32 0, i32 2
  store ptr null, ptr %91, align 4
  br label %99

92:                                               ; preds = %79, %47, %38
  %93 = phi i32 [ %69, %79 ], [ %30, %38 ], [ %30, %47 ]
  store i32 %93, ptr %0, align 4
  %94 = getelementptr inbounds [4 x ptr], ptr %8, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = icmp ne ptr %95, null
  %97 = select i1 %4, i1 true, i1 %96
  %98 = zext i1 %97 to i8
  store i8 %98, ptr %1, align 1
  br label %99

99:                                               ; preds = %92, %89, %87, %83, %81, %56, %54, %34, %32, %17, %14, %12
  %100 = phi i32 [ 0, %92 ], [ %22, %17 ], [ -95, %83 ], [ -95, %81 ], [ -22, %89 ], [ -22, %87 ], [ -22, %14 ], [ -22, %12 ], [ -22, %54 ], [ -22, %56 ], [ -95, %32 ], [ -95, %34 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  ret i32 %100
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ethnl_bitset_size(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef readonly %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %1, null
  br i1 %4, label %12, label %7

7:                                                ; preds = %5
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %56, label %9

9:                                                ; preds = %7
  %10 = icmp eq ptr %3, null
  %11 = select i1 %6, ptr %0, ptr %1
  br label %20

12:                                               ; preds = %5
  %13 = add i32 %2, 31
  %14 = select i1 %6, i32 1, i32 2
  %15 = lshr i32 %13, 3
  %16 = and i32 %15, 536870908
  %17 = add nuw nsw i32 %16, 7
  %18 = and i32 %17, 1073741820
  %19 = mul nuw nsw i32 %18, %14
  br label %60

20:                                               ; preds = %52, %9
  %21 = phi i32 [ 0, %9 ], [ %54, %52 ]
  %22 = phi i32 [ 0, %9 ], [ %53, %52 ]
  %23 = getelementptr [32 x i8], ptr %3, i32 %21
  %24 = select i1 %10, ptr null, ptr %23
  %25 = lshr i32 %21, 5
  %26 = getelementptr i32, ptr %11, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %21, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %20
  %33 = icmp eq ptr %24, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %32
  %35 = tail call i32 @strnlen(ptr noundef nonnull %24, i32 noundef 32) #8
  %36 = add i32 %35, 16
  %37 = and i32 %36, -4
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi i32 [ %37, %34 ], [ 8, %32 ]
  br i1 %6, label %47, label %40

40:                                               ; preds = %38
  %41 = getelementptr i32, ptr %0, i32 %25
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, %29
  %44 = icmp eq i32 %43, 0
  %45 = add i32 %39, 4
  %46 = select i1 %44, i32 %39, i32 %45
  br label %47

47:                                               ; preds = %40, %38
  %48 = phi i32 [ %39, %38 ], [ %46, %40 ]
  %49 = add i32 %48, 7
  %50 = and i32 %49, -4
  %51 = add i32 %50, %22
  br label %52

52:                                               ; preds = %47, %20
  %53 = phi i32 [ %51, %47 ], [ %22, %20 ]
  %54 = add nuw i32 %21, 1
  %55 = icmp eq i32 %54, %2
  br i1 %55, label %56, label %20

56:                                               ; preds = %52, %7
  %57 = phi i32 [ 0, %7 ], [ %53, %52 ]
  %58 = add i32 %57, 7
  %59 = and i32 %58, -4
  br label %60

60:                                               ; preds = %56, %12
  %61 = phi i32 [ %19, %12 ], [ %59, %56 ]
  %62 = select i1 %6, i32 23, i32 15
  %63 = add i32 %61, %62
  %64 = and i32 %63, -4
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_put_bitset(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #2 {
  %8 = tail call i32 @ethnl_put_bitset32(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i1 noundef zeroext %6)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethnl_update_bitset(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #2 {
  %7 = tail call i32 @ethnl_update_bitset32(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
