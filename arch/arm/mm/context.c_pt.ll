; ModuleID = '/llk/IR/arch/arm/mm/context.c_pt.bc'
source_filename = "../arch/arm/mm/context.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.atomic64_t = type { i64 }
%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@cpu_asid_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@active_asids = internal global %struct.atomic64_t zeroinitializer, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@reserved_asids = internal global i64 0, section ".data..percpu", align 8
@init_mm = external dso_local local_unnamed_addr global %struct.mm_struct, align 8
@asid_generation = internal global %struct.atomic64_t { i64 256 }, align 8
@tlb_flush_pending = internal global %struct.cpumask zeroinitializer, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@new_context.cur_idx = internal unnamed_addr global i32 1, align 4
@asid_map = internal global [8 x i32] zeroinitializer, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @a15_erratum_get_cpumask(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @cpu_asid_lock) #5
  %5 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 42
  %6 = load i64, ptr %5, align 8
  %7 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #6
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %30, %3
  %11 = phi i32 [ %31, %30 ], [ %8, %3 ]
  %12 = phi i32 [ %32, %30 ], [ %7, %3 ]
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, ptrtoint (ptr @active_asids to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = load i64, ptr %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = add i32 %16, ptrtoint (ptr @reserved_asids to i32)
  %23 = inttoptr i32 %22 to ptr
  %24 = load i64, ptr %23, align 8
  br label %25

25:                                               ; preds = %21, %14
  %26 = phi i64 [ %24, %21 ], [ %19, %14 ]
  %27 = icmp eq i64 %6, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  tail call void @_set_bit(i32 noundef %12, ptr noundef %2) #5
  %29 = load i32, ptr @nr_cpu_ids, align 4
  br label %30

30:                                               ; preds = %28, %25, %10
  %31 = phi i32 [ %11, %25 ], [ %29, %28 ], [ %11, %10 ]
  %32 = tail call i32 @cpumask_next(i32 noundef %12, ptr noundef nonnull @__cpu_online_mask) #6
  %33 = icmp ult i32 %32, %31
  br i1 %33, label %10, label %34

34:                                               ; preds = %30, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @cpu_asid_lock, i32 noundef %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @check_and_switch_context(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #5
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 42
  %7 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 42, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = load i32, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 42, i32 1), align 8
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %12, label %11, !prof !8

11:                                               ; preds = %2
  tail call void @__check_vmalloc_seq(ptr noundef %0) #5
  br label %12

12:                                               ; preds = %11, %2
  %13 = tail call i32 asm sideeffect "\09mrc\09p15, 0, $0, c2, c0, 1\09\09@ read TTBR1\0A\09mcr\09p15, 0, $0, c2, c0, 0\09\09@ set TTBR0\0A", "=r"() #5, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !10
  %14 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %6, ptr elementtype(i64) %6) #5, !srcloc !11
  %15 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr nonnull @asid_generation, ptr nonnull elementtype(i64) @asid_generation) #5, !srcloc !11
  %16 = xor i64 %15, %14
  %17 = icmp ult i64 %16, 256
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, ptrtoint (ptr @active_asids to i32)
  %22 = inttoptr i32 %21 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #5, !srcloc !13
  %23 = tail call { i64, i32 } asm sideeffect "@ atomic64_xchg\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09strexd\09$1, $4, ${4:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %22, ptr %22, i64 %14, ptr elementtype(i64) %22) #5, !srcloc !14
  %24 = extractvalue { i64, i32 } %23, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %156

26:                                               ; preds = %18, %12
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @cpu_asid_lock) #5
  %28 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %6, ptr elementtype(i64) %6) #5, !srcloc !11
  %29 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr nonnull @asid_generation, ptr nonnull elementtype(i64) @asid_generation) #5, !srcloc !11
  %30 = xor i64 %29, %28
  %31 = icmp ult i64 %30, 256
  br i1 %31, label %133, label %32

32:                                               ; preds = %26
  %33 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %6, ptr elementtype(i64) %6) #5, !srcloc !11
  %34 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr nonnull @asid_generation, ptr nonnull elementtype(i64) @asid_generation) #5, !srcloc !11
  %35 = icmp eq i64 %33, 0
  br i1 %35, label %73, label %36

36:                                               ; preds = %32
  %37 = and i64 %33, 255
  %38 = or i64 %34, %37
  %39 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #6
  %40 = load i32, ptr @nr_cpu_ids, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %57, %36
  %43 = phi i32 [ %59, %57 ], [ %40, %36 ]
  %44 = phi i32 [ %60, %57 ], [ %39, %36 ]
  %45 = phi i1 [ true, %57 ], [ false, %36 ]
  br label %46

46:                                               ; preds = %54, %42
  %47 = phi i32 [ %55, %54 ], [ %44, %42 ]
  %48 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, ptrtoint (ptr @reserved_asids to i32)
  %51 = inttoptr i32 %50 to ptr
  %52 = load i64, ptr %51, align 8
  %53 = icmp eq i64 %52, %33
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = tail call i32 @cpumask_next(i32 noundef %47, ptr noundef nonnull @__cpu_possible_mask) #6
  %56 = icmp ult i32 %55, %43
  br i1 %56, label %46, label %62

57:                                               ; preds = %46
  %58 = inttoptr i32 %50 to ptr
  store i64 %38, ptr %58, align 8
  %59 = load i32, ptr @nr_cpu_ids, align 4
  %60 = tail call i32 @cpumask_next(i32 noundef %47, ptr noundef nonnull @__cpu_possible_mask) #6
  %61 = icmp ult i32 %60, %59
  br i1 %61, label %42, label %130

62:                                               ; preds = %54
  br i1 %45, label %130, label %63

63:                                               ; preds = %62, %36
  %64 = trunc i64 %37 to i32
  %65 = and i32 %64, 31
  %66 = shl nuw i32 1, %65
  %67 = lshr i32 %64, 5
  %68 = getelementptr i32, ptr @asid_map, i32 %67
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, ptr %68, align 4
  %71 = and i32 %69, %66
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %130, label %73

73:                                               ; preds = %63, %32
  %74 = load i32, ptr @new_context.cur_idx, align 4
  %75 = tail call i32 @_find_next_zero_bit_le(ptr noundef nonnull @asid_map, i32 noundef 256, i32 noundef %74) #5
  %76 = icmp eq i32 %75, 256
  br i1 %76, label %77, label %118

77:                                               ; preds = %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @asid_generation) #5, !srcloc !13
  %78 = tail call { i64, i32 } asm sideeffect "@ atomic64_add_return\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @asid_generation, ptr nonnull @asid_generation, i64 256, ptr nonnull elementtype(i64) @asid_generation) #5, !srcloc !17
  %79 = extractvalue { i64, i32 } %78, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !18
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) @asid_map, i8 0, i32 32, i1 false) #5
  %80 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #6
  %81 = load i32, ptr @nr_cpu_ids, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %110

83:                                               ; preds = %97, %77
  %84 = phi i32 [ %107, %97 ], [ %80, %77 ]
  %85 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %84
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, ptrtoint (ptr @active_asids to i32)
  %88 = inttoptr i32 %87 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %88) #5, !srcloc !13
  %89 = tail call { i64, i32 } asm sideeffect "@ atomic64_xchg\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09strexd\09$1, $4, ${4:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %88, ptr %88, i64 0, ptr elementtype(i64) %88) #5, !srcloc !14
  %90 = extractvalue { i64, i32 } %89, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  %91 = icmp eq i64 %90, 0
  %92 = load i32, ptr %85, align 4
  %93 = add i32 %92, ptrtoint (ptr @reserved_asids to i32)
  %94 = inttoptr i32 %93 to ptr
  br i1 %91, label %95, label %97

95:                                               ; preds = %83
  %96 = load i64, ptr %94, align 8
  br label %97

97:                                               ; preds = %95, %83
  %98 = phi i64 [ %96, %95 ], [ %90, %83 ]
  %99 = trunc i64 %98 to i32
  %100 = and i32 %99, 31
  %101 = shl nuw i32 1, %100
  %102 = lshr i32 %99, 5
  %103 = and i32 %102, 7
  %104 = getelementptr i32, ptr @asid_map, i32 %103
  %105 = load i32, ptr %104, align 4
  %106 = or i32 %101, %105
  store i32 %106, ptr %104, align 4
  store i64 %98, ptr %94, align 8
  %107 = tail call i32 @cpumask_next(i32 noundef %84, ptr noundef nonnull @__cpu_possible_mask) #6
  %108 = load i32, ptr @nr_cpu_ids, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %83, label %110

110:                                              ; preds = %97, %77
  store i32 -1, ptr @tlb_flush_pending, align 4
  %111 = load i32, ptr @cacheid, align 4
  %112 = and i32 %111, 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr @cpu_cache, align 4
  tail call void %115() #5
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !19
  br label %116

116:                                              ; preds = %114, %110
  %117 = tail call i32 @_find_next_zero_bit_le(ptr noundef nonnull @asid_map, i32 noundef 256, i32 noundef 1) #5
  br label %118

118:                                              ; preds = %116, %73
  %119 = phi i32 [ %117, %116 ], [ %75, %73 ]
  %120 = phi i64 [ %79, %116 ], [ %34, %73 ]
  %121 = sext i32 %119 to i64
  %122 = and i32 %119, 31
  %123 = shl nuw i32 1, %122
  %124 = lshr i32 %119, 5
  %125 = getelementptr i32, ptr @asid_map, i32 %124
  %126 = load i32, ptr %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, ptr %125, align 4
  store i32 %119, ptr @new_context.cur_idx, align 4
  %128 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 1
  store i32 0, ptr %128, align 4
  %129 = or i64 %120, %121
  br label %130

130:                                              ; preds = %118, %63, %62, %57
  %131 = phi i64 [ %129, %118 ], [ %38, %63 ], [ %38, %62 ], [ %38, %57 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #5, !srcloc !13
  %132 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %6, ptr %6, i64 %131) #5, !srcloc !20
  br label %133

133:                                              ; preds = %130, %26
  %134 = phi i64 [ %131, %130 ], [ %28, %26 ]
  %135 = tail call i32 @_test_and_clear_bit(i32 noundef %5, ptr noundef nonnull @tlb_flush_pending) #5
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %149, label %137

137:                                              ; preds = %133
  %138 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %139 = and i32 %138, 524288
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #5, !srcloc !21
  br label %142

142:                                              ; preds = %141, %137
  %143 = and i32 %138, 8388608
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #5, !srcloc !22
  br label %146

146:                                              ; preds = %145, %142
  %147 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #5, !srcloc !23
  %148 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %148, i32 4608) #5, !srcloc !24
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %147, i32 2097152) #5, !srcloc !25
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #5, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !27
  br label %149

149:                                              ; preds = %146, %133
  %150 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %151 = load i32, ptr %150, align 4
  %152 = add i32 %151, ptrtoint (ptr @active_asids to i32)
  %153 = inttoptr i32 %152 to ptr
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %153) #5, !srcloc !13
  %154 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %153, ptr %153, i64 %134) #5, !srcloc !20
  %155 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %5, ptr noundef %155) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @cpu_asid_lock, i32 noundef %27) #5
  br label %156

156:                                              ; preds = %149, %18
  %157 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 8), align 4
  %158 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 8
  %159 = load ptr, ptr %158, align 4
  %160 = ptrtoint ptr %159 to i32
  %161 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %160, i32 -2130706432, i32 8454144) #7, !srcloc !28
  tail call void %157(i32 noundef %161, ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_vmalloc_seq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind readnone }

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
!9 = !{i64 2652, i64 2699}
!10 = !{i64 2152502702}
!11 = !{i64 524585, i64 524606}
!12 = !{i64 2148256832}
!13 = !{i64 534971, i64 2148036537, i64 2148036563, i64 2148036610, i64 2148036632, i64 2148036660, i64 2148036680}
!14 = !{i64 528712, i64 528733, i64 528761, i64 528791, i64 528807}
!15 = !{i64 2148257031}
!16 = !{i64 2148237117}
!17 = !{i64 2148111782, i64 2148111816, i64 2148111850, i64 2148111884, i64 2148111918, i64 2148111954, i64 2148111977}
!18 = !{i64 2148237322}
!19 = !{i64 2152027065}
!20 = !{i64 524830, i64 524850, i64 524878, i64 524908, i64 524924}
!21 = !{i64 3322974}
!22 = !{i64 3323201}
!23 = !{i64 2150818613}
!24 = !{i64 2150812180, i64 2150812193}
!25 = !{i64 2150818885, i64 2150818898}
!26 = !{i64 2150821646}
!27 = !{i64 2150821705}
!28 = !{i64 2148729238, i64 2148729261, i64 2148729293, i64 2148729325, i64 2148729363, i64 2148729393}
