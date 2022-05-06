; ModuleID = '/llk/IR/lib/generic-radix-tree.c_pt.bc'
source_filename = "../lib/generic-radix-tree.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___genradix_ptr:\09\09\09\09\09"
module asm "\09.asciz \09\22__genradix_ptr\22\09\09\09\09\09"
module asm "__kstrtabns___genradix_ptr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___genradix_ptr_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__genradix_ptr_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___genradix_ptr_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___genradix_iter_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22__genradix_iter_peek\22\09\09\09\09\09"
module asm "__kstrtabns___genradix_iter_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___genradix_prealloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__genradix_prealloc\22\09\09\09\09\09"
module asm "__kstrtabns___genradix_prealloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___genradix_free:\09\09\09\09\09"
module asm "\09.asciz \09\22__genradix_free\22\09\09\09\09\09"
module asm "__kstrtabns___genradix_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.genradix_iter = type { i32, i32 }

@__kstrtab___genradix_ptr = external dso_local constant [0 x i8], align 1
@__kstrtabns___genradix_ptr = external dso_local constant [0 x i8], align 1
@__ksymtab___genradix_ptr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__genradix_ptr to i32), ptr @__kstrtab___genradix_ptr, ptr @__kstrtabns___genradix_ptr }, section "___ksymtab+__genradix_ptr", align 4
@__kstrtab___genradix_ptr_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___genradix_ptr_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___genradix_ptr_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__genradix_ptr_alloc to i32), ptr @__kstrtab___genradix_ptr_alloc, ptr @__kstrtabns___genradix_ptr_alloc }, section "___ksymtab+__genradix_ptr_alloc", align 4
@__kstrtab___genradix_iter_peek = external dso_local constant [0 x i8], align 1
@__kstrtabns___genradix_iter_peek = external dso_local constant [0 x i8], align 1
@__ksymtab___genradix_iter_peek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__genradix_iter_peek to i32), ptr @__kstrtab___genradix_iter_peek, ptr @__kstrtabns___genradix_iter_peek }, section "___ksymtab+__genradix_iter_peek", align 4
@__kstrtab___genradix_prealloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___genradix_prealloc = external dso_local constant [0 x i8], align 1
@__ksymtab___genradix_prealloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__genradix_prealloc to i32), ptr @__kstrtab___genradix_prealloc, ptr @__kstrtabns___genradix_prealloc }, section "___ksymtab+__genradix_prealloc", align 4
@__kstrtab___genradix_free = external dso_local constant [0 x i8], align 1
@__kstrtabns___genradix_free = external dso_local constant [0 x i8], align 1
@__ksymtab___genradix_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__genradix_free to i32), ptr @__kstrtab___genradix_free, ptr @__kstrtabns___genradix_free }, section "___ksymtab+__genradix_free", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab___genradix_free, ptr @__ksymtab___genradix_iter_peek, ptr @__ksymtab___genradix_prealloc, ptr @__ksymtab___genradix_ptr, ptr @__ksymtab___genradix_ptr_alloc], section "llvm.metadata"

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__genradix_ptr(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr %0, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = and i32 %4, -4
  %6 = inttoptr i32 %5 to ptr
  %7 = and i32 %4, 3
  %8 = icmp eq i32 %1, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 false) #4, !range !8
  %10 = sub nsw i32 31, %9
  %11 = select i1 %8, i32 -1, i32 %10
  %12 = mul nuw nsw i32 %7, 10
  %13 = add nuw nsw i32 %12, 12
  %14 = icmp sge i32 %11, %13
  %15 = icmp eq i32 %5, 0
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %62, label %17

17:                                               ; preds = %2
  %18 = icmp eq i32 %7, 0
  br i1 %18, label %58, label %19

19:                                               ; preds = %17
  %20 = add nsw i32 %7, -1
  %21 = mul nsw i32 %20, 10
  %22 = add nsw i32 %21, 12
  %23 = lshr i32 %1, %22
  %24 = getelementptr [1024 x ptr], ptr %6, i32 0, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = shl nsw i32 -1, %22
  %27 = xor i32 %26, -1
  %28 = and i32 %27, %1
  %29 = icmp eq ptr %25, null
  br i1 %29, label %62, label %30

30:                                               ; preds = %19
  %31 = icmp eq i32 %20, 0
  br i1 %31, label %58, label %32

32:                                               ; preds = %30
  %33 = add nsw i32 %7, -2
  %34 = mul nsw i32 %33, 10
  %35 = add nsw i32 %34, 12
  %36 = lshr i32 %28, %35
  %37 = getelementptr [1024 x ptr], ptr %25, i32 0, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = shl nsw i32 -1, %35
  %40 = xor i32 %39, -1
  %41 = and i32 %28, %40
  %42 = icmp eq ptr %38, null
  br i1 %42, label %62, label %43

43:                                               ; preds = %32
  %44 = icmp eq i32 %33, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %43
  %46 = add nsw i32 %7, -3
  %47 = mul nsw i32 %46, 10
  %48 = add nsw i32 %47, 12
  %49 = lshr i32 %41, %48
  %50 = getelementptr [1024 x ptr], ptr %38, i32 0, i32 %49
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %45
  %54 = shl nsw i32 -1, %48
  %55 = xor i32 %54, -1
  %56 = and i32 %41, %55
  %57 = icmp eq i32 %46, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53, %43, %30, %17
  %59 = phi ptr [ %6, %17 ], [ %25, %30 ], [ %38, %43 ], [ %51, %53 ]
  %60 = phi i32 [ %1, %17 ], [ %28, %30 ], [ %41, %43 ], [ %56, %53 ]
  %61 = getelementptr [4096 x i8], ptr %59, i32 0, i32 %60
  br label %62

62:                                               ; preds = %58, %53, %45, %32, %19, %2
  %63 = phi ptr [ %61, %58 ], [ null, %2 ], [ null, %53 ], [ null, %45 ], [ null, %32 ], [ null, %19 ]
  ret ptr %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__genradix_ptr_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = load volatile ptr, ptr %0, align 4
  %5 = icmp eq i32 %1, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 false) #4, !range !8
  %7 = sub nsw i32 31, %6
  %8 = select i1 %5, i32 -1, i32 %7
  %9 = or i32 %2, 256
  br label %10

10:                                               ; preds = %38, %3
  %11 = phi ptr [ null, %3 ], [ %43, %38 ]
  %12 = phi ptr [ %4, %3 ], [ %44, %38 ]
  %13 = ptrtoint ptr %12 to i32
  %14 = and i32 %13, -4
  %15 = inttoptr i32 %14 to ptr
  %16 = and i32 %13, 3
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = mul nuw nsw i32 %16, 10
  %20 = add nuw nsw i32 %19, 12
  %21 = icmp slt i32 %8, %20
  br i1 %21, label %45, label %22

22:                                               ; preds = %18, %10
  %23 = icmp eq ptr %11, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = tail call i32 @__get_free_pages(i32 noundef %9, i32 noundef 0) #4
  %26 = inttoptr i32 %25 to ptr
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %154, label %28

28:                                               ; preds = %24, %22
  %29 = phi ptr [ %11, %22 ], [ %26, %24 ]
  store ptr %15, ptr %29, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = add nuw nsw i32 %16, 1
  %32 = select i1 %17, i32 0, i32 %31
  %33 = or i32 %32, %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !10
  br label %34

34:                                               ; preds = %34, %28
  %35 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %0, i32 %13, i32 %33) #4, !srcloc !11
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %34

38:                                               ; preds = %34
  %39 = extractvalue { i32, i32 } %35, 1
  %40 = inttoptr i32 %39 to ptr
  %41 = icmp eq ptr %12, %40
  %42 = inttoptr i32 %33 to ptr
  %43 = select i1 %41, ptr null, ptr %29
  %44 = select i1 %41, ptr %42, ptr %40
  br label %10

45:                                               ; preds = %18
  %46 = inttoptr i32 %14 to ptr
  %47 = icmp eq i32 %16, 0
  br i1 %47, label %145, label %48

48:                                               ; preds = %45
  %49 = add nsw i32 %16, -1
  %50 = mul nsw i32 %49, 10
  %51 = add nsw i32 %50, 12
  %52 = lshr i32 %1, %51
  %53 = getelementptr [1024 x ptr], ptr %46, i32 0, i32 %52
  %54 = shl nsw i32 -1, %51
  %55 = xor i32 %54, -1
  %56 = and i32 %55, %1
  %57 = load volatile ptr, ptr %53, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %48
  %60 = icmp eq ptr %11, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %59
  %62 = tail call i32 @__get_free_pages(i32 noundef %9, i32 noundef 0) #4
  %63 = inttoptr i32 %62 to ptr
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %154, label %65

65:                                               ; preds = %61, %59
  %66 = phi ptr [ %11, %59 ], [ %63, %61 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  %67 = ptrtoint ptr %66 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #4, !srcloc !10
  br label %68

68:                                               ; preds = %68, %65
  %69 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %53, i32 0, i32 %67) #4, !srcloc !11
  %70 = extractvalue { i32, i32 } %69, 0
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %68

72:                                               ; preds = %68
  %73 = extractvalue { i32, i32 } %69, 1
  %74 = inttoptr i32 %73 to ptr
  %75 = icmp eq i32 %73, 0
  %76 = select i1 %75, ptr null, ptr %66
  %77 = select i1 %75, ptr %66, ptr %74
  br label %78

78:                                               ; preds = %72, %48
  %79 = phi ptr [ %11, %48 ], [ %76, %72 ]
  %80 = phi ptr [ %57, %48 ], [ %77, %72 ]
  %81 = icmp eq i32 %49, 0
  br i1 %81, label %145, label %82

82:                                               ; preds = %78
  %83 = add nsw i32 %16, -2
  %84 = mul nsw i32 %83, 10
  %85 = add nsw i32 %84, 12
  %86 = lshr i32 %56, %85
  %87 = getelementptr [1024 x ptr], ptr %80, i32 0, i32 %86
  %88 = shl nsw i32 -1, %85
  %89 = xor i32 %88, -1
  %90 = and i32 %56, %89
  %91 = load volatile ptr, ptr %87, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %112

93:                                               ; preds = %82
  %94 = icmp eq ptr %79, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %93
  %96 = tail call i32 @__get_free_pages(i32 noundef %9, i32 noundef 0) #4
  %97 = inttoptr i32 %96 to ptr
  %98 = icmp eq i32 %96, 0
  br i1 %98, label %154, label %99

99:                                               ; preds = %95, %93
  %100 = phi ptr [ %79, %93 ], [ %97, %95 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  %101 = ptrtoint ptr %100 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #4, !srcloc !10
  br label %102

102:                                              ; preds = %102, %99
  %103 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %87, i32 0, i32 %101) #4, !srcloc !11
  %104 = extractvalue { i32, i32 } %103, 0
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %102

106:                                              ; preds = %102
  %107 = extractvalue { i32, i32 } %103, 1
  %108 = inttoptr i32 %107 to ptr
  %109 = icmp eq i32 %107, 0
  %110 = select i1 %109, ptr null, ptr %100
  %111 = select i1 %109, ptr %100, ptr %108
  br label %112

112:                                              ; preds = %106, %82
  %113 = phi ptr [ %79, %82 ], [ %110, %106 ]
  %114 = phi ptr [ %91, %82 ], [ %111, %106 ]
  %115 = icmp eq i32 %83, 0
  br i1 %115, label %145, label %116

116:                                              ; preds = %112
  %117 = mul nuw nsw i32 %16, 10
  %118 = add nsw i32 %117, -18
  %119 = lshr i32 %90, %118
  %120 = getelementptr [1024 x ptr], ptr %114, i32 0, i32 %119
  %121 = shl nsw i32 -1, %118
  %122 = xor i32 %121, -1
  %123 = and i32 %90, %122
  %124 = load volatile ptr, ptr %120, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %145

126:                                              ; preds = %116
  %127 = icmp eq ptr %113, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %126
  %129 = tail call i32 @__get_free_pages(i32 noundef %9, i32 noundef 0) #4
  %130 = inttoptr i32 %129 to ptr
  %131 = icmp eq i32 %129, 0
  br i1 %131, label %154, label %132

132:                                              ; preds = %128, %126
  %133 = phi ptr [ %113, %126 ], [ %130, %128 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  %134 = ptrtoint ptr %133 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %120) #4, !srcloc !10
  br label %135

135:                                              ; preds = %135, %132
  %136 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %120, i32 0, i32 %134) #4, !srcloc !11
  %137 = extractvalue { i32, i32 } %136, 0
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %135

139:                                              ; preds = %135
  %140 = extractvalue { i32, i32 } %136, 1
  %141 = inttoptr i32 %140 to ptr
  %142 = icmp eq i32 %140, 0
  %143 = select i1 %142, ptr null, ptr %133
  %144 = select i1 %142, ptr %133, ptr %141
  br label %145

145:                                              ; preds = %139, %116, %112, %78, %45
  %146 = phi ptr [ %11, %45 ], [ %79, %78 ], [ %113, %112 ], [ %113, %116 ], [ %143, %139 ]
  %147 = phi ptr [ %46, %45 ], [ %80, %78 ], [ %114, %112 ], [ %124, %116 ], [ %144, %139 ]
  %148 = phi i32 [ %1, %45 ], [ %56, %78 ], [ %90, %112 ], [ %123, %139 ], [ %123, %116 ]
  %149 = icmp eq ptr %146, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %145
  %151 = ptrtoint ptr %146 to i32
  tail call void @free_pages(i32 noundef %151, i32 noundef 0) #4
  br label %152

152:                                              ; preds = %150, %145
  %153 = getelementptr [4096 x i8], ptr %147, i32 0, i32 %148
  br label %154

154:                                              ; preds = %152, %128, %95, %61, %24
  %155 = phi ptr [ %153, %152 ], [ null, %128 ], [ null, %95 ], [ null, %61 ], [ null, %24 ]
  ret ptr %155
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__genradix_iter_peek(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %102, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.genradix_iter, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %0, align 4
  br label %13

9:                                                ; preds = %88, %67, %47
  %10 = phi i32 [ %91, %88 ], [ %50, %47 ], [ %70, %67 ]
  %11 = load volatile ptr, ptr %1, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %102, label %13

13:                                               ; preds = %9, %6
  %14 = phi i32 [ %8, %6 ], [ %10, %9 ]
  %15 = phi ptr [ %4, %6 ], [ %11, %9 ]
  %16 = ptrtoint ptr %15 to i32
  %17 = and i32 %16, 3
  %18 = icmp eq i32 %14, 0
  %19 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 false) #4, !range !8
  %20 = sub nsw i32 31, %19
  %21 = select i1 %18, i32 -1, i32 %20
  %22 = mul nuw nsw i32 %17, 10
  %23 = add nuw nsw i32 %22, 12
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %102

25:                                               ; preds = %13
  %26 = and i32 %16, -4
  %27 = inttoptr i32 %26 to ptr
  %28 = icmp eq i32 %17, 0
  br i1 %28, label %95, label %74

29:                                               ; preds = %82
  %30 = icmp eq i32 %75, 0
  br i1 %30, label %97, label %31

31:                                               ; preds = %29
  %32 = add nsw i32 %17, -2
  %33 = mul nsw i32 %32, 10
  %34 = add nsw i32 %33, 12
  %35 = lshr i32 %83, %34
  %36 = and i32 %35, 1023
  %37 = shl nuw i32 1, %34
  %38 = sub i32 0, %37
  br label %39

39:                                               ; preds = %47, %31
  %40 = phi i32 [ %83, %31 ], [ %50, %47 ]
  %41 = phi i32 [ %36, %31 ], [ %48, %47 ]
  %42 = getelementptr [1024 x ptr], ptr %86, i32 0, i32 %41
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = icmp eq i32 %32, 0
  br i1 %46, label %97, label %54

47:                                               ; preds = %39
  %48 = add nuw nsw i32 %41, 1
  %49 = add i32 %40, %37
  %50 = and i32 %49, %38
  store i32 %50, ptr %0, align 4
  %51 = lshr i32 %50, 12
  %52 = mul i32 %51, %2
  store i32 %52, ptr %7, align 4
  %53 = icmp eq i32 %48, 1024
  br i1 %53, label %9, label %39

54:                                               ; preds = %45
  %55 = mul nuw nsw i32 %17, 10
  %56 = add nsw i32 %55, -18
  %57 = lshr i32 %40, %56
  %58 = and i32 %57, 1023
  %59 = shl nuw i32 1, %56
  %60 = sub i32 0, %59
  br label %61

61:                                               ; preds = %67, %54
  %62 = phi i32 [ %40, %54 ], [ %70, %67 ]
  %63 = phi i32 [ %58, %54 ], [ %68, %67 ]
  %64 = getelementptr [1024 x ptr], ptr %43, i32 0, i32 %63
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %97

67:                                               ; preds = %61
  %68 = add nuw nsw i32 %63, 1
  %69 = add i32 %62, %59
  %70 = and i32 %69, %60
  store i32 %70, ptr %0, align 4
  %71 = lshr i32 %70, 12
  %72 = mul i32 %71, %2
  store i32 %72, ptr %7, align 4
  %73 = icmp eq i32 %68, 1024
  br i1 %73, label %9, label %61

74:                                               ; preds = %25
  %75 = add nsw i32 %17, -1
  %76 = mul nsw i32 %75, 10
  %77 = add nsw i32 %76, 12
  %78 = lshr i32 %14, %77
  %79 = and i32 %78, 1023
  %80 = shl nuw i32 1, %77
  %81 = sub i32 0, %80
  br label %82

82:                                               ; preds = %88, %74
  %83 = phi i32 [ %14, %74 ], [ %91, %88 ]
  %84 = phi i32 [ %79, %74 ], [ %89, %88 ]
  %85 = getelementptr [1024 x ptr], ptr %27, i32 0, i32 %84
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %29

88:                                               ; preds = %82
  %89 = add nuw nsw i32 %84, 1
  %90 = add i32 %83, %80
  %91 = and i32 %90, %81
  store i32 %91, ptr %0, align 4
  %92 = lshr i32 %91, 12
  %93 = mul i32 %92, %2
  store i32 %93, ptr %7, align 4
  %94 = icmp eq i32 %89, 1024
  br i1 %94, label %9, label %82

95:                                               ; preds = %25
  %96 = inttoptr i32 %26 to ptr
  br label %97

97:                                               ; preds = %95, %61, %45, %29
  %98 = phi i32 [ %14, %95 ], [ %62, %61 ], [ %40, %45 ], [ %83, %29 ]
  %99 = phi ptr [ %96, %95 ], [ %65, %61 ], [ %43, %45 ], [ %86, %29 ]
  %100 = and i32 %98, 4095
  %101 = getelementptr [4096 x i8], ptr %99, i32 0, i32 %100
  br label %102

102:                                              ; preds = %97, %13, %9, %3
  %103 = phi ptr [ %101, %97 ], [ null, %3 ], [ null, %13 ], [ null, %9 ]
  ret ptr %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__genradix_prealloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %12, label %8

5:                                                ; preds = %8
  %6 = add i32 %9, 4096
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5, %3
  %9 = phi i32 [ %6, %5 ], [ 0, %3 ]
  %10 = tail call ptr @__genradix_ptr_alloc(ptr noundef %0, i32 noundef %9, i32 noundef %2)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5

12:                                               ; preds = %8, %5, %3
  %13 = phi i32 [ 0, %3 ], [ 0, %5 ], [ -12, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__genradix_free(ptr noundef %0) #1 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #4, !srcloc !10
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %0) #4, !srcloc !14
  %3 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !15
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = and i32 %3, 3
  tail call fastcc void @genradix_free_recurse(ptr noundef %5, i32 noundef %6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @genradix_free_recurse(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  br label %6

6:                                                ; preds = %12, %4
  %7 = phi i32 [ 0, %4 ], [ %13, %12 ]
  %8 = getelementptr [1024 x ptr], ptr %0, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call fastcc void @genradix_free_recurse(ptr noundef nonnull %9, i32 noundef %5)
  br label %12

12:                                               ; preds = %11, %6
  %13 = add nuw nsw i32 %7, 1
  %14 = icmp eq i32 %13, 1024
  br i1 %14, label %15, label %6

15:                                               ; preds = %12, %2
  %16 = ptrtoint ptr %0 to i32
  tail call void @free_pages(i32 noundef %16, i32 noundef 0) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{i64 2150137678}
!10 = !{i64 413122, i64 2147903093, i64 2147903119, i64 2147903166, i64 2147903188, i64 2147903216, i64 2147903236}
!11 = !{i64 425293, i64 425314, i64 425337, i64 425356, i64 425375}
!12 = !{i64 2150141061}
!13 = !{i64 2150149877}
!14 = !{i64 422569, i64 422586, i64 422610, i64 422636, i64 422654}
!15 = !{i64 2150150204}
