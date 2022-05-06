; ModuleID = '/llk/IR/lib/rbtree.c_pt.bc'
source_filename = "../lib/rbtree.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___rb_erase_color:\09\09\09\09\09"
module asm "\09.asciz \09\22__rb_erase_color\22\09\09\09\09\09"
module asm "__kstrtabns___rb_erase_color:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rb_insert_color:\09\09\09\09\09"
module asm "\09.asciz \09\22rb_insert_color\22\09\09\09\09\09"
module asm "__kstrtabns_rb_insert_color:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rb_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22rb_erase\22\09\09\09\09\09"
module asm "__kstrtabns_rb_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___rb_insert_augmented:\09\09\09\09\09"
module asm "\09.asciz \09\22__rb_insert_augmented\22\09\09\09\09\09"
module asm "__kstrtabns___rb_insert_augmented:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rb_first:\09\09\09\09\09"
module asm "\09.asciz \09\22rb_first\22\09\09\09\09\09"
module asm "__kstrtabns_rb_first:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rb_last:\09\09\09\09\09"
module asm "\09.asciz \09\22rb_last\22\09\09\09\09\09"
module asm "__kstrtabns_rb_last:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rb_next:\09\09\09\09\09"
module asm "\09.asciz \09\22rb_next\22\09\09\09\09\09"
module asm "__kstrtabns_rb_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rb_prev:\09\09\09\09\09"
module asm "\09.asciz \09\22rb_prev\22\09\09\09\09\09"
module asm "__kstrtabns_rb_prev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rb_replace_node:\09\09\09\09\09"
module asm "\09.asciz \09\22rb_replace_node\22\09\09\09\09\09"
module asm "__kstrtabns_rb_replace_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rb_replace_node_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22rb_replace_node_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_rb_replace_node_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rb_next_postorder:\09\09\09\09\09"
module asm "\09.asciz \09\22rb_next_postorder\22\09\09\09\09\09"
module asm "__kstrtabns_rb_next_postorder:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rb_first_postorder:\09\09\09\09\09"
module asm "\09.asciz \09\22rb_first_postorder\22\09\09\09\09\09"
module asm "__kstrtabns_rb_first_postorder:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }

@__kstrtab___rb_erase_color = external dso_local constant [0 x i8], align 1
@__kstrtabns___rb_erase_color = external dso_local constant [0 x i8], align 1
@__ksymtab___rb_erase_color = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__rb_erase_color to i32), ptr @__kstrtab___rb_erase_color, ptr @__kstrtabns___rb_erase_color }, section "___ksymtab+__rb_erase_color", align 4
@__kstrtab_rb_insert_color = external dso_local constant [0 x i8], align 1
@__kstrtabns_rb_insert_color = external dso_local constant [0 x i8], align 1
@__ksymtab_rb_insert_color = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rb_insert_color to i32), ptr @__kstrtab_rb_insert_color, ptr @__kstrtabns_rb_insert_color }, section "___ksymtab+rb_insert_color", align 4
@__kstrtab_rb_erase = external dso_local constant [0 x i8], align 1
@__kstrtabns_rb_erase = external dso_local constant [0 x i8], align 1
@__ksymtab_rb_erase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rb_erase to i32), ptr @__kstrtab_rb_erase, ptr @__kstrtabns_rb_erase }, section "___ksymtab+rb_erase", align 4
@__kstrtab___rb_insert_augmented = external dso_local constant [0 x i8], align 1
@__kstrtabns___rb_insert_augmented = external dso_local constant [0 x i8], align 1
@__ksymtab___rb_insert_augmented = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__rb_insert_augmented to i32), ptr @__kstrtab___rb_insert_augmented, ptr @__kstrtabns___rb_insert_augmented }, section "___ksymtab+__rb_insert_augmented", align 4
@__kstrtab_rb_first = external dso_local constant [0 x i8], align 1
@__kstrtabns_rb_first = external dso_local constant [0 x i8], align 1
@__ksymtab_rb_first = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rb_first to i32), ptr @__kstrtab_rb_first, ptr @__kstrtabns_rb_first }, section "___ksymtab+rb_first", align 4
@__kstrtab_rb_last = external dso_local constant [0 x i8], align 1
@__kstrtabns_rb_last = external dso_local constant [0 x i8], align 1
@__ksymtab_rb_last = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rb_last to i32), ptr @__kstrtab_rb_last, ptr @__kstrtabns_rb_last }, section "___ksymtab+rb_last", align 4
@__kstrtab_rb_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_rb_next = external dso_local constant [0 x i8], align 1
@__ksymtab_rb_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rb_next to i32), ptr @__kstrtab_rb_next, ptr @__kstrtabns_rb_next }, section "___ksymtab+rb_next", align 4
@__kstrtab_rb_prev = external dso_local constant [0 x i8], align 1
@__kstrtabns_rb_prev = external dso_local constant [0 x i8], align 1
@__ksymtab_rb_prev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rb_prev to i32), ptr @__kstrtab_rb_prev, ptr @__kstrtabns_rb_prev }, section "___ksymtab+rb_prev", align 4
@__kstrtab_rb_replace_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_rb_replace_node = external dso_local constant [0 x i8], align 1
@__ksymtab_rb_replace_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rb_replace_node to i32), ptr @__kstrtab_rb_replace_node, ptr @__kstrtabns_rb_replace_node }, section "___ksymtab+rb_replace_node", align 4
@__kstrtab_rb_replace_node_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_rb_replace_node_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_rb_replace_node_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rb_replace_node_rcu to i32), ptr @__kstrtab_rb_replace_node_rcu, ptr @__kstrtabns_rb_replace_node_rcu }, section "___ksymtab+rb_replace_node_rcu", align 4
@__kstrtab_rb_next_postorder = external dso_local constant [0 x i8], align 1
@__kstrtabns_rb_next_postorder = external dso_local constant [0 x i8], align 1
@__ksymtab_rb_next_postorder = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rb_next_postorder to i32), ptr @__kstrtab_rb_next_postorder, ptr @__kstrtabns_rb_next_postorder }, section "___ksymtab+rb_next_postorder", align 4
@__kstrtab_rb_first_postorder = external dso_local constant [0 x i8], align 1
@__kstrtabns_rb_first_postorder = external dso_local constant [0 x i8], align 1
@__ksymtab_rb_first_postorder = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rb_first_postorder to i32), ptr @__kstrtab_rb_first_postorder, ptr @__kstrtabns_rb_first_postorder }, section "___ksymtab+rb_first_postorder", align 4
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab___rb_erase_color, ptr @__ksymtab___rb_insert_augmented, ptr @__ksymtab_rb_erase, ptr @__ksymtab_rb_first, ptr @__ksymtab_rb_first_postorder, ptr @__ksymtab_rb_insert_color, ptr @__ksymtab_rb_last, ptr @__ksymtab_rb_next, ptr @__ksymtab_rb_next_postorder, ptr @__ksymtab_rb_prev, ptr @__ksymtab_rb_replace_node, ptr @__ksymtab_rb_replace_node_rcu], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__rb_erase_color(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  br label %4

4:                                                ; preds = %59, %3
  %5 = phi ptr [ %0, %3 ], [ %61, %59 ]
  %6 = phi ptr [ null, %3 ], [ %5, %59 ]
  %7 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %97, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %8, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  store volatile ptr %16, ptr %7, align 4
  store volatile ptr %5, ptr %15, align 4
  %17 = ptrtoint ptr %5 to i32
  %18 = or i32 %17, 1
  store i32 %18, ptr %16, align 4
  %19 = load i32, ptr %5, align 4
  %20 = and i32 %19, -4
  store i32 %19, ptr %8, align 4
  %21 = ptrtoint ptr %8 to i32
  store i32 %21, ptr %5, align 4
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %14
  %24 = inttoptr i32 %20 to ptr
  %25 = getelementptr inbounds %struct.rb_node, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %5
  %28 = getelementptr inbounds %struct.rb_node, ptr %24, i32 0, i32 1
  %29 = select i1 %27, ptr %25, ptr %28
  br label %30

30:                                               ; preds = %23, %14
  %31 = phi ptr [ %1, %14 ], [ %29, %23 ]
  store volatile ptr %8, ptr %31, align 4
  tail call void %2(ptr noundef %5, ptr noundef %8) #5
  br label %32

32:                                               ; preds = %30, %10
  %33 = phi ptr [ %8, %10 ], [ %16, %30 ]
  %34 = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i32, ptr %35, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %71, label %41

41:                                               ; preds = %37, %32
  %42 = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %43, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %45, %41
  %50 = ptrtoint ptr %5 to i32
  store i32 %50, ptr %33, align 4
  %51 = load i32, ptr %5, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = or i32 %51, 1
  store i32 %55, ptr %5, align 4
  br label %183

56:                                               ; preds = %49
  %57 = and i32 %51, -4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %183, label %59

59:                                               ; preds = %145, %56
  %60 = phi i32 [ %57, %56 ], [ %146, %145 ]
  %61 = inttoptr i32 %60 to ptr
  br label %4

62:                                               ; preds = %45
  %63 = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 2
  %64 = getelementptr inbounds %struct.rb_node, ptr %43, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  store volatile ptr %65, ptr %63, align 4
  store volatile ptr %33, ptr %64, align 4
  store volatile ptr %43, ptr %7, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = ptrtoint ptr %33 to i32
  %69 = or i32 %68, 1
  store i32 %69, ptr %65, align 4
  br label %70

70:                                               ; preds = %67, %62
  tail call void %2(ptr noundef %33, ptr noundef nonnull %43) #5
  br label %71

71:                                               ; preds = %70, %37
  %72 = phi ptr [ %43, %70 ], [ %33, %37 ]
  %73 = phi ptr [ %33, %70 ], [ %35, %37 ]
  %74 = getelementptr inbounds %struct.rb_node, ptr %72, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  store volatile ptr %75, ptr %7, align 4
  store volatile ptr %5, ptr %74, align 4
  %76 = ptrtoint ptr %72 to i32
  %77 = or i32 %76, 1
  store i32 %77, ptr %73, align 4
  %78 = icmp eq ptr %75, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %71
  %80 = load i32, ptr %75, align 4
  %81 = and i32 %80, 1
  %82 = ptrtoint ptr %5 to i32
  %83 = or i32 %81, %82
  store i32 %83, ptr %75, align 4
  br label %84

84:                                               ; preds = %79, %71
  %85 = load i32, ptr %5, align 4
  %86 = and i32 %85, -4
  store i32 %85, ptr %72, align 4
  store i32 %77, ptr %5, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %84
  %89 = inttoptr i32 %86 to ptr
  %90 = getelementptr inbounds %struct.rb_node, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %5
  %93 = getelementptr inbounds %struct.rb_node, ptr %89, i32 0, i32 1
  %94 = select i1 %92, ptr %90, ptr %93
  br label %95

95:                                               ; preds = %88, %84
  %96 = phi ptr [ %1, %84 ], [ %94, %88 ]
  store volatile ptr %72, ptr %96, align 4
  tail call void %2(ptr noundef %5, ptr noundef %72) #5
  br label %183

97:                                               ; preds = %4
  %98 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.rb_node, ptr %99, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  store volatile ptr %105, ptr %98, align 4
  store volatile ptr %5, ptr %104, align 4
  %106 = ptrtoint ptr %5 to i32
  %107 = or i32 %106, 1
  store i32 %107, ptr %105, align 4
  %108 = load i32, ptr %5, align 4
  %109 = and i32 %108, -4
  store i32 %108, ptr %99, align 4
  %110 = ptrtoint ptr %99 to i32
  store i32 %110, ptr %5, align 4
  %111 = icmp eq i32 %109, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %103
  %113 = inttoptr i32 %109 to ptr
  %114 = getelementptr inbounds %struct.rb_node, ptr %113, i32 0, i32 2
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, %5
  %117 = getelementptr inbounds %struct.rb_node, ptr %113, i32 0, i32 1
  %118 = select i1 %116, ptr %114, ptr %117
  br label %119

119:                                              ; preds = %112, %103
  %120 = phi ptr [ %1, %103 ], [ %118, %112 ]
  store volatile ptr %99, ptr %120, align 4
  tail call void %2(ptr noundef %5, ptr noundef %99) #5
  br label %121

121:                                              ; preds = %119, %97
  %122 = phi ptr [ %99, %97 ], [ %105, %119 ]
  %123 = getelementptr inbounds %struct.rb_node, ptr %122, i32 0, i32 2
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %121
  %127 = load i32, ptr %124, align 4
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %157, label %130

130:                                              ; preds = %126, %121
  %131 = getelementptr inbounds %struct.rb_node, ptr %122, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i32, ptr %132, align 4
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %134, %130
  %139 = ptrtoint ptr %5 to i32
  store i32 %139, ptr %122, align 4
  %140 = load i32, ptr %5, align 4
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = or i32 %140, 1
  store i32 %144, ptr %5, align 4
  br label %183

145:                                              ; preds = %138
  %146 = and i32 %140, -4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %183, label %59

148:                                              ; preds = %134
  %149 = getelementptr inbounds %struct.rb_node, ptr %122, i32 0, i32 1
  %150 = getelementptr inbounds %struct.rb_node, ptr %132, i32 0, i32 2
  %151 = load ptr, ptr %150, align 4
  store volatile ptr %151, ptr %149, align 4
  store volatile ptr %122, ptr %150, align 4
  store volatile ptr %132, ptr %98, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = ptrtoint ptr %122 to i32
  %155 = or i32 %154, 1
  store i32 %155, ptr %151, align 4
  br label %156

156:                                              ; preds = %153, %148
  tail call void %2(ptr noundef %122, ptr noundef nonnull %132) #5
  br label %157

157:                                              ; preds = %156, %126
  %158 = phi ptr [ %132, %156 ], [ %122, %126 ]
  %159 = phi ptr [ %122, %156 ], [ %124, %126 ]
  %160 = getelementptr inbounds %struct.rb_node, ptr %158, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  store volatile ptr %161, ptr %98, align 4
  store volatile ptr %5, ptr %160, align 4
  %162 = ptrtoint ptr %158 to i32
  %163 = or i32 %162, 1
  store i32 %163, ptr %159, align 4
  %164 = icmp eq ptr %161, null
  br i1 %164, label %170, label %165

165:                                              ; preds = %157
  %166 = load i32, ptr %161, align 4
  %167 = and i32 %166, 1
  %168 = ptrtoint ptr %5 to i32
  %169 = or i32 %167, %168
  store i32 %169, ptr %161, align 4
  br label %170

170:                                              ; preds = %165, %157
  %171 = load i32, ptr %5, align 4
  %172 = and i32 %171, -4
  store i32 %171, ptr %158, align 4
  store i32 %163, ptr %5, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %170
  %175 = inttoptr i32 %172 to ptr
  %176 = getelementptr inbounds %struct.rb_node, ptr %175, i32 0, i32 2
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, %5
  %179 = getelementptr inbounds %struct.rb_node, ptr %175, i32 0, i32 1
  %180 = select i1 %178, ptr %176, ptr %179
  br label %181

181:                                              ; preds = %174, %170
  %182 = phi ptr [ %1, %170 ], [ %180, %174 ]
  store volatile ptr %158, ptr %182, align 4
  tail call void %2(ptr noundef %5, ptr noundef %158) #5
  br label %183

183:                                              ; preds = %181, %145, %143, %95, %56, %54
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rb_insert_color(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %9, !prof !8

5:                                                ; preds = %29
  %6 = inttoptr i32 %13 to ptr
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %0, %2 ], [ %6, %5 ]
  store i32 1, ptr %8, align 4
  br label %120

9:                                                ; preds = %29, %2
  %10 = phi i32 [ %32, %29 ], [ %3, %2 ]
  %11 = phi ptr [ %17, %29 ], [ %0, %2 ]
  %12 = inttoptr i32 %10 to ptr
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %120

16:                                               ; preds = %9
  %17 = inttoptr i32 %13 to ptr
  %18 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %12
  br i1 %20, label %72, label %21

21:                                               ; preds = %16
  %22 = icmp eq ptr %19, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %21
  %24 = load i32, ptr %19, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = or i32 %13, 1
  store i32 %28, ptr %19, align 4
  br label %29

29:                                               ; preds = %80, %27
  %30 = phi i32 [ %81, %80 ], [ %28, %27 ]
  store i32 %30, ptr %12, align 4
  %31 = load i32, ptr %17, align 4
  %32 = and i32 %31, -4
  store i32 %32, ptr %17, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %5, label %9, !prof !8

34:                                               ; preds = %23, %21
  %35 = inttoptr i32 %10 to ptr
  %36 = inttoptr i32 %13 to ptr
  %37 = getelementptr inbounds %struct.rb_node, ptr %35, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %11, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  store volatile ptr %42, ptr %37, align 4
  store volatile ptr %35, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = or i32 %10, 1
  store i32 %45, ptr %42, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = ptrtoint ptr %11 to i32
  store i32 %47, ptr %35, align 4
  %48 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %46, %34
  %51 = phi ptr [ %11, %46 ], [ %35, %34 ]
  %52 = phi ptr [ %49, %46 ], [ %38, %34 ]
  %53 = getelementptr inbounds %struct.rb_node, ptr %36, i32 0, i32 2
  store volatile ptr %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.rb_node, ptr %51, i32 0, i32 1
  store volatile ptr %36, ptr %54, align 4
  %55 = icmp eq ptr %52, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = or i32 %13, 1
  store i32 %57, ptr %52, align 4
  br label %58

58:                                               ; preds = %56, %50
  %59 = load i32, ptr %36, align 4
  %60 = and i32 %59, -4
  store i32 %59, ptr %51, align 4
  %61 = ptrtoint ptr %51 to i32
  store i32 %61, ptr %36, align 4
  %62 = icmp eq i32 %60, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = inttoptr i32 %60 to ptr
  %65 = getelementptr inbounds %struct.rb_node, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %36
  %68 = getelementptr inbounds %struct.rb_node, ptr %64, i32 0, i32 1
  %69 = select i1 %67, ptr %65, ptr %68
  br label %70

70:                                               ; preds = %63, %58
  %71 = phi ptr [ %1, %58 ], [ %69, %63 ]
  store volatile ptr %51, ptr %71, align 4
  br label %120

72:                                               ; preds = %16
  %73 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = load i32, ptr %74, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = or i32 %13, 1
  store i32 %81, ptr %74, align 4
  br label %29

82:                                               ; preds = %76, %72
  %83 = inttoptr i32 %10 to ptr
  %84 = inttoptr i32 %13 to ptr
  %85 = getelementptr inbounds %struct.rb_node, ptr %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.rb_node, ptr %83, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %11, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  store volatile ptr %91, ptr %86, align 4
  store volatile ptr %83, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = or i32 %10, 1
  store i32 %94, ptr %91, align 4
  br label %95

95:                                               ; preds = %93, %89
  %96 = ptrtoint ptr %11 to i32
  store i32 %96, ptr %83, align 4
  %97 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  br label %99

99:                                               ; preds = %95, %82
  %100 = phi ptr [ %11, %95 ], [ %83, %82 ]
  %101 = phi ptr [ %98, %95 ], [ %87, %82 ]
  store volatile ptr %101, ptr %85, align 4
  %102 = getelementptr inbounds %struct.rb_node, ptr %100, i32 0, i32 2
  store volatile ptr %84, ptr %102, align 4
  %103 = icmp eq ptr %101, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %99
  %105 = or i32 %13, 1
  store i32 %105, ptr %101, align 4
  br label %106

106:                                              ; preds = %104, %99
  %107 = load i32, ptr %84, align 4
  %108 = and i32 %107, -4
  store i32 %107, ptr %100, align 4
  %109 = ptrtoint ptr %100 to i32
  store i32 %109, ptr %84, align 4
  %110 = icmp eq i32 %108, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %106
  %112 = inttoptr i32 %108 to ptr
  %113 = getelementptr inbounds %struct.rb_node, ptr %112, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, %84
  %116 = getelementptr inbounds %struct.rb_node, ptr %112, i32 0, i32 1
  %117 = select i1 %115, ptr %113, ptr %116
  br label %118

118:                                              ; preds = %111, %106
  %119 = phi ptr [ %1, %106 ], [ %117, %111 ]
  store volatile ptr %100, ptr %119, align 4
  br label %120

120:                                              ; preds = %118, %70, %9, %7
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rb_erase(ptr noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = load i32, ptr %0, align 4
  %10 = and i32 %9, -4
  %11 = inttoptr i32 %10 to ptr
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %0
  %17 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 1
  %18 = select i1 %16, ptr %14, ptr %17
  br label %19

19:                                               ; preds = %13, %8
  %20 = phi ptr [ %1, %8 ], [ %18, %13 ]
  store volatile ptr %4, ptr %20, align 4
  %21 = icmp eq ptr %4, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 %9, ptr %4, align 4
  br label %277

23:                                               ; preds = %19
  %24 = and i32 %9, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %277, label %97

26:                                               ; preds = %2
  %27 = icmp eq ptr %4, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %26
  %29 = load i32, ptr %0, align 4
  store i32 %29, ptr %6, align 4
  %30 = and i32 %29, -4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = inttoptr i32 %30 to ptr
  %34 = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %0
  %37 = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 1
  %38 = select i1 %36, ptr %34, ptr %37
  br label %39

39:                                               ; preds = %32, %28
  %40 = phi ptr [ %1, %28 ], [ %38, %32 ]
  store volatile ptr %6, ptr %40, align 4
  br label %277

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = ptrtoint ptr %4 to i32
  br label %64

49:                                               ; preds = %49, %41
  %50 = phi ptr [ %53, %49 ], [ %43, %41 ]
  %51 = phi ptr [ %50, %49 ], [ %4, %41 ]
  %52 = getelementptr inbounds %struct.rb_node, ptr %50, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %49

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.rb_node, ptr %50, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.rb_node, ptr %51, i32 0, i32 2
  store volatile ptr %57, ptr %58, align 4
  store volatile ptr %4, ptr %56, align 4
  %59 = load i32, ptr %4, align 4
  %60 = and i32 %59, 1
  %61 = ptrtoint ptr %50 to i32
  %62 = or i32 %60, %61
  store i32 %62, ptr %4, align 4
  %63 = load ptr, ptr %5, align 4
  br label %64

64:                                               ; preds = %55, %45
  %65 = phi i32 [ %61, %55 ], [ %48, %45 ]
  %66 = phi ptr [ %63, %55 ], [ %6, %45 ]
  %67 = phi ptr [ %51, %55 ], [ %4, %45 ]
  %68 = phi ptr [ %50, %55 ], [ %4, %45 ]
  %69 = phi ptr [ %57, %55 ], [ %47, %45 ]
  %70 = getelementptr inbounds %struct.rb_node, ptr %68, i32 0, i32 2
  store volatile ptr %66, ptr %70, align 4
  %71 = load i32, ptr %66, align 4
  %72 = and i32 %71, 1
  %73 = or i32 %72, %65
  store i32 %73, ptr %66, align 4
  %74 = load i32, ptr %0, align 4
  %75 = and i32 %74, -4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %64
  %78 = inttoptr i32 %75 to ptr
  %79 = getelementptr inbounds %struct.rb_node, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %0
  %82 = getelementptr inbounds %struct.rb_node, ptr %78, i32 0, i32 1
  %83 = select i1 %81, ptr %79, ptr %82
  br label %84

84:                                               ; preds = %77, %64
  %85 = phi ptr [ %1, %64 ], [ %83, %77 ]
  store volatile ptr %68, ptr %85, align 4
  %86 = icmp eq ptr %69, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = ptrtoint ptr %67 to i32
  %89 = or i32 %88, 1
  store i32 %89, ptr %69, align 4
  br label %95

90:                                               ; preds = %84
  %91 = load i32, ptr %68, align 4
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, ptr null, ptr %67
  br label %95

95:                                               ; preds = %90, %87
  %96 = phi ptr [ null, %87 ], [ %94, %90 ]
  store i32 %74, ptr %68, align 4
  br label %97

97:                                               ; preds = %95, %23
  %98 = phi ptr [ %96, %95 ], [ %11, %23 ]
  %99 = icmp eq ptr %98, null
  br i1 %99, label %277, label %100

100:                                              ; preds = %155, %97
  %101 = phi ptr [ %157, %155 ], [ %98, %97 ]
  %102 = phi ptr [ %101, %155 ], [ null, %97 ]
  %103 = getelementptr inbounds %struct.rb_node, ptr %101, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %102, %104
  br i1 %105, label %192, label %106

106:                                              ; preds = %100
  %107 = load i32, ptr %104, align 4
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.rb_node, ptr %104, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  store volatile ptr %112, ptr %103, align 4
  store volatile ptr %101, ptr %111, align 4
  %113 = ptrtoint ptr %101 to i32
  %114 = or i32 %113, 1
  store i32 %114, ptr %112, align 4
  %115 = load i32, ptr %101, align 4
  %116 = and i32 %115, -4
  store i32 %115, ptr %104, align 4
  %117 = ptrtoint ptr %104 to i32
  store i32 %117, ptr %101, align 4
  %118 = icmp eq i32 %116, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %110
  %120 = inttoptr i32 %116 to ptr
  %121 = getelementptr inbounds %struct.rb_node, ptr %120, i32 0, i32 2
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, %101
  %124 = getelementptr inbounds %struct.rb_node, ptr %120, i32 0, i32 1
  %125 = select i1 %123, ptr %121, ptr %124
  br label %126

126:                                              ; preds = %119, %110
  %127 = phi ptr [ %1, %110 ], [ %125, %119 ]
  store volatile ptr %104, ptr %127, align 4
  br label %128

128:                                              ; preds = %126, %106
  %129 = phi ptr [ %104, %106 ], [ %112, %126 ]
  %130 = getelementptr inbounds %struct.rb_node, ptr %129, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %137, label %133

133:                                              ; preds = %128
  %134 = load i32, ptr %131, align 4
  %135 = and i32 %134, 1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %166, label %137

137:                                              ; preds = %133, %128
  %138 = getelementptr inbounds %struct.rb_node, ptr %129, i32 0, i32 2
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i32, ptr %139, align 4
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %158, label %145

145:                                              ; preds = %141, %137
  %146 = ptrtoint ptr %101 to i32
  store i32 %146, ptr %129, align 4
  %147 = load i32, ptr %101, align 4
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = or i32 %147, 1
  store i32 %151, ptr %101, align 4
  br label %277

152:                                              ; preds = %145
  %153 = and i32 %147, -4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %277, label %155

155:                                              ; preds = %240, %152
  %156 = phi i32 [ %153, %152 ], [ %241, %240 ]
  %157 = inttoptr i32 %156 to ptr
  br label %100

158:                                              ; preds = %141
  %159 = getelementptr inbounds %struct.rb_node, ptr %129, i32 0, i32 2
  %160 = getelementptr inbounds %struct.rb_node, ptr %139, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  store volatile ptr %161, ptr %159, align 4
  store volatile ptr %129, ptr %160, align 4
  store volatile ptr %139, ptr %103, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %158
  %164 = ptrtoint ptr %129 to i32
  %165 = or i32 %164, 1
  store i32 %165, ptr %161, align 4
  br label %166

166:                                              ; preds = %163, %158, %133
  %167 = phi ptr [ %139, %163 ], [ %139, %158 ], [ %129, %133 ]
  %168 = phi ptr [ %129, %163 ], [ %129, %158 ], [ %131, %133 ]
  %169 = getelementptr inbounds %struct.rb_node, ptr %167, i32 0, i32 2
  %170 = load ptr, ptr %169, align 4
  store volatile ptr %170, ptr %103, align 4
  store volatile ptr %101, ptr %169, align 4
  %171 = ptrtoint ptr %167 to i32
  %172 = or i32 %171, 1
  store i32 %172, ptr %168, align 4
  %173 = icmp eq ptr %170, null
  br i1 %173, label %179, label %174

174:                                              ; preds = %166
  %175 = load i32, ptr %170, align 4
  %176 = and i32 %175, 1
  %177 = ptrtoint ptr %101 to i32
  %178 = or i32 %176, %177
  store i32 %178, ptr %170, align 4
  br label %179

179:                                              ; preds = %174, %166
  %180 = load i32, ptr %101, align 4
  %181 = and i32 %180, -4
  store i32 %180, ptr %167, align 4
  store i32 %172, ptr %101, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %179
  %184 = inttoptr i32 %181 to ptr
  %185 = getelementptr inbounds %struct.rb_node, ptr %184, i32 0, i32 2
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, %101
  %188 = getelementptr inbounds %struct.rb_node, ptr %184, i32 0, i32 1
  %189 = select i1 %187, ptr %185, ptr %188
  br label %190

190:                                              ; preds = %183, %179
  %191 = phi ptr [ %1, %179 ], [ %189, %183 ]
  store volatile ptr %167, ptr %191, align 4
  br label %277

192:                                              ; preds = %100
  %193 = getelementptr inbounds %struct.rb_node, ptr %101, i32 0, i32 2
  %194 = load ptr, ptr %193, align 4
  %195 = load i32, ptr %194, align 4
  %196 = and i32 %195, 1
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %216

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.rb_node, ptr %194, i32 0, i32 1
  %200 = load ptr, ptr %199, align 4
  store volatile ptr %200, ptr %193, align 4
  store volatile ptr %101, ptr %199, align 4
  %201 = ptrtoint ptr %101 to i32
  %202 = or i32 %201, 1
  store i32 %202, ptr %200, align 4
  %203 = load i32, ptr %101, align 4
  %204 = and i32 %203, -4
  store i32 %203, ptr %194, align 4
  %205 = ptrtoint ptr %194 to i32
  store i32 %205, ptr %101, align 4
  %206 = icmp eq i32 %204, 0
  br i1 %206, label %214, label %207

207:                                              ; preds = %198
  %208 = inttoptr i32 %204 to ptr
  %209 = getelementptr inbounds %struct.rb_node, ptr %208, i32 0, i32 2
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, %101
  %212 = getelementptr inbounds %struct.rb_node, ptr %208, i32 0, i32 1
  %213 = select i1 %211, ptr %209, ptr %212
  br label %214

214:                                              ; preds = %207, %198
  %215 = phi ptr [ %1, %198 ], [ %213, %207 ]
  store volatile ptr %194, ptr %215, align 4
  br label %216

216:                                              ; preds = %214, %192
  %217 = phi ptr [ %194, %192 ], [ %200, %214 ]
  %218 = getelementptr inbounds %struct.rb_node, ptr %217, i32 0, i32 2
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %225, label %221

221:                                              ; preds = %216
  %222 = load i32, ptr %219, align 4
  %223 = and i32 %222, 1
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %251, label %225

225:                                              ; preds = %221, %216
  %226 = getelementptr inbounds %struct.rb_node, ptr %217, i32 0, i32 1
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %233, label %229

229:                                              ; preds = %225
  %230 = load i32, ptr %227, align 4
  %231 = and i32 %230, 1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %243, label %233

233:                                              ; preds = %229, %225
  %234 = ptrtoint ptr %101 to i32
  store i32 %234, ptr %217, align 4
  %235 = load i32, ptr %101, align 4
  %236 = and i32 %235, 1
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = or i32 %235, 1
  store i32 %239, ptr %101, align 4
  br label %277

240:                                              ; preds = %233
  %241 = and i32 %235, -4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %277, label %155

243:                                              ; preds = %229
  %244 = getelementptr inbounds %struct.rb_node, ptr %217, i32 0, i32 1
  %245 = getelementptr inbounds %struct.rb_node, ptr %227, i32 0, i32 2
  %246 = load ptr, ptr %245, align 4
  store volatile ptr %246, ptr %244, align 4
  store volatile ptr %217, ptr %245, align 4
  store volatile ptr %227, ptr %193, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %251, label %248

248:                                              ; preds = %243
  %249 = ptrtoint ptr %217 to i32
  %250 = or i32 %249, 1
  store i32 %250, ptr %246, align 4
  br label %251

251:                                              ; preds = %248, %243, %221
  %252 = phi ptr [ %227, %248 ], [ %227, %243 ], [ %217, %221 ]
  %253 = phi ptr [ %217, %248 ], [ %217, %243 ], [ %219, %221 ]
  %254 = getelementptr inbounds %struct.rb_node, ptr %252, i32 0, i32 1
  %255 = load ptr, ptr %254, align 4
  store volatile ptr %255, ptr %193, align 4
  store volatile ptr %101, ptr %254, align 4
  %256 = ptrtoint ptr %252 to i32
  %257 = or i32 %256, 1
  store i32 %257, ptr %253, align 4
  %258 = icmp eq ptr %255, null
  br i1 %258, label %264, label %259

259:                                              ; preds = %251
  %260 = load i32, ptr %255, align 4
  %261 = and i32 %260, 1
  %262 = ptrtoint ptr %101 to i32
  %263 = or i32 %261, %262
  store i32 %263, ptr %255, align 4
  br label %264

264:                                              ; preds = %259, %251
  %265 = load i32, ptr %101, align 4
  %266 = and i32 %265, -4
  store i32 %265, ptr %252, align 4
  store i32 %257, ptr %101, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %275, label %268

268:                                              ; preds = %264
  %269 = inttoptr i32 %266 to ptr
  %270 = getelementptr inbounds %struct.rb_node, ptr %269, i32 0, i32 2
  %271 = load ptr, ptr %270, align 4
  %272 = icmp eq ptr %271, %101
  %273 = getelementptr inbounds %struct.rb_node, ptr %269, i32 0, i32 1
  %274 = select i1 %272, ptr %270, ptr %273
  br label %275

275:                                              ; preds = %268, %264
  %276 = phi ptr [ %1, %264 ], [ %274, %268 ]
  store volatile ptr %252, ptr %276, align 4
  br label %277

277:                                              ; preds = %275, %240, %238, %190, %152, %150, %97, %39, %23, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__rb_insert_augmented(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %10, !prof !8

6:                                                ; preds = %30
  %7 = inttoptr i32 %14 to ptr
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi ptr [ %0, %3 ], [ %7, %6 ]
  store i32 1, ptr %9, align 4
  br label %121

10:                                               ; preds = %30, %3
  %11 = phi i32 [ %33, %30 ], [ %4, %3 ]
  %12 = phi ptr [ %18, %30 ], [ %0, %3 ]
  %13 = inttoptr i32 %11 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %121

17:                                               ; preds = %10
  %18 = inttoptr i32 %14 to ptr
  %19 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %13
  br i1 %21, label %73, label %22

22:                                               ; preds = %17
  %23 = icmp eq ptr %20, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %22
  %25 = load i32, ptr %20, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = or i32 %14, 1
  store i32 %29, ptr %20, align 4
  br label %30

30:                                               ; preds = %81, %28
  %31 = phi i32 [ %82, %81 ], [ %29, %28 ]
  store i32 %31, ptr %13, align 4
  %32 = load i32, ptr %18, align 4
  %33 = and i32 %32, -4
  store i32 %33, ptr %18, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %6, label %10, !prof !8

35:                                               ; preds = %24, %22
  %36 = inttoptr i32 %11 to ptr
  %37 = inttoptr i32 %14 to ptr
  %38 = getelementptr inbounds %struct.rb_node, ptr %36, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %12, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  store volatile ptr %43, ptr %38, align 4
  store volatile ptr %36, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = or i32 %11, 1
  store i32 %46, ptr %43, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = ptrtoint ptr %12 to i32
  store i32 %48, ptr %36, align 4
  tail call void %2(ptr noundef nonnull %36, ptr noundef %12) #5
  %49 = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  br label %51

51:                                               ; preds = %47, %35
  %52 = phi ptr [ %12, %47 ], [ %36, %35 ]
  %53 = phi ptr [ %50, %47 ], [ %39, %35 ]
  %54 = getelementptr inbounds %struct.rb_node, ptr %37, i32 0, i32 2
  store volatile ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.rb_node, ptr %52, i32 0, i32 1
  store volatile ptr %37, ptr %55, align 4
  %56 = icmp eq ptr %53, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = or i32 %14, 1
  store i32 %58, ptr %53, align 4
  br label %59

59:                                               ; preds = %57, %51
  %60 = load i32, ptr %37, align 4
  %61 = and i32 %60, -4
  store i32 %60, ptr %52, align 4
  %62 = ptrtoint ptr %52 to i32
  store i32 %62, ptr %37, align 4
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  %65 = inttoptr i32 %61 to ptr
  %66 = getelementptr inbounds %struct.rb_node, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %37
  %69 = getelementptr inbounds %struct.rb_node, ptr %65, i32 0, i32 1
  %70 = select i1 %68, ptr %66, ptr %69
  br label %71

71:                                               ; preds = %64, %59
  %72 = phi ptr [ %1, %59 ], [ %70, %64 ]
  store volatile ptr %52, ptr %72, align 4
  tail call void %2(ptr noundef %37, ptr noundef %52) #5
  br label %121

73:                                               ; preds = %17
  %74 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load i32, ptr %75, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = or i32 %14, 1
  store i32 %82, ptr %75, align 4
  br label %30

83:                                               ; preds = %77, %73
  %84 = inttoptr i32 %11 to ptr
  %85 = inttoptr i32 %14 to ptr
  %86 = getelementptr inbounds %struct.rb_node, ptr %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.rb_node, ptr %84, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %12, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  store volatile ptr %92, ptr %87, align 4
  store volatile ptr %84, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = or i32 %11, 1
  store i32 %95, ptr %92, align 4
  br label %96

96:                                               ; preds = %94, %90
  %97 = ptrtoint ptr %12 to i32
  store i32 %97, ptr %84, align 4
  tail call void %2(ptr noundef nonnull %84, ptr noundef %12) #5
  %98 = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  br label %100

100:                                              ; preds = %96, %83
  %101 = phi ptr [ %12, %96 ], [ %84, %83 ]
  %102 = phi ptr [ %99, %96 ], [ %88, %83 ]
  store volatile ptr %102, ptr %86, align 4
  %103 = getelementptr inbounds %struct.rb_node, ptr %101, i32 0, i32 2
  store volatile ptr %85, ptr %103, align 4
  %104 = icmp eq ptr %102, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = or i32 %14, 1
  store i32 %106, ptr %102, align 4
  br label %107

107:                                              ; preds = %105, %100
  %108 = load i32, ptr %85, align 4
  %109 = and i32 %108, -4
  store i32 %108, ptr %101, align 4
  %110 = ptrtoint ptr %101 to i32
  store i32 %110, ptr %85, align 4
  %111 = icmp eq i32 %109, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %107
  %113 = inttoptr i32 %109 to ptr
  %114 = getelementptr inbounds %struct.rb_node, ptr %113, i32 0, i32 2
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, %85
  %117 = getelementptr inbounds %struct.rb_node, ptr %113, i32 0, i32 1
  %118 = select i1 %116, ptr %114, ptr %117
  br label %119

119:                                              ; preds = %112, %107
  %120 = phi ptr [ %1, %107 ], [ %118, %112 ]
  store volatile ptr %101, ptr %120, align 4
  tail call void %2(ptr noundef %85, ptr noundef %101) #5
  br label %121

121:                                              ; preds = %119, %71, %10, %8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @rb_first(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4, %1
  %10 = phi ptr [ null, %1 ], [ %5, %4 ]
  ret ptr %10
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @rb_last(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4, %1
  %10 = phi ptr [ null, %1 ], [ %5, %4 ]
  ret ptr %10
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @rb_next(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 4
  %3 = ptrtoint ptr %0 to i32
  %4 = icmp eq i32 %2, %3
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = and i32 %2, -4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %17

12:                                               ; preds = %12, %5
  %13 = phi ptr [ %15, %12 ], [ %7, %5 ]
  %14 = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %12

17:                                               ; preds = %24, %9
  %18 = phi i32 [ %26, %24 ], [ %10, %9 ]
  %19 = phi ptr [ %20, %24 ], [ %0, %9 ]
  %20 = inttoptr i32 %18 to ptr
  %21 = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, ptr %20, align 4
  %26 = and i32 %25, -4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %17

28:                                               ; preds = %17
  %29 = inttoptr i32 %18 to ptr
  br label %30

30:                                               ; preds = %28, %24, %12, %9, %1
  %31 = phi ptr [ null, %1 ], [ %29, %28 ], [ null, %9 ], [ null, %24 ], [ %13, %12 ]
  ret ptr %31
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @rb_prev(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 4
  %3 = ptrtoint ptr %0 to i32
  %4 = icmp eq i32 %2, %3
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = and i32 %2, -4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %17

12:                                               ; preds = %12, %5
  %13 = phi ptr [ %15, %12 ], [ %7, %5 ]
  %14 = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %12

17:                                               ; preds = %24, %9
  %18 = phi i32 [ %26, %24 ], [ %10, %9 ]
  %19 = phi ptr [ %20, %24 ], [ %0, %9 ]
  %20 = inttoptr i32 %18 to ptr
  %21 = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, ptr %20, align 4
  %26 = and i32 %25, -4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %17

28:                                               ; preds = %17
  %29 = inttoptr i32 %18 to ptr
  br label %30

30:                                               ; preds = %28, %24, %12, %9, %1
  %31 = phi ptr [ null, %1 ], [ %29, %28 ], [ null, %9 ], [ null, %24 ], [ %13, %12 ]
  ret ptr %31
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rb_replace_node(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = load i32, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %1, ptr noundef align 4 dereferenceable(12) %0, i32 12, i1 false)
  %5 = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 4
  %10 = and i32 %9, 1
  %11 = ptrtoint ptr %1 to i32
  %12 = or i32 %10, %11
  store i32 %12, ptr %6, align 4
  br label %13

13:                                               ; preds = %8, %3
  %14 = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %15, align 4
  %19 = and i32 %18, 1
  %20 = ptrtoint ptr %1 to i32
  %21 = or i32 %19, %20
  store i32 %21, ptr %15, align 4
  br label %22

22:                                               ; preds = %17, %13
  %23 = and i32 %4, -4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = inttoptr i32 %23 to ptr
  %27 = getelementptr inbounds %struct.rb_node, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %0
  %30 = getelementptr inbounds %struct.rb_node, ptr %26, i32 0, i32 1
  %31 = select i1 %29, ptr %27, ptr %30
  br label %32

32:                                               ; preds = %25, %22
  %33 = phi ptr [ %2, %22 ], [ %31, %25 ]
  store volatile ptr %1, ptr %33, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rb_replace_node_rcu(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load i32, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %1, ptr noundef align 4 dereferenceable(12) %0, i32 12, i1 false)
  %5 = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 4
  %10 = and i32 %9, 1
  %11 = ptrtoint ptr %1 to i32
  %12 = or i32 %10, %11
  store i32 %12, ptr %6, align 4
  br label %13

13:                                               ; preds = %8, %3
  %14 = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %15, align 4
  %19 = and i32 %18, 1
  %20 = ptrtoint ptr %1 to i32
  %21 = or i32 %19, %20
  store i32 %21, ptr %15, align 4
  br label %22

22:                                               ; preds = %17, %13
  %23 = and i32 %4, -4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = inttoptr i32 %23 to ptr
  %27 = getelementptr inbounds %struct.rb_node, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5
  %30 = getelementptr inbounds %struct.rb_node, ptr %26, i32 0, i32 1
  %31 = select i1 %29, ptr %27, ptr %30
  br label %33

32:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  br label %33

33:                                               ; preds = %32, %25
  %34 = phi ptr [ %2, %32 ], [ %31, %25 ]
  store volatile ptr %1, ptr %34, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @rb_next_postorder(ptr noundef readonly %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4
  %5 = and i32 %4, -4
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %25, %12
  %17 = phi ptr [ %26, %25 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21, %16
  %26 = phi ptr [ %19, %16 ], [ %23, %21 ]
  br label %16

27:                                               ; preds = %21, %12, %8, %3, %1
  %28 = phi ptr [ null, %1 ], [ %6, %12 ], [ %6, %8 ], [ %6, %3 ], [ %17, %21 ]
  ret ptr %28
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @rb_first_postorder(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %13, %1
  %5 = phi ptr [ %14, %13 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9, %4
  %14 = phi ptr [ %7, %4 ], [ %11, %9 ]
  br label %4

15:                                               ; preds = %9, %1
  %16 = phi ptr [ null, %1 ], [ %5, %9 ]
  ret ptr %16
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }

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
!9 = !{i64 2148915797}
