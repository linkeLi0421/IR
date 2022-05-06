; ModuleID = '/llk/IR/drivers/dma-buf/dma-fence-array.c_pt.bc'
source_filename = "../drivers/dma-buf/dma-fence-array.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_array_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_array_ops\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_array_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_array_create:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_array_create\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_array_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_match_context:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_match_context\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_match_context:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.1, i64, i64, i32, %struct.kref, i32 }
%union.anon.1 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dma_fence_array = type { %struct.dma_fence, %struct.spinlock, i32, %struct.atomic_t, ptr, %struct.irq_work }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_array_cb = type { %struct.dma_fence_cb, ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }

@dma_fence_array_ops = dso_local constant %struct.dma_fence_ops { i8 0, ptr @dma_fence_array_get_driver_name, ptr @dma_fence_array_get_timeline_name, ptr @dma_fence_array_enable_signaling, ptr @dma_fence_array_signaled, ptr null, ptr @dma_fence_array_release, ptr null, ptr null }, align 4
@__kstrtab_dma_fence_array_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_array_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_array_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_array_ops to i32), ptr @__kstrtab_dma_fence_array_ops, ptr @__kstrtabns_dma_fence_array_ops }, section "___ksymtab+dma_fence_array_ops", align 4
@__kstrtab_dma_fence_array_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_array_create = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_array_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_array_create to i32), ptr @__kstrtab_dma_fence_array_create, ptr @__kstrtabns_dma_fence_array_create }, section "___ksymtab+dma_fence_array_create", align 4
@__kstrtab_dma_fence_match_context = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_match_context = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_match_context = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_match_context to i32), ptr @__kstrtab_dma_fence_match_context, ptr @__kstrtabns_dma_fence_match_context }, section "___ksymtab+dma_fence_match_context", align 4
@.str = private unnamed_addr constant [16 x i8] c"dma_fence_array\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unbound\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_dma_fence_array_create, ptr @__ksymtab_dma_fence_array_ops, ptr @__ksymtab_dma_fence_match_context], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @dma_fence_array_get_driver_name(ptr nocapture noundef readnone %0) #0 {
  ret ptr @.str
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @dma_fence_array_get_timeline_name(ptr nocapture noundef readnone %0) #0 {
  ret ptr @.str.1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @dma_fence_array_enable_signaling(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @dma_fence_array_ops
  %5 = select i1 %4, ptr %0, ptr null
  %6 = getelementptr %struct.dma_fence_array, ptr %5, i32 1
  %7 = getelementptr inbounds %struct.dma_fence_array, ptr %5, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %72, label %10

10:                                               ; preds = %1
  %11 = icmp eq ptr %5, null
  %12 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 6
  %13 = getelementptr inbounds %struct.dma_fence_array, ptr %5, i32 0, i32 4
  %14 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 7
  %15 = getelementptr inbounds %struct.dma_fence_array, ptr %5, i32 0, i32 3
  br label %16

16:                                               ; preds = %68, %10
  %17 = phi i32 [ 0, %10 ], [ %69, %68 ]
  %18 = getelementptr %struct.dma_fence_array_cb, ptr %6, i32 %17
  %19 = getelementptr inbounds %struct.dma_fence_array_cb, ptr %18, i32 0, i32 1
  store ptr %5, ptr %19, align 4
  br i1 %11, label %30, label %20

20:                                               ; preds = %16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #5, !srcloc !8
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #5, !srcloc !9
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !10

24:                                               ; preds = %20
  %25 = add i32 %22, 1
  %26 = or i32 %25, %22
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %30, label %28, !prof !11

28:                                               ; preds = %24, %20
  %29 = phi i32 [ 2, %20 ], [ 1, %24 ]
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef %29) #5
  br label %30

30:                                               ; preds = %28, %24, %16
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr ptr, ptr %31, i32 %17
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @dma_fence_add_callback(ptr noundef %33, ptr noundef %18, ptr noundef nonnull @dma_fence_array_cb_func) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %68, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %13, align 4
  %38 = getelementptr ptr, ptr %37, i32 %17
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dma_fence, ptr %39, i32 0, i32 7
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #5, !srcloc !8
  br label %44

44:                                               ; preds = %44, %43
  %45 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %14, i32 1, i32 %41) #5, !srcloc !13
  %46 = extractvalue { i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %44

48:                                               ; preds = %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  br label %49

49:                                               ; preds = %48, %36
  br i1 %11, label %58, label %50

50:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #5, !srcloc !8
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #5, !srcloc !16
  %52 = extractvalue { i32, i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = icmp sgt i32 %52, 0
  br i1 %55, label %58, label %56, !prof !11

56:                                               ; preds = %54
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #5
  br label %58

57:                                               ; preds = %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  tail call void @dma_fence_release(ptr noundef %12) #5
  br label %58

58:                                               ; preds = %57, %56, %54, %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #5, !srcloc !8
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #5, !srcloc !19
  %60 = extractvalue { i32, i32 } %59, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !20
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #5, !srcloc !8
  br label %63

63:                                               ; preds = %63, %62
  %64 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %14, i32 1, i32 0) #5, !srcloc !13
  %65 = extractvalue { i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %63

67:                                               ; preds = %63
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !22
  br label %72

68:                                               ; preds = %58, %30
  %69 = add nuw i32 %17, 1
  %70 = load i32, ptr %7, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %16, label %72

72:                                               ; preds = %68, %67, %1
  %73 = phi i1 [ false, %67 ], [ true, %1 ], [ true, %68 ]
  ret i1 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @dma_fence_array_signaled(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @dma_fence_array_ops
  %5 = select i1 %4, ptr %0, ptr null
  %6 = getelementptr inbounds %struct.dma_fence_array, ptr %5, i32 0, i32 3
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #5, !srcloc !8
  br label %11

11:                                               ; preds = %11, %9
  %12 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %10, i32 1, i32 0) #5, !srcloc !13
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !22
  br label %16

16:                                               ; preds = %15, %1
  %17 = xor i1 %8, true
  ret i1 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dma_fence_array_release(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @dma_fence_array_ops
  %5 = select i1 %4, ptr %0, ptr null
  %6 = getelementptr inbounds %struct.dma_fence_array, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dma_fence_array, ptr %5, i32 0, i32 4
  br label %11

11:                                               ; preds = %26, %9
  %12 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr ptr, ptr %13, i32 %12
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.dma_fence, ptr %15, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #5, !srcloc !8
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #5, !srcloc !16
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = icmp sgt i32 %20, 0
  br i1 %23, label %26, label %24, !prof !11

24:                                               ; preds = %22
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef 3) #5
  br label %26

25:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  tail call void @dma_fence_release(ptr noundef %18) #5
  br label %26

26:                                               ; preds = %25, %24, %22, %11
  %27 = add nuw i32 %12, 1
  %28 = load i32, ptr %6, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %11, label %30

30:                                               ; preds = %26, %1
  %31 = getelementptr inbounds %struct.dma_fence_array, ptr %5, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #5
  tail call void @dma_fence_free(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_fence_array_create(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4) #1 {
  %6 = shl i32 %0, 4
  %7 = add i32 %6, 80
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.dma_fence_array, ptr %8, i32 0, i32 1
  store i32 0, ptr %11, align 16
  %12 = zext i32 %3 to i64
  tail call void @dma_fence_init(ptr noundef nonnull %8, ptr noundef nonnull @dma_fence_array_ops, ptr noundef %11, i64 noundef %2, i64 noundef %12) #5
  %13 = getelementptr inbounds %struct.dma_fence_array, ptr %8, i32 0, i32 5
  store ptr null, ptr %13, align 64
  %14 = getelementptr inbounds %struct.dma_fence_array, ptr %8, i32 0, i32 5, i32 0, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dma_fence_array, ptr %8, i32 0, i32 5, i32 1
  store ptr @irq_dma_fence_array_work, ptr %15, align 8
  %16 = getelementptr inbounds %struct.dma_fence_array, ptr %8, i32 0, i32 5, i32 2
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dma_fence_array, ptr %8, i32 0, i32 2
  store i32 %0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dma_fence_array, ptr %8, i32 0, i32 3
  %19 = select i1 %4, i32 1, i32 %0
  store volatile i32 %19, ptr %18, align 8
  %20 = getelementptr inbounds %struct.dma_fence_array, ptr %8, i32 0, i32 4
  store ptr %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 7
  store i32 1, ptr %21, align 8
  br label %22

22:                                               ; preds = %10, %5
  %23 = phi ptr [ %8, %10 ], [ null, %5 ]
  ret ptr %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @irq_dma_fence_array_work(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #5, !srcloc !8
  br label %3

3:                                                ; preds = %3, %1
  %4 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %2, i32 1, i32 0) #5, !srcloc !13
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %3

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !22
  %9 = tail call i32 @dma_fence_signal(ptr noundef %8) #5
  %10 = icmp eq ptr %8, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %0, i32 -28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #5, !srcloc !8
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #5, !srcloc !16
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %20, label %18, !prof !11

18:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #5
  br label %20

19:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  tail call void @dma_fence_release(ptr noundef %12) #5
  br label %20

20:                                               ; preds = %19, %18, %16, %7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @dma_fence_match_context(ptr nocapture noundef readonly %0, i64 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @dma_fence_array_ops
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dma_fence_array, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dma_fence_array, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  br label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 3
  %15 = load i64, ptr %14, align 8
  %16 = icmp eq i64 %15, %1
  br label %28

17:                                               ; preds = %17, %10
  %18 = phi i32 [ 0, %10 ], [ %25, %17 ]
  %19 = getelementptr ptr, ptr %12, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dma_fence, ptr %20, i32 0, i32 3
  %22 = load i64, ptr %21, align 8
  %23 = icmp eq i64 %22, %1
  %24 = xor i1 %23, true
  %25 = add nuw i32 %18, 1
  %26 = icmp eq i32 %25, %8
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %28, label %17

28:                                               ; preds = %17, %13, %6
  %29 = phi i1 [ %16, %13 ], [ true, %6 ], [ %23, %17 ]
  ret i1 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dma_fence_array_cb_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.dma_fence_array_cb, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dma_fence, ptr %4, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #5, !srcloc !8
  br label %10

10:                                               ; preds = %10, %8
  %11 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %9, i32 1, i32 %6) #5, !srcloc !13
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  br label %15

15:                                               ; preds = %14, %2
  %16 = getelementptr inbounds %struct.dma_fence_array, ptr %4, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #5, !srcloc !8
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #5, !srcloc !19
  %18 = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !20
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.dma_fence_array, ptr %4, i32 0, i32 5
  %22 = tail call zeroext i1 @irq_work_queue(ptr noundef %21) #5
  br label %34

23:                                               ; preds = %15
  %24 = icmp eq ptr %4, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.dma_fence, ptr %4, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #5, !srcloc !8
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #5, !srcloc !16
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %34, label %32, !prof !11

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #5
  br label %34

33:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  tail call void @dma_fence_release(ptr noundef %26) #5
  br label %34

34:                                               ; preds = %33, %32, %30, %23, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
!8 = !{i64 759711, i64 2148249682, i64 2148249708, i64 2148249755, i64 2148249777, i64 2148249805, i64 2148249825}
!9 = !{i64 2148262555, i64 2148262587, i64 2148262616, i64 2148262650, i64 2148262681, i64 2148262704}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2151549666}
!13 = !{i64 771085, i64 771106, i64 771129, i64 771148, i64 771167}
!14 = !{i64 2151550045}
!15 = !{i64 2148362777}
!16 = !{i64 2148264912, i64 2148264944, i64 2148264973, i64 2148265007, i64 2148265038, i64 2148265061}
!17 = !{i64 2149277667}
!18 = !{i64 2148361776}
!19 = !{i64 2148264138, i64 2148264170, i64 2148264199, i64 2148264233, i64 2148264264, i64 2148264287}
!20 = !{i64 2148361979}
!21 = !{i64 2151550938}
!22 = !{i64 2151551313}
