; ModuleID = '/llk/IR/drivers/clk/clk-composite.c_pt.bc'
source_filename = "../drivers/clk/clk-composite.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_register_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_register_composite\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_register_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_register_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_register_composite\22\09\09\09\09\09"
module asm "__kstrtabns_clk_register_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_unregister_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_unregister_composite\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_unregister_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_composite = type { %struct.clk_hw, %struct.clk_ops, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@__kstrtab_clk_hw_register_composite = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_register_composite = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_register_composite = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_register_composite to i32), ptr @__kstrtab_clk_hw_register_composite, ptr @__kstrtabns_clk_hw_register_composite }, section "___ksymtab_gpl+clk_hw_register_composite", align 4
@__kstrtab_clk_register_composite = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_register_composite = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_register_composite = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_register_composite to i32), ptr @__kstrtab_clk_register_composite, ptr @__kstrtabns_clk_register_composite }, section "___ksymtab_gpl+clk_register_composite", align 4
@__kstrtab_clk_hw_unregister_composite = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_unregister_composite = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_unregister_composite = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_unregister_composite to i32), ptr @__kstrtab_clk_hw_unregister_composite, ptr @__kstrtabns_clk_hw_unregister_composite }, section "___ksymtab_gpl+clk_hw_unregister_composite", align 4
@.str = private unnamed_addr constant [28 x i8] c"drivers/clk/clk-composite.c\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: missing round_rate op is required\0A\00", align 1
@__func__.__clk_hw_register_composite = private unnamed_addr constant [28 x i8] c"__clk_hw_register_composite\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"\013clk: clk_composite_determine_rate function called, but no mux or rate callback set!\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"devm_clk_hw_release_composite\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_clk_hw_register_composite, ptr @__ksymtab_clk_hw_unregister_composite, ptr @__ksymtab_clk_register_composite], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_hw_register_composite(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10) #0 {
  %12 = tail call fastcc ptr @__clk_hw_register_composite(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10)
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__clk_hw_register_composite(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11) unnamed_addr #0 {
  %13 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %13) #8
  %14 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %14, i8 0, i32 20, i1 false)
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 136) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %156, label %18

18:                                               ; preds = %12
  store ptr %1, ptr %13, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 6
  store i32 %11, ptr %19, align 4
  %20 = icmp eq ptr %2, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 2
  store ptr %2, ptr %22, align 4
  br label %25

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 3
  store ptr %3, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = trunc i32 %4 to i8
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 5
  store i8 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 1
  %29 = icmp ne ptr %5, null
  %30 = icmp ne ptr %6, null
  %31 = and i1 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.clk_ops, ptr %6, i32 0, i32 14
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %154, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 2
  store ptr %5, ptr %37, align 8
  %38 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 5
  store ptr %6, ptr %38, align 4
  %39 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 1, i32 14
  store ptr @clk_composite_get_parent, ptr %39, align 4
  %40 = getelementptr inbounds %struct.clk_ops, ptr %6, i32 0, i32 13
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 1, i32 13
  store ptr @clk_composite_set_parent, ptr %44, align 8
  br label %45

45:                                               ; preds = %43, %36
  %46 = getelementptr inbounds %struct.clk_ops, ptr %6, i32 0, i32 12
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 1, i32 12
  store ptr @clk_composite_determine_rate, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %45, %25
  %52 = icmp ne ptr %7, null
  %53 = icmp ne ptr %8, null
  %54 = and i1 %52, %53
  br i1 %54, label %55, label %88

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.clk_ops, ptr %8, i32 0, i32 10
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %154, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 1, i32 10
  store ptr @clk_composite_recalc_rate, ptr %60, align 4
  %61 = getelementptr inbounds %struct.clk_ops, ptr %8, i32 0, i32 12
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.clk_ops, ptr %8, i32 0, i32 11
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.clk_ops, ptr %8, i32 0, i32 15
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %85, label %84

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 1, i32 11
  store ptr @clk_composite_round_rate, ptr %73, align 8
  %74 = getelementptr inbounds %struct.clk_ops, ptr %8, i32 0, i32 15
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %85, label %82

77:                                               ; preds = %59
  %78 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 1, i32 12
  store ptr @clk_composite_determine_rate, ptr %78, align 4
  %79 = getelementptr inbounds %struct.clk_ops, ptr %8, i32 0, i32 15
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %77, %72
  %83 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 1, i32 15
  store ptr @clk_composite_set_rate, ptr %83, align 8
  br label %85

84:                                               ; preds = %68
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 297, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.__clk_hw_register_composite) #8
  br label %85

85:                                               ; preds = %84, %82, %77, %72, %68
  %86 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 3
  store ptr %7, ptr %86, align 4
  %87 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 6
  store ptr %8, ptr %87, align 8
  br label %88

88:                                               ; preds = %85, %51
  %89 = and i1 %31, %52
  %90 = and i1 %89, %53
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.clk_ops, ptr %6, i32 0, i32 13
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.clk_ops, ptr %8, i32 0, i32 15
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 1, i32 16
  store ptr @clk_composite_set_rate_and_parent, ptr %100, align 4
  br label %101

101:                                              ; preds = %99, %95, %91, %88
  %102 = icmp ne ptr %9, null
  %103 = icmp ne ptr %10, null
  %104 = and i1 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.clk_ops, ptr %10, i32 0, i32 6
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %154, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.clk_ops, ptr %10, i32 0, i32 4
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %154, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.clk_ops, ptr %10, i32 0, i32 5
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %154, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 4
  store ptr %9, ptr %118, align 8
  %119 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 7
  store ptr %10, ptr %119, align 4
  %120 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 1, i32 6
  store ptr @clk_composite_is_enabled, ptr %120, align 4
  %121 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 1, i32 4
  store ptr @clk_composite_enable, ptr %121, align 4
  %122 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 1, i32 5
  store ptr @clk_composite_disable, ptr %122, align 8
  br label %123

123:                                              ; preds = %117, %101
  %124 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 1
  store ptr %28, ptr %124, align 4
  %125 = getelementptr inbounds %struct.clk_hw, ptr %16, i32 0, i32 2
  store ptr %13, ptr %125, align 8
  %126 = call i32 @clk_hw_register(ptr noundef %0, ptr noundef nonnull %16) #8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %123
  %129 = inttoptr i32 %126 to ptr
  br label %154

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 2
  %132 = load ptr, ptr %131, align 8
  %133 = icmp eq ptr %132, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.clk_hw, ptr %16, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.clk_hw, ptr %132, i32 0, i32 1
  store ptr %136, ptr %137, align 4
  br label %138

138:                                              ; preds = %134, %130
  %139 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 3
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.clk_hw, ptr %16, i32 0, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.clk_hw, ptr %140, i32 0, i32 1
  store ptr %144, ptr %145, align 4
  br label %146

146:                                              ; preds = %142, %138
  %147 = getelementptr inbounds %struct.clk_composite, ptr %16, i32 0, i32 4
  %148 = load ptr, ptr %147, align 8
  %149 = icmp eq ptr %148, null
  br i1 %149, label %156, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.clk_hw, ptr %16, i32 0, i32 1
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.clk_hw, ptr %148, i32 0, i32 1
  store ptr %152, ptr %153, align 4
  br label %156

154:                                              ; preds = %128, %113, %109, %105, %55, %32
  %155 = phi ptr [ %129, %128 ], [ inttoptr (i32 -22 to ptr), %32 ], [ inttoptr (i32 -22 to ptr), %55 ], [ inttoptr (i32 -22 to ptr), %113 ], [ inttoptr (i32 -22 to ptr), %109 ], [ inttoptr (i32 -22 to ptr), %105 ]
  call void @kfree(ptr noundef nonnull %16) #8
  br label %156

156:                                              ; preds = %154, %150, %146, %12
  %157 = phi ptr [ %155, %154 ], [ %16, %150 ], [ %16, %146 ], [ inttoptr (i32 -12 to ptr), %12 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %13) #8
  ret ptr %157
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_hw_register_composite_pdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10) local_unnamed_addr #0 {
  %12 = tail call fastcc ptr @__clk_hw_register_composite(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10)
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_register_composite(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10) #0 {
  %12 = tail call fastcc ptr @__clk_hw_register_composite(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10) #8
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.clk_hw, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi ptr [ %16, %14 ], [ %12, %11 ]
  ret ptr %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_register_composite_pdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10) local_unnamed_addr #0 {
  %12 = tail call fastcc ptr @__clk_hw_register_composite(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10) #8
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.clk_hw, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi ptr [ %16, %14 ], [ %12, %11 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_unregister_composite(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @__clk_get_hw(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @clk_unregister(ptr noundef %0) #8
  tail call void @kfree(ptr noundef nonnull %2) #8
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_hw_unregister_composite(ptr noundef %0) #0 {
  tail call void @clk_hw_unregister(ptr noundef %0) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_clk_hw_register_composite_pdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10) local_unnamed_addr #0 {
  %12 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_clk_hw_release_composite, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.3) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @__clk_hw_register_composite(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10) #8
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store ptr %15, ptr %12, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %12) #8
  br label %19

18:                                               ; preds = %14
  tail call void @devres_free(ptr noundef nonnull %12) #8
  br label %19

19:                                               ; preds = %18, %17, %11
  %20 = phi ptr [ %15, %18 ], [ %15, %17 ], [ inttoptr (i32 -12 to ptr), %11 ]
  ret ptr %20
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_composite_get_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_hw, ptr %5, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = load ptr, ptr %0, align 4
  store ptr %9, ptr %5, align 4
  %10 = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = tail call zeroext i8 %11(ptr noundef %5) #8
  ret i8 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_composite_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clk_hw, ptr %6, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = load ptr, ptr %0, align 4
  store ptr %10, ptr %6, align 4
  %11 = getelementptr inbounds %struct.clk_ops, ptr %4, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %6, i8 noundef zeroext %1) #8
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_composite_determine_rate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.clk_rate_request, align 4
  %4 = alloca %struct.clk_rate_request, align 4
  %5 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp ne ptr %10, null
  %14 = icmp ne ptr %6, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %128

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.clk_ops, ptr %6, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.clk_ops, ptr %6, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = icmp eq ptr %12, null
  %25 = select i1 %23, i1 true, i1 %24
  %26 = icmp eq ptr %8, null
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %128, label %32

28:                                               ; preds = %16
  %29 = icmp eq ptr %12, null
  %30 = icmp eq ptr %8, null
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %121, label %36

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.clk_ops, ptr %8, i32 0, i32 13
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %128, label %40

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.clk_ops, ptr %8, i32 0, i32 13
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %121, label %40

40:                                               ; preds = %36, %32
  %41 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr null, ptr %41, align 4
  %42 = tail call i32 @clk_hw_get_flags(ptr noundef %0) #8
  %43 = and i32 %42, 128
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = call i32 @clk_hw_get_num_parents(ptr noundef nonnull %12) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %119, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.clk_rate_request, ptr %4, i32 0, i32 4
  %50 = getelementptr inbounds %struct.clk_rate_request, ptr %4, i32 0, i32 3
  %51 = getelementptr inbounds %struct.clk_ops, ptr %6, i32 0, i32 11
  %52 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  br label %78

53:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef align 4 dereferenceable(20) %1, i32 12, i1 false)
  %54 = tail call ptr @clk_hw_get_parent(ptr noundef nonnull %12) #8
  %55 = getelementptr inbounds %struct.clk_rate_request, ptr %3, i32 0, i32 4
  store ptr %54, ptr %55, align 4
  %56 = tail call i32 @clk_hw_get_rate(ptr noundef %54) #8
  %57 = getelementptr inbounds %struct.clk_rate_request, ptr %3, i32 0, i32 3
  store i32 %56, ptr %57, align 4
  %58 = load ptr, ptr %17, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.clk_ops, ptr %6, i32 0, i32 11
  %62 = load ptr, ptr %61, align 4
  %63 = load i32, ptr %3, align 4
  %64 = call i32 %62(ptr noundef nonnull %10, i32 noundef %63, ptr noundef %57) #8
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %76, label %71

66:                                               ; preds = %53
  %67 = call i32 %58(ptr noundef nonnull %10, ptr noundef nonnull %3) #8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, ptr %3, align 4
  br label %71

71:                                               ; preds = %69, %60
  %72 = phi i32 [ %70, %69 ], [ %64, %60 ]
  store i32 %72, ptr %1, align 4
  %73 = load ptr, ptr %55, align 4
  store ptr %73, ptr %41, align 4
  %74 = load i32, ptr %57, align 4
  %75 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %74, ptr %75, align 4
  br label %76

76:                                               ; preds = %71, %66, %60
  %77 = phi i32 [ 0, %71 ], [ %67, %66 ], [ %64, %60 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  br label %145

78:                                               ; preds = %113, %48
  %79 = phi i32 [ 0, %48 ], [ %116, %113 ]
  %80 = phi i32 [ 0, %48 ], [ %115, %113 ]
  %81 = phi i32 [ -1, %48 ], [ %114, %113 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef align 4 dereferenceable(20) %1, i32 20, i1 false)
  %82 = call ptr @clk_hw_get_parent_by_index(ptr noundef %12, i32 noundef %79) #8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %113, label %84

84:                                               ; preds = %78
  store ptr %82, ptr %49, align 4
  %85 = call i32 @clk_hw_get_rate(ptr noundef nonnull %82) #8
  store i32 %85, ptr %50, align 4
  %86 = load ptr, ptr %17, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load ptr, ptr %51, align 4
  %90 = load i32, ptr %4, align 4
  %91 = call i32 %89(ptr noundef nonnull %10, i32 noundef %90, ptr noundef %50) #8
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %113, label %98

93:                                               ; preds = %84
  %94 = call i32 %86(ptr noundef nonnull %10, ptr noundef nonnull %4) #8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %93
  %97 = load i32, ptr %4, align 4
  br label %98

98:                                               ; preds = %96, %88
  %99 = phi i32 [ %97, %96 ], [ %91, %88 ]
  %100 = load i32, ptr %1, align 4
  %101 = sub i32 %100, %99
  %102 = call i32 @llvm.abs.i32(i32 %101, i1 false)
  %103 = icmp eq i32 %100, %99
  br i1 %103, label %111, label %104

104:                                              ; preds = %98
  %105 = load ptr, ptr %41, align 4
  %106 = icmp eq ptr %105, null
  %107 = icmp ugt i32 %81, %102
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  store ptr %82, ptr %41, align 4
  %110 = load i32, ptr %50, align 4
  store i32 %110, ptr %52, align 4
  br label %113

111:                                              ; preds = %98
  store ptr %82, ptr %41, align 4
  %112 = load i32, ptr %50, align 4
  store i32 %112, ptr %52, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #8
  br label %145

113:                                              ; preds = %109, %104, %93, %88, %78
  %114 = phi i32 [ %102, %109 ], [ %81, %93 ], [ %81, %78 ], [ %81, %88 ], [ %81, %104 ]
  %115 = phi i32 [ %99, %109 ], [ %80, %93 ], [ %80, %78 ], [ %80, %88 ], [ %80, %104 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #8
  %116 = add nuw i32 %79, 1
  %117 = call i32 @clk_hw_get_num_parents(ptr noundef %12) #8
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %78, label %119

119:                                              ; preds = %113, %45
  %120 = phi i32 [ 0, %45 ], [ %115, %113 ]
  store i32 %120, ptr %1, align 4
  br label %145

121:                                              ; preds = %36, %28
  %122 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.clk_hw, ptr %10, i32 0, i32 1
  store ptr %123, ptr %124, align 4
  %125 = load ptr, ptr %0, align 4
  store ptr %125, ptr %10, align 4
  %126 = load ptr, ptr %17, align 4
  %127 = tail call i32 %126(ptr noundef nonnull %10, ptr noundef %1) #8
  br label %145

128:                                              ; preds = %32, %20, %2
  %129 = icmp ne ptr %12, null
  %130 = icmp ne ptr %8, null
  %131 = select i1 %129, i1 %130, i1 false
  br i1 %131, label %132, label %143

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.clk_ops, ptr %8, i32 0, i32 12
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %143, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.clk_hw, ptr %12, i32 0, i32 1
  store ptr %138, ptr %139, align 4
  %140 = load ptr, ptr %0, align 4
  store ptr %140, ptr %12, align 4
  %141 = load ptr, ptr %133, align 4
  %142 = tail call i32 %141(ptr noundef nonnull %12, ptr noundef %1) #8
  br label %145

143:                                              ; preds = %132, %128
  %144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %145

145:                                              ; preds = %143, %136, %121, %119, %111, %76
  %146 = phi i32 [ %77, %76 ], [ 0, %111 ], [ 0, %119 ], [ %127, %121 ], [ %142, %136 ], [ -22, %143 ]
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_composite_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clk_hw, ptr %6, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = load ptr, ptr %0, align 4
  store ptr %10, ptr %6, align 4
  %11 = getelementptr inbounds %struct.clk_ops, ptr %4, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %6, i32 noundef %1) #8
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_composite_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.clk_hw, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = load ptr, ptr %0, align 4
  store ptr %11, ptr %7, align 4
  %12 = getelementptr inbounds %struct.clk_ops, ptr %5, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %7, i32 noundef %1, ptr noundef %2) #8
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_composite_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.clk_hw, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = load ptr, ptr %0, align 4
  store ptr %11, ptr %7, align 4
  %12 = getelementptr inbounds %struct.clk_ops, ptr %5, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %7, i32 noundef %1, i32 noundef %2) #8
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_composite_set_rate_and_parent(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.clk_hw, ptr %10, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = load ptr, ptr %0, align 4
  store ptr %16, ptr %10, align 4
  %17 = load ptr, ptr %13, align 4
  %18 = getelementptr inbounds %struct.clk_hw, ptr %12, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = load ptr, ptr %0, align 4
  store ptr %19, ptr %12, align 4
  %20 = getelementptr inbounds %struct.clk_ops, ptr %6, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %10, i32 noundef %2) #8
  %23 = icmp ugt i32 %22, %1
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.clk_ops, ptr %6, i32 0, i32 15
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %10, i32 noundef %1, i32 noundef %2) #8
  %28 = getelementptr inbounds %struct.clk_ops, ptr %8, i32 0, i32 13
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %12, i8 noundef zeroext %3) #8
  br label %38

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.clk_ops, ptr %8, i32 0, i32 13
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %12, i8 noundef zeroext %3) #8
  %35 = getelementptr inbounds %struct.clk_ops, ptr %6, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %10, i32 noundef %1, i32 noundef %2) #8
  br label %38

38:                                               ; preds = %31, %24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_composite_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_hw, ptr %5, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = load ptr, ptr %0, align 4
  store ptr %9, ptr %5, align 4
  %10 = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %5) #8
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_composite_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_hw, ptr %5, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = load ptr, ptr %0, align 4
  store ptr %9, ptr %5, align 4
  %10 = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %5) #8
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_composite_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_composite, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_hw, ptr %5, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = load ptr, ptr %0, align 4
  store ptr %9, ptr %5, align 4
  %10 = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_clk_hw_release_composite(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @clk_hw_unregister(ptr noundef %3) #8
  tail call void @kfree(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
