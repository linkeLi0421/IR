; ModuleID = '/llk/IR/net/netlink/policy.c_pt.bc'
source_filename = "../net/netlink/policy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.netlink_policy_dump_state = type { i32, i32, i32, [0 x %struct.anon] }
%struct.anon = type { ptr, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.netlink_range_validation = type { i64, i64 }
%struct.netlink_range_validation_signed = type { i64, i64 }
%struct.sk_buff = type { %union.anon.1, %union.anon.4, %union.anon.5, [48 x i8], %union.anon.6, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.8, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, ptr, %union.anon.3 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { i64 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { i32, ptr }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.10, i32, i32, i32, i16, i16, %union.anon.12, %union.anon.13, %union.anon.14, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.10 = type { i32 }
%union.anon.12 = type { i32 }
%union.anon.13 = type { i32 }
%union.anon.14 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"net/netlink/policy.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@switch.table.__netlink_policy_dump_write_attr = private unnamed_addr constant [16 x i32] [i32 48, i32 48, i32 48, i32 48, i32 32, i32 16, i32 48, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 24], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netlink_policy_dump_get_policy_idx(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  %5 = icmp eq i32 %2, 0
  %6 = or i1 %4, %5
  br i1 %6, label %23, label %7, !prof !8

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %20, %7
  %12 = phi i32 [ %21, %20 ], [ 0, %7 ]
  %13 = getelementptr %struct.netlink_policy_dump_state, ptr %0, i32 0, i32 3, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr %struct.netlink_policy_dump_state, ptr %0, i32 0, i32 3, i32 %12, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %25, label %20

20:                                               ; preds = %16, %11
  %21 = add nuw i32 %12, 1
  %22 = icmp eq i32 %21, %9
  br i1 %22, label %23, label %11

23:                                               ; preds = %20, %7, %3
  %24 = phi i32 [ 87, %3 ], [ 96, %7 ], [ 96, %20 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %24, i32 noundef 9, ptr noundef null) #8
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i32 [ 0, %23 ], [ %12, %16 ]
  ret i32 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netlink_policy_dump_add_policy(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 92) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %8, i32 0, i32 2
  store i32 10, ptr %11, align 8
  %12 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %8, %10 ], [ inttoptr (i32 -12 to ptr), %6 ]
  %15 = ptrtoint ptr %14 to i32
  br label %143

16:                                               ; preds = %10, %3
  %17 = phi ptr [ %8, %10 ], [ %4, %3 ]
  %18 = icmp ne ptr %1, null
  %19 = icmp ne i32 %2, 0
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %17, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %38, %21
  %26 = phi i32 [ %39, %38 ], [ 0, %21 ]
  %27 = getelementptr %struct.netlink_policy_dump_state, ptr %17, i32 0, i32 3, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr %struct.netlink_policy_dump_state, ptr %17, i32 0, i32 3, i32 %26, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %2
  br i1 %33, label %62, label %34

34:                                               ; preds = %30, %25
  %35 = icmp eq ptr %28, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  store ptr %1, ptr %27, align 4
  %37 = getelementptr %struct.netlink_policy_dump_state, ptr %17, i32 0, i32 3, i32 %26, i32 1
  store i32 %2, ptr %37, align 4
  br label %62

38:                                               ; preds = %34
  %39 = add nuw i32 %26, 1
  %40 = icmp eq i32 %39, %23
  br i1 %40, label %41, label %25

41:                                               ; preds = %38, %21
  %42 = add i32 %23, 10
  %43 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %42, i32 8) #8
  %44 = extractvalue { i32, i1 } %43, 1
  %45 = extractvalue { i32, i1 } %43, 0
  %46 = tail call i32 @llvm.uadd.sat.i32(i32 %45, i32 12) #8
  %47 = select i1 %44, i32 -1, i32 %46
  %48 = tail call noalias ptr @krealloc(ptr noundef %17, i32 noundef %47, i32 noundef 3264) #10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %143, label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %48, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr %struct.netlink_policy_dump_state, ptr %48, i32 0, i32 3, i32 %52
  %54 = sub i32 %42, %52
  %55 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %54, i32 8) #8
  %56 = extractvalue { i32, i1 } %55, 1
  %57 = extractvalue { i32, i1 } %55, 0
  %58 = select i1 %56, i32 -1, i32 %57
  tail call void @llvm.memset.p0.i32(ptr align 4 %53, i8 0, i32 %58, i1 false) #8
  %59 = load i32, ptr %51, align 4
  %60 = getelementptr %struct.netlink_policy_dump_state, ptr %48, i32 0, i32 3, i32 %59
  store ptr %1, ptr %60, align 4
  %61 = getelementptr %struct.netlink_policy_dump_state, ptr %48, i32 0, i32 3, i32 %59, i32 1
  store i32 %2, ptr %61, align 4
  store i32 %42, ptr %51, align 4
  br label %62

62:                                               ; preds = %50, %36, %30, %16
  %63 = phi ptr [ %48, %50 ], [ %17, %36 ], [ %17, %16 ], [ %17, %30 ]
  %64 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %141, label %67

67:                                               ; preds = %136, %62
  %68 = phi i32 [ %137, %136 ], [ 0, %62 ]
  %69 = phi ptr [ %131, %136 ], [ %63, %62 ]
  %70 = getelementptr %struct.netlink_policy_dump_state, ptr %69, i32 0, i32 3, i32 %68
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %141, label %73

73:                                               ; preds = %130, %67
  %74 = phi i32 [ %132, %130 ], [ 0, %67 ]
  %75 = phi ptr [ %131, %130 ], [ %69, %67 ]
  %76 = getelementptr %struct.nla_policy, ptr %71, i32 %74
  %77 = load i8, ptr %76, align 4
  %78 = and i8 %77, -2
  %79 = icmp eq i8 %78, 8
  br i1 %79, label %80, label %130

80:                                               ; preds = %73
  %81 = getelementptr %struct.nla_policy, ptr %71, i32 %74, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr %struct.nla_policy, ptr %71, i32 %74, i32 2
  %84 = load i16, ptr %83, align 2
  %85 = zext i16 %84 to i32
  %86 = icmp ne ptr %82, null
  %87 = icmp ne i16 %84, 0
  %88 = and i1 %86, %87
  br i1 %88, label %89, label %130

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %75, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %106, %89
  %94 = phi i32 [ %107, %106 ], [ 0, %89 ]
  %95 = getelementptr %struct.netlink_policy_dump_state, ptr %75, i32 0, i32 3, i32 %94
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, %82
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = getelementptr %struct.netlink_policy_dump_state, ptr %75, i32 0, i32 3, i32 %94, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, %85
  br i1 %101, label %130, label %102

102:                                              ; preds = %98, %93
  %103 = icmp eq ptr %96, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %102
  store ptr %82, ptr %95, align 4
  %105 = getelementptr %struct.netlink_policy_dump_state, ptr %75, i32 0, i32 3, i32 %94, i32 1
  store i32 %85, ptr %105, align 4
  br label %130

106:                                              ; preds = %102
  %107 = add nuw i32 %94, 1
  %108 = icmp eq i32 %107, %91
  br i1 %108, label %109, label %93

109:                                              ; preds = %106, %89
  %110 = add i32 %91, 10
  %111 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %110, i32 8) #8
  %112 = extractvalue { i32, i1 } %111, 1
  %113 = extractvalue { i32, i1 } %111, 0
  %114 = tail call i32 @llvm.uadd.sat.i32(i32 %113, i32 12) #8
  %115 = select i1 %112, i32 -1, i32 %114
  %116 = tail call noalias ptr @krealloc(ptr noundef %75, i32 noundef %115, i32 noundef 3264) #10
  %117 = icmp eq ptr %116, null
  br i1 %117, label %143, label %118

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %116, i32 0, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr %struct.netlink_policy_dump_state, ptr %116, i32 0, i32 3, i32 %120
  %122 = sub i32 %110, %120
  %123 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %122, i32 8) #8
  %124 = extractvalue { i32, i1 } %123, 1
  %125 = extractvalue { i32, i1 } %123, 0
  %126 = select i1 %124, i32 -1, i32 %125
  tail call void @llvm.memset.p0.i32(ptr align 4 %121, i8 0, i32 %126, i1 false) #8
  %127 = load i32, ptr %119, align 4
  %128 = getelementptr %struct.netlink_policy_dump_state, ptr %116, i32 0, i32 3, i32 %127
  store ptr %82, ptr %128, align 4
  %129 = getelementptr %struct.netlink_policy_dump_state, ptr %116, i32 0, i32 3, i32 %127, i32 1
  store i32 %85, ptr %129, align 4
  store i32 %110, ptr %119, align 4
  br label %130

130:                                              ; preds = %118, %104, %98, %80, %73
  %131 = phi ptr [ %75, %73 ], [ %75, %80 ], [ %75, %104 ], [ %116, %118 ], [ %75, %98 ]
  %132 = add i32 %74, 1
  %133 = getelementptr %struct.netlink_policy_dump_state, ptr %131, i32 0, i32 3, i32 %68, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = icmp ugt i32 %132, %134
  br i1 %135, label %136, label %73

136:                                              ; preds = %130
  %137 = add nuw i32 %68, 1
  %138 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %131, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = icmp ult i32 %137, %139
  br i1 %140, label %67, label %141

141:                                              ; preds = %136, %67, %62
  %142 = phi ptr [ %63, %62 ], [ %131, %136 ], [ %69, %67 ]
  store ptr %142, ptr %0, align 4
  br label %143

143:                                              ; preds = %141, %109, %41, %13
  %144 = phi i32 [ 0, %141 ], [ %15, %13 ], [ -12, %41 ], [ -12, %109 ]
  ret i32 %144
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @netlink_policy_dump_loop(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %2, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr %struct.netlink_policy_dump_state, ptr %0, i32 0, i32 3, i32 %2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ne ptr %8, null
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  ret i1 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @netlink_policy_dump_attr_size_estimate(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i8, ptr %0, align 4
  %3 = add i8 %2, -1
  %4 = icmp ult i8 %3, 16
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = sext i8 %3 to i32
  %7 = getelementptr inbounds [16 x i32], ptr @switch.table.__netlink_policy_dump_write_attr, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netlink_policy_dump_write_attr(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @__netlink_policy_dump_write_attr(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__netlink_policy_dump_write_attr(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.netlink_range_validation, align 8
  %18 = alloca %struct.netlink_range_validation_signed, align 8
  %19 = alloca %struct.netlink_range_validation, align 8
  %20 = load i8, ptr %2, align 4
  %21 = add i8 %20, -1
  %22 = icmp ult i8 %21, 16
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = sext i8 %21 to i32
  %25 = getelementptr inbounds [16 x i32], ptr @switch.table.__netlink_policy_dump_write_attr, i32 0, i32 %24
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %23, %4
  %28 = phi i32 [ 0, %4 ], [ %26, %23 ]
  %29 = or i32 %3, 32768
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %31 = load ptr, ptr %30, align 8
  %32 = tail call i32 @nla_put(ptr noundef %1, i32 noundef %29, i32 noundef 0, ptr noundef null) #8
  %33 = icmp slt i32 %32, 0
  %34 = icmp eq ptr %31, null
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %178, label %36

36:                                               ; preds = %27
  %37 = load i8, ptr %2, align 4
  switch i8 %37, label %38 [
    i8 6, label %154
    i8 11, label %120
    i8 8, label %49
    i8 9, label %50
    i8 1, label %73
    i8 2, label %73
    i8 3, label %73
    i8 4, label %73
    i8 7, label %73
    i8 12, label %100
    i8 13, label %100
    i8 14, label %100
    i8 15, label %100
    i8 16, label %115
    i8 5, label %120
    i8 10, label %120
  ]

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %40 = load ptr, ptr %39, align 4
  %41 = icmp ugt ptr %40, %31
  br i1 %41, label %42, label %44, !prof !8

42:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  %43 = load ptr, ptr %39, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi ptr [ %43, %42 ], [ %40, %38 ]
  %46 = ptrtoint ptr %31 to i32
  %47 = ptrtoint ptr %45 to i32
  %48 = sub i32 %46, %47
  tail call void @skb_trim(ptr noundef %1, i32 noundef %48) #8
  br label %178

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %36
  %51 = phi i32 [ 0, %36 ], [ 13, %49 ]
  %52 = icmp eq i8 %37, 9
  %53 = select i1 %52, i32 14, i32 %51
  %54 = icmp eq ptr %0, null
  br i1 %54, label %154, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.nla_policy, ptr %2, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %154, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.nla_policy, ptr %2, i32 0, i32 2
  %61 = load i16, ptr %60, align 2
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %154, label %63

63:                                               ; preds = %59
  %64 = zext i16 %61 to i32
  %65 = tail call i32 @netlink_policy_dump_get_policy_idx(ptr noundef nonnull %0, ptr noundef nonnull %57, i32 noundef %64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #8
  store i32 %65, ptr %16, align 4
  %66 = call i32 @nla_put(ptr noundef %1, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %167

68:                                               ; preds = %63
  %69 = load i16, ptr %60, align 2
  %70 = zext i16 %69 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  store i32 %70, ptr %15, align 4
  %71 = call i32 @nla_put(ptr noundef %1, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %154, label %167

73:                                               ; preds = %36, %36, %36, %36, %36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i32 16, i1 false), !annotation !9
  %74 = add i8 %37, -1
  %75 = icmp ult i8 %74, 3
  %76 = zext i8 %74 to i32
  %77 = add nuw nsw i32 %76, 2
  %78 = select i1 %75, i32 %77, i32 5
  %79 = getelementptr inbounds %struct.nla_policy, ptr %2, i32 0, i32 1
  %80 = load i8, ptr %79, align 1
  %81 = icmp eq i8 %80, 5
  br i1 %81, label %82, label %88

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.nla_policy, ptr %2, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = zext i32 %84 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  store i64 %85, ptr %14, align 8
  %86 = call i32 @nla_put_64bit(ptr noundef %1, i32 noundef 12, i32 noundef 8, ptr noundef nonnull %14, i32 noundef 11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %99, label %98

88:                                               ; preds = %73
  call void @nla_get_range_unsigned(ptr noundef %2, ptr noundef nonnull %17) #8
  %89 = load i64, ptr %17, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 %89, ptr %13, align 8
  %90 = call i32 @nla_put_64bit(ptr noundef %1, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %13, i32 noundef 11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #8
  br label %167

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.netlink_range_validation, ptr %17, i32 0, i32 1
  %95 = load i64, ptr %94, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 %95, ptr %12, align 8
  %96 = call i32 @nla_put_64bit(ptr noundef %1, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %12, i32 noundef 11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93, %82
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #8
  br label %167

99:                                               ; preds = %93, %82
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #8
  br label %154

100:                                              ; preds = %36, %36, %36, %36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i32 16, i1 false), !annotation !9
  call void @nla_get_range_signed(ptr noundef %2, ptr noundef nonnull %18) #8
  %101 = load i64, ptr %18, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 %101, ptr %11, align 8
  %102 = call i32 @nla_put_64bit(ptr noundef %1, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %11, i32 noundef 11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #8
  br label %167

105:                                              ; preds = %100
  %106 = add i8 %37, -12
  %107 = icmp ult i8 %106, 3
  %108 = zext i8 %106 to i32
  %109 = add nuw nsw i32 %108, 6
  %110 = select i1 %107, i32 %109, i32 9
  %111 = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %18, i32 0, i32 1
  %112 = load i64, ptr %111, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store i64 %112, ptr %10, align 8
  %113 = call i32 @nla_put_64bit(ptr noundef %1, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %10, i32 noundef 11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  %114 = icmp eq i32 %113, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #8
  br i1 %114, label %154, label %167

115:                                              ; preds = %36
  %116 = getelementptr inbounds %struct.nla_policy, ptr %2, i32 0, i32 3
  %117 = load i32, ptr %116, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 %117, ptr %9, align 4
  %118 = call i32 @nla_put(ptr noundef %1, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %154, label %167

120:                                              ; preds = %36, %36, %36
  %121 = icmp eq i8 %37, 10
  %122 = select i1 %121, i32 12, i32 10
  %123 = icmp eq i8 %37, 5
  %124 = select i1 %123, i32 11, i32 %122
  %125 = getelementptr inbounds %struct.nla_policy, ptr %2, i32 0, i32 1
  %126 = load i8, ptr %125, align 1
  %127 = add i8 %126, -1
  %128 = icmp ult i8 %127, 2
  br i1 %128, label %129, label %146

129:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i32 16, i1 false), !annotation !9
  call void @nla_get_range_unsigned(ptr noundef %2, ptr noundef nonnull %19) #8
  %130 = load i64, ptr %19, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = trunc i64 %130 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 %133, ptr %8, align 4
  %134 = call i32 @nla_put(ptr noundef %1, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %132, %129
  %137 = getelementptr inbounds %struct.netlink_range_validation, ptr %19, i32 0, i32 1
  %138 = load i64, ptr %137, align 8
  %139 = icmp ult i64 %138, 65535
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = trunc i64 %138 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 %141, ptr %7, align 4
  %142 = call i32 @nla_put(ptr noundef %1, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %140, %132
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #8
  br label %167

145:                                              ; preds = %140, %136
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #8
  br label %154

146:                                              ; preds = %120
  %147 = getelementptr inbounds %struct.nla_policy, ptr %2, i32 0, i32 2
  %148 = load i16, ptr %147, align 2
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = zext i16 %148 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 %151, ptr %6, align 4
  %152 = call i32 @nla_put(ptr noundef %1, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %150, %146, %145, %115, %105, %99, %68, %59, %55, %50, %36
  %155 = phi i32 [ 15, %115 ], [ %110, %105 ], [ %78, %99 ], [ %53, %68 ], [ %53, %59 ], [ %53, %55 ], [ %53, %50 ], [ %124, %145 ], [ %124, %150 ], [ %124, %146 ], [ 1, %36 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 %155, ptr %5, align 4
  %156 = call i32 @nla_put(ptr noundef %1, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %154
  %159 = load ptr, ptr %30, align 8
  %160 = ptrtoint ptr %159 to i32
  %161 = ptrtoint ptr %31 to i32
  %162 = sub i32 %160, %161
  %163 = trunc i32 %162 to i16
  store i16 %163, ptr %31, align 2
  %164 = and i32 %162, 65535
  %165 = icmp ult i32 %28, %164
  br i1 %165, label %166, label %178, !prof !8

166:                                              ; preds = %158
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 379, i32 noundef 9, ptr noundef null) #8
  br label %178

167:                                              ; preds = %154, %150, %144, %115, %105, %104, %98, %92, %68, %63
  %168 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %169 = load ptr, ptr %168, align 4
  %170 = icmp ugt ptr %169, %31
  br i1 %170, label %171, label %173, !prof !8

171:                                              ; preds = %167
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  %172 = load ptr, ptr %168, align 4
  br label %173

173:                                              ; preds = %171, %167
  %174 = phi ptr [ %172, %171 ], [ %169, %167 ]
  %175 = ptrtoint ptr %31 to i32
  %176 = ptrtoint ptr %174 to i32
  %177 = sub i32 %175, %176
  call void @skb_trim(ptr noundef %1, i32 noundef %177) #8
  br label %178

178:                                              ; preds = %173, %166, %158, %44, %27
  %179 = phi i32 [ -61, %44 ], [ -105, %173 ], [ -105, %27 ], [ 0, %166 ], [ 0, %158 ]
  ret i32 %179
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @netlink_policy_dump_write(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %6 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr %struct.netlink_policy_dump_state, ptr %1, i32 0, i32 3, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %3, align 4
  br label %11

11:                                               ; preds = %59, %2
  %12 = phi i32 [ %55, %59 ], [ %10, %2 ]
  %13 = phi ptr [ %61, %59 ], [ %9, %2 ]
  %14 = phi i32 [ %54, %59 ], [ %7, %2 ]
  %15 = or i32 %14, 32768
  %16 = load ptr, ptr %4, align 8
  %17 = tail call i32 @nla_put(ptr noundef %0, i32 noundef %15, i32 noundef 0, ptr noundef null) #8
  %18 = icmp slt i32 %17, 0
  %19 = icmp eq ptr %16, null
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %73, label %21

21:                                               ; preds = %11
  %22 = getelementptr %struct.nla_policy, ptr %13, i32 %12
  %23 = load i32, ptr %3, align 4
  %24 = tail call fastcc i32 @__netlink_policy_dump_write_attr(ptr noundef %1, ptr noundef %0, ptr noundef %22, i32 noundef %23)
  %25 = icmp eq i32 %24, -61
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load ptr, ptr %5, align 4
  %28 = icmp ugt ptr %27, %16
  br i1 %28, label %29, label %31, !prof !8

29:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  %30 = load ptr, ptr %5, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi ptr [ %30, %29 ], [ %27, %26 ]
  %33 = ptrtoint ptr %16 to i32
  %34 = ptrtoint ptr %32 to i32
  %35 = sub i32 %33, %34
  tail call void @skb_trim(ptr noundef %0, i32 noundef %35) #8
  br label %44

36:                                               ; preds = %21
  %37 = icmp eq i32 %24, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %36
  %39 = load ptr, ptr %4, align 8
  %40 = ptrtoint ptr %39 to i32
  %41 = ptrtoint ptr %16 to i32
  %42 = sub i32 %40, %41
  %43 = trunc i32 %42 to i16
  store i16 %43, ptr %16, align 2
  br label %44

44:                                               ; preds = %38, %31
  %45 = load i32, ptr %3, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %3, align 4
  %47 = load i32, ptr %1, align 4
  %48 = getelementptr %struct.netlink_policy_dump_state, ptr %1, i32 0, i32 3, i32 %47, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %46, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  store i32 0, ptr %3, align 4
  %52 = add i32 %47, 1
  store i32 %52, ptr %1, align 4
  br label %53

53:                                               ; preds = %51, %44
  %54 = phi i32 [ %52, %51 ], [ %47, %44 ]
  %55 = phi i32 [ 0, %51 ], [ %46, %44 ]
  br i1 %25, label %56, label %73

56:                                               ; preds = %53
  %57 = load i32, ptr %6, align 4
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = getelementptr %struct.netlink_policy_dump_state, ptr %1, i32 0, i32 3, i32 %54
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %73, label %11

63:                                               ; preds = %36
  %64 = load ptr, ptr %5, align 4
  %65 = icmp ugt ptr %64, %16
  br i1 %65, label %66, label %68, !prof !8

66:                                               ; preds = %63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  %67 = load ptr, ptr %5, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi ptr [ %67, %66 ], [ %64, %63 ]
  %70 = ptrtoint ptr %16 to i32
  %71 = ptrtoint ptr %69 to i32
  %72 = sub i32 %70, %71
  tail call void @skb_trim(ptr noundef %0, i32 noundef %72) #8
  br label %73

73:                                               ; preds = %68, %59, %56, %53, %11
  %74 = phi i32 [ -105, %68 ], [ -61, %56 ], [ 0, %53 ], [ -61, %59 ], [ -105, %11 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @netlink_policy_dump_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nla_get_range_unsigned(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nla_get_range_signed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(1) }

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
