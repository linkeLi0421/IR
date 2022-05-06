; ModuleID = '/llk/IR/lib/dim/net_dim.c_pt.bc'
source_filename = "../lib/dim/net_dim.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_dim_get_rx_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22net_dim_get_rx_moderation\22\09\09\09\09\09"
module asm "__kstrtabns_net_dim_get_rx_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_dim_get_def_rx_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22net_dim_get_def_rx_moderation\22\09\09\09\09\09"
module asm "__kstrtabns_net_dim_get_def_rx_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_dim_get_tx_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22net_dim_get_tx_moderation\22\09\09\09\09\09"
module asm "__kstrtabns_net_dim_get_tx_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_dim_get_def_tx_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22net_dim_get_def_tx_moderation\22\09\09\09\09\09"
module asm "__kstrtabns_net_dim_get_def_tx_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_dim:\09\09\09\09\09"
module asm "\09.asciz \09\22net_dim\22\09\09\09\09\09"
module asm "__kstrtabns_net_dim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }

@rx_profile = internal unnamed_addr constant [2 x [5 x %struct.dim_cq_moder]] [[5 x %struct.dim_cq_moder] [%struct.dim_cq_moder { i16 1, i16 256, i16 0, i8 0 }, %struct.dim_cq_moder { i16 8, i16 256, i16 0, i8 0 }, %struct.dim_cq_moder { i16 64, i16 256, i16 0, i8 0 }, %struct.dim_cq_moder { i16 128, i16 256, i16 0, i8 0 }, %struct.dim_cq_moder { i16 256, i16 256, i16 0, i8 0 }], [5 x %struct.dim_cq_moder] [%struct.dim_cq_moder { i16 2, i16 256, i16 0, i8 0 }, %struct.dim_cq_moder { i16 8, i16 128, i16 0, i8 0 }, %struct.dim_cq_moder { i16 16, i16 64, i16 0, i8 0 }, %struct.dim_cq_moder { i16 32, i16 64, i16 0, i8 0 }, %struct.dim_cq_moder { i16 64, i16 64, i16 0, i8 0 }]], align 2
@__kstrtab_net_dim_get_rx_moderation = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_dim_get_rx_moderation = external dso_local constant [0 x i8], align 1
@__ksymtab_net_dim_get_rx_moderation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_dim_get_rx_moderation to i32), ptr @__kstrtab_net_dim_get_rx_moderation, ptr @__kstrtabns_net_dim_get_rx_moderation }, section "___ksymtab+net_dim_get_rx_moderation", align 4
@__kstrtab_net_dim_get_def_rx_moderation = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_dim_get_def_rx_moderation = external dso_local constant [0 x i8], align 1
@__ksymtab_net_dim_get_def_rx_moderation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_dim_get_def_rx_moderation to i32), ptr @__kstrtab_net_dim_get_def_rx_moderation, ptr @__kstrtabns_net_dim_get_def_rx_moderation }, section "___ksymtab+net_dim_get_def_rx_moderation", align 4
@tx_profile = internal unnamed_addr constant [2 x [5 x %struct.dim_cq_moder]] [[5 x %struct.dim_cq_moder] [%struct.dim_cq_moder { i16 1, i16 128, i16 0, i8 0 }, %struct.dim_cq_moder { i16 8, i16 128, i16 0, i8 0 }, %struct.dim_cq_moder { i16 32, i16 128, i16 0, i8 0 }, %struct.dim_cq_moder { i16 64, i16 128, i16 0, i8 0 }, %struct.dim_cq_moder { i16 128, i16 128, i16 0, i8 0 }], [5 x %struct.dim_cq_moder] [%struct.dim_cq_moder { i16 5, i16 128, i16 0, i8 0 }, %struct.dim_cq_moder { i16 8, i16 64, i16 0, i8 0 }, %struct.dim_cq_moder { i16 16, i16 32, i16 0, i8 0 }, %struct.dim_cq_moder { i16 32, i16 32, i16 0, i8 0 }, %struct.dim_cq_moder { i16 64, i16 32, i16 0, i8 0 }]], align 2
@__kstrtab_net_dim_get_tx_moderation = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_dim_get_tx_moderation = external dso_local constant [0 x i8], align 1
@__ksymtab_net_dim_get_tx_moderation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_dim_get_tx_moderation to i32), ptr @__kstrtab_net_dim_get_tx_moderation, ptr @__kstrtabns_net_dim_get_tx_moderation }, section "___ksymtab+net_dim_get_tx_moderation", align 4
@__kstrtab_net_dim_get_def_tx_moderation = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_dim_get_def_tx_moderation = external dso_local constant [0 x i8], align 1
@__ksymtab_net_dim_get_def_tx_moderation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_dim_get_def_tx_moderation to i32), ptr @__kstrtab_net_dim_get_def_tx_moderation, ptr @__kstrtabns_net_dim_get_def_tx_moderation }, section "___ksymtab+net_dim_get_def_tx_moderation", align 4
@__kstrtab_net_dim = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_dim = external dso_local constant [0 x i8], align 1
@__ksymtab_net_dim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_dim to i32), ptr @__kstrtab_net_dim, ptr @__kstrtabns_net_dim }, section "___ksymtab+net_dim", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_net_dim, ptr @__ksymtab_net_dim_get_def_rx_moderation, ptr @__ksymtab_net_dim_get_def_tx_moderation, ptr @__ksymtab_net_dim_get_rx_moderation, ptr @__ksymtab_net_dim_get_tx_moderation], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @net_dim_get_rx_moderation(ptr noalias nocapture writeonly sret(%struct.dim_cq_moder) align 2 %0, i8 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = zext i8 %1 to i32
  %5 = getelementptr [2 x [5 x %struct.dim_cq_moder]], ptr @rx_profile, i32 0, i32 %4, i32 %2
  %6 = load i64, ptr %5, align 2
  store i64 %6, ptr %0, align 2
  %7 = getelementptr inbounds %struct.dim_cq_moder, ptr %0, i32 0, i32 3
  store i8 %1, ptr %7, align 2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @net_dim_get_def_rx_moderation(ptr noalias nocapture writeonly sret(%struct.dim_cq_moder) align 2 %0, i8 noundef zeroext %1) #3 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %3 = zext i8 %1 to i32
  %4 = getelementptr [2 x [5 x %struct.dim_cq_moder]], ptr @rx_profile, i32 0, i32 %3, i32 1
  %5 = load i64, ptr %4, align 2, !noalias !8
  store i64 %5, ptr %0, align 2, !alias.scope !8
  %6 = getelementptr inbounds %struct.dim_cq_moder, ptr %0, i32 0, i32 3
  store i8 %1, ptr %6, align 2, !alias.scope !8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @net_dim_get_tx_moderation(ptr noalias nocapture writeonly sret(%struct.dim_cq_moder) align 2 %0, i8 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = zext i8 %1 to i32
  %5 = getelementptr [2 x [5 x %struct.dim_cq_moder]], ptr @tx_profile, i32 0, i32 %4, i32 %2
  %6 = load i64, ptr %5, align 2
  store i64 %6, ptr %0, align 2
  %7 = getelementptr inbounds %struct.dim_cq_moder, ptr %0, i32 0, i32 3
  store i8 %1, ptr %7, align 2
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @net_dim_get_def_tx_moderation(ptr noalias nocapture writeonly sret(%struct.dim_cq_moder) align 2 %0, i8 noundef zeroext %1) #3 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %3 = zext i8 %1 to i32
  %4 = getelementptr [2 x [5 x %struct.dim_cq_moder]], ptr @tx_profile, i32 0, i32 %3, i32 1
  %5 = load i64, ptr %4, align 2, !noalias !11
  store i64 %5, ptr %0, align 2, !alias.scope !11
  %6 = getelementptr inbounds %struct.dim_cq_moder, ptr %0, i32 0, i32 3
  store i8 %1, ptr %6, align 2, !alias.scope !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @net_dim(ptr noundef %0, [3 x i64] %1) #5 {
  %3 = alloca %struct.dim_sample, align 8
  %4 = alloca %struct.dim_stats, align 4
  %5 = extractvalue [3 x i64] %1, 0
  store i64 %5, ptr %3, align 8
  %6 = extractvalue [3 x i64] %1, 1
  %7 = getelementptr inbounds [3 x i64], ptr %3, i32 0, i32 1
  store i64 %6, ptr %7, align 8
  %8 = extractvalue [3 x i64] %1, 2
  %9 = getelementptr inbounds [3 x i64], ptr %3, i32 0, i32 2
  store i64 %8, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !14
  %10 = load i8, ptr %0, align 8
  switch i8 %10, label %191 [
    i8 1, label %11
    i8 0, label %181
  ]

11:                                               ; preds = %2
  %12 = trunc i64 %8 to i16
  %13 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 2, i32 3
  %14 = load i16, ptr %13, align 8
  %15 = sub i16 %12, %14
  %16 = icmp ult i16 %15, 64
  br i1 %16, label %191, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 2
  call void @dim_calc_stats(ptr noundef %18, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %19 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 8
  %20 = load i8, ptr %19, align 2
  %21 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 6
  %22 = load i8, ptr %21, align 4
  switch i8 %20, label %173 [
    i8 0, label %23
    i8 1, label %78
    i8 2, label %96
    i8 3, label %96
  ]

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 1
  %25 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 1, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.dim_stats, ptr %4, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  br i1 %27, label %30, label %32

30:                                               ; preds = %23
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %181, label %62

32:                                               ; preds = %23
  %33 = sub i32 %29, %26
  %34 = call i32 @llvm.abs.i32(i32 %33, i1 false) #9
  %35 = mul i32 %34, 100
  %36 = udiv i32 %35, %26
  %37 = icmp ugt i32 %36, 10
  br i1 %37, label %62, label %38

38:                                               ; preds = %32
  %39 = load i32, ptr %24, align 4
  %40 = icmp eq i32 %39, 0
  %41 = load i32, ptr %4, align 4
  br i1 %40, label %42, label %44

42:                                               ; preds = %38
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %181, label %62

44:                                               ; preds = %38
  %45 = sub i32 %41, %39
  %46 = call i32 @llvm.abs.i32(i32 %45, i1 false) #9
  %47 = mul i32 %46, 100
  %48 = udiv i32 %47, %39
  %49 = icmp ugt i32 %48, 10
  br i1 %49, label %62, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 1, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %181, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.dim_stats, ptr %4, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = sub i32 %56, %52
  %58 = call i32 @llvm.abs.i32(i32 %57, i1 false) #9
  %59 = mul i32 %58, 100
  %60 = udiv i32 %59, %52
  %61 = icmp ugt i32 %60, 10
  br i1 %61, label %62, label %181

62:                                               ; preds = %54, %44, %42, %32, %30
  %63 = icmp eq i8 %22, 0
  %64 = select i1 %63, i8 2, i8 3
  store i8 %64, ptr %19, align 2
  %65 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 11
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %66, 10
  br i1 %67, label %173, label %68

68:                                               ; preds = %62
  br i1 %63, label %69, label %73

69:                                               ; preds = %68
  store i8 1, ptr %21, align 4
  %70 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 9
  %71 = load i8, ptr %70, align 1
  %72 = add i8 %71, 1
  store i8 %72, ptr %70, align 1
  br label %171

73:                                               ; preds = %68
  %74 = add i8 %22, -1
  store i8 %74, ptr %21, align 4
  %75 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 10
  %76 = load i8, ptr %75, align 8
  %77 = add i8 %76, 1
  store i8 %77, ptr %75, align 8
  br label %171

78:                                               ; preds = %17
  %79 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 11
  %80 = load i8, ptr %79, align 1
  %81 = add i8 %80, -1
  store i8 %81, ptr %79, align 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %173

83:                                               ; preds = %78
  %84 = icmp eq i8 %22, 0
  %85 = select i1 %84, i8 2, i8 3
  store i8 %85, ptr %19, align 2
  br i1 %84, label %86, label %90

86:                                               ; preds = %83
  store i8 1, ptr %21, align 4
  %87 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 9
  %88 = load i8, ptr %87, align 1
  %89 = add i8 %88, 1
  store i8 %89, ptr %87, align 1
  br label %95

90:                                               ; preds = %83
  %91 = add i8 %22, -1
  store i8 %91, ptr %21, align 4
  %92 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 10
  %93 = load i8, ptr %92, align 8
  %94 = add i8 %93, 1
  store i8 %94, ptr %92, align 8
  br label %95

95:                                               ; preds = %90, %86
  store i8 %80, ptr %79, align 1
  br label %173

96:                                               ; preds = %17, %17
  %97 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 1
  %98 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 1, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  %101 = getelementptr inbounds %struct.dim_stats, ptr %4, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  br i1 %100, label %103, label %105

103:                                              ; preds = %96
  %104 = icmp eq i32 %102, 0
  br i1 %104, label %141, label %142

105:                                              ; preds = %96
  %106 = sub i32 %102, %99
  %107 = call i32 @llvm.abs.i32(i32 %106, i1 false) #9
  %108 = mul i32 %107, 100
  %109 = udiv i32 %108, %99
  %110 = icmp ugt i32 %109, 10
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = icmp sgt i32 %102, %99
  br i1 %112, label %142, label %141

113:                                              ; preds = %105
  %114 = load i32, ptr %97, align 4
  %115 = icmp eq i32 %114, 0
  %116 = load i32, ptr %4, align 4
  br i1 %115, label %117, label %119

117:                                              ; preds = %113
  %118 = icmp eq i32 %116, 0
  br i1 %118, label %141, label %142

119:                                              ; preds = %113
  %120 = sub i32 %116, %114
  %121 = call i32 @llvm.abs.i32(i32 %120, i1 false) #9
  %122 = mul i32 %121, 100
  %123 = udiv i32 %122, %114
  %124 = icmp ugt i32 %123, 10
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = icmp sgt i32 %116, %114
  br i1 %126, label %142, label %141

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 1, i32 2
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.dim_stats, ptr %4, i32 0, i32 2
  %133 = load i32, ptr %132, align 4
  %134 = sub i32 %133, %129
  %135 = call i32 @llvm.abs.i32(i32 %134, i1 false) #9
  %136 = mul i32 %135, 100
  %137 = udiv i32 %136, %129
  %138 = icmp ugt i32 %137, 10
  %139 = icmp slt i32 %133, %129
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %142, label %141

141:                                              ; preds = %131, %127, %125, %117, %111, %103
  call void @dim_turn(ptr noundef %0) #9
  br label %142

142:                                              ; preds = %141, %131, %125, %117, %111, %103
  %143 = call zeroext i1 @dim_on_top(ptr noundef %0) #9
  br i1 %143, label %144, label %145

144:                                              ; preds = %142
  call void @dim_park_on_top(ptr noundef %0) #9
  br label %173

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 11
  %147 = load i8, ptr %146, align 1
  %148 = icmp eq i8 %147, 10
  br i1 %148, label %170, label %149

149:                                              ; preds = %145
  %150 = load i8, ptr %19, align 2
  switch i8 %150, label %167 [
    i8 3, label %159
    i8 2, label %151
  ]

151:                                              ; preds = %149
  %152 = load i8, ptr %21, align 4
  %153 = icmp eq i8 %152, 4
  br i1 %153, label %169, label %154

154:                                              ; preds = %151
  %155 = add i8 %152, 1
  store i8 %155, ptr %21, align 4
  %156 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 9
  %157 = load i8, ptr %156, align 1
  %158 = add i8 %157, 1
  store i8 %158, ptr %156, align 1
  br label %167

159:                                              ; preds = %149
  %160 = load i8, ptr %21, align 4
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %159
  %163 = add i8 %160, -1
  store i8 %163, ptr %21, align 4
  %164 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 10
  %165 = load i8, ptr %164, align 8
  %166 = add i8 %165, 1
  store i8 %166, ptr %164, align 8
  br label %167

167:                                              ; preds = %162, %154, %149
  %168 = add i8 %147, 1
  store i8 %168, ptr %146, align 1
  br label %173

169:                                              ; preds = %159, %151
  call void @dim_park_on_top(ptr noundef %0) #9
  br label %173

170:                                              ; preds = %145
  call void @dim_park_tired(ptr noundef %0) #9
  br label %173

171:                                              ; preds = %73, %69
  %172 = add i8 %66, 1
  store i8 %172, ptr %65, align 1
  br label %173

173:                                              ; preds = %171, %170, %169, %167, %144, %95, %78, %62, %17
  %174 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %174, ptr noundef nonnull align 4 dereferenceable(20) %4, i32 20, i1 false) #9
  %175 = load i8, ptr %21, align 4
  %176 = icmp eq i8 %175, %22
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  store i8 2, ptr %0, align 8
  %178 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 4
  %179 = load ptr, ptr @system_wq, align 4
  %180 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %179, ptr noundef %178) #9
  br label %191

181:                                              ; preds = %173, %54, %50, %42, %30, %2
  %182 = load i16, ptr %9, align 8
  %183 = load i32, ptr %7, align 8
  %184 = getelementptr inbounds %struct.dim_sample, ptr %3, i32 0, i32 2
  %185 = load i32, ptr %184, align 4
  %186 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 2
  %187 = call i64 @ktime_get() #9
  store i64 %187, ptr %186, align 8
  %188 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 2, i32 1
  store i32 %183, ptr %188, align 8
  %189 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 2, i32 2
  store i32 %185, ptr %189, align 4
  %190 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 2, i32 3
  store i16 %182, ptr %190, align 8
  store i8 1, ptr %0, align 8
  br label %191

191:                                              ; preds = %181, %177, %11, %2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dim_calc_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dim_turn(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dim_on_top(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dim_park_on_top(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dim_park_tired(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }

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
!8 = !{!9}
!9 = distinct !{!9, !10, !"net_dim_get_rx_moderation: argument 0"}
!10 = distinct !{!10, !"net_dim_get_rx_moderation"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"net_dim_get_tx_moderation: argument 0"}
!13 = distinct !{!13, !"net_dim_get_tx_moderation"}
!14 = !{!"auto-init"}
