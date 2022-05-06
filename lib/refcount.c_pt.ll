; ModuleID = '/llk/IR/lib/refcount.c_pt.bc'
source_filename = "../lib/refcount.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_refcount_warn_saturate:\09\09\09\09\09"
module asm "\09.asciz \09\22refcount_warn_saturate\22\09\09\09\09\09"
module asm "__kstrtabns_refcount_warn_saturate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_refcount_dec_if_one:\09\09\09\09\09"
module asm "\09.asciz \09\22refcount_dec_if_one\22\09\09\09\09\09"
module asm "__kstrtabns_refcount_dec_if_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_refcount_dec_not_one:\09\09\09\09\09"
module asm "\09.asciz \09\22refcount_dec_not_one\22\09\09\09\09\09"
module asm "__kstrtabns_refcount_dec_not_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_refcount_dec_and_mutex_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22refcount_dec_and_mutex_lock\22\09\09\09\09\09"
module asm "__kstrtabns_refcount_dec_and_mutex_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_refcount_dec_and_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22refcount_dec_and_lock\22\09\09\09\09\09"
module asm "__kstrtabns_refcount_dec_and_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_refcount_dec_and_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22refcount_dec_and_lock_irqsave\22\09\09\09\09\09"
module asm "__kstrtabns_refcount_dec_and_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@refcount_warn_saturate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [15 x i8] c"lib/refcount.c\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"refcount_t: saturated; leaking memory.\0A\00", align 1
@refcount_warn_saturate.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@refcount_warn_saturate.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"refcount_t: addition on 0; use-after-free.\0A\00", align 1
@refcount_warn_saturate.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"refcount_t: underflow; use-after-free.\0A\00", align 1
@refcount_warn_saturate.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"refcount_t: decrement hit 0; leaking memory.\0A\00", align 1
@refcount_warn_saturate.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"refcount_t: unknown saturation event!?.\0A\00", align 1
@__kstrtab_refcount_warn_saturate = external dso_local constant [0 x i8], align 1
@__kstrtabns_refcount_warn_saturate = external dso_local constant [0 x i8], align 1
@__ksymtab_refcount_warn_saturate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @refcount_warn_saturate to i32), ptr @__kstrtab_refcount_warn_saturate, ptr @__kstrtabns_refcount_warn_saturate }, section "___ksymtab+refcount_warn_saturate", align 4
@__kstrtab_refcount_dec_if_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_refcount_dec_if_one = external dso_local constant [0 x i8], align 1
@__ksymtab_refcount_dec_if_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @refcount_dec_if_one to i32), ptr @__kstrtab_refcount_dec_if_one, ptr @__kstrtabns_refcount_dec_if_one }, section "___ksymtab+refcount_dec_if_one", align 4
@refcount_dec_not_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_refcount_dec_not_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_refcount_dec_not_one = external dso_local constant [0 x i8], align 1
@__ksymtab_refcount_dec_not_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @refcount_dec_not_one to i32), ptr @__kstrtab_refcount_dec_not_one, ptr @__kstrtabns_refcount_dec_not_one }, section "___ksymtab+refcount_dec_not_one", align 4
@__kstrtab_refcount_dec_and_mutex_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_refcount_dec_and_mutex_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_refcount_dec_and_mutex_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @refcount_dec_and_mutex_lock to i32), ptr @__kstrtab_refcount_dec_and_mutex_lock, ptr @__kstrtabns_refcount_dec_and_mutex_lock }, section "___ksymtab+refcount_dec_and_mutex_lock", align 4
@__kstrtab_refcount_dec_and_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_refcount_dec_and_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_refcount_dec_and_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @refcount_dec_and_lock to i32), ptr @__kstrtab_refcount_dec_and_lock, ptr @__kstrtabns_refcount_dec_and_lock }, section "___ksymtab+refcount_dec_and_lock", align 4
@__kstrtab_refcount_dec_and_lock_irqsave = external dso_local constant [0 x i8], align 1
@__kstrtabns_refcount_dec_and_lock_irqsave = external dso_local constant [0 x i8], align 1
@__ksymtab_refcount_dec_and_lock_irqsave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @refcount_dec_and_lock_irqsave to i32), ptr @__kstrtab_refcount_dec_and_lock_irqsave, ptr @__kstrtabns_refcount_dec_and_lock_irqsave }, section "___ksymtab+refcount_dec_and_lock_irqsave", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_refcount_dec_and_lock, ptr @__ksymtab_refcount_dec_and_lock_irqsave, ptr @__ksymtab_refcount_dec_and_mutex_lock, ptr @__ksymtab_refcount_dec_if_one, ptr @__ksymtab_refcount_dec_not_one, ptr @__ksymtab_refcount_warn_saturate], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @refcount_warn_saturate(ptr noundef %0, i32 noundef %1) #0 {
  store volatile i32 -1073741824, ptr %0, align 4
  switch i32 %1, label %18 [
    i32 0, label %3
    i32 1, label %6
    i32 2, label %9
    i32 3, label %12
    i32 4, label %15
  ]

3:                                                ; preds = %2
  %4 = load i1, ptr @refcount_warn_saturate.__already_done, align 1
  br i1 %4, label %21, label %5, !prof !8

5:                                                ; preds = %3
  store i1 true, ptr @refcount_warn_saturate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 19, i32 noundef 9, ptr noundef nonnull @.str.1) #2
  br label %21

6:                                                ; preds = %2
  %7 = load i1, ptr @refcount_warn_saturate.__already_done.2, align 1
  br i1 %7, label %21, label %8, !prof !8

8:                                                ; preds = %6
  store i1 true, ptr @refcount_warn_saturate.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 22, i32 noundef 9, ptr noundef nonnull @.str.1) #2
  br label %21

9:                                                ; preds = %2
  %10 = load i1, ptr @refcount_warn_saturate.__already_done.3, align 1
  br i1 %10, label %21, label %11, !prof !8

11:                                               ; preds = %9
  store i1 true, ptr @refcount_warn_saturate.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 25, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %21

12:                                               ; preds = %2
  %13 = load i1, ptr @refcount_warn_saturate.__already_done.5, align 1
  br i1 %13, label %21, label %14, !prof !8

14:                                               ; preds = %12
  store i1 true, ptr @refcount_warn_saturate.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.6) #2
  br label %21

15:                                               ; preds = %2
  %16 = load i1, ptr @refcount_warn_saturate.__already_done.7, align 1
  br i1 %16, label %21, label %17, !prof !8

17:                                               ; preds = %15
  store i1 true, ptr @refcount_warn_saturate.__already_done.7, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.8) #2
  br label %21

18:                                               ; preds = %2
  %19 = load i1, ptr @refcount_warn_saturate.__already_done.9, align 1
  br i1 %19, label %21, label %20, !prof !8

20:                                               ; preds = %18
  store i1 true, ptr @refcount_warn_saturate.__already_done.9, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 34, i32 noundef 9, ptr noundef nonnull @.str.10) #2
  br label %21

21:                                               ; preds = %20, %18, %17, %15, %14, %12, %11, %9, %8, %6, %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @refcount_dec_if_one(ptr noundef %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #2, !srcloc !10
  br label %2

2:                                                ; preds = %2, %1
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, i32 0, ptr elementtype(i32) %0) #2, !srcloc !11
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %2

6:                                                ; preds = %2
  %7 = extractvalue { i32, i32 } %3, 1
  %8 = icmp eq i32 %7, 1
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @refcount_dec_not_one(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr %0, align 4
  br label %3

3:                                                ; preds = %14, %1
  %4 = phi i32 [ %2, %1 ], [ %15, %14 ]
  switch i32 %4, label %8 [
    i32 -1073741824, label %17
    i32 1, label %18
    i32 0, label %5
  ], !prof !12

5:                                                ; preds = %3
  %6 = load i1, ptr @refcount_dec_not_one.__already_done, align 1
  br i1 %6, label %18, label %7, !prof !8

7:                                                ; preds = %5
  store i1 true, ptr @refcount_dec_not_one.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 87, i32 noundef 9, ptr noundef nonnull @.str.6) #2
  br label %18

8:                                                ; preds = %3
  %9 = add i32 %4, -1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #2, !srcloc !10
  br label %10

10:                                               ; preds = %10, %8
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %4, i32 %9, ptr elementtype(i32) %0) #2, !srcloc !11
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10
  %15 = extractvalue { i32, i32 } %11, 1
  %16 = icmp eq i32 %15, %4
  br i1 %16, label %17, label %3, !prof !8

17:                                               ; preds = %14, %3
  br label %18

18:                                               ; preds = %17, %7, %5, %3
  %19 = phi i1 [ true, %7 ], [ true, %5 ], [ true, %17 ], [ false, %3 ]
  ret i1 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load volatile i32, ptr %0, align 4
  br label %4

4:                                                ; preds = %15, %2
  %5 = phi i32 [ %3, %2 ], [ %16, %15 ]
  switch i32 %5, label %9 [
    i32 -1073741824, label %29
    i32 1, label %18
    i32 0, label %6
  ], !prof !12

6:                                                ; preds = %4
  %7 = load i1, ptr @refcount_dec_not_one.__already_done, align 1
  br i1 %7, label %29, label %8, !prof !8

8:                                                ; preds = %6
  store i1 true, ptr @refcount_dec_not_one.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 87, i32 noundef 9, ptr noundef nonnull @.str.6) #2
  br label %29

9:                                                ; preds = %4
  %10 = add i32 %5, -1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #2, !srcloc !10
  br label %11

11:                                               ; preds = %11, %9
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %5, i32 %10, ptr elementtype(i32) %0) #2, !srcloc !11
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11
  %16 = extractvalue { i32, i32 } %12, 1
  %17 = icmp eq i32 %16, %5
  br i1 %17, label %29, label %4, !prof !8

18:                                               ; preds = %4
  tail call void @mutex_lock(ptr noundef %1) #2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #2, !srcloc !10
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #2, !srcloc !14
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = icmp sgt i32 %20, 0
  br i1 %23, label %28, label %24, !prof !8

24:                                               ; preds = %22
  store volatile i32 -1073741824, ptr %0, align 4
  %25 = load i1, ptr @refcount_warn_saturate.__already_done.5, align 1
  br i1 %25, label %28, label %26, !prof !8

26:                                               ; preds = %24
  store i1 true, ptr @refcount_warn_saturate.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.6) #2
  br label %28

27:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !15
  br label %29

28:                                               ; preds = %26, %24, %22
  tail call void @mutex_unlock(ptr noundef %1) #2
  br label %29

29:                                               ; preds = %28, %27, %15, %8, %6, %4
  %30 = phi i1 [ false, %28 ], [ true, %27 ], [ false, %8 ], [ false, %6 ], [ false, %15 ], [ false, %4 ]
  ret i1 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load volatile i32, ptr %0, align 4
  br label %4

4:                                                ; preds = %15, %2
  %5 = phi i32 [ %3, %2 ], [ %16, %15 ]
  switch i32 %5, label %9 [
    i32 -1073741824, label %31
    i32 1, label %18
    i32 0, label %6
  ], !prof !12

6:                                                ; preds = %4
  %7 = load i1, ptr @refcount_dec_not_one.__already_done, align 1
  br i1 %7, label %31, label %8, !prof !8

8:                                                ; preds = %6
  store i1 true, ptr @refcount_dec_not_one.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 87, i32 noundef 9, ptr noundef nonnull @.str.6) #2
  br label %31

9:                                                ; preds = %4
  %10 = add i32 %5, -1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #2, !srcloc !10
  br label %11

11:                                               ; preds = %11, %9
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %5, i32 %10, ptr elementtype(i32) %0) #2, !srcloc !11
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11
  %16 = extractvalue { i32, i32 } %12, 1
  %17 = icmp eq i32 %16, %5
  br i1 %17, label %31, label %4, !prof !8

18:                                               ; preds = %4
  tail call void @_raw_spin_lock(ptr noundef %1) #2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #2, !srcloc !10
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #2, !srcloc !14
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = icmp sgt i32 %20, 0
  br i1 %23, label %28, label %24, !prof !8

24:                                               ; preds = %22
  store volatile i32 -1073741824, ptr %0, align 4
  %25 = load i1, ptr @refcount_warn_saturate.__already_done.5, align 1
  br i1 %25, label %28, label %26, !prof !8

26:                                               ; preds = %24
  store i1 true, ptr @refcount_warn_saturate.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.6) #2
  br label %28

27:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !15
  br label %31

28:                                               ; preds = %26, %24, %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !16
  %29 = load i16, ptr %1, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !19
  br label %31

31:                                               ; preds = %28, %27, %15, %8, %6, %4
  %32 = phi i1 [ false, %28 ], [ true, %27 ], [ false, %8 ], [ false, %6 ], [ false, %15 ], [ false, %4 ]
  ret i1 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @refcount_dec_and_lock_irqsave(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = load volatile i32, ptr %0, align 4
  br label %5

5:                                                ; preds = %16, %3
  %6 = phi i32 [ %4, %3 ], [ %17, %16 ]
  switch i32 %6, label %10 [
    i32 -1073741824, label %32
    i32 1, label %19
    i32 0, label %7
  ], !prof !12

7:                                                ; preds = %5
  %8 = load i1, ptr @refcount_dec_not_one.__already_done, align 1
  br i1 %8, label %32, label %9, !prof !8

9:                                                ; preds = %7
  store i1 true, ptr @refcount_dec_not_one.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 87, i32 noundef 9, ptr noundef nonnull @.str.6) #2
  br label %32

10:                                               ; preds = %5
  %11 = add i32 %6, -1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #2, !srcloc !10
  br label %12

12:                                               ; preds = %12, %10
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %6, i32 %11, ptr elementtype(i32) %0) #2, !srcloc !11
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12

16:                                               ; preds = %12
  %17 = extractvalue { i32, i32 } %13, 1
  %18 = icmp eq i32 %17, %6
  br i1 %18, label %32, label %5, !prof !8

19:                                               ; preds = %5
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #2
  store i32 %20, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #2, !srcloc !10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #2, !srcloc !14
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = icmp sgt i32 %22, 0
  br i1 %25, label %30, label %26, !prof !8

26:                                               ; preds = %24
  store volatile i32 -1073741824, ptr %0, align 4
  %27 = load i1, ptr @refcount_warn_saturate.__already_done.5, align 1
  br i1 %27, label %30, label %28, !prof !8

28:                                               ; preds = %26
  store i1 true, ptr @refcount_warn_saturate.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.6) #2
  br label %30

29:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !15
  br label %32

30:                                               ; preds = %28, %26, %24
  %31 = load i32, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %31) #2
  br label %32

32:                                               ; preds = %30, %29, %16, %9, %7, %5
  %33 = phi i1 [ false, %30 ], [ true, %29 ], [ false, %9 ], [ false, %7 ], [ false, %16 ], [ false, %5 ]
  ret i1 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2148203455}
!10 = !{i64 588259, i64 2148078230, i64 2148078256, i64 2148078303, i64 2148078325, i64 2148078353, i64 2148078373}
!11 = !{i64 574322, i64 574346, i64 574367, i64 574384, i64 574401}
!12 = !{!"branch_weights", i32 2000, i32 4, i32 4000, i32 2000}
!13 = !{i64 2148192122}
!14 = !{i64 2148094257, i64 2148094289, i64 2148094318, i64 2148094352, i64 2148094383, i64 2148094406}
!15 = !{i64 2148822822}
!16 = !{i64 2148852293}
!17 = !{i64 2148848117}
!18 = !{i64 2148848192, i64 2148848219, i64 2148848266, i64 2148848288, i64 2148848316, i64 2148848336}
!19 = !{i64 2148875296}
