; ModuleID = '/llk/IR/net/wireless/radiotap.c_pt.bc'
source_filename = "../net/wireless/radiotap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_radiotap_iterator_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_radiotap_iterator_init\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_radiotap_iterator_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_radiotap_iterator_next:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_radiotap_iterator_next\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_radiotap_iterator_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ieee80211_radiotap_namespace = type { ptr, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.radiotap_align_size = type { i8 }
%struct.ieee80211_radiotap_header = type { i8, i8, i16, i32, [0 x i32] }
%struct.ieee80211_radiotap_iterator = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_radiotap_vendor_namespaces = type { ptr, i32 }

@radiotap_ns = internal constant %struct.ieee80211_radiotap_namespace { ptr @rtap_namespace_sizes, i32 22, i32 0, i8 0 }, align 4
@__kstrtab_ieee80211_radiotap_iterator_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_radiotap_iterator_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_radiotap_iterator_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_radiotap_iterator_init to i32), ptr @__kstrtab_ieee80211_radiotap_iterator_init, ptr @__kstrtabns_ieee80211_radiotap_iterator_init }, section "___ksymtab+ieee80211_radiotap_iterator_init", align 4
@__kstrtab_ieee80211_radiotap_iterator_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_radiotap_iterator_next = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_radiotap_iterator_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_radiotap_iterator_next to i32), ptr @__kstrtab_ieee80211_radiotap_iterator_next, ptr @__kstrtabns_ieee80211_radiotap_iterator_next }, section "___ksymtab+ieee80211_radiotap_iterator_next", align 4
@rtap_namespace_sizes = internal constant [22 x %struct.radiotap_align_size] [%struct.radiotap_align_size { i8 -120 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 66 }, %struct.radiotap_align_size { i8 34 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 34 }, %struct.radiotap_align_size { i8 34 }, %struct.radiotap_align_size { i8 34 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 34 }, %struct.radiotap_align_size { i8 34 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size { i8 17 }, %struct.radiotap_align_size zeroinitializer, %struct.radiotap_align_size { i8 49 }, %struct.radiotap_align_size { i8 -124 }, %struct.radiotap_align_size { i8 -62 }], align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ieee80211_radiotap_iterator_init, ptr @__ksymtab_ieee80211_radiotap_iterator_next], section "llvm.metadata"
@switch.table.ieee80211_radiotap_iterator_next = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 1], align 4
@switch.table.ieee80211_radiotap_iterator_next.1 = private unnamed_addr constant [3 x i32] [i32 0, i32 6, i32 0], align 4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_radiotap_iterator_init(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = icmp ult i32 %2, 8
  br i1 %5, label %47, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %1, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %1, i32 0, i32 2
  %11 = load i16, ptr %10, align 1
  %12 = zext i16 %11 to i32
  %13 = icmp sgt i32 %12, %2
  br i1 %13, label %47, label %14

14:                                               ; preds = %9
  store ptr %1, ptr %0, align 4
  %15 = load i16, ptr %10, align 1
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 10
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 11
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %1, i32 0, i32 3
  %20 = load i32, ptr %19, align 1
  %21 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 12
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %1, i32 0, i32 4
  %23 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 3
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 13
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 5
  store ptr %22, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 1
  store ptr %3, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 2
  store ptr @radiotap_ns, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 9
  store i32 1, ptr %28, align 4
  %29 = icmp sgt i32 %20, -1
  br i1 %29, label %44, label %30

30:                                               ; preds = %14
  %31 = icmp ult i16 %15, 12
  br i1 %31, label %47, label %32

32:                                               ; preds = %30
  %33 = ptrtoint ptr %1 to i32
  %34 = sub i32 4, %33
  br label %35

35:                                               ; preds = %40, %32
  %36 = phi ptr [ %22, %32 ], [ %39, %40 ]
  %37 = load i32, ptr %36, align 1
  %38 = icmp sgt i32 %37, -1
  %39 = getelementptr i8, ptr %36, i32 4
  store ptr %39, ptr %23, align 4
  br i1 %38, label %44, label %40

40:                                               ; preds = %35
  %41 = ptrtoint ptr %39 to i32
  %42 = add i32 %34, %41
  %43 = icmp ugt i32 %42, %16
  br i1 %43, label %47, label %35

44:                                               ; preds = %35, %14
  %45 = phi ptr [ %22, %14 ], [ %39, %35 ]
  %46 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 6
  store ptr %45, ptr %46, align 4
  br label %47

47:                                               ; preds = %44, %40, %30, %9, %6, %4
  %48 = phi i32 [ 0, %44 ], [ -22, %4 ], [ -22, %6 ], [ -22, %9 ], [ -22, %30 ], [ -22, %40 ]
  ret i32 %48
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_radiotap_iterator_next(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 11
  %3 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 12
  %4 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 10
  %7 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 8
  %12 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 5
  %13 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 13
  %14 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, ptr %0, i32 0, i32 9
  %15 = load i32, ptr %2, align 4
  br label %16

16:                                               ; preds = %156, %1
  %17 = phi i32 [ %15, %1 ], [ %157, %156 ]
  %18 = and i32 %17, -2147483617
  %19 = icmp eq i32 %18, 31
  %20 = load i32, ptr %3, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %19, label %23, label %24

23:                                               ; preds = %16
  br i1 %22, label %161, label %25

24:                                               ; preds = %16
  br i1 %22, label %153, label %25

25:                                               ; preds = %24, %23
  %26 = srem i32 %17, 32
  %27 = add nsw i32 %26, -29
  %28 = icmp ult i32 %27, 3
  br i1 %28, label %49, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %4, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %47, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.ieee80211_radiotap_namespace, ptr %30, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp slt i32 %17, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = icmp eq ptr %30, @radiotap_ns
  br i1 %37, label %161, label %47

38:                                               ; preds = %32
  %39 = load ptr, ptr %30, align 4
  %40 = getelementptr %struct.radiotap_align_size, ptr %39, i32 %17
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 15
  %43 = zext i8 %42 to i32
  %44 = lshr i8 %41, 4
  %45 = zext i8 %44 to i32
  %46 = icmp eq i8 %42, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %38, %36, %29
  %48 = load ptr, ptr %8, align 4
  store ptr %48, ptr %5, align 4
  store ptr null, ptr %4, align 4
  br label %153

49:                                               ; preds = %25
  %50 = getelementptr inbounds [3 x i32], ptr @switch.table.ieee80211_radiotap_iterator_next, i32 0, i32 %27
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds [3 x i32], ptr @switch.table.ieee80211_radiotap_iterator_next.1, i32 0, i32 %27
  %53 = load i32, ptr %52, align 4
  br label %54

54:                                               ; preds = %49, %38
  %55 = phi i32 [ %43, %38 ], [ %51, %49 ]
  %56 = phi i32 [ %45, %38 ], [ %53, %49 ]
  %57 = load ptr, ptr %5, align 4
  %58 = ptrtoint ptr %57 to i32
  %59 = load ptr, ptr %0, align 4
  %60 = ptrtoint ptr %59 to i32
  %61 = sub i32 %58, %60
  %62 = add nsw i32 %55, -1
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  %66 = sub nsw i32 %55, %63
  %67 = getelementptr i8, ptr %57, i32 %66
  store ptr %67, ptr %5, align 4
  br label %68

68:                                               ; preds = %65, %54
  %69 = phi ptr [ %67, %65 ], [ %57, %54 ]
  %70 = icmp eq i32 %18, 30
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = load i32, ptr %6, align 4
  br label %133

73:                                               ; preds = %68
  %74 = ptrtoint ptr %69 to i32
  %75 = sub i32 %56, %60
  %76 = add i32 %75, %74
  %77 = load i32, ptr %6, align 4
  %78 = icmp ugt i32 %76, %77
  br i1 %78, label %161, label %79

79:                                               ; preds = %73
  %80 = load i8, ptr %69, align 1
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 16
  %83 = getelementptr i8, ptr %69, i32 1
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = shl nuw nsw i32 %85, 8
  %87 = or i32 %86, %82
  %88 = getelementptr i8, ptr %69, i32 2
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %87, %90
  %92 = getelementptr i8, ptr %69, i32 3
  %93 = load i8, ptr %92, align 1
  store ptr null, ptr %4, align 4
  %94 = load ptr, ptr %7, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %116, label %96

96:                                               ; preds = %79
  %97 = getelementptr inbounds %struct.ieee80211_radiotap_vendor_namespaces, ptr %94, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %96
  %101 = load ptr, ptr %94, align 4
  br label %102

102:                                              ; preds = %113, %100
  %103 = phi i32 [ 0, %100 ], [ %114, %113 ]
  %104 = getelementptr %struct.ieee80211_radiotap_namespace, ptr %101, i32 %103, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, %91
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = getelementptr %struct.ieee80211_radiotap_namespace, ptr %101, i32 %103, i32 3
  %109 = load i8, ptr %108, align 4
  %110 = icmp eq i8 %109, %93
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = getelementptr %struct.ieee80211_radiotap_namespace, ptr %101, i32 %103
  store ptr %112, ptr %4, align 4
  br label %123

113:                                              ; preds = %107, %102
  %114 = add nuw nsw i32 %103, 1
  %115 = icmp eq i32 %114, %98
  br i1 %115, label %123, label %102

116:                                              ; preds = %96, %79
  %117 = getelementptr i8, ptr %69, i32 4
  %118 = load i16, ptr %117, align 1
  %119 = zext i16 %118 to i32
  %120 = getelementptr i8, ptr %69, i32 %56
  %121 = getelementptr i8, ptr %120, i32 %119
  store ptr %121, ptr %8, align 4
  %122 = add nuw nsw i32 %56, %119
  br label %133

123:                                              ; preds = %113, %111
  %124 = phi ptr [ %112, %111 ], [ null, %113 ]
  %125 = getelementptr i8, ptr %69, i32 4
  %126 = load i16, ptr %125, align 1
  %127 = zext i16 %126 to i32
  %128 = getelementptr i8, ptr %69, i32 %56
  %129 = getelementptr i8, ptr %128, i32 %127
  store ptr %129, ptr %8, align 4
  %130 = icmp eq ptr %124, null
  %131 = select i1 %130, i32 %127, i32 0
  %132 = add nuw nsw i32 %131, %56
  br label %133

133:                                              ; preds = %123, %116, %71
  %134 = phi i32 [ %77, %123 ], [ %72, %71 ], [ %77, %116 ]
  %135 = phi i32 [ %132, %123 ], [ %56, %71 ], [ %122, %116 ]
  store i32 %17, ptr %9, align 4
  store ptr %69, ptr %10, align 4
  store i32 %135, ptr %11, align 4
  %136 = getelementptr i8, ptr %69, i32 %135
  store ptr %136, ptr %5, align 4
  %137 = ptrtoint ptr %136 to i32
  %138 = sub i32 %137, %60
  %139 = icmp ugt i32 %138, %134
  br i1 %139, label %161, label %140

140:                                              ; preds = %133
  switch i32 %26, label %158 [
    i32 30, label %141
    i32 29, label %144
    i32 31, label %145
  ]

141:                                              ; preds = %140
  store i32 1, ptr %13, align 4
  store i32 0, ptr %14, align 4
  store i32 30, ptr %9, align 4
  %142 = load ptr, ptr %4, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %158, label %153

144:                                              ; preds = %140
  store i32 1, ptr %13, align 4
  store ptr @radiotap_ns, ptr %4, align 4
  store i32 1, ptr %14, align 4
  br label %153

145:                                              ; preds = %140
  %146 = load ptr, ptr %12, align 4
  %147 = load i32, ptr %146, align 1
  store i32 %147, ptr %3, align 4
  %148 = getelementptr i32, ptr %146, i32 1
  store ptr %148, ptr %12, align 4
  %149 = load i32, ptr %13, align 4
  %150 = icmp eq i32 %149, 0
  %151 = add i32 %17, 1
  %152 = select i1 %150, i32 %151, i32 0
  store i32 %152, ptr %2, align 4
  store i32 0, ptr %13, align 4
  br label %156

153:                                              ; preds = %144, %141, %47, %24
  %154 = lshr i32 %20, 1
  store i32 %154, ptr %3, align 4
  %155 = add i32 %17, 1
  store i32 %155, ptr %2, align 4
  br label %156

156:                                              ; preds = %153, %145
  %157 = phi i32 [ %155, %153 ], [ %152, %145 ]
  br label %16

158:                                              ; preds = %141, %140
  %159 = lshr i32 %20, 1
  store i32 %159, ptr %3, align 4
  %160 = add i32 %17, 1
  store i32 %160, ptr %2, align 4
  br label %161

161:                                              ; preds = %158, %133, %73, %36, %23
  %162 = phi i32 [ 0, %158 ], [ -22, %133 ], [ -2, %36 ], [ -2, %23 ], [ -22, %73 ]
  ret i32 %162
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
