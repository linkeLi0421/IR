; ModuleID = '/llk/IR/lib/list_sort.c_pt.bc'
source_filename = "../lib/list_sort.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_list_sort:\09\09\09\09\09"
module asm "\09.asciz \09\22list_sort\22\09\09\09\09\09"
module asm "__kstrtabns_list_sort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }

@__kstrtab_list_sort = external dso_local constant [0 x i8], align 1
@__kstrtabns_list_sort = external dso_local constant [0 x i8], align 1
@__ksymtab_list_sort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @list_sort to i32), ptr @__kstrtab_list_sort, ptr @__kstrtabns_list_sort }, section "___ksymtab+list_sort", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_list_sort], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @list_sort(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store ptr null, ptr %6, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %134, label %11

11:                                               ; preds = %3
  store ptr null, ptr %9, align 4
  br label %12

12:                                               ; preds = %62, %11
  %13 = phi ptr [ null, %11 ], [ %15, %62 ]
  %14 = phi i32 [ 0, %11 ], [ %66, %62 ]
  %15 = phi ptr [ %7, %11 ], [ %65, %62 ]
  %16 = and i32 %14, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %20 = lshr i32 %14, 1
  %21 = and i32 %14, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %23, %18
  %24 = phi i32 [ %28, %23 ], [ %20, %18 ]
  %25 = phi ptr [ %27, %23 ], [ %19, %18 ]
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %28 = lshr i32 %24, 1
  %29 = and i32 %24, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %23

31:                                               ; preds = %23, %18, %12
  %32 = phi i32 [ %14, %12 ], [ %20, %18 ], [ %28, %23 ]
  %33 = phi ptr [ %6, %12 ], [ %19, %18 ], [ %27, %23 ]
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %62, label %35, !prof !8

35:                                               ; preds = %31
  %36 = load ptr, ptr %33, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store ptr null, ptr %5, align 4
  br label %39

39:                                               ; preds = %48, %35
  %40 = phi ptr [ %49, %48 ], [ %38, %35 ]
  %41 = phi ptr [ %44, %48 ], [ %36, %35 ]
  %42 = phi ptr [ %40, %48 ], [ %5, %35 ]
  br label %43

43:                                               ; preds = %52, %39
  %44 = phi ptr [ %53, %52 ], [ %41, %39 ]
  %45 = phi ptr [ %44, %52 ], [ %42, %39 ]
  %46 = tail call i32 %2(ptr noundef %0, ptr noundef %40, ptr noundef %44) #2
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  store ptr %40, ptr %45, align 4
  %49 = load ptr, ptr %40, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %39

51:                                               ; preds = %48
  store ptr %44, ptr %40, align 4
  br label %56

52:                                               ; preds = %43
  store ptr %44, ptr %45, align 4
  %53 = load ptr, ptr %44, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %43

55:                                               ; preds = %52
  store ptr %40, ptr %44, align 4
  br label %56

56:                                               ; preds = %55, %51
  %57 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  %58 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr %59, ptr %60, align 4
  store ptr %57, ptr %33, align 4
  %61 = load ptr, ptr %6, align 4
  br label %62

62:                                               ; preds = %56, %31
  %63 = phi ptr [ %61, %56 ], [ %13, %31 ]
  %64 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %63, ptr %64, align 4
  store ptr %15, ptr %6, align 4
  %65 = load ptr, ptr %15, align 4
  store ptr null, ptr %15, align 4
  %66 = add i32 %14, 1
  %67 = icmp eq ptr %65, null
  br i1 %67, label %68, label %12

68:                                               ; preds = %62
  store ptr %63, ptr %6, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %98, label %72

72:                                               ; preds = %93, %68
  %73 = phi ptr [ %96, %93 ], [ %70, %68 ]
  %74 = phi ptr [ %94, %93 ], [ %15, %68 ]
  %75 = phi ptr [ %73, %93 ], [ %63, %68 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store ptr null, ptr %4, align 4
  br label %76

76:                                               ; preds = %85, %72
  %77 = phi ptr [ %86, %85 ], [ %75, %72 ]
  %78 = phi ptr [ %81, %85 ], [ %74, %72 ]
  %79 = phi ptr [ %77, %85 ], [ %4, %72 ]
  br label %80

80:                                               ; preds = %89, %76
  %81 = phi ptr [ %90, %89 ], [ %78, %76 ]
  %82 = phi ptr [ %81, %89 ], [ %79, %76 ]
  %83 = tail call i32 %2(ptr noundef %0, ptr noundef %77, ptr noundef %81) #2
  %84 = icmp slt i32 %83, 1
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  store ptr %77, ptr %82, align 4
  %86 = load ptr, ptr %77, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %76

88:                                               ; preds = %85
  store ptr %81, ptr %77, align 4
  br label %93

89:                                               ; preds = %80
  store ptr %81, ptr %82, align 4
  %90 = load ptr, ptr %81, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %80

92:                                               ; preds = %89
  store ptr %77, ptr %81, align 4
  br label %93

93:                                               ; preds = %92, %88
  %94 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  store ptr %73, ptr %6, align 4
  %95 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %72

98:                                               ; preds = %93, %68
  %99 = phi ptr [ %63, %68 ], [ %73, %93 ]
  %100 = phi ptr [ %15, %68 ], [ %94, %93 ]
  br label %101

101:                                              ; preds = %110, %98
  %102 = phi ptr [ %99, %98 ], [ %112, %110 ]
  %103 = phi ptr [ %100, %98 ], [ %106, %110 ]
  %104 = phi ptr [ %1, %98 ], [ %102, %110 ]
  br label %105

105:                                              ; preds = %114, %101
  %106 = phi ptr [ %116, %114 ], [ %103, %101 ]
  %107 = phi ptr [ %106, %114 ], [ %104, %101 ]
  %108 = tail call i32 %2(ptr noundef %0, ptr noundef %102, ptr noundef %106) #2
  %109 = icmp slt i32 %108, 1
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  store ptr %102, ptr %107, align 4
  %111 = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  store ptr %107, ptr %111, align 4
  %112 = load ptr, ptr %102, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %118, label %101

114:                                              ; preds = %105
  store ptr %106, ptr %107, align 4
  %115 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  store ptr %107, ptr %115, align 4
  %116 = load ptr, ptr %106, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %105

118:                                              ; preds = %114, %110
  %119 = phi ptr [ %102, %114 ], [ %106, %110 ]
  %120 = phi ptr [ %106, %114 ], [ %102, %110 ]
  store ptr %119, ptr %120, align 4
  br label %121

121:                                              ; preds = %129, %118
  %122 = phi ptr [ %119, %118 ], [ %131, %129 ]
  %123 = phi ptr [ %120, %118 ], [ %122, %129 ]
  %124 = phi i8 [ 0, %118 ], [ %125, %129 ]
  %125 = add i8 %124, 1
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %129, !prof !8

127:                                              ; preds = %121
  %128 = tail call i32 %2(ptr noundef %0, ptr noundef %122, ptr noundef %122) #2
  br label %129

129:                                              ; preds = %127, %121
  %130 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  store ptr %123, ptr %130, align 4
  %131 = load ptr, ptr %122, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %121

133:                                              ; preds = %129
  store ptr %1, ptr %122, align 4
  store ptr %122, ptr %8, align 4
  br label %134

134:                                              ; preds = %133, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind }

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
