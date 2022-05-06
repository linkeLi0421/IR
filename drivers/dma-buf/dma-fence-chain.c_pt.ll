; ModuleID = '/llk/IR/drivers/dma-buf/dma-fence-chain.c_pt.bc'
source_filename = "../drivers/dma-buf/dma-fence-chain.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_chain_walk:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_chain_walk\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_chain_walk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_chain_find_seqno:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_chain_find_seqno\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_chain_find_seqno:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_chain_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_chain_ops\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_chain_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_chain_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_chain_init\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_chain_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.1, i64, i64, i32, %struct.kref, i32 }
%union.anon.1 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dma_fence_chain = type { %struct.dma_fence, ptr, i64, ptr, %union.anon.2, %struct.spinlock }
%union.anon.2 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }

@__kstrtab_dma_fence_chain_walk = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_chain_walk = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_chain_walk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_chain_walk to i32), ptr @__kstrtab_dma_fence_chain_walk, ptr @__kstrtabns_dma_fence_chain_walk }, section "___ksymtab+dma_fence_chain_walk", align 4
@__kstrtab_dma_fence_chain_find_seqno = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_chain_find_seqno = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_chain_find_seqno = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_chain_find_seqno to i32), ptr @__kstrtab_dma_fence_chain_find_seqno, ptr @__kstrtabns_dma_fence_chain_find_seqno }, section "___ksymtab+dma_fence_chain_find_seqno", align 4
@dma_fence_chain_ops = dso_local constant %struct.dma_fence_ops { i8 1, ptr @dma_fence_chain_get_driver_name, ptr @dma_fence_chain_get_timeline_name, ptr @dma_fence_chain_enable_signaling, ptr @dma_fence_chain_signaled, ptr null, ptr @dma_fence_chain_release, ptr null, ptr null }, align 4
@__kstrtab_dma_fence_chain_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_chain_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_chain_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_chain_ops to i32), ptr @__kstrtab_dma_fence_chain_ops, ptr @__kstrtabns_dma_fence_chain_ops }, section "___ksymtab+dma_fence_chain_ops", align 4
@__kstrtab_dma_fence_chain_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_chain_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_chain_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_chain_init to i32), ptr @__kstrtab_dma_fence_chain_init, ptr @__kstrtabns_dma_fence_chain_init }, section "___ksymtab+dma_fence_chain_init", align 4
@.str = private unnamed_addr constant [16 x i8] c"dma_fence_chain\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unbound\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_dma_fence_chain_find_seqno, ptr @__ksymtab_dma_fence_chain_init, ptr @__ksymtab_dma_fence_chain_ops, ptr @__ksymtab_dma_fence_chain_walk], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_fence_chain_walk(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %114, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @dma_fence_chain_ops
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @dma_fence_chain_get_prev(ptr noundef nonnull %0)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %104, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.dma_fence_chain, ptr %0, i32 0, i32 1
  br label %21

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #4, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #4, !srcloc !10
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %114, label %19, !prof !11

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 3) #4
  br label %114

20:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %13) #4
  br label %114

21:                                               ; preds = %101, %10
  %22 = phi ptr [ %8, %10 ], [ %102, %101 ]
  %23 = getelementptr inbounds %struct.dma_fence, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, @dma_fence_chain_ops
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.dma_fence_chain, ptr %22, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.dma_fence, ptr %28, i32 0, i32 5
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.dma_fence, ptr %28, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dma_fence_ops, ptr %35, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %104, label %39

39:                                               ; preds = %33
  %40 = tail call zeroext i1 %37(ptr noundef %28) #4
  br i1 %40, label %41, label %104

41:                                               ; preds = %39
  %42 = tail call i32 @dma_fence_signal(ptr noundef %28) #4
  br label %43

43:                                               ; preds = %41, %26
  %44 = tail call fastcc ptr @dma_fence_chain_get_prev(ptr noundef nonnull %22)
  br label %58

45:                                               ; preds = %21
  %46 = getelementptr inbounds %struct.dma_fence, ptr %22, i32 0, i32 5
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.dma_fence_ops, ptr %24, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %104, label %54

54:                                               ; preds = %50
  %55 = tail call zeroext i1 %52(ptr noundef nonnull %22) #4
  br i1 %55, label %56, label %104

56:                                               ; preds = %54
  %57 = tail call i32 @dma_fence_signal(ptr noundef nonnull %22) #4
  br label %58

58:                                               ; preds = %56, %45, %43
  %59 = phi ptr [ %44, %43 ], [ null, %56 ], [ null, %45 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  %60 = ptrtoint ptr %22 to i32
  %61 = ptrtoint ptr %59 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #4, !srcloc !9
  br label %62

62:                                               ; preds = %62, %58
  %63 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %11, i32 %60, i32 %61) #4, !srcloc !14
  %64 = extractvalue { i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %62

66:                                               ; preds = %62
  %67 = extractvalue { i32, i32 } %63, 1
  %68 = inttoptr i32 %67 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !15
  %69 = icmp eq ptr %22, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = icmp eq i32 %67, 0
  br i1 %71, label %92, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.dma_fence, ptr %22, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %73) #4, !srcloc !9
  %74 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %73, ptr %73, i32 1, ptr elementtype(i32) %73) #4, !srcloc !10
  %75 = extractvalue { i32, i32, i32 } %74, 0
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = icmp sgt i32 %75, 0
  br i1 %78, label %92, label %79, !prof !11

79:                                               ; preds = %77
  tail call void @refcount_warn_saturate(ptr noundef %73, i32 noundef 3) #4
  br label %92

80:                                               ; preds = %72
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %73) #4
  br label %92

81:                                               ; preds = %66
  %82 = icmp eq ptr %59, null
  br i1 %82, label %92, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.dma_fence, ptr %59, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #4, !srcloc !9
  %85 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 1, ptr elementtype(i32) %84) #4, !srcloc !10
  %86 = extractvalue { i32, i32, i32 } %85, 0
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = icmp sgt i32 %86, 0
  br i1 %89, label %92, label %90, !prof !11

90:                                               ; preds = %88
  tail call void @refcount_warn_saturate(ptr noundef %84, i32 noundef 3) #4
  br label %92

91:                                               ; preds = %83
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %84) #4
  br label %92

92:                                               ; preds = %91, %90, %88, %81, %80, %79, %77, %70
  %93 = getelementptr inbounds %struct.dma_fence, ptr %22, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %93) #4, !srcloc !9
  %94 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %93, ptr %93, i32 1, ptr elementtype(i32) %93) #4, !srcloc !10
  %95 = extractvalue { i32, i32, i32 } %94, 0
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = icmp sgt i32 %95, 0
  br i1 %98, label %101, label %99, !prof !11

99:                                               ; preds = %97
  tail call void @refcount_warn_saturate(ptr noundef %93, i32 noundef 3) #4
  br label %101

100:                                              ; preds = %92
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %93) #4
  br label %101

101:                                              ; preds = %100, %99, %97
  %102 = tail call fastcc ptr @dma_fence_chain_get_prev(ptr noundef nonnull %0)
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %21

104:                                              ; preds = %101, %54, %50, %39, %33, %7
  %105 = phi ptr [ null, %7 ], [ %22, %54 ], [ %22, %50 ], [ %22, %39 ], [ %22, %33 ], [ null, %101 ]
  %106 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %106) #4, !srcloc !9
  %107 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %106, ptr %106, i32 1, ptr elementtype(i32) %106) #4, !srcloc !10
  %108 = extractvalue { i32, i32, i32 } %107, 0
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %113, label %110

110:                                              ; preds = %104
  %111 = icmp sgt i32 %108, 0
  br i1 %111, label %114, label %112, !prof !11

112:                                              ; preds = %110
  tail call void @refcount_warn_saturate(ptr noundef %106, i32 noundef 3) #4
  br label %114

113:                                              ; preds = %104
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %106) #4
  br label %114

114:                                              ; preds = %113, %112, %110, %20, %19, %17, %1
  %115 = phi ptr [ null, %17 ], [ null, %19 ], [ null, %20 ], [ %105, %110 ], [ %105, %112 ], [ %105, %113 ], [ null, %1 ]
  ret ptr %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @dma_fence_chain_get_prev(ptr noundef %0) unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !16
  %2 = getelementptr inbounds %struct.dma_fence_chain, ptr %0, i32 0, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %41, %1
  %6 = phi ptr [ %42, %41 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.dma_fence, ptr %6, i32 0, i32 6
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %20, %5
  %11 = phi i32 [ %18, %20 ], [ %8, %5 ]
  %12 = add i32 %11, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #4, !srcloc !9
  br label %13

13:                                               ; preds = %13, %10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 %11, i32 %12, ptr elementtype(i32) %7) #4, !srcloc !17
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %13

17:                                               ; preds = %13
  %18 = extractvalue { i32, i32 } %14, 1
  %19 = icmp eq i32 %18, %11
  br i1 %19, label %22, label %20, !prof !11

20:                                               ; preds = %17
  %21 = icmp eq i32 %18, 0
  br i1 %21, label %22, label %10

22:                                               ; preds = %20, %17, %5
  %23 = phi i32 [ 0, %5 ], [ %11, %17 ], [ 0, %20 ]
  %24 = add i32 %23, 1
  %25 = or i32 %24, %23
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %28, label %27, !prof !11

27:                                               ; preds = %22
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef 0) #4
  br label %28

28:                                               ; preds = %27, %22
  %29 = icmp eq i32 %23, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %28
  %31 = load volatile ptr, ptr %2, align 4
  %32 = icmp eq ptr %6, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #4, !srcloc !9
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #4, !srcloc !10
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %41, label %39, !prof !11

39:                                               ; preds = %37
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef 3) #4
  br label %41

40:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %7) #4
  br label %41

41:                                               ; preds = %40, %39, %37, %28
  %42 = load volatile ptr, ptr %2, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %5

44:                                               ; preds = %41, %30, %1
  %45 = phi ptr [ null, %1 ], [ %6, %30 ], [ null, %41 ]
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !18
  ret ptr %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_fence_chain_find_seqno(ptr nocapture noundef %0, i64 noundef %1) #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %53, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %53, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @dma_fence_chain_ops
  br i1 %10, label %11, label %53

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 4
  %13 = load i64, ptr %12, align 8
  %14 = icmp ult i64 %13, %1
  br i1 %14, label %53, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #4, !srcloc !9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #4, !srcloc !19
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !20

20:                                               ; preds = %15
  %21 = add i32 %18, 1
  %22 = or i32 %21, %18
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %26, label %24, !prof !11

24:                                               ; preds = %20, %15
  %25 = phi i32 [ 2, %15 ], [ 1, %20 ]
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef %25) #4
  br label %26

26:                                               ; preds = %24, %20
  store ptr %5, ptr %0, align 4
  %27 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 3
  br label %28

28:                                               ; preds = %42, %26
  %29 = phi ptr [ %5, %26 ], [ %43, %42 ]
  %30 = getelementptr inbounds %struct.dma_fence, ptr %29, i32 0, i32 3
  %31 = load i64, ptr %30, align 8
  %32 = load i64, ptr %27, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.dma_fence, ptr %29, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, @dma_fence_chain_ops
  %38 = select i1 %37, ptr %29, ptr null
  %39 = getelementptr inbounds %struct.dma_fence_chain, ptr %38, i32 0, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = icmp ult i64 %40, %1
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = tail call ptr @dma_fence_chain_walk(ptr noundef nonnull %29)
  store ptr %43, ptr %0, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %28

45:                                               ; preds = %42, %34, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #4, !srcloc !9
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #4, !srcloc !10
  %47 = extractvalue { i32, i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = icmp sgt i32 %47, 0
  br i1 %50, label %53, label %51, !prof !11

51:                                               ; preds = %49
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef 3) #4
  br label %53

52:                                               ; preds = %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %16) #4
  br label %53

53:                                               ; preds = %52, %51, %49, %11, %7, %4, %2
  %54 = phi i32 [ 0, %2 ], [ -22, %11 ], [ 0, %49 ], [ 0, %51 ], [ 0, %52 ], [ -22, %4 ], [ -22, %7 ]
  ret i32 %54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @dma_fence_chain_get_driver_name(ptr nocapture noundef readnone %0) #1 {
  ret ptr @.str
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @dma_fence_chain_get_timeline_name(ptr nocapture noundef readnone %0) #1 {
  ret ptr @.str.1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @dma_fence_chain_enable_signaling(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %87, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @dma_fence_chain_ops
  br i1 %6, label %7, label %87

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #4, !srcloc !9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #4, !srcloc !19
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !20

12:                                               ; preds = %7
  %13 = add i32 %10, 1
  %14 = or i32 %13, %10
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %18, label %16, !prof !11

16:                                               ; preds = %12, %7
  %17 = phi i32 [ 2, %7 ], [ 1, %12 ]
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef %17) #4
  br label %18

18:                                               ; preds = %16, %12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #4, !srcloc !9
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #4, !srcloc !19
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !20

22:                                               ; preds = %18
  %23 = add i32 %20, 1
  %24 = or i32 %23, %20
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %28, label %26, !prof !11

26:                                               ; preds = %22, %18
  %27 = phi i32 [ 2, %18 ], [ 1, %22 ]
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef %27) #4
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.dma_fence_chain, ptr %0, i32 0, i32 4
  br label %30

30:                                               ; preds = %75, %28
  %31 = phi ptr [ %0, %28 ], [ %76, %75 ]
  %32 = getelementptr inbounds %struct.dma_fence, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, @dma_fence_chain_ops
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.dma_fence_chain, ptr %31, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %35, %30
  %40 = phi ptr [ %37, %35 ], [ %31, %30 ]
  %41 = getelementptr inbounds %struct.dma_fence, ptr %40, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #4, !srcloc !9
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #4, !srcloc !19
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45, !prof !20

45:                                               ; preds = %39
  %46 = add i32 %43, 1
  %47 = or i32 %46, %43
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %51, label %49, !prof !11

49:                                               ; preds = %45, %39
  %50 = phi i32 [ 2, %39 ], [ 1, %45 ]
  tail call void @refcount_warn_saturate(ptr noundef %41, i32 noundef %50) #4
  br label %51

51:                                               ; preds = %49, %45
  %52 = tail call i32 @dma_fence_add_callback(ptr noundef nonnull %40, ptr noundef %29, ptr noundef nonnull @dma_fence_chain_cb) #4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %66

54:                                               ; preds = %35
  %55 = tail call i32 @dma_fence_add_callback(ptr noundef null, ptr noundef %29, ptr noundef nonnull @dma_fence_chain_cb) #4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %54, %51
  %58 = getelementptr inbounds %struct.dma_fence, ptr %31, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #4, !srcloc !9
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #4, !srcloc !10
  %60 = extractvalue { i32, i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = icmp sgt i32 %60, 0
  br i1 %63, label %87, label %64, !prof !11

64:                                               ; preds = %62
  tail call void @refcount_warn_saturate(ptr noundef %58, i32 noundef 3) #4
  br label %87

65:                                               ; preds = %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %58) #4
  br label %87

66:                                               ; preds = %51
  %67 = getelementptr inbounds %struct.dma_fence, ptr %40, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #4, !srcloc !9
  %68 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 1, ptr elementtype(i32) %67) #4, !srcloc !10
  %69 = extractvalue { i32, i32, i32 } %68, 0
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = icmp sgt i32 %69, 0
  br i1 %72, label %75, label %73, !prof !11

73:                                               ; preds = %71
  tail call void @refcount_warn_saturate(ptr noundef %67, i32 noundef 3) #4
  br label %75

74:                                               ; preds = %66
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %67) #4
  br label %75

75:                                               ; preds = %74, %73, %71, %54
  %76 = tail call ptr @dma_fence_chain_walk(ptr noundef nonnull %31)
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %30

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %79) #4, !srcloc !9
  %80 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 1, ptr elementtype(i32) %79) #4, !srcloc !10
  %81 = extractvalue { i32, i32, i32 } %80, 0
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = icmp sgt i32 %81, 0
  br i1 %84, label %87, label %85, !prof !11

85:                                               ; preds = %83
  tail call void @refcount_warn_saturate(ptr noundef %79, i32 noundef 3) #4
  br label %87

86:                                               ; preds = %78
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %79) #4
  br label %87

87:                                               ; preds = %86, %85, %83, %65, %64, %62, %3, %1
  %88 = phi i1 [ false, %86 ], [ false, %85 ], [ false, %83 ], [ true, %65 ], [ true, %64 ], [ true, %62 ], [ false, %3 ], [ false, %1 ]
  ret i1 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @dma_fence_chain_signaled(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %51, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #4, !srcloc !9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #4, !srcloc !19
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !20

8:                                                ; preds = %3
  %9 = add i32 %6, 1
  %10 = or i32 %9, %6
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12, !prof !11

12:                                               ; preds = %8, %3
  %13 = phi i32 [ 2, %3 ], [ 1, %8 ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %13) #4
  br label %14

14:                                               ; preds = %12, %8
  br label %15

15:                                               ; preds = %48, %14
  %16 = phi ptr [ %49, %48 ], [ %0, %14 ]
  %17 = getelementptr inbounds %struct.dma_fence, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @dma_fence_chain_ops
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.dma_fence_chain, ptr %16, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi ptr [ %22, %20 ], [ %16, %15 ]
  %25 = getelementptr inbounds %struct.dma_fence, ptr %24, i32 0, i32 5
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.dma_fence, ptr %24, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dma_fence_ops, ptr %31, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = tail call zeroext i1 %33(ptr noundef %24) #4
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = tail call i32 @dma_fence_signal(ptr noundef %24) #4
  br label %48

39:                                               ; preds = %35, %29
  %40 = getelementptr inbounds %struct.dma_fence, ptr %16, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #4, !srcloc !9
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #4, !srcloc !10
  %42 = extractvalue { i32, i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = icmp sgt i32 %42, 0
  br i1 %45, label %51, label %46, !prof !11

46:                                               ; preds = %44
  tail call void @refcount_warn_saturate(ptr noundef %40, i32 noundef 3) #4
  br label %51

47:                                               ; preds = %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %40) #4
  br label %51

48:                                               ; preds = %37, %23
  %49 = tail call ptr @dma_fence_chain_walk(ptr noundef nonnull %16)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %15

51:                                               ; preds = %48, %47, %46, %44, %1
  %52 = phi i1 [ false, %47 ], [ false, %46 ], [ false, %44 ], [ true, %1 ], [ true, %48 ]
  ret i1 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dma_fence_chain_release(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @dma_fence_chain_ops
  %7 = select i1 %6, ptr %0, ptr null
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi ptr [ null, %1 ], [ %7, %3 ]
  %10 = getelementptr inbounds %struct.dma_fence_chain, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %32, %8
  %14 = phi ptr [ %33, %32 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.dma_fence, ptr %14, i32 0, i32 6
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 1
  br i1 %17, label %35, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.dma_fence, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, @dma_fence_chain_ops
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dma_fence_chain, ptr %14, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  store ptr %24, ptr %10, align 8
  store volatile ptr null, ptr %23, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #4, !srcloc !9
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #4, !srcloc !10
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = icmp sgt i32 %26, 0
  br i1 %29, label %32, label %30, !prof !11

30:                                               ; preds = %28
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #4
  br label %32

31:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %15) #4
  br label %32

32:                                               ; preds = %31, %30, %28
  %33 = load ptr, ptr %10, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %13

35:                                               ; preds = %18, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #4, !srcloc !9
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #4, !srcloc !10
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = icmp sgt i32 %37, 0
  br i1 %40, label %43, label %41, !prof !11

41:                                               ; preds = %39
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #4
  br label %43

42:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %15) #4
  br label %43

43:                                               ; preds = %42, %41, %39, %32, %8
  %44 = getelementptr inbounds %struct.dma_fence_chain, ptr %9, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.dma_fence, ptr %45, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #4, !srcloc !9
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #4, !srcloc !10
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = icmp sgt i32 %50, 0
  br i1 %53, label %56, label %54, !prof !11

54:                                               ; preds = %52
  tail call void @refcount_warn_saturate(ptr noundef %48, i32 noundef 3) #4
  br label %56

55:                                               ; preds = %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %48) #4
  br label %56

56:                                               ; preds = %55, %54, %52, %43
  tail call void @dma_fence_free(ptr noundef %0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_fence_chain_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ne ptr %8, @dma_fence_chain_ops
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i1 [ true, %4 ], [ %9, %6 ]
  %12 = getelementptr inbounds %struct.dma_fence_chain, ptr %0, i32 0, i32 5
  store i32 0, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !21
  %13 = getelementptr inbounds %struct.dma_fence_chain, ptr %0, i32 0, i32 1
  store volatile ptr %1, ptr %13, align 8
  %14 = getelementptr inbounds %struct.dma_fence_chain, ptr %0, i32 0, i32 3
  store ptr %2, ptr %14, align 8
  %15 = getelementptr inbounds %struct.dma_fence_chain, ptr %0, i32 0, i32 2
  store i64 0, ptr %15, align 8
  br i1 %11, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #4
  br label %38

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 4
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %22, align 4, !range !22
  %24 = icmp eq i8 %23, 0
  %25 = icmp ult i64 %20, %3
  %26 = trunc i64 %3 to i32
  %27 = trunc i64 %20 to i32
  %28 = sub i32 %26, %27
  %29 = icmp sgt i32 %28, 0
  %30 = select i1 %24, i1 %29, i1 %25
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 3
  %33 = load i64, ptr %32, align 8
  store i64 %20, ptr %15, align 8
  br label %38

34:                                               ; preds = %18
  %35 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #4
  %36 = load i64, ptr %19, align 8
  %37 = tail call i64 @llvm.umax.i64(i64 %36, i64 %3)
  br label %38

38:                                               ; preds = %34, %31, %16
  %39 = phi i64 [ %33, %31 ], [ %35, %34 ], [ %17, %16 ]
  %40 = phi i64 [ %3, %31 ], [ %37, %34 ], [ %3, %16 ]
  tail call void @dma_fence_init(ptr noundef %0, ptr noundef nonnull @dma_fence_chain_ops, ptr noundef %12, i64 noundef %39, i64 noundef %40) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dma_fence_chain_cb(ptr noundef %0, ptr noundef %1) #0 {
  store ptr null, ptr %1, align 4
  %3 = getelementptr inbounds i8, ptr %1, i32 4
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds i8, ptr %1, i32 8
  store ptr @dma_fence_chain_irq_work, ptr %4, align 4
  %5 = getelementptr inbounds i8, ptr %1, i32 12
  store ptr null, ptr %5, align 4
  %6 = tail call zeroext i1 @irq_work_queue(ptr noundef %1) #4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #4, !srcloc !9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #4, !srcloc !10
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %17, label %15, !prof !11

15:                                               ; preds = %13
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #4
  br label %17

16:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %9) #4
  br label %17

17:                                               ; preds = %16, %15, %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dma_fence_chain_irq_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -68
  %3 = tail call zeroext i1 @dma_fence_chain_enable_signaling(ptr noundef %2)
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @dma_fence_signal(ptr noundef %2) #4
  br label %6

6:                                                ; preds = %4, %1
  %7 = icmp eq ptr %2, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %6
  %9 = getelementptr i8, ptr %0, i32 -32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #4, !srcloc !9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #4, !srcloc !10
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %17, label %15, !prof !11

15:                                               ; preds = %13
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #4
  br label %17

16:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %9) #4
  br label %17

17:                                               ; preds = %16, %15, %13, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2148326582}
!9 = !{i64 723516, i64 2148213487, i64 2148213513, i64 2148213560, i64 2148213582, i64 2148213610, i64 2148213630}
!10 = !{i64 2148228717, i64 2148228749, i64 2148228778, i64 2148228812, i64 2148228843, i64 2148228866}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148969191}
!13 = !{i64 2151551937}
!14 = !{i64 734890, i64 734911, i64 734934, i64 734953, i64 734972}
!15 = !{i64 2151552325}
!16 = !{i64 2149118835}
!17 = !{i64 709579, i64 709603, i64 709624, i64 709641, i64 709658}
!18 = !{i64 2149119052}
!19 = !{i64 2148226360, i64 2148226392, i64 2148226421, i64 2148226455, i64 2148226486, i64 2148226509}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2151571266}
!22 = !{i8 0, i8 2}
