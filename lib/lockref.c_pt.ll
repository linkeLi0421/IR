; ModuleID = '/llk/IR/lib/lockref.c_pt.bc'
source_filename = "../lib/lockref.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockref_get:\09\09\09\09\09"
module asm "\09.asciz \09\22lockref_get\22\09\09\09\09\09"
module asm "__kstrtabns_lockref_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockref_get_not_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22lockref_get_not_zero\22\09\09\09\09\09"
module asm "__kstrtabns_lockref_get_not_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockref_put_not_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22lockref_put_not_zero\22\09\09\09\09\09"
module asm "__kstrtabns_lockref_put_not_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockref_get_or_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22lockref_get_or_lock\22\09\09\09\09\09"
module asm "__kstrtabns_lockref_get_or_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockref_put_return:\09\09\09\09\09"
module asm "\09.asciz \09\22lockref_put_return\22\09\09\09\09\09"
module asm "__kstrtabns_lockref_put_return:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockref_put_or_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22lockref_put_or_lock\22\09\09\09\09\09"
module asm "__kstrtabns_lockref_put_or_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockref_mark_dead:\09\09\09\09\09"
module asm "\09.asciz \09\22lockref_mark_dead\22\09\09\09\09\09"
module asm "__kstrtabns_lockref_mark_dead:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockref_get_not_dead:\09\09\09\09\09"
module asm "\09.asciz \09\22lockref_get_not_dead\22\09\09\09\09\09"
module asm "__kstrtabns_lockref_get_not_dead:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }

@__kstrtab_lockref_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockref_get = external dso_local constant [0 x i8], align 1
@__ksymtab_lockref_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockref_get to i32), ptr @__kstrtab_lockref_get, ptr @__kstrtabns_lockref_get }, section "___ksymtab+lockref_get", align 4
@__kstrtab_lockref_get_not_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockref_get_not_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_lockref_get_not_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockref_get_not_zero to i32), ptr @__kstrtab_lockref_get_not_zero, ptr @__kstrtabns_lockref_get_not_zero }, section "___ksymtab+lockref_get_not_zero", align 4
@__kstrtab_lockref_put_not_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockref_put_not_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_lockref_put_not_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockref_put_not_zero to i32), ptr @__kstrtab_lockref_put_not_zero, ptr @__kstrtabns_lockref_put_not_zero }, section "___ksymtab+lockref_put_not_zero", align 4
@__kstrtab_lockref_get_or_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockref_get_or_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_lockref_get_or_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockref_get_or_lock to i32), ptr @__kstrtab_lockref_get_or_lock, ptr @__kstrtabns_lockref_get_or_lock }, section "___ksymtab+lockref_get_or_lock", align 4
@__kstrtab_lockref_put_return = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockref_put_return = external dso_local constant [0 x i8], align 1
@__ksymtab_lockref_put_return = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockref_put_return to i32), ptr @__kstrtab_lockref_put_return, ptr @__kstrtabns_lockref_put_return }, section "___ksymtab+lockref_put_return", align 4
@__kstrtab_lockref_put_or_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockref_put_or_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_lockref_put_or_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockref_put_or_lock to i32), ptr @__kstrtab_lockref_put_or_lock, ptr @__kstrtabns_lockref_put_or_lock }, section "___ksymtab+lockref_put_or_lock", align 4
@__kstrtab_lockref_mark_dead = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockref_mark_dead = external dso_local constant [0 x i8], align 1
@__ksymtab_lockref_mark_dead = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockref_mark_dead to i32), ptr @__kstrtab_lockref_mark_dead, ptr @__kstrtabns_lockref_mark_dead }, section "___ksymtab+lockref_mark_dead", align 4
@__kstrtab_lockref_get_not_dead = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockref_get_not_dead = external dso_local constant [0 x i8], align 1
@__ksymtab_lockref_get_not_dead = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockref_get_not_dead to i32), ptr @__kstrtab_lockref_get_not_dead, ptr @__kstrtabns_lockref_get_not_dead }, section "___ksymtab+lockref_get_not_dead", align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_lockref_get, ptr @__ksymtab_lockref_get_not_dead, ptr @__ksymtab_lockref_get_not_zero, ptr @__ksymtab_lockref_get_or_lock, ptr @__ksymtab_lockref_mark_dead, ptr @__ksymtab_lockref_put_not_zero, ptr @__ksymtab_lockref_put_or_lock, ptr @__ksymtab_lockref_put_return], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lockref_get(ptr noundef %0) #0 {
  %2 = load volatile i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = lshr i32 %3, 16
  %5 = and i32 %3, 65535
  %6 = icmp eq i32 %5, %4
  br i1 %6, label %7, label %35, !prof !8

7:                                                ; preds = %1
  %8 = lshr i64 %2, 32
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %31, %7
  %11 = phi i32 [ %29, %31 ], [ 100, %7 ]
  %12 = phi i32 [ %24, %31 ], [ %3, %7 ]
  %13 = phi i32 [ %26, %31 ], [ %9, %7 ]
  %14 = zext i32 %13 to i64
  %15 = shl nuw i64 %14, 32
  %16 = zext i32 %12 to i64
  %17 = or i64 %15, %16
  %18 = add i32 %13, 1
  %19 = zext i32 %18 to i64
  %20 = shl nuw i64 %19, 32
  %21 = or i64 %20, %16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #3, !srcloc !9
  %22 = tail call { i32, i64 } asm sideeffect "1:\09ldrexd\09\09$1, ${1:H}, [$3]\0A\09teq\09\09$1, $4\0A\09teqeq\09\09${1:H}, ${4:H}\0A\09bne\09\092f\0A\09strexd\09\09$0, $5, ${5:H}, [$3]\0A\09teq\09\09$0, #0\0A\09bne\09\091b\0A2:", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %0, ptr %0, i64 %17, i64 %21, ptr elementtype(i64) %0) #3, !srcloc !10
  %23 = extractvalue { i32, i64 } %22, 1
  %24 = trunc i64 %23 to i32
  %25 = lshr i64 %23, 32
  %26 = trunc i64 %25 to i32
  %27 = icmp eq i64 %23, %17
  br i1 %27, label %41, label %28, !prof !8

28:                                               ; preds = %10
  %29 = add nsw i32 %11, -1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !12
  %32 = lshr i32 %24, 16
  %33 = and i32 %24, 65535
  %34 = icmp eq i32 %33, %32
  br i1 %34, label %10, label %35, !prof !8

35:                                               ; preds = %31, %28, %1
  tail call void @_raw_spin_lock(ptr noundef %0) #3
  %36 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  %39 = load i16, ptr %0, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  br label %41

41:                                               ; preds = %35, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lockref_get_not_zero(ptr noundef %0) #0 {
  %2 = load volatile i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = lshr i32 %3, 16
  %5 = and i32 %3, 65535
  %6 = icmp eq i32 %5, %4
  br i1 %6, label %7, label %37, !prof !8

7:                                                ; preds = %1
  %8 = lshr i64 %2, 32
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %33, %7
  %11 = phi i32 [ %31, %33 ], [ 100, %7 ]
  %12 = phi i32 [ %26, %33 ], [ %3, %7 ]
  %13 = phi i32 [ %28, %33 ], [ %9, %7 ]
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %47, label %15

15:                                               ; preds = %10
  %16 = add nuw i32 %13, 1
  %17 = zext i32 %13 to i64
  %18 = shl nuw nsw i64 %17, 32
  %19 = zext i32 %12 to i64
  %20 = or i64 %18, %19
  %21 = zext i32 %16 to i64
  %22 = shl nuw i64 %21, 32
  %23 = or i64 %22, %19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #3, !srcloc !9
  %24 = tail call { i32, i64 } asm sideeffect "1:\09ldrexd\09\09$1, ${1:H}, [$3]\0A\09teq\09\09$1, $4\0A\09teqeq\09\09${1:H}, ${4:H}\0A\09bne\09\092f\0A\09strexd\09\09$0, $5, ${5:H}, [$3]\0A\09teq\09\09$0, #0\0A\09bne\09\091b\0A2:", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %0, ptr %0, i64 %20, i64 %23, ptr elementtype(i64) %0) #3, !srcloc !10
  %25 = extractvalue { i32, i64 } %24, 1
  %26 = trunc i64 %25 to i32
  %27 = lshr i64 %25, 32
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i64 %25, %20
  br i1 %29, label %47, label %30, !prof !8

30:                                               ; preds = %15
  %31 = add nsw i32 %11, -1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !18
  %34 = lshr i32 %26, 16
  %35 = and i32 %26, 65535
  %36 = icmp eq i32 %35, %34
  br i1 %36, label %10, label %37, !prof !8

37:                                               ; preds = %33, %30, %1
  tail call void @_raw_spin_lock(ptr noundef %0) #3
  %38 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = add nuw i32 %39, 1
  store i32 %42, ptr %38, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi i32 [ 1, %41 ], [ 0, %37 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  %45 = load i16, ptr %0, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  br label %47

47:                                               ; preds = %43, %15, %10
  %48 = phi i32 [ %44, %43 ], [ 0, %10 ], [ 1, %15 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lockref_put_not_zero(ptr noundef %0) #0 {
  %2 = load volatile i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = lshr i32 %3, 16
  %5 = and i32 %3, 65535
  %6 = icmp eq i32 %5, %4
  br i1 %6, label %7, label %37, !prof !8

7:                                                ; preds = %1
  %8 = lshr i64 %2, 32
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %33, %7
  %11 = phi i32 [ %31, %33 ], [ 100, %7 ]
  %12 = phi i32 [ %26, %33 ], [ %3, %7 ]
  %13 = phi i32 [ %28, %33 ], [ %9, %7 ]
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %47, label %15

15:                                               ; preds = %10
  %16 = add nsw i32 %13, -1
  %17 = zext i32 %13 to i64
  %18 = shl nuw nsw i64 %17, 32
  %19 = zext i32 %12 to i64
  %20 = or i64 %18, %19
  %21 = zext i32 %16 to i64
  %22 = shl nuw nsw i64 %21, 32
  %23 = or i64 %22, %19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #3, !srcloc !9
  %24 = tail call { i32, i64 } asm sideeffect "1:\09ldrexd\09\09$1, ${1:H}, [$3]\0A\09teq\09\09$1, $4\0A\09teqeq\09\09${1:H}, ${4:H}\0A\09bne\09\092f\0A\09strexd\09\09$0, $5, ${5:H}, [$3]\0A\09teq\09\09$0, #0\0A\09bne\09\091b\0A2:", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %0, ptr %0, i64 %20, i64 %23, ptr elementtype(i64) %0) #3, !srcloc !10
  %25 = extractvalue { i32, i64 } %24, 1
  %26 = trunc i64 %25 to i32
  %27 = lshr i64 %25, 32
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i64 %25, %20
  br i1 %29, label %47, label %30, !prof !8

30:                                               ; preds = %15
  %31 = add nsw i32 %11, -1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !20
  %34 = lshr i32 %26, 16
  %35 = and i32 %26, 65535
  %36 = icmp eq i32 %35, %34
  br i1 %36, label %10, label %37, !prof !8

37:                                               ; preds = %33, %30, %1
  tail call void @_raw_spin_lock(ptr noundef %0) #3
  %38 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = add nsw i32 %39, -1
  store i32 %42, ptr %38, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi i32 [ 1, %41 ], [ 0, %37 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  %45 = load i16, ptr %0, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  br label %47

47:                                               ; preds = %43, %15, %10
  %48 = phi i32 [ %44, %43 ], [ 0, %10 ], [ 1, %15 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lockref_get_or_lock(ptr noundef %0) #0 {
  %2 = load volatile i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = lshr i64 %2, 32
  %5 = trunc i64 %4 to i32
  %6 = lshr i32 %3, 16
  %7 = and i32 %3, 65535
  %8 = icmp ne i32 %7, %6
  %9 = icmp slt i32 %5, 1
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %38, label %11, !prof !21

11:                                               ; preds = %32, %1
  %12 = phi i32 [ %30, %32 ], [ 100, %1 ]
  %13 = phi i32 [ %25, %32 ], [ %3, %1 ]
  %14 = phi i32 [ %27, %32 ], [ %5, %1 ]
  %15 = add nuw i32 %14, 1
  %16 = zext i32 %14 to i64
  %17 = shl nuw nsw i64 %16, 32
  %18 = zext i32 %13 to i64
  %19 = or i64 %17, %18
  %20 = zext i32 %15 to i64
  %21 = shl nuw i64 %20, 32
  %22 = or i64 %21, %18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #3, !srcloc !9
  %23 = tail call { i32, i64 } asm sideeffect "1:\09ldrexd\09\09$1, ${1:H}, [$3]\0A\09teq\09\09$1, $4\0A\09teqeq\09\09${1:H}, ${4:H}\0A\09bne\09\092f\0A\09strexd\09\09$0, $5, ${5:H}, [$3]\0A\09teq\09\09$0, #0\0A\09bne\09\091b\0A2:", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %0, ptr %0, i64 %19, i64 %22, ptr elementtype(i64) %0) #3, !srcloc !10
  %24 = extractvalue { i32, i64 } %23, 1
  %25 = trunc i64 %24 to i32
  %26 = lshr i64 %24, 32
  %27 = trunc i64 %26 to i32
  %28 = icmp eq i64 %24, %19
  br i1 %28, label %46, label %29, !prof !8

29:                                               ; preds = %11
  %30 = add nsw i32 %12, -1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !22
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !23
  %33 = lshr i32 %25, 16
  %34 = and i32 %25, 65535
  %35 = icmp ne i32 %34, %33
  %36 = icmp slt i32 %27, 1
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %38, label %11, !prof !21

38:                                               ; preds = %32, %29, %1
  tail call void @_raw_spin_lock(ptr noundef %0) #3
  %39 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = add nuw i32 %40, 1
  store i32 %43, ptr %39, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  %44 = load i16, ptr %0, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  br label %46

46:                                               ; preds = %42, %38, %11
  %47 = phi i32 [ 1, %42 ], [ 0, %38 ], [ 1, %11 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lockref_put_return(ptr noundef %0) #0 {
  %2 = load volatile i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = lshr i64 %2, 32
  %5 = trunc i64 %4 to i32
  %6 = lshr i32 %3, 16
  %7 = and i32 %3, 65535
  %8 = icmp ne i32 %7, %6
  %9 = icmp slt i32 %5, 1
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %38, label %11, !prof !21

11:                                               ; preds = %32, %1
  %12 = phi i32 [ %30, %32 ], [ 100, %1 ]
  %13 = phi i32 [ %25, %32 ], [ %3, %1 ]
  %14 = phi i32 [ %27, %32 ], [ %5, %1 ]
  %15 = add nsw i32 %14, -1
  %16 = zext i32 %14 to i64
  %17 = shl nuw nsw i64 %16, 32
  %18 = zext i32 %13 to i64
  %19 = or i64 %17, %18
  %20 = zext i32 %15 to i64
  %21 = shl nuw nsw i64 %20, 32
  %22 = or i64 %21, %18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #3, !srcloc !9
  %23 = tail call { i32, i64 } asm sideeffect "1:\09ldrexd\09\09$1, ${1:H}, [$3]\0A\09teq\09\09$1, $4\0A\09teqeq\09\09${1:H}, ${4:H}\0A\09bne\09\092f\0A\09strexd\09\09$0, $5, ${5:H}, [$3]\0A\09teq\09\09$0, #0\0A\09bne\09\091b\0A2:", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %0, ptr %0, i64 %19, i64 %22, ptr elementtype(i64) %0) #3, !srcloc !10
  %24 = extractvalue { i32, i64 } %23, 1
  %25 = trunc i64 %24 to i32
  %26 = lshr i64 %24, 32
  %27 = trunc i64 %26 to i32
  %28 = icmp eq i64 %24, %19
  br i1 %28, label %38, label %29, !prof !8

29:                                               ; preds = %11
  %30 = add nsw i32 %12, -1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !24
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !25
  %33 = lshr i32 %25, 16
  %34 = and i32 %25, 65535
  %35 = icmp ne i32 %34, %33
  %36 = icmp slt i32 %27, 1
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %38, label %11, !prof !21

38:                                               ; preds = %32, %29, %11, %1
  %39 = phi i32 [ -1, %1 ], [ -1, %29 ], [ -1, %32 ], [ %15, %11 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lockref_put_or_lock(ptr noundef %0) #0 {
  %2 = load volatile i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = lshr i64 %2, 32
  %5 = trunc i64 %4 to i32
  %6 = lshr i32 %3, 16
  %7 = and i32 %3, 65535
  %8 = icmp ne i32 %7, %6
  %9 = icmp slt i32 %5, 2
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %38, label %11, !prof !21

11:                                               ; preds = %32, %1
  %12 = phi i32 [ %30, %32 ], [ 100, %1 ]
  %13 = phi i32 [ %25, %32 ], [ %3, %1 ]
  %14 = phi i32 [ %27, %32 ], [ %5, %1 ]
  %15 = add nsw i32 %14, -1
  %16 = zext i32 %14 to i64
  %17 = shl nuw nsw i64 %16, 32
  %18 = zext i32 %13 to i64
  %19 = or i64 %17, %18
  %20 = zext i32 %15 to i64
  %21 = shl nuw nsw i64 %20, 32
  %22 = or i64 %21, %18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #3, !srcloc !9
  %23 = tail call { i32, i64 } asm sideeffect "1:\09ldrexd\09\09$1, ${1:H}, [$3]\0A\09teq\09\09$1, $4\0A\09teqeq\09\09${1:H}, ${4:H}\0A\09bne\09\092f\0A\09strexd\09\09$0, $5, ${5:H}, [$3]\0A\09teq\09\09$0, #0\0A\09bne\09\091b\0A2:", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %0, ptr %0, i64 %19, i64 %22, ptr elementtype(i64) %0) #3, !srcloc !10
  %24 = extractvalue { i32, i64 } %23, 1
  %25 = trunc i64 %24 to i32
  %26 = lshr i64 %24, 32
  %27 = trunc i64 %26 to i32
  %28 = icmp eq i64 %24, %19
  br i1 %28, label %46, label %29, !prof !8

29:                                               ; preds = %11
  %30 = add nsw i32 %12, -1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !27
  %33 = lshr i32 %25, 16
  %34 = and i32 %25, 65535
  %35 = icmp ne i32 %34, %33
  %36 = icmp slt i32 %27, 2
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %38, label %11, !prof !21

38:                                               ; preds = %32, %29, %1
  tail call void @_raw_spin_lock(ptr noundef %0) #3
  %39 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = add nsw i32 %40, -1
  store i32 %43, ptr %39, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  %44 = load i16, ptr %0, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  br label %46

46:                                               ; preds = %42, %38, %11
  %47 = phi i32 [ 1, %42 ], [ 0, %38 ], [ 1, %11 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lockref_mark_dead(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %3 = load volatile i32, ptr %0, align 4
  store volatile i32 %3, ptr %2, align 4
  %4 = lshr i32 %3, 16
  %5 = and i32 %3, 65535
  %6 = icmp eq i32 %5, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br i1 %6, label %7, label %8, !prof !28

7:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/lockref.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 189, 0\0A.popsection", ""() #3, !srcloc !29
  unreachable

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  store i32 -128, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lockref_get_not_dead(ptr noundef %0) #0 {
  %2 = load volatile i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = lshr i32 %3, 16
  %5 = and i32 %3, 65535
  %6 = icmp eq i32 %5, %4
  br i1 %6, label %7, label %37, !prof !8

7:                                                ; preds = %1
  %8 = lshr i64 %2, 32
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %33, %7
  %11 = phi i32 [ %31, %33 ], [ 100, %7 ]
  %12 = phi i32 [ %26, %33 ], [ %3, %7 ]
  %13 = phi i32 [ %28, %33 ], [ %9, %7 ]
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %47, label %15

15:                                               ; preds = %10
  %16 = add nuw i32 %13, 1
  %17 = zext i32 %13 to i64
  %18 = shl nuw nsw i64 %17, 32
  %19 = zext i32 %12 to i64
  %20 = or i64 %18, %19
  %21 = zext i32 %16 to i64
  %22 = shl nuw i64 %21, 32
  %23 = or i64 %22, %19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #3, !srcloc !9
  %24 = tail call { i32, i64 } asm sideeffect "1:\09ldrexd\09\09$1, ${1:H}, [$3]\0A\09teq\09\09$1, $4\0A\09teqeq\09\09${1:H}, ${4:H}\0A\09bne\09\092f\0A\09strexd\09\09$0, $5, ${5:H}, [$3]\0A\09teq\09\09$0, #0\0A\09bne\09\091b\0A2:", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %0, ptr %0, i64 %20, i64 %23, ptr elementtype(i64) %0) #3, !srcloc !10
  %25 = extractvalue { i32, i64 } %24, 1
  %26 = trunc i64 %25 to i32
  %27 = lshr i64 %25, 32
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i64 %25, %20
  br i1 %29, label %47, label %30, !prof !8

30:                                               ; preds = %15
  %31 = add nsw i32 %11, -1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !30
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !31
  %34 = lshr i32 %26, 16
  %35 = and i32 %26, 65535
  %36 = icmp eq i32 %35, %34
  br i1 %36, label %10, label %37, !prof !8

37:                                               ; preds = %33, %30, %1
  tail call void @_raw_spin_lock(ptr noundef %0) #3
  %38 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = add nuw i32 %39, 1
  store i32 %42, ptr %38, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi i32 [ 1, %41 ], [ 0, %37 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !13
  %45 = load i16, ptr %0, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  br label %47

47:                                               ; preds = %43, %15, %10
  %48 = phi i32 [ %44, %43 ], [ 0, %10 ], [ 1, %15 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }

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
!9 = !{i64 656714, i64 2148146685, i64 2148146711, i64 2148146758, i64 2148146780, i64 2148146808, i64 2148146828}
!10 = !{i64 669382, i64 669412, i64 669429, i64 669450, i64 669463, i64 669494, i64 669511, i64 669524}
!11 = !{i64 2148887015}
!12 = !{i64 2148886857}
!13 = !{i64 2148825318}
!14 = !{i64 2148821142}
!15 = !{i64 2148821217, i64 2148821244, i64 2148821291, i64 2148821313, i64 2148821341, i64 2148821361}
!16 = !{i64 2148848321}
!17 = !{i64 2148893673}
!18 = !{i64 2148893515}
!19 = !{i64 2148900529}
!20 = !{i64 2148900371}
!21 = !{!"branch_weights", i32 2002, i32 2000}
!22 = !{i64 2148907382}
!23 = !{i64 2148907224}
!24 = !{i64 2148914225}
!25 = !{i64 2148914067}
!26 = !{i64 2148925095}
!27 = !{i64 2148924937}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i64 2148926964, i64 2148927442, i64 2148927001, i64 2148927057, i64 2148927091, i64 2148927115, i64 2148927156, i64 2148927177, i64 2148927205, i64 2148927239}
!30 = !{i64 2148934453}
!31 = !{i64 2148934295}
