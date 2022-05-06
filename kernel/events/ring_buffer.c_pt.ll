; ModuleID = '/llk/IR/kernel/events/ring_buffer.c_pt.bc'
source_filename = "../kernel/events/ring_buffer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_perf_aux_output_flag:\09\09\09\09\09"
module asm "\09.asciz \09\22perf_aux_output_flag\22\09\09\09\09\09"
module asm "__kstrtabns_perf_aux_output_flag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_perf_aux_output_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22perf_aux_output_begin\22\09\09\09\09\09"
module asm "__kstrtabns_perf_aux_output_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_perf_aux_output_end:\09\09\09\09\09"
module asm "\09.asciz \09\22perf_aux_output_end\22\09\09\09\09\09"
module asm "__kstrtabns_perf_aux_output_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_perf_aux_output_skip:\09\09\09\09\09"
module asm "\09.asciz \09\22perf_aux_output_skip\22\09\09\09\09\09"
module asm "__kstrtabns_perf_aux_output_skip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_perf_get_aux:\09\09\09\09\09"
module asm "\09.asciz \09\22perf_get_aux\22\09\09\09\09\09"
module asm "__kstrtabns_perf_get_aux:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.91 = type { %struct.perf_event_header, i64, i64 }
%struct.perf_event_header = type { i32, i16, i16 }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.65, i64, i64, i64, %union.anon.66, i32, %union.anon.67, %union.anon.68, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.65 = type { i64 }
%union.anon.66 = type { i32 }
%union.anon.67 = type { i64 }
%union.anon.68 = type { i64 }
%struct.hw_perf_event = type { %union.anon.69, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.76, i64, i64, i64, i64 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.atomic_t = type { i32 }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.perf_buffer = type { %struct.refcount_struct, %struct.callback_head, %struct.work_struct, i32, i32, i32, i32, %struct.atomic_t, %struct.local_t, i32, %struct.local_t, %struct.local_t, %struct.local_t, i32, i32, %struct.spinlock, %struct.list_head, %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, [0 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.local_t = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.perf_output_handle = type { ptr, ptr, i32, i32, i64, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.perf_event_mmap_page = type { i32, i32, i32, i32, i64, i64, i64, %union.anon.79, i16, i16, i32, i64, i64, i32, i32, i64, i64, [928 x i8], i64, i64, i64, i64, i64, i64, i64, i64 }
%union.anon.79 = type { i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.63, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@perf_aux_output_flag.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [28 x i8] c"kernel/events/ring_buffer.c\00", align 1
@__kstrtab_perf_aux_output_flag = external dso_local constant [0 x i8], align 1
@__kstrtabns_perf_aux_output_flag = external dso_local constant [0 x i8], align 1
@__ksymtab_perf_aux_output_flag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @perf_aux_output_flag to i32), ptr @__kstrtab_perf_aux_output_flag, ptr @__kstrtabns_perf_aux_output_flag }, section "___ksymtab_gpl+perf_aux_output_flag", align 4
@perf_aux_output_begin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_perf_aux_output_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_perf_aux_output_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_perf_aux_output_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @perf_aux_output_begin to i32), ptr @__kstrtab_perf_aux_output_begin, ptr @__kstrtabns_perf_aux_output_begin }, section "___ksymtab_gpl+perf_aux_output_begin", align 4
@__kstrtab_perf_aux_output_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_perf_aux_output_end = external dso_local constant [0 x i8], align 1
@__ksymtab_perf_aux_output_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @perf_aux_output_end to i32), ptr @__kstrtab_perf_aux_output_end, ptr @__kstrtabns_perf_aux_output_end }, section "___ksymtab_gpl+perf_aux_output_end", align 4
@__kstrtab_perf_aux_output_skip = external dso_local constant [0 x i8], align 1
@__kstrtabns_perf_aux_output_skip = external dso_local constant [0 x i8], align 1
@__ksymtab_perf_aux_output_skip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @perf_aux_output_skip to i32), ptr @__kstrtab_perf_aux_output_skip, ptr @__kstrtabns_perf_aux_output_skip }, section "___ksymtab_gpl+perf_aux_output_skip", align 4
@__kstrtab_perf_get_aux = external dso_local constant [0 x i8], align 1
@__kstrtabns_perf_get_aux = external dso_local constant [0 x i8], align 1
@__ksymtab_perf_get_aux = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @perf_get_aux to i32), ptr @__kstrtab_perf_get_aux, ptr @__kstrtabns_perf_get_aux }, section "___ksymtab_gpl+perf_get_aux", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__rb_free_aux.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_perf_aux_output_begin, ptr @__ksymtab_perf_aux_output_end, ptr @__ksymtab_perf_aux_output_flag, ptr @__ksymtab_perf_aux_output_skip, ptr @__ksymtab_perf_get_aux], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @perf_output_begin_forward(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.anon.91, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false) #11, !annotation !8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %6 = getelementptr inbounds %struct.perf_event, ptr %2, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr %2, ptr %7
  %10 = getelementptr inbounds %struct.perf_event, ptr %9, i32 0, i32 39
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %118, label %13, !prof !10

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17, !prof !11

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %118, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #11, !srcloc !12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #11, !srcloc !13
  br label %118

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 1
  store ptr %11, ptr %25, align 4
  store ptr %9, ptr %0, align 8
  %26 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 12
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29, !prof !11

29:                                               ; preds = %24
  %30 = add i32 %3, 24
  %31 = getelementptr inbounds %struct.perf_event, ptr %9, i32 0, i32 21, i32 6
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 262144
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.perf_event, ptr %9, i32 0, i32 23
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = add i32 %30, %38
  br label %40

40:                                               ; preds = %35, %29, %24
  %41 = phi i32 [ %39, %35 ], [ %30, %29 ], [ %3, %24 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %42 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 9
  %43 = load volatile i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store volatile i32 %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 11
  %46 = load volatile i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 2
  store i32 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 33
  %49 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 8
  %50 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 5
  %51 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 4
  %52 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 3
  br label %53

53:                                               ; preds = %77, %40
  %54 = load ptr, ptr %48, align 4
  %55 = getelementptr inbounds %struct.perf_event_mmap_page, ptr %54, i32 0, i32 19
  %56 = load volatile i64, ptr %55, align 8
  %57 = load volatile i32, ptr %49, align 4
  %58 = load i32, ptr %50, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = trunc i64 %56 to i32
  %62 = load i32, ptr %51, align 4
  %63 = load i32, ptr %52, align 4
  %64 = add i32 %63, 12
  %65 = shl i32 %62, %64
  %66 = xor i32 %57, -1
  %67 = add i32 %61, %66
  %68 = add i32 %65, -1
  %69 = and i32 %68, %67
  %70 = icmp ult i32 %69, %41
  br i1 %70, label %116, label %71, !prof !10

71:                                               ; preds = %60, %53
  %72 = add i32 %57, %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #11, !srcloc !12
  br label %73

73:                                               ; preds = %73, %71
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 %57, i32 %72, ptr elementtype(i32) %49) #11, !srcloc !16
  %75 = extractvalue { i32, i32 } %74, 0
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %73

77:                                               ; preds = %73
  %78 = extractvalue { i32, i32 } %74, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  %79 = icmp eq i32 %78, %57
  br i1 %79, label %80, label %53

80:                                               ; preds = %77
  %81 = load volatile i32, ptr %45, align 4
  %82 = sub i32 %72, %81
  %83 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 13
  %84 = load i32, ptr %83, align 4
  %85 = icmp ugt i32 %82, %84
  br i1 %85, label %86, label %88, !prof !10

86:                                               ; preds = %80
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #11, !srcloc !12
  %87 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 %84, ptr elementtype(i32) %45) #11, !srcloc !13
  br label %88

88:                                               ; preds = %86, %80
  %89 = load i32, ptr %52, align 4
  %90 = add i32 %89, 12
  %91 = lshr i32 %57, %90
  %92 = load i32, ptr %51, align 4
  %93 = add i32 %92, -1
  %94 = and i32 %91, %93
  %95 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 6
  store i32 %94, ptr %95, align 4
  %96 = shl nuw i32 1, %90
  %97 = add i32 %96, -1
  %98 = and i32 %97, %57
  %99 = getelementptr %struct.perf_buffer, ptr %11, i32 0, i32 34, i32 %94
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr i8, ptr %100, i32 %98
  %102 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 5
  store ptr %101, ptr %102, align 8
  %103 = sub i32 %96, %98
  %104 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 3
  store i32 %103, ptr %104, align 4
  br i1 %28, label %119, label %105, !prof !11

105:                                              ; preds = %88
  %106 = getelementptr inbounds %struct.perf_event_header, ptr %5, i32 0, i32 2
  store i16 24, ptr %106, align 2
  store i32 2, ptr %5, align 8
  %107 = getelementptr inbounds %struct.perf_event_header, ptr %5, i32 0, i32 1
  store i16 0, ptr %107, align 4
  %108 = getelementptr inbounds %struct.perf_event, ptr %9, i32 0, i32 58
  %109 = load i64, ptr %108, align 8
  %110 = getelementptr inbounds %struct.anon.91, ptr %5, i32 0, i32 1
  store i64 %109, ptr %110, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #11, !srcloc !12
  %111 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %26) #11, !srcloc !19
  %112 = extractvalue { i32, i32 } %111, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.anon.91, ptr %5, i32 0, i32 2
  store i64 %113, ptr %114, align 8
  call void @perf_event_header__init_id(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %9) #11
  %115 = call i32 @perf_output_copy(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 24) #11
  call void @perf_event__output_id_sample(ptr noundef %9, ptr noundef %0, ptr noundef %1) #11
  br label %119

116:                                              ; preds = %60
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #11, !srcloc !12
  %117 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #11, !srcloc !13
  tail call fastcc void @perf_output_put_handle(ptr noundef %0) #11
  br label %118

118:                                              ; preds = %116, %21, %17, %4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  br label %119

119:                                              ; preds = %118, %105, %88
  %120 = phi i32 [ -28, %118 ], [ 0, %105 ], [ 0, %88 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @perf_output_begin_backward(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.anon.91, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false) #11, !annotation !8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %6 = getelementptr inbounds %struct.perf_event, ptr %2, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr %2, ptr %7
  %10 = getelementptr inbounds %struct.perf_event, ptr %9, i32 0, i32 39
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %119, label %13, !prof !10

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17, !prof !11

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %119, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #11, !srcloc !12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #11, !srcloc !13
  br label %119

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 1
  store ptr %11, ptr %25, align 4
  store ptr %9, ptr %0, align 8
  %26 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 12
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29, !prof !11

29:                                               ; preds = %24
  %30 = add i32 %3, 24
  %31 = getelementptr inbounds %struct.perf_event, ptr %9, i32 0, i32 21, i32 6
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 262144
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.perf_event, ptr %9, i32 0, i32 23
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = add i32 %30, %38
  br label %40

40:                                               ; preds = %35, %29, %24
  %41 = phi i32 [ %39, %35 ], [ %30, %29 ], [ %3, %24 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %42 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 9
  %43 = load volatile i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store volatile i32 %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 11
  %46 = load volatile i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 2
  store i32 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 33
  %49 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 8
  %50 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 5
  %51 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 4
  %52 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 3
  br label %53

53:                                               ; preds = %77, %40
  %54 = load ptr, ptr %48, align 4
  %55 = getelementptr inbounds %struct.perf_event_mmap_page, ptr %54, i32 0, i32 19
  %56 = load volatile i64, ptr %55, align 8
  %57 = load volatile i32, ptr %49, align 4
  %58 = load i32, ptr %50, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = trunc i64 %56 to i32
  %62 = load i32, ptr %51, align 4
  %63 = load i32, ptr %52, align 4
  %64 = add i32 %63, 12
  %65 = shl i32 %62, %64
  %66 = xor i32 %61, -1
  %67 = add i32 %57, %66
  %68 = add i32 %65, -1
  %69 = and i32 %68, %67
  %70 = icmp ult i32 %69, %41
  br i1 %70, label %117, label %71, !prof !10

71:                                               ; preds = %60, %53
  %72 = sub i32 %57, %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #11, !srcloc !12
  br label %73

73:                                               ; preds = %73, %71
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 %57, i32 %72, ptr elementtype(i32) %49) #11, !srcloc !16
  %75 = extractvalue { i32, i32 } %74, 0
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %73

77:                                               ; preds = %73
  %78 = extractvalue { i32, i32 } %74, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  %79 = icmp eq i32 %78, %57
  br i1 %79, label %80, label %53

80:                                               ; preds = %77
  %81 = load volatile i32, ptr %45, align 4
  %82 = add i32 %72, %81
  %83 = sub i32 0, %82
  %84 = getelementptr inbounds %struct.perf_buffer, ptr %11, i32 0, i32 13
  %85 = load i32, ptr %84, align 4
  %86 = icmp ult i32 %85, %83
  br i1 %86, label %87, label %89, !prof !10

87:                                               ; preds = %80
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #11, !srcloc !12
  %88 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 %85, ptr elementtype(i32) %45) #11, !srcloc !13
  br label %89

89:                                               ; preds = %87, %80
  %90 = load i32, ptr %52, align 4
  %91 = add i32 %90, 12
  %92 = lshr i32 %72, %91
  %93 = load i32, ptr %51, align 4
  %94 = add i32 %93, -1
  %95 = and i32 %92, %94
  %96 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 6
  store i32 %95, ptr %96, align 4
  %97 = shl nuw i32 1, %91
  %98 = add i32 %97, -1
  %99 = and i32 %98, %72
  %100 = getelementptr %struct.perf_buffer, ptr %11, i32 0, i32 34, i32 %95
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr i8, ptr %101, i32 %99
  %103 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 5
  store ptr %102, ptr %103, align 8
  %104 = sub i32 %97, %99
  %105 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 3
  store i32 %104, ptr %105, align 4
  br i1 %28, label %120, label %106, !prof !11

106:                                              ; preds = %89
  %107 = getelementptr inbounds %struct.perf_event_header, ptr %5, i32 0, i32 2
  store i16 24, ptr %107, align 2
  store i32 2, ptr %5, align 8
  %108 = getelementptr inbounds %struct.perf_event_header, ptr %5, i32 0, i32 1
  store i16 0, ptr %108, align 4
  %109 = getelementptr inbounds %struct.perf_event, ptr %9, i32 0, i32 58
  %110 = load i64, ptr %109, align 8
  %111 = getelementptr inbounds %struct.anon.91, ptr %5, i32 0, i32 1
  store i64 %110, ptr %111, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #11, !srcloc !12
  %112 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %26) #11, !srcloc !19
  %113 = extractvalue { i32, i32 } %112, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.anon.91, ptr %5, i32 0, i32 2
  store i64 %114, ptr %115, align 8
  call void @perf_event_header__init_id(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %9) #11
  %116 = call i32 @perf_output_copy(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 24) #11
  call void @perf_event__output_id_sample(ptr noundef %9, ptr noundef %0, ptr noundef %1) #11
  br label %120

117:                                              ; preds = %60
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #11, !srcloc !12
  %118 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #11, !srcloc !13
  tail call fastcc void @perf_output_put_handle(ptr noundef %0) #11
  br label %119

119:                                              ; preds = %117, %21, %17, %4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  br label %120

120:                                              ; preds = %119, %106, %89
  %121 = phi i32 [ -28, %119 ], [ 0, %106 ], [ 0, %89 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @perf_output_begin(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.anon.91, align 8
  %6 = getelementptr inbounds %struct.perf_event, ptr %2, i32 0, i32 21, i32 6
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 134217728
  %9 = icmp eq i64 %8, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false) #11, !annotation !8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %10 = getelementptr inbounds %struct.perf_event, ptr %2, i32 0, i32 32
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr %2, ptr %11
  %14 = getelementptr inbounds %struct.perf_event, ptr %13, i32 0, i32 39
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %129, label %17, !prof !10

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.perf_buffer, ptr %15, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21, !prof !11

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.perf_buffer, ptr %15, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %129, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.perf_buffer, ptr %15, i32 0, i32 12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #11, !srcloc !12
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #11, !srcloc !13
  br label %129

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 1
  store ptr %15, ptr %29, align 4
  store ptr %13, ptr %0, align 8
  %30 = getelementptr inbounds %struct.perf_buffer, ptr %15, i32 0, i32 12
  %31 = load volatile i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33, !prof !11

33:                                               ; preds = %28
  %34 = add i32 %3, 24
  %35 = getelementptr inbounds %struct.perf_event, ptr %13, i32 0, i32 21, i32 6
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 262144
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.perf_event, ptr %13, i32 0, i32 23
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = add i32 %34, %42
  br label %44

44:                                               ; preds = %39, %33, %28
  %45 = phi i32 [ %43, %39 ], [ %34, %33 ], [ %3, %28 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %46 = getelementptr inbounds %struct.perf_buffer, ptr %15, i32 0, i32 9
  %47 = load volatile i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store volatile i32 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.perf_buffer, ptr %15, i32 0, i32 11
  %50 = load volatile i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 2
  store i32 %50, ptr %51, align 8
  %52 = getelementptr inbounds %struct.perf_buffer, ptr %15, i32 0, i32 33
  %53 = getelementptr inbounds %struct.perf_buffer, ptr %15, i32 0, i32 8
  %54 = getelementptr inbounds %struct.perf_buffer, ptr %15, i32 0, i32 5
  %55 = getelementptr inbounds %struct.perf_buffer, ptr %15, i32 0, i32 4
  %56 = getelementptr inbounds %struct.perf_buffer, ptr %15, i32 0, i32 3
  %57 = sub i32 0, %45
  %58 = select i1 %9, i32 %45, i32 %57
  br label %59

59:                                               ; preds = %85, %44
  %60 = load ptr, ptr %52, align 4
  %61 = getelementptr inbounds %struct.perf_event_mmap_page, ptr %60, i32 0, i32 19
  %62 = load volatile i64, ptr %61, align 8
  %63 = load volatile i32, ptr %53, align 4
  %64 = load i32, ptr %54, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = trunc i64 %62 to i32
  %68 = load i32, ptr %55, align 4
  %69 = load i32, ptr %56, align 4
  %70 = add i32 %69, 12
  %71 = shl i32 %68, %70
  %72 = select i1 %9, i32 %63, i32 %67
  %73 = select i1 %9, i32 %67, i32 %63
  %74 = xor i32 %72, -1
  %75 = add i32 %73, %74
  %76 = add i32 %71, -1
  %77 = and i32 %76, %75
  %78 = icmp ult i32 %77, %45
  br i1 %78, label %127, label %79, !prof !10

79:                                               ; preds = %66, %59
  %80 = add i32 %63, %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #11, !srcloc !12
  br label %81

81:                                               ; preds = %81, %79
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 %63, i32 %80, ptr elementtype(i32) %53) #11, !srcloc !16
  %83 = extractvalue { i32, i32 } %82, 0
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %81

85:                                               ; preds = %81
  %86 = extractvalue { i32, i32 } %82, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  %87 = icmp eq i32 %86, %63
  br i1 %87, label %88, label %59

88:                                               ; preds = %85
  %89 = sub i32 0, %80
  %90 = select i1 %9, i32 %63, i32 %80
  %91 = select i1 %9, i32 %80, i32 %89
  %92 = load volatile i32, ptr %49, align 4
  %93 = sub i32 %91, %92
  %94 = getelementptr inbounds %struct.perf_buffer, ptr %15, i32 0, i32 13
  %95 = load i32, ptr %94, align 4
  %96 = icmp ugt i32 %93, %95
  br i1 %96, label %97, label %99, !prof !10

97:                                               ; preds = %88
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #11, !srcloc !12
  %98 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 %95, ptr elementtype(i32) %49) #11, !srcloc !13
  br label %99

99:                                               ; preds = %97, %88
  %100 = load i32, ptr %56, align 4
  %101 = add i32 %100, 12
  %102 = lshr i32 %90, %101
  %103 = load i32, ptr %55, align 4
  %104 = add i32 %103, -1
  %105 = and i32 %102, %104
  %106 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 6
  store i32 %105, ptr %106, align 4
  %107 = shl nuw i32 1, %101
  %108 = add i32 %107, -1
  %109 = and i32 %108, %90
  %110 = getelementptr %struct.perf_buffer, ptr %15, i32 0, i32 34, i32 %105
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr i8, ptr %111, i32 %109
  %113 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 5
  store ptr %112, ptr %113, align 8
  %114 = sub i32 %107, %109
  %115 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 3
  store i32 %114, ptr %115, align 4
  br i1 %32, label %130, label %116, !prof !11

116:                                              ; preds = %99
  %117 = getelementptr inbounds %struct.perf_event_header, ptr %5, i32 0, i32 2
  store i16 24, ptr %117, align 2
  store i32 2, ptr %5, align 8
  %118 = getelementptr inbounds %struct.perf_event_header, ptr %5, i32 0, i32 1
  store i16 0, ptr %118, align 4
  %119 = getelementptr inbounds %struct.perf_event, ptr %13, i32 0, i32 58
  %120 = load i64, ptr %119, align 8
  %121 = getelementptr inbounds %struct.anon.91, ptr %5, i32 0, i32 1
  store i64 %120, ptr %121, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #11, !srcloc !12
  %122 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %30) #11, !srcloc !19
  %123 = extractvalue { i32, i32 } %122, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.anon.91, ptr %5, i32 0, i32 2
  store i64 %124, ptr %125, align 8
  call void @perf_event_header__init_id(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %13) #11
  %126 = call i32 @perf_output_copy(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 24) #11
  call void @perf_event__output_id_sample(ptr noundef %13, ptr noundef %0, ptr noundef %1) #11
  br label %130

127:                                              ; preds = %66
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #11, !srcloc !12
  %128 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #11, !srcloc !13
  tail call fastcc void @perf_output_put_handle(ptr noundef %0) #11
  br label %129

129:                                              ; preds = %127, %25, %21, %4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  br label %130

130:                                              ; preds = %129, %116, %99
  %131 = phi i32 [ -28, %129 ], [ 0, %116 ], [ 0, %99 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret i32 %131
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @perf_output_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 5
  %6 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %4, align 4
  %9 = load ptr, ptr %5, align 8
  br label %10

10:                                               ; preds = %36, %3
  %11 = phi ptr [ %9, %3 ], [ %37, %36 ]
  %12 = phi i32 [ %8, %3 ], [ %38, %36 ]
  %13 = phi i32 [ %2, %3 ], [ %16, %36 ]
  %14 = phi ptr [ %1, %3 ], [ %19, %36 ]
  %15 = tail call i32 @llvm.umin.i32(i32 %12, i32 %13) #11
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %11, ptr align 1 %14, i32 %15, i1 false) #11
  %16 = sub i32 %13, %15
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr i8, ptr %17, i32 %15
  store ptr %18, ptr %5, align 8
  %19 = getelementptr i8, ptr %14, i32 %15
  %20 = load i32, ptr %4, align 4
  %21 = sub i32 %20, %15
  store i32 %21, ptr %4, align 4
  %22 = icmp eq i32 %20, %15
  br i1 %22, label %23, label %36

23:                                               ; preds = %10
  %24 = load ptr, ptr %6, align 4
  %25 = load i32, ptr %7, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %7, align 4
  %27 = getelementptr inbounds %struct.perf_buffer, ptr %24, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  %30 = and i32 %29, %26
  store i32 %30, ptr %7, align 4
  %31 = getelementptr %struct.perf_buffer, ptr %24, i32 0, i32 34, i32 %30
  %32 = load ptr, ptr %31, align 4
  store ptr %32, ptr %5, align 8
  %33 = getelementptr inbounds %struct.perf_buffer, ptr %24, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 4096, %34
  store i32 %35, ptr %4, align 4
  br label %36

36:                                               ; preds = %23, %10
  %37 = phi ptr [ %18, %10 ], [ %32, %23 ]
  %38 = phi i32 [ %21, %10 ], [ %35, %23 ]
  %39 = icmp eq i32 %16, 0
  br i1 %39, label %40, label %10

40:                                               ; preds = %36
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @perf_output_skip(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 5
  %5 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %3, align 4
  %8 = load ptr, ptr %4, align 8
  br label %9

9:                                                ; preds = %31, %2
  %10 = phi ptr [ %8, %2 ], [ %32, %31 ]
  %11 = phi i32 [ %7, %2 ], [ %33, %31 ]
  %12 = phi i32 [ %1, %2 ], [ %14, %31 ]
  %13 = tail call i32 @llvm.umin.i32(i32 %11, i32 %12) #11
  %14 = sub i32 %12, %13
  %15 = getelementptr i8, ptr %10, i32 %13
  store ptr %15, ptr %4, align 8
  %16 = sub i32 %11, %13
  store i32 %16, ptr %3, align 4
  %17 = icmp ugt i32 %11, %12
  br i1 %17, label %31, label %18

18:                                               ; preds = %9
  %19 = load ptr, ptr %5, align 4
  %20 = load i32, ptr %6, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %6, align 4
  %22 = getelementptr inbounds %struct.perf_buffer, ptr %19, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -1
  %25 = and i32 %24, %21
  store i32 %25, ptr %6, align 4
  %26 = getelementptr %struct.perf_buffer, ptr %19, i32 0, i32 34, i32 %25
  %27 = load ptr, ptr %26, align 4
  store ptr %27, ptr %4, align 8
  %28 = getelementptr inbounds %struct.perf_buffer, ptr %19, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 4096, %29
  store i32 %30, ptr %3, align 4
  br label %31

31:                                               ; preds = %18, %9
  %32 = phi ptr [ %15, %9 ], [ %27, %18 ]
  %33 = phi i32 [ %16, %9 ], [ %30, %18 ]
  %34 = icmp eq i32 %14, 0
  br i1 %34, label %35, label %9

35:                                               ; preds = %31
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @perf_output_end(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.perf_buffer, ptr %3, i32 0, i32 9
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %8 = getelementptr inbounds %struct.perf_buffer, ptr %3, i32 0, i32 8
  %9 = load volatile i32, ptr %8, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !23
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.perf_buffer, ptr %3, i32 0, i32 33
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.perf_event_mmap_page, ptr %12, i32 0, i32 18
  store volatile i64 %10, ptr %13, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  store volatile i32 0, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  %14 = load volatile i32, ptr %8, align 4
  %15 = icmp eq i32 %9, %14
  br i1 %15, label %25, label %18, !prof !11

16:                                               ; preds = %1
  %17 = add i32 %5, -1
  store volatile i32 %17, ptr %4, align 4
  br label %39

18:                                               ; preds = %18, %7
  store volatile i32 1, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %19 = load volatile i32, ptr %8, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !23
  %20 = zext i32 %19 to i64
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr inbounds %struct.perf_event_mmap_page, ptr %21, i32 0, i32 18
  store volatile i64 %20, ptr %22, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  store volatile i32 0, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  %23 = load volatile i32, ptr %8, align 4
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %25, label %18, !prof !11

25:                                               ; preds = %18, %7
  %26 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.perf_buffer, ptr %3, i32 0, i32 11
  %29 = load volatile i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.perf_buffer, ptr %32, i32 0, i32 7
  store volatile i32 1, ptr %33, align 4
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr inbounds %struct.perf_event, ptr %34, i32 0, i32 45
  store i32 1, ptr %35, align 8
  %36 = load ptr, ptr %0, align 8
  %37 = getelementptr inbounds %struct.perf_event, ptr %36, i32 0, i32 49
  %38 = tail call zeroext i1 @irq_work_queue(ptr noundef %37) #11
  br label %39

39:                                               ; preds = %31, %25, %16
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @perf_output_put_handle(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.perf_buffer, ptr %3, i32 0, i32 9
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %8 = getelementptr inbounds %struct.perf_buffer, ptr %3, i32 0, i32 8
  %9 = load volatile i32, ptr %8, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !23
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.perf_buffer, ptr %3, i32 0, i32 33
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.perf_event_mmap_page, ptr %12, i32 0, i32 18
  store volatile i64 %10, ptr %13, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  store volatile i32 0, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  %14 = load volatile i32, ptr %8, align 4
  %15 = icmp eq i32 %9, %14
  br i1 %15, label %25, label %18, !prof !11

16:                                               ; preds = %1
  %17 = add i32 %5, -1
  store volatile i32 %17, ptr %4, align 4
  br label %39

18:                                               ; preds = %18, %7
  store volatile i32 1, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %19 = load volatile i32, ptr %8, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !23
  %20 = zext i32 %19 to i64
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr inbounds %struct.perf_event_mmap_page, ptr %21, i32 0, i32 18
  store volatile i64 %20, ptr %22, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  store volatile i32 0, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  %23 = load volatile i32, ptr %8, align 4
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %25, label %18, !prof !11

25:                                               ; preds = %18, %7
  %26 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.perf_buffer, ptr %3, i32 0, i32 11
  %29 = load volatile i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.perf_buffer, ptr %32, i32 0, i32 7
  store volatile i32 1, ptr %33, align 4
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr inbounds %struct.perf_event, ptr %34, i32 0, i32 45
  store i32 1, ptr %35, align 8
  %36 = load ptr, ptr %0, align 8
  %37 = getelementptr inbounds %struct.perf_event, ptr %36, i32 0, i32 49
  %38 = tail call zeroext i1 @irq_work_queue(ptr noundef %37) #11
  br label %39

39:                                               ; preds = %31, %25, %16
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @perf_aux_output_flag(ptr nocapture noundef %0, i64 noundef %1) #0 {
  %3 = and i64 %1, 2
  %4 = icmp ne i64 %3, 0
  %5 = load i1, ptr @perf_aux_output_flag.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %2
  store i1 true, ptr @perf_aux_output_flag.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 340, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %2
  br i1 %4, label %14, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 4
  %12 = load i64, ptr %11, align 8
  %13 = or i64 %12, %1
  store i64 %13, ptr %11, align 8
  br label %14

14:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @perf_aux_output_begin(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 32
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr %1, ptr %4
  %7 = tail call ptr @ring_buffer_get(ptr noundef %6) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %106, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.perf_buffer, ptr %7, i32 0, i32 24
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %105, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.perf_buffer, ptr %7, i32 0, i32 26
  %15 = load volatile i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %105, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.perf_buffer, ptr %7, i32 0, i32 29
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %31, %17
  %22 = phi i32 [ %29, %31 ], [ %19, %17 ]
  %23 = add i32 %22, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #11, !srcloc !12
  br label %24

24:                                               ; preds = %24, %21
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 %22, i32 %23, ptr elementtype(i32) %18) #11, !srcloc !16
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %24

28:                                               ; preds = %24
  %29 = extractvalue { i32, i32 } %25, 1
  %30 = icmp eq i32 %29, %22
  br i1 %30, label %33, label %31, !prof !11

31:                                               ; preds = %28
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %33, label %21

33:                                               ; preds = %31, %28, %17
  %34 = phi i32 [ 0, %17 ], [ 0, %31 ], [ %22, %28 ]
  %35 = add i32 %34, 1
  %36 = or i32 %35, %34
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %39, label %38, !prof !11

38:                                               ; preds = %33
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef 0) #11
  br label %39

39:                                               ; preds = %38, %33
  %40 = icmp eq i32 %34, 0
  br i1 %40, label %105, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.perf_buffer, ptr %7, i32 0, i32 21
  %43 = load volatile i32, ptr %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = load i1, ptr @perf_aux_output_begin.__already_done, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !10

48:                                               ; preds = %41
  store i1 true, ptr @perf_aux_output_begin.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 403, i32 noundef 9, ptr noundef null) #11
  br label %49

49:                                               ; preds = %48, %41
  br i1 %44, label %97, label %50

50:                                               ; preds = %49
  store volatile i32 1, ptr %42, align 4
  %51 = getelementptr inbounds %struct.perf_buffer, ptr %7, i32 0, i32 20
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 1
  store ptr %7, ptr %53, align 4
  store ptr %1, ptr %0, align 8
  %54 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 5
  store i32 %52, ptr %54, align 8
  %55 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 3
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 4
  store i64 0, ptr %56, align 8
  %57 = getelementptr inbounds %struct.perf_buffer, ptr %7, i32 0, i32 25
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %94

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.perf_buffer, ptr %7, i32 0, i32 33
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.perf_event_mmap_page, ptr %62, i32 0, i32 23
  %64 = load volatile i64, ptr %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = getelementptr inbounds %struct.perf_buffer, ptr %7, i32 0, i32 22
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.perf_buffer, ptr %7, i32 0, i32 14
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, %67
  %71 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 2
  store i32 %70, ptr %71, align 8
  %72 = sub i32 %52, %65
  %73 = load i32, ptr %10, align 4
  %74 = shl i32 %73, 12
  %75 = icmp ult i32 %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %60
  %77 = xor i32 %52, -1
  %78 = add i32 %65, %77
  %79 = add i32 %74, -1
  %80 = and i32 %79, %78
  store i32 %80, ptr %55, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %76, %60
  %83 = tail call ptr @llvm.thread.pointer() #11
  %84 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %85 = load i32, ptr %84, align 8
  %86 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 47
  store i32 %85, ptr %86, align 8
  %87 = load ptr, ptr %53, align 4
  %88 = getelementptr inbounds %struct.perf_buffer, ptr %87, i32 0, i32 7
  store volatile i32 1, ptr %88, align 4
  %89 = load ptr, ptr %0, align 8
  %90 = getelementptr inbounds %struct.perf_event, ptr %89, i32 0, i32 45
  store i32 1, ptr %90, align 8
  %91 = load ptr, ptr %0, align 8
  %92 = getelementptr inbounds %struct.perf_event, ptr %91, i32 0, i32 49
  %93 = tail call zeroext i1 @irq_work_queue(ptr noundef %92) #11
  store volatile i32 0, ptr %42, align 4
  br label %97

94:                                               ; preds = %76, %50
  %95 = getelementptr inbounds %struct.perf_buffer, ptr %7, i32 0, i32 32
  %96 = load ptr, ptr %95, align 4
  br label %106

97:                                               ; preds = %82, %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #11, !srcloc !12
  %98 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #11, !srcloc !28
  %99 = extractvalue { i32, i32, i32 } %98, 0
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = icmp sgt i32 %99, 0
  br i1 %102, label %105, label %103, !prof !11

103:                                              ; preds = %101
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef 3) #11
  br label %105

104:                                              ; preds = %97
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !29
  tail call fastcc void @__rb_free_aux(ptr noundef nonnull %7) #11
  br label %105

105:                                              ; preds = %104, %103, %101, %39, %13, %9
  tail call void @ring_buffer_put(ptr noundef nonnull %7) #11
  store ptr null, ptr %0, align 8
  br label %106

106:                                              ; preds = %105, %94, %2
  %107 = phi ptr [ null, %105 ], [ %96, %94 ], [ null, %2 ]
  ret ptr %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rb_free_aux(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #11, !srcloc !12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #11, !srcloc !28
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %10, label %8, !prof !11

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #11
  br label %10

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !29
  tail call fastcc void @__rb_free_aux(ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @perf_aux_output_end(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 4
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 1
  %6 = icmp eq i64 %5, 0
  %7 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.perf_buffer, ptr %8, i32 0, i32 25
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = or i64 %4, 2
  store i64 %13, ptr %3, align 8
  %14 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.perf_buffer, ptr %8, i32 0, i32 20
  store i32 %15, ptr %16, align 4
  br label %22

17:                                               ; preds = %2
  %18 = and i64 %4, -3
  store i64 %18, ptr %3, align 8
  %19 = getelementptr inbounds %struct.perf_buffer, ptr %8, i32 0, i32 20
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %1
  store i32 %21, ptr %19, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i32 [ %15, %12 ], [ %21, %17 ]
  %24 = phi i32 [ %15, %12 ], [ %20, %17 ]
  %25 = icmp eq i32 %1, 0
  %26 = load i64, ptr %3, align 8
  %27 = and i64 %26, -3
  %28 = icmp eq i64 %27, 0
  %29 = select i1 %25, i1 %28, i1 false
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = load ptr, ptr %0, align 8
  tail call void @perf_event_aux_event(ptr noundef %31, i32 noundef %24, i32 noundef %1, i64 noundef %26) #11
  %32 = getelementptr inbounds %struct.perf_buffer, ptr %8, i32 0, i32 20
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %30, %22
  %35 = phi i32 [ %33, %30 ], [ %23, %22 ]
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.perf_buffer, ptr %8, i32 0, i32 33
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.perf_event_mmap_page, ptr %38, i32 0, i32 22
  store volatile i64 %36, ptr %39, align 8
  %40 = load i32, ptr %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.perf_buffer, ptr %8, i32 0, i32 20
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.perf_buffer, ptr %8, i32 0, i32 22
  %46 = load i32, ptr %45, align 4
  %47 = sub i32 %44, %46
  %48 = getelementptr inbounds %struct.perf_buffer, ptr %8, i32 0, i32 14
  %49 = load i32, ptr %48, align 4
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = srem i32 %44, %49
  %53 = sub i32 %44, %52
  store i32 %53, ptr %45, align 4
  br label %55

54:                                               ; preds = %42, %34
  br i1 %6, label %73, label %55

55:                                               ; preds = %54, %51
  %56 = load i64, ptr %3, align 8
  %57 = and i64 %56, 1
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = tail call ptr @llvm.thread.pointer() #11
  %61 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = load ptr, ptr %0, align 8
  %64 = getelementptr inbounds %struct.perf_event, ptr %63, i32 0, i32 47
  store i32 %62, ptr %64, align 8
  br label %65

65:                                               ; preds = %59, %55
  %66 = load ptr, ptr %7, align 4
  %67 = getelementptr inbounds %struct.perf_buffer, ptr %66, i32 0, i32 7
  store volatile i32 1, ptr %67, align 4
  %68 = load ptr, ptr %0, align 8
  %69 = getelementptr inbounds %struct.perf_event, ptr %68, i32 0, i32 45
  store i32 1, ptr %69, align 8
  %70 = load ptr, ptr %0, align 8
  %71 = getelementptr inbounds %struct.perf_event, ptr %70, i32 0, i32 49
  %72 = tail call zeroext i1 @irq_work_queue(ptr noundef %71) #11
  br label %73

73:                                               ; preds = %65, %54
  store ptr null, ptr %0, align 8
  %74 = getelementptr inbounds %struct.perf_buffer, ptr %8, i32 0, i32 21
  store volatile i32 0, ptr %74, align 4
  %75 = getelementptr inbounds %struct.perf_buffer, ptr %8, i32 0, i32 29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #11, !srcloc !12
  %76 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 1, ptr elementtype(i32) %75) #11, !srcloc !28
  %77 = extractvalue { i32, i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = icmp sgt i32 %77, 0
  br i1 %80, label %83, label %81, !prof !11

81:                                               ; preds = %79
  tail call void @refcount_warn_saturate(ptr noundef %75, i32 noundef 3) #11
  br label %83

82:                                               ; preds = %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !29
  tail call fastcc void @__rb_free_aux(ptr noundef %8) #11
  br label %83

83:                                               ; preds = %82, %81, %79
  tail call void @ring_buffer_put(ptr noundef %8) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_aux_event(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @perf_aux_output_skip(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %46, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.perf_buffer, ptr %4, i32 0, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %1
  store i32 %11, ptr %9, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.perf_buffer, ptr %4, i32 0, i32 33
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.perf_event_mmap_page, ptr %14, i32 0, i32 22
  store volatile i64 %12, ptr %15, align 8
  %16 = getelementptr inbounds %struct.perf_buffer, ptr %4, i32 0, i32 25
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %8
  %20 = load i32, ptr %9, align 4
  %21 = getelementptr inbounds %struct.perf_buffer, ptr %4, i32 0, i32 22
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = getelementptr inbounds %struct.perf_buffer, ptr %4, i32 0, i32 14
  %25 = load i32, ptr %24, align 4
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %19
  %28 = srem i32 %20, %25
  %29 = sub i32 %20, %28
  store i32 %29, ptr %21, align 4
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr inbounds %struct.perf_buffer, ptr %30, i32 0, i32 7
  store volatile i32 1, ptr %31, align 4
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr inbounds %struct.perf_event, ptr %32, i32 0, i32 45
  store i32 1, ptr %33, align 8
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr inbounds %struct.perf_event, ptr %34, i32 0, i32 49
  %36 = tail call zeroext i1 @irq_work_queue(ptr noundef %35) #11
  %37 = load i32, ptr %21, align 4
  %38 = load i32, ptr %24, align 4
  %39 = add i32 %38, %37
  %40 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 2
  store i32 %39, ptr %40, align 8
  br label %41

41:                                               ; preds = %27, %19, %8
  %42 = load i32, ptr %9, align 4
  %43 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 5
  store i32 %42, ptr %43, align 8
  %44 = load i32, ptr %5, align 4
  %45 = sub i32 %44, %1
  store i32 %45, ptr %5, align 4
  br label %46

46:                                               ; preds = %41, %2
  %47 = phi i32 [ 0, %41 ], [ -28, %2 ]
  ret i32 %47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @perf_get_aux(ptr nocapture noundef readonly %0) #4 {
  %2 = load ptr, ptr %0, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi ptr [ %8, %4 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @perf_output_copy_aux(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.perf_output_handle, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 12
  %10 = add i32 %9, -1
  %11 = and i32 %10, %2
  %12 = and i32 %10, %3
  %13 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 31
  %14 = getelementptr inbounds %struct.perf_output_handle, ptr %1, i32 0, i32 3
  %15 = getelementptr inbounds %struct.perf_output_handle, ptr %1, i32 0, i32 5
  %16 = getelementptr inbounds %struct.perf_output_handle, ptr %1, i32 0, i32 1
  %17 = getelementptr inbounds %struct.perf_output_handle, ptr %1, i32 0, i32 6
  br label %18

18:                                               ; preds = %66, %4
  %19 = phi i32 [ 0, %4 ], [ %67, %66 ]
  %20 = phi i32 [ %11, %4 ], [ %72, %66 ]
  %21 = and i32 %20, 4095
  %22 = sub nuw nsw i32 4096, %21
  %23 = icmp ugt i32 %12, %20
  %24 = sub i32 %12, %20
  %25 = tail call i32 @llvm.umin.i32(i32 %22, i32 %24)
  %26 = select i1 %23, i32 %25, i32 %22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %74, label %28

28:                                               ; preds = %18
  %29 = load ptr, ptr %13, align 4
  %30 = lshr i32 %20, 12
  %31 = getelementptr ptr, ptr %29, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %21
  %34 = load i32, ptr %14, align 4
  %35 = load ptr, ptr %15, align 8
  br label %36

36:                                               ; preds = %62, %28
  %37 = phi ptr [ %35, %28 ], [ %63, %62 ]
  %38 = phi i32 [ %34, %28 ], [ %64, %62 ]
  %39 = phi i32 [ %26, %28 ], [ %42, %62 ]
  %40 = phi ptr [ %33, %28 ], [ %45, %62 ]
  %41 = tail call i32 @llvm.umin.i32(i32 %38, i32 %39) #11
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr align 1 %40, i32 %41, i1 false) #11
  %42 = sub i32 %39, %41
  %43 = load ptr, ptr %15, align 8
  %44 = getelementptr i8, ptr %43, i32 %41
  store ptr %44, ptr %15, align 8
  %45 = getelementptr i8, ptr %40, i32 %41
  %46 = load i32, ptr %14, align 4
  %47 = sub i32 %46, %41
  store i32 %47, ptr %14, align 4
  %48 = icmp eq i32 %46, %41
  br i1 %48, label %49, label %62

49:                                               ; preds = %36
  %50 = load ptr, ptr %16, align 4
  %51 = load i32, ptr %17, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %17, align 4
  %53 = getelementptr inbounds %struct.perf_buffer, ptr %50, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, -1
  %56 = and i32 %55, %52
  store i32 %56, ptr %17, align 4
  %57 = getelementptr %struct.perf_buffer, ptr %50, i32 0, i32 34, i32 %56
  %58 = load ptr, ptr %57, align 4
  store ptr %58, ptr %15, align 8
  %59 = getelementptr inbounds %struct.perf_buffer, ptr %50, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = shl i32 4096, %60
  store i32 %61, ptr %14, align 4
  br label %62

62:                                               ; preds = %49, %36
  %63 = phi ptr [ %44, %36 ], [ %58, %49 ]
  %64 = phi i32 [ %47, %36 ], [ %61, %49 ]
  %65 = icmp eq i32 %42, 0
  br i1 %65, label %66, label %36

66:                                               ; preds = %62
  %67 = add i32 %26, %19
  %68 = add i32 %26, %20
  %69 = load i32, ptr %7, align 4
  %70 = shl i32 %69, 12
  %71 = add i32 %70, -1
  %72 = and i32 %71, %68
  %73 = icmp eq i32 %12, %72
  br i1 %73, label %74, label %18

74:                                               ; preds = %66, %18
  %75 = phi i32 [ %67, %66 ], [ %19, %18 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rb_alloc_aux(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = and i32 %5, 1
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 12
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.pmu, ptr %10, i32 0, i32 31
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %124, label %14

14:                                               ; preds = %6
  br i1 %8, label %25, label %15

15:                                               ; preds = %14
  %16 = icmp eq i32 %4, 0
  %17 = shl i32 %3, 11
  %18 = select i1 %16, i32 %17, i32 %4
  %19 = add i32 %18, -1
  %20 = lshr i32 %19, 12
  %21 = icmp ult i32 %19, 4096
  %22 = tail call i32 @llvm.ctlz.i32(i32 %20, i1 false) #11, !range !30
  %23 = sub nuw nsw i32 32, %22
  %24 = select i1 %21, i32 0, i32 %23
  br label %30

25:                                               ; preds = %14
  %26 = icmp eq i32 %3, 0
  %27 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 false) #11, !range !30
  %28 = sub nsw i32 31, %27
  %29 = select i1 %26, i32 -1, i32 %28
  br label %30

30:                                               ; preds = %25, %15
  %31 = phi i32 [ %29, %25 ], [ %24, %15 ]
  %32 = phi i32 [ 0, %25 ], [ %18, %15 ]
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #11
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %35, label %37, !prof !10

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 31
  store ptr null, ptr %36, align 4
  br label %124

37:                                               ; preds = %30
  %38 = extractvalue { i32, i1 } %33, 0
  %39 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %38, i32 noundef 3520) #12
  %40 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 31
  store ptr %39, ptr %40, align 4
  %41 = icmp eq ptr %39, null
  br i1 %41, label %124, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr %9, align 8
  %44 = getelementptr inbounds %struct.pmu, ptr %43, i32 0, i32 32
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 28
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 24
  store i32 0, ptr %47, align 4
  %48 = icmp eq i32 %3, 0
  br i1 %48, label %91, label %52

49:                                               ; preds = %81, %75
  %50 = phi i32 [ %77, %75 ], [ %89, %81 ]
  %51 = icmp slt i32 %50, %3
  br i1 %51, label %52, label %91

52:                                               ; preds = %49, %42
  %53 = phi i32 [ %50, %49 ], [ 0, %42 ]
  %54 = icmp eq i32 %53, %3
  %55 = sub i32 %3, %53
  %56 = tail call i32 @llvm.ctlz.i32(i32 %55, i1 false) #11, !range !30
  %57 = sub nsw i32 31, %56
  %58 = select i1 %54, i32 -1, i32 %57
  %59 = tail call i32 @llvm.smin.i32(i32 %31, i32 %58)
  %60 = tail call i32 @llvm.smin.i32(i32 %59, i32 12) #11
  br label %61

61:                                               ; preds = %65, %52
  %62 = phi i32 [ %60, %52 ], [ %66, %65 ]
  %63 = tail call ptr @__alloc_pages(i32 noundef 77248, i32 noundef %62, i32 noundef 0, ptr noundef null) #11
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = add i32 %62, -1
  %67 = icmp eq i32 %62, 0
  br i1 %67, label %123, label %61

68:                                               ; preds = %61
  %69 = icmp eq i32 %62, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.page, ptr %63, i32 0, i32 1, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  br label %75

73:                                               ; preds = %68
  tail call void @split_page(ptr noundef nonnull %63, i32 noundef %62) #11
  tail call void @_set_bit(i32 noundef 13, ptr noundef nonnull %63) #11
  %74 = getelementptr inbounds %struct.page, ptr %63, i32 0, i32 1, i32 0, i32 3
  store i32 %62, ptr %74, align 4
  br label %75

75:                                               ; preds = %73, %70
  %76 = phi i32 [ %72, %70 ], [ %62, %73 ]
  %77 = load i32, ptr %47, align 4
  %78 = shl nuw i32 1, %76
  %79 = add i32 %78, %77
  %80 = icmp sgt i32 %79, %77
  br i1 %80, label %81, label %49

81:                                               ; preds = %81, %75
  %82 = phi ptr [ %83, %81 ], [ %63, %75 ]
  %83 = getelementptr %struct.page, ptr %82, i32 1
  %84 = tail call ptr @page_address(ptr noundef %82) #11
  %85 = load ptr, ptr %40, align 4
  %86 = load i32, ptr %47, align 4
  %87 = getelementptr ptr, ptr %85, i32 %86
  store ptr %84, ptr %87, align 4
  %88 = load i32, ptr %47, align 4
  %89 = add i32 %88, 1
  store i32 %89, ptr %47, align 4
  %90 = icmp sgt i32 %79, %89
  br i1 %90, label %81, label %49

91:                                               ; preds = %49, %42
  %92 = load ptr, ptr %9, align 8
  %93 = getelementptr inbounds %struct.pmu, ptr %92, i32 0, i32 7
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, 4
  %96 = icmp ne i32 %95, 0
  %97 = and i1 %8, %96
  br i1 %97, label %100, label %98

98:                                               ; preds = %91
  %99 = load ptr, ptr %40, align 4
  br label %110

100:                                              ; preds = %91
  %101 = load ptr, ptr @mem_map, align 4
  %102 = load ptr, ptr %40, align 4
  %103 = load ptr, ptr %102, align 4
  %104 = ptrtoint ptr %103 to i32
  %105 = add i32 %104, 1073741824
  %106 = lshr i32 %105, 12
  %107 = getelementptr %struct.page, ptr %101, i32 %106, i32 1, i32 0, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, %31
  br i1 %109, label %110, label %123

110:                                              ; preds = %100, %98
  %111 = phi ptr [ %99, %98 ], [ %102, %100 ]
  %112 = getelementptr inbounds %struct.pmu, ptr %92, i32 0, i32 31
  %113 = load ptr, ptr %112, align 4
  %114 = tail call ptr %113(ptr noundef %1, ptr noundef %111, i32 noundef %3, i1 noundef zeroext %8) #11
  %115 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 32
  store ptr %114, ptr %115, align 4
  %116 = icmp eq ptr %114, null
  br i1 %116, label %123, label %117

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 29
  store volatile i32 1, ptr %118, align 4
  %119 = xor i32 %7, 1
  %120 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 25
  store i32 %119, ptr %120, align 4
  %121 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 14
  store i32 %32, ptr %121, align 4
  %122 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 23
  store i32 %2, ptr %122, align 4
  br label %124

123:                                              ; preds = %110, %100, %65
  tail call fastcc void @__rb_free_aux(ptr noundef %0)
  br label %124

124:                                              ; preds = %123, %117, %37, %35, %6
  %125 = phi i32 [ -95, %6 ], [ -12, %37 ], [ -12, %123 ], [ 0, %117 ], [ -12, %35 ]
  ret i32 %125
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__rb_free_aux(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #11
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp ne i32 %4, 0
  %6 = load i1, ptr @__rb_free_aux.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !10

9:                                                ; preds = %1
  store i1 true, ptr @__rb_free_aux.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 650, i32 noundef 9, ptr noundef null) #11
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 32
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 28
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef nonnull %12) #11
  store ptr null, ptr %15, align 4
  store ptr null, ptr %11, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 24
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %17
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 31
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i32 [ 0, %23 ], [ %36, %25 ]
  %27 = load ptr, ptr @mem_map, align 4
  %28 = load ptr, ptr %24, align 4
  %29 = getelementptr ptr, ptr %28, i32 %26
  %30 = load ptr, ptr %29, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = add i32 %31, 1073741824
  %33 = lshr i32 %32, 12
  %34 = getelementptr %struct.page, ptr %27, i32 %33
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %34) #11
  %35 = getelementptr %struct.page, ptr %27, i32 %33, i32 1, i32 0, i32 1
  store ptr null, ptr %35, align 4
  tail call void @__free_pages(ptr noundef %34, i32 noundef 0) #11
  %36 = add nuw nsw i32 %26, 1
  %37 = load i32, ptr %18, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %25, label %39

39:                                               ; preds = %25, %21
  %40 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 31
  %41 = load ptr, ptr %40, align 4
  tail call void @kfree(ptr noundef %41) #11
  store i32 0, ptr %18, align 4
  br label %42

42:                                               ; preds = %39, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rb_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr @system_wq, align 4
  %4 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rb_alloc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 160) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %60, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 2
  store i32 -32, ptr %9, align 4
  %10 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 2, i32 1
  store volatile ptr %10, ptr %10, align 8
  %11 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 2, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 2, i32 2
  store ptr @rb_free_work, ptr %12, align 8
  %13 = shl i32 %0, 12
  %14 = add i32 %13, 4096
  %15 = tail call noalias ptr @vmalloc_user(i32 noundef %14) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %59, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 33
  store ptr %15, ptr %18, align 8
  %19 = getelementptr i8, ptr %15, i32 4096
  %20 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 34
  store ptr %19, ptr %20, align 4
  %21 = icmp eq i32 %0, 0
  %22 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 4
  br i1 %21, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, ptr %22, align 8
  %25 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  br label %31

27:                                               ; preds = %17
  store i32 1, ptr %22, align 8
  %28 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 true) #11, !range !30
  %29 = xor i32 %28, 31
  %30 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %26, %23 ], [ %29, %27 ]
  %33 = phi i32 [ %24, %23 ], [ 1, %27 ]
  %34 = add i32 %32, 12
  %35 = shl i32 %33, %34
  %36 = icmp eq i32 %1, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 13
  %39 = load i32, ptr %38, align 4
  br label %43

40:                                               ; preds = %31
  %41 = tail call i32 @llvm.smin.i32(i32 %35, i32 %1) #11
  %42 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 13
  store i32 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i32 [ %39, %37 ], [ %41, %40 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 13
  %48 = sdiv i32 %35, 2
  store i32 %48, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = and i32 %3, 1
  %51 = xor i32 %50, 1
  %52 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 5
  store i32 %51, ptr %52, align 4
  store volatile i32 1, ptr %6, align 8
  %53 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 16
  store volatile ptr %53, ptr %53, align 8
  %54 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 16, i32 1
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 15
  store i32 0, ptr %55, align 4
  %56 = icmp eq i32 %33, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.perf_buffer, ptr %6, i32 0, i32 6
  store i32 1, ptr %58, align 8
  br label %60

59:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #11
  br label %60

60:                                               ; preds = %59, %57, %49, %4
  %61 = phi ptr [ null, %4 ], [ null, %59 ], [ %6, %49 ], [ %6, %57 ]
  ret ptr %61
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rb_free_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 20
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %3, %5
  %7 = getelementptr i8, ptr %0, i32 140
  %8 = load ptr, ptr %7, align 4
  %9 = icmp slt i32 %6, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %1
  %11 = phi i32 [ %16, %10 ], [ 0, %1 ]
  %12 = shl i32 %11, 12
  %13 = getelementptr i8, ptr %8, i32 %12
  %14 = tail call ptr @vmalloc_to_page(ptr noundef %13) #11
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1, i32 0, i32 1
  store ptr null, ptr %15, align 4
  %16 = add i32 %11, 1
  %17 = icmp sgt i32 %16, %6
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %1
  %19 = getelementptr i8, ptr %0, i32 -12
  tail call void @vfree(ptr noundef %8) #11
  tail call void @kfree(ptr noundef %19) #11
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_user(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @perf_mmap_to_page(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 24
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 23
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %4
  %10 = icmp ult i32 %9, %1
  br i1 %10, label %39, label %11

11:                                               ; preds = %6
  %12 = icmp ugt i32 %8, %1
  br i1 %12, label %26, label %13

13:                                               ; preds = %11
  %14 = sub i32 %1, %8
  %15 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %14, i32 %4) #11, !srcloc !31
  %16 = and i32 %15, %14
  %17 = load ptr, ptr @mem_map, align 4
  %18 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 31
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr ptr, ptr %19, i32 %16
  %21 = load ptr, ptr %20, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = add i32 %22, 1073741824
  %24 = lshr i32 %23, 12
  %25 = getelementptr %struct.page, ptr %17, i32 %24
  br label %39

26:                                               ; preds = %11, %2
  %27 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = shl i32 %28, %30
  %32 = icmp ult i32 %31, %1
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.perf_buffer, ptr %0, i32 0, i32 33
  %35 = load ptr, ptr %34, align 4
  %36 = shl i32 %1, 12
  %37 = getelementptr i8, ptr %35, i32 %36
  %38 = tail call ptr @vmalloc_to_page(ptr noundef %37) #11
  br label %39

39:                                               ; preds = %33, %26, %13, %6
  %40 = phi ptr [ %25, %13 ], [ null, %6 ], [ %38, %33 ], [ null, %26 ]
  ret ptr %40
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_header__init_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event__output_id_sample(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @split_page(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

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
!8 = !{!"auto-init"}
!9 = !{i64 2149069849}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 679463, i64 2148181029, i64 2148181055, i64 2148181102, i64 2148181124, i64 2148181152, i64 2148181172}
!13 = !{i64 2148244291, i64 2148244317, i64 2148244346, i64 2148244380, i64 2148244411, i64 2148244434}
!14 = !{i64 2153438564}
!15 = !{i64 2148357717}
!16 = !{i64 665526, i64 665550, i64 665571, i64 665588, i64 665605}
!17 = !{i64 2148357917}
!18 = !{i64 2148448614}
!19 = !{i64 751555, i64 751572, i64 751596, i64 751622, i64 751640}
!20 = !{i64 2148448958}
!21 = !{i64 2149070066}
!22 = !{i64 2153443356}
!23 = !{i64 2153443502}
!24 = !{i64 2153445956}
!25 = !{i64 2153447982}
!26 = !{i64 2153450163}
!27 = !{i64 2148345971}
!28 = !{i64 2148248106, i64 2148248138, i64 2148248167, i64 2148248201, i64 2148248232, i64 2148248255}
!29 = !{i64 2149369963}
!30 = !{i32 0, i32 33}
!31 = !{i64 553578, i64 553595, i64 2148037665}
