; ModuleID = '/llk/IR/mm/mprotect.c_pt.bc'
source_filename = "../mm/mprotect.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.93, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.page = type { i32, %union.anon.16, %union.anon.28, %struct.atomic_t }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.28 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.37 }
%struct.llist_node = type { ptr }
%union.anon.37 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@vm_committed_as = external dso_local global %struct.percpu_counter, align 8
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4

@sys_mprotect = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_mprotect

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @change_protection(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %4, 12
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mprotect.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 370, 0\0A.popsection", ""() #5, !srcloc !9
  unreachable

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %11 = icmp ult i32 %1, %2
  br i1 %11, label %13, label %12, !prof !10

12:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mprotect.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 344, 0\0A.popsection", ""() #5, !srcloc !11
  unreachable

13:                                               ; preds = %9
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = lshr i32 %1, 21
  %18 = getelementptr [2 x i32], ptr %16, i32 %17
  tail call void @flush_cache_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5
  %19 = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #5, !srcloc !12
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #5, !srcloc !13
  %21 = add i32 %2, -1
  %22 = and i32 %4, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %4, 2
  %25 = icmp ne i32 %24, 0
  %26 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %27 = and i32 %3, 2945
  %28 = shl i32 %4, 5
  %29 = and i32 %28, 128
  br label %30

30:                                               ; preds = %172, %13
  %31 = phi ptr [ %18, %13 ], [ %176, %172 ]
  %32 = phi i32 [ 0, %13 ], [ %175, %172 ]
  %33 = phi i32 [ %1, %13 ], [ %38, %172 ]
  %34 = add i32 %33, 2097152
  %35 = and i32 %34, -2097152
  %36 = add i32 %35, -1
  %37 = icmp ult i32 %36, %21
  %38 = select i1 %37, i32 %35, i32 %2
  %39 = load i32, ptr %31, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %172, label %41

41:                                               ; preds = %30
  %42 = and i32 %39, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44, !prof !10

44:                                               ; preds = %41
  tail call void @pmd_clear_bad(ptr noundef %31) #5
  br label %172

45:                                               ; preds = %41
  %46 = load ptr, ptr @mem_map, align 4
  %47 = lshr i32 %39, 12
  %48 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %49 = sub i32 %47, %48
  %50 = getelementptr %struct.page, ptr %46, i32 %49, i32 1, i32 0, i32 3
  %51 = getelementptr %struct.page, ptr %46, i32 %49
  %52 = load i32, ptr @pgprot_kernel, align 4
  %53 = or i32 %52, 512
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  %54 = tail call ptr @llvm.thread.pointer() #5
  %55 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 149
  %56 = load i32, ptr %55, align 8
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %58 = tail call ptr @__kmap_local_page_prot(ptr noundef %51, i32 noundef %53) #5
  %59 = lshr i32 %33, 12
  %60 = and i32 %59, 511
  %61 = getelementptr i32, ptr %58, i32 %60
  tail call void @_raw_spin_lock(ptr noundef %50) #5
  br i1 %25, label %62, label %71

62:                                               ; preds = %45
  %63 = load i32, ptr %26, align 4
  %64 = and i32 %63, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load ptr, ptr %10, align 4
  %68 = getelementptr inbounds %struct.anon, ptr %67, i32 0, i32 10
  %69 = load volatile i32, ptr %68, align 4
  %70 = icmp ne i32 %69, 1
  br label %71

71:                                               ; preds = %66, %62, %45
  %72 = phi i1 [ true, %62 ], [ true, %45 ], [ %70, %66 ]
  br label %73

73:                                               ; preds = %162, %71
  %74 = phi i32 [ 0, %71 ], [ %163, %162 ]
  %75 = phi ptr [ %61, %71 ], [ %164, %162 ]
  %76 = phi i32 [ %33, %71 ], [ %165, %162 ]
  %77 = load i32, ptr %75, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %149, label %80

80:                                               ; preds = %73
  %81 = and i32 %77, 128
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %25, i1 %82, i1 false
  br i1 %25, label %84, label %137

84:                                               ; preds = %80
  %85 = tail call ptr @vm_normal_page(ptr noundef %0, i32 noundef %76, i32 noundef %77) #5
  %86 = icmp eq ptr %85, null
  br i1 %86, label %162, label %87

87:                                               ; preds = %84
  %88 = load i32, ptr %26, align 4
  %89 = and i32 %88, 40
  %90 = icmp eq i32 %89, 32
  br i1 %90, label %91, label %106

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.page, ptr %85, i32 0, i32 1
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96, !prof !10

96:                                               ; preds = %91
  %97 = add i32 %93, -1
  br label %100

98:                                               ; preds = %91
  %99 = ptrtoint ptr %85 to i32
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = inttoptr i32 %101 to ptr
  %103 = getelementptr inbounds %struct.page, ptr %102, i32 0, i32 3
  %104 = load volatile i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %162

106:                                              ; preds = %100, %87
  %107 = getelementptr inbounds %struct.page, ptr %85, i32 0, i32 1
  %108 = load volatile i32, ptr %107, align 4
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111, !prof !10

111:                                              ; preds = %106
  %112 = add i32 %108, -1
  br label %115

113:                                              ; preds = %106
  %114 = ptrtoint ptr %85 to i32
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = inttoptr i32 %116 to ptr
  %118 = load volatile i32, ptr %117, align 4
  %119 = and i32 %118, 524288
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %115
  %122 = load volatile i32, ptr %107, align 4
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125, !prof !10

125:                                              ; preds = %121
  %126 = add i32 %122, -1
  br label %129

127:                                              ; preds = %121
  %128 = ptrtoint ptr %85 to i32
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  %131 = inttoptr i32 %130 to ptr
  %132 = load volatile i32, ptr %131, align 4
  %133 = and i32 %132, 8
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %134, i1 %72, i1 false
  br i1 %135, label %137, label %162

136:                                              ; preds = %115
  br i1 %72, label %137, label %162

137:                                              ; preds = %136, %129, %80
  %138 = load i32, ptr %75, align 4
  %139 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  tail call void %139(ptr noundef %75, i32 noundef 0, i32 noundef 0) #5
  %140 = and i32 %138, -2946
  %141 = or i32 %140, %27
  %142 = and i32 %141, -129
  %143 = select i1 %83, i32 %142, i32 %141
  %144 = or i32 %143, %29
  %145 = and i32 %143, 64
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %23, i1 true, i1 %146
  %148 = select i1 %147, i32 %144, i32 %142
  br label %158

149:                                              ; preds = %73
  %150 = icmp eq i32 %77, 0
  br i1 %150, label %162, label %151

151:                                              ; preds = %149
  %152 = and i32 %77, 124
  %153 = icmp eq i32 %152, 124
  %154 = and i32 %77, -128
  %155 = or i32 %154, 120
  %156 = select i1 %153, i32 %155, i32 %77
  %157 = icmp eq i32 %77, %156
  br i1 %157, label %162, label %158

158:                                              ; preds = %151, %137
  %159 = phi i32 [ %148, %137 ], [ %156, %151 ]
  %160 = load ptr, ptr %10, align 4
  tail call void @set_pte_at(ptr noundef %160, i32 noundef %76, ptr noundef %75, i32 noundef %159) #5
  %161 = add i32 %74, 1
  br label %162

162:                                              ; preds = %158, %151, %149, %136, %129, %100, %84
  %163 = phi i32 [ %74, %149 ], [ %74, %136 ], [ %74, %84 ], [ %74, %100 ], [ %74, %129 ], [ %74, %151 ], [ %161, %158 ]
  %164 = getelementptr i32, ptr %75, i32 1
  %165 = add i32 %76, 4096
  %166 = icmp eq i32 %165, %38
  br i1 %166, label %167, label %73

167:                                              ; preds = %162
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  %168 = load i16, ptr %50, align 4
  %169 = add i16 %168, 1
  store i16 %169, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !19
  tail call void @kunmap_local_indexed(ptr noundef %75) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !20
  %170 = load i32, ptr %55, align 8
  %171 = add i32 %170, -1
  store i32 %171, ptr %55, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !21
  br label %172

172:                                              ; preds = %167, %44, %30
  %173 = phi i32 [ %163, %167 ], [ 0, %30 ], [ 0, %44 ]
  %174 = tail call i32 @__cond_resched() #5
  %175 = add i32 %173, %32
  %176 = getelementptr [2 x i32], ptr %31, i32 1
  %177 = icmp eq i32 %38, %2
  br i1 %177, label %178, label %30

178:                                              ; preds = %172
  %179 = icmp eq i32 %175, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %178
  tail call void @flush_tlb_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5
  br label %181

181:                                              ; preds = %180, %178
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #5, !srcloc !12
  %182 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #5, !srcloc !22
  ret i32 %175
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mprotect_fixup(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %3, %2
  %11 = lshr i32 %10, 12
  %12 = icmp eq i32 %9, %4
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  store ptr %0, ptr %1, align 4
  br label %83

14:                                               ; preds = %5
  %15 = and i32 %4, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %14
  %18 = tail call zeroext i1 @may_expand_vm(ptr noundef %7, i32 noundef %4, i32 noundef %11) #5
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = tail call zeroext i1 @may_expand_vm(ptr noundef %7, i32 noundef %9, i32 noundef %11) #5
  br i1 %20, label %83, label %21

21:                                               ; preds = %19, %17
  %22 = and i32 %9, 7340042
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = tail call i32 @cap_vm_enough_memory(ptr noundef %7, i32 noundef %11) #5
  %26 = tail call i32 @__vm_enough_memory(ptr noundef %7, i32 noundef %11, i32 noundef %25) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %83

28:                                               ; preds = %24
  %29 = or i32 %4, 1048576
  br label %30

30:                                               ; preds = %28, %21, %14
  %31 = phi i32 [ %4, %21 ], [ %29, %28 ], [ %4, %14 ]
  %32 = phi i32 [ 0, %21 ], [ %11, %28 ], [ 0, %14 ]
  %33 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %0, align 4
  %36 = sub i32 %2, %35
  %37 = lshr i32 %36, 12
  %38 = add i32 %37, %34
  %39 = load ptr, ptr %1, align 4
  %40 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 11
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %43 = load ptr, ptr %42, align 4
  %44 = tail call ptr @vma_merge(ptr noundef %7, ptr noundef %39, i32 noundef %2, i32 noundef %3, i32 noundef %31, ptr noundef %41, ptr noundef %43, i32 noundef %38, ptr noundef null, ptr noundef null) #5
  store ptr %44, ptr %1, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %30
  store ptr %0, ptr %1, align 4
  %47 = load i32, ptr %0, align 4
  %48 = icmp eq i32 %47, %2
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @split_vma(ptr noundef %7, ptr noundef %0, i32 noundef %2, i32 noundef 1) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %49, %46
  %53 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, %3
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = tail call i32 @split_vma(ptr noundef %7, ptr noundef %0, i32 noundef %3, i32 noundef 0) #5
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %56, %52, %30
  %60 = phi ptr [ %0, %56 ], [ %0, %52 ], [ %44, %30 ]
  %61 = getelementptr inbounds %struct.vm_area_struct, ptr %60, i32 0, i32 8
  store i32 %31, ptr %61, align 4
  %62 = getelementptr inbounds %struct.vm_area_struct, ptr %60, i32 0, i32 7
  %63 = load i32, ptr %62, align 4
  %64 = tail call i32 @vma_wants_writenotify(ptr noundef %60, i32 noundef %63) #5
  tail call void @vma_set_page_prot(ptr noundef %60) #5
  %65 = load i32, ptr %62, align 4
  %66 = icmp ne i32 %64, 0
  %67 = zext i1 %66 to i32
  %68 = tail call i32 @change_protection(ptr noundef %60, i32 noundef %2, i32 noundef %3, i32 noundef %65, i32 noundef %67)
  %69 = and i32 %9, 8202
  %70 = icmp ne i32 %69, 8192
  %71 = and i32 %31, 2
  %72 = icmp eq i32 %71, 0
  %73 = or i1 %70, %72
  br i1 %73, label %76, label %74

74:                                               ; preds = %59
  %75 = tail call i32 @populate_vma_page_range(ptr noundef %60, i32 noundef %2, i32 noundef %3, ptr noundef null) #5
  br label %76

76:                                               ; preds = %74, %59
  %77 = sub nsw i32 0, %11
  tail call void @vm_stat_account(ptr noundef %7, i32 noundef %9, i32 noundef %77) #5
  tail call void @vm_stat_account(ptr noundef %7, i32 noundef %31, i32 noundef %11) #5
  tail call void @perf_event_mmap(ptr noundef %60) #5
  br label %83

78:                                               ; preds = %56, %49
  %79 = phi i32 [ %50, %49 ], [ %57, %56 ]
  %80 = sub nsw i32 0, %32
  %81 = sext i32 %80 to i64
  %82 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %81, i32 noundef %82) #5
  br label %83

83:                                               ; preds = %78, %76, %24, %19, %13
  %84 = phi i32 [ 0, %13 ], [ 0, %76 ], [ %79, %78 ], [ -12, %19 ], [ -12, %24 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @may_expand_vm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_merge(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @split_vma(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vma_wants_writenotify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vma_set_page_prot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @populate_vma_page_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_stat_account(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_mmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mprotect(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  %5 = and i32 %2, 50331648
  %6 = tail call ptr @llvm.thread.pointer() #5
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 46
  %8 = load i32, ptr %7, align 16
  %9 = and i32 %8, 4194304
  %10 = icmp ne i32 %9, 0
  %11 = and i32 %2, 1
  %12 = icmp ne i32 %11, 0
  %13 = and i1 %12, %10
  %14 = and i32 %2, -50331664
  %15 = icmp ne i32 %5, 50331648
  %16 = and i32 %0, 4095
  %17 = icmp eq i32 %16, 0
  %18 = and i1 %17, %15
  br i1 %18, label %19, label %125

19:                                               ; preds = %3
  %20 = icmp eq i32 %1, 0
  br i1 %20, label %125, label %21

21:                                               ; preds = %19
  %22 = add i32 %1, 4095
  %23 = and i32 %22, -4096
  %24 = add i32 %23, %0
  %25 = icmp ugt i32 %24, %0
  br i1 %25, label %26, label %125

26:                                               ; preds = %21
  %27 = icmp eq i32 %14, 0
  br i1 %27, label %28, label %125

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 37
  %30 = load ptr, ptr %29, align 4
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %30, i1 noundef zeroext true) #5
  br label %34

34:                                               ; preds = %33, %28
  %35 = getelementptr inbounds %struct.anon, ptr %30, i32 0, i32 15
  %36 = tail call i32 @down_write_killable(ptr noundef %35) #5
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = icmp eq i32 %36, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %30, i1 noundef zeroext true, i1 noundef zeroext %40) #5
  br label %41

41:                                               ; preds = %39, %34
  %42 = icmp eq i32 %36, 0
  br i1 %42, label %43, label %125

43:                                               ; preds = %41
  %44 = load ptr, ptr %29, align 4
  %45 = tail call ptr @find_vma(ptr noundef %44, i32 noundef %0) #5
  %46 = icmp eq ptr %45, null
  br i1 %46, label %117, label %47

47:                                               ; preds = %43
  %48 = and i32 %2, 16777216
  %49 = icmp eq i32 %48, 0
  %50 = load i32, ptr %45, align 4
  br i1 %49, label %58, label %51, !prof !10

51:                                               ; preds = %47
  %52 = icmp ult i32 %50, %24
  br i1 %52, label %53, label %117

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.vm_area_struct, ptr %45, i32 0, i32 8
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %117, label %65

58:                                               ; preds = %47
  %59 = icmp ugt i32 %50, %0
  br i1 %59, label %117, label %60

60:                                               ; preds = %58
  %61 = and i32 %2, 33554432
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %117, !prof !10

63:                                               ; preds = %60
  %64 = icmp ult i32 %50, %0
  br i1 %64, label %69, label %65

65:                                               ; preds = %63, %53
  %66 = phi i32 [ %0, %63 ], [ %50, %53 ]
  %67 = getelementptr inbounds %struct.vm_area_struct, ptr %45, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  br label %69

69:                                               ; preds = %65, %63
  %70 = phi i32 [ %66, %65 ], [ %0, %63 ]
  %71 = phi ptr [ %68, %65 ], [ %45, %63 ]
  store ptr %71, ptr %4, align 4
  %72 = and i32 %2, 7
  br label %73

73:                                               ; preds = %114, %69
  %74 = phi i32 [ %70, %69 ], [ %108, %114 ]
  %75 = phi ptr [ %45, %69 ], [ %112, %114 ]
  %76 = getelementptr inbounds %struct.vm_area_struct, ptr %75, i32 0, i32 8
  %77 = load i32, ptr %76, align 4
  %78 = lshr i32 %77, 4
  %79 = and i32 %78, 4
  %80 = select i1 %13, i32 %79, i32 0
  %81 = and i32 %77, -8
  %82 = or i32 %81, %72
  %83 = or i32 %82, %80
  %84 = xor i32 %78, -1
  %85 = and i32 %72, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %117

87:                                               ; preds = %73
  %88 = getelementptr inbounds %struct.vm_area_struct, ptr %75, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = tail call i32 @llvm.umin.i32(i32 %89, i32 %24) #5
  %91 = getelementptr inbounds %struct.vm_area_struct, ptr %75, i32 0, i32 12
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %101, label %94

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.vm_operations_struct, ptr %92, i32 0, i32 4
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = tail call i32 %96(ptr noundef nonnull %75, i32 noundef %74, i32 noundef %90, i32 noundef %83) #5
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %98, %94, %87
  %102 = call i32 @mprotect_fixup(ptr noundef nonnull %75, ptr noundef nonnull %4, i32 noundef %74, i32 noundef %90, i32 noundef %83) #5
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load ptr, ptr %4, align 4
  %106 = getelementptr inbounds %struct.vm_area_struct, ptr %105, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = tail call i32 @llvm.umax.i32(i32 %90, i32 %107) #5
  %109 = icmp ult i32 %108, %24
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.vm_area_struct, ptr %105, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = load i32, ptr %112, align 4
  %116 = icmp eq i32 %115, %108
  br i1 %116, label %73, label %117

117:                                              ; preds = %114, %110, %104, %101, %98, %73, %60, %58, %53, %51, %43
  %118 = phi i32 [ -12, %51 ], [ -22, %53 ], [ -12, %58 ], [ -12, %43 ], [ -22, %60 ], [ -13, %73 ], [ %99, %98 ], [ %102, %101 ], [ 0, %104 ], [ -12, %114 ], [ -12, %110 ]
  %119 = load ptr, ptr %29, align 4
  %120 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  tail call void @__mmap_lock_do_trace_released(ptr noundef %119, i1 noundef zeroext true) #5
  br label %123

123:                                              ; preds = %122, %117
  %124 = getelementptr inbounds %struct.anon, ptr %119, i32 0, i32 15
  tail call void @up_write(ptr noundef %124) #5
  br label %125

125:                                              ; preds = %123, %41, %26, %21, %19, %3
  %126 = phi i32 [ %118, %123 ], [ -22, %3 ], [ 0, %19 ], [ -12, %21 ], [ -22, %26 ], [ -4, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %126
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_cache_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmd_clear_bad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_normal_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vm_enough_memory(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_vm_enough_memory(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i64 2154144513, i64 2154144991, i64 2154144550, i64 2154144606, i64 2154144640, i64 2154144664, i64 2154144705, i64 2154144726, i64 2154144754, i64 2154144788}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2154142999, i64 2154143477, i64 2154143036, i64 2154143092, i64 2154143126, i64 2154143150, i64 2154143191, i64 2154143212, i64 2154143240, i64 2154143274}
!12 = !{i64 860721, i64 2148350692, i64 2148350718, i64 2148350765, i64 2148350787, i64 2148350815, i64 2148350835}
!13 = !{i64 2148362107, i64 2148362133, i64 2148362162, i64 2148362196, i64 2148362227, i64 2148362250}
!14 = !{i64 2152804760}
!15 = !{i64 2151524456}
!16 = !{i64 2149027787}
!17 = !{i64 2149023611}
!18 = !{i64 2149023686, i64 2149023713, i64 2149023760, i64 2149023782, i64 2149023810, i64 2149023830}
!19 = !{i64 2149050790}
!20 = !{i64 2151524663}
!21 = !{i64 2152811446}
!22 = !{i64 2148364464, i64 2148364490, i64 2148364519, i64 2148364553, i64 2148364584, i64 2148364607}
