; ModuleID = '/llk/IR/mm/page_vma_mapped.c_pt.bc'
source_filename = "../mm/page_vma_mapped.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.page_vma_mapped_walk = type { ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.20, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.rb_node, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.anon.7 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.page = type { i32, %union.anon, %union.anon.64, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @page_vma_mapped_walk(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, null
  %9 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = select i1 %8, i1 %11, i1 false
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %189, label %17

17:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %18 = load i16, ptr %15, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  br label %189

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 4096
  %24 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %0, i32 0, i32 4
  %25 = icmp eq ptr %10, null
  br i1 %25, label %26, label %118

26:                                               ; preds = %150, %20
  %27 = phi i32 [ %22, %20 ], [ %156, %150 ]
  %28 = getelementptr inbounds %struct.anon.7, ptr %5, i32 0, i32 8
  br label %29

29:                                               ; preds = %36, %26
  %30 = phi i32 [ %38, %36 ], [ %27, %26 ]
  %31 = load ptr, ptr %28, align 4
  %32 = lshr i32 %30, 21
  %33 = getelementptr [2 x i32], ptr %31, i32 %32
  store ptr %33, ptr %6, align 4
  %34 = load volatile i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = add i32 %30, 2097152
  %38 = and i32 %37, -2097152
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 -1, i32 %38
  store i32 %40, ptr %21, align 4
  %41 = icmp ult i32 %40, %23
  br i1 %41, label %29, label %189

42:                                               ; preds = %29
  %43 = load ptr, ptr @mem_map, align 4
  %44 = lshr i32 %34, 12
  %45 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %46 = sub i32 %44, %45
  %47 = getelementptr %struct.page, ptr %43, i32 %46
  %48 = load i32, ptr @pgprot_kernel, align 4
  %49 = or i32 %48, 512
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %50 = tail call ptr @llvm.thread.pointer() #5
  %51 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 149
  %52 = load i32, ptr %51, align 8
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %54 = tail call ptr @__kmap_local_page_prot(ptr noundef %47, i32 noundef %49) #5
  %55 = load i32, ptr %21, align 4
  %56 = lshr i32 %55, 12
  %57 = and i32 %56, 511
  %58 = getelementptr i32, ptr %54, i32 %57
  store ptr %58, ptr %24, align 4
  %59 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %0, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %42
  %64 = and i32 %60, 2
  %65 = icmp eq i32 %64, 0
  %66 = load i32, ptr %58, align 4
  br i1 %65, label %72, label %67

67:                                               ; preds = %63
  %68 = icmp eq i32 %66, 0
  %69 = and i32 %66, 1
  %70 = icmp ne i32 %69, 0
  %71 = or i1 %68, %70
  br i1 %71, label %118, label %75

72:                                               ; preds = %63
  %73 = and i32 %66, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %118, label %75

75:                                               ; preds = %72, %67, %42
  %76 = load ptr, ptr %6, align 4
  %77 = load ptr, ptr @mem_map, align 4
  %78 = load i32, ptr %76, align 4
  %79 = lshr i32 %78, 12
  %80 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %81 = sub i32 %79, %80
  %82 = getelementptr %struct.page, ptr %77, i32 %81, i32 1, i32 0, i32 3
  %83 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %0, i32 0, i32 5
  store ptr %82, ptr %83, align 4
  br label %84

84:                                               ; preds = %181, %75
  %85 = phi ptr [ %82, %75 ], [ %188, %181 ]
  tail call void @_raw_spin_lock(ptr noundef %85) #5
  br label %86

86:                                               ; preds = %178, %84
  %87 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %0, i32 0, i32 6
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  %91 = load ptr, ptr %24, align 4
  %92 = load i32, ptr %91, align 4
  br i1 %90, label %102, label %93

93:                                               ; preds = %86
  %94 = icmp eq i32 %92, 0
  %95 = and i32 %92, 1
  %96 = icmp ne i32 %95, 0
  %97 = or i1 %94, %96
  br i1 %97, label %118, label %98

98:                                               ; preds = %93
  %99 = lshr i32 %92, 7
  %100 = and i32 %92, 120
  %101 = icmp eq i32 %100, 120
  br i1 %101, label %107, label %118

102:                                              ; preds = %86
  %103 = and i32 %92, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %102
  %106 = lshr i32 %92, 12
  br label %107

107:                                              ; preds = %105, %98
  %108 = phi i32 [ %106, %105 ], [ %99, %98 ]
  %109 = load ptr, ptr %0, align 4
  %110 = load ptr, ptr @mem_map, align 4
  %111 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %112 = ptrtoint ptr %109 to i32
  %113 = ptrtoint ptr %110 to i32
  %114 = sub i32 %112, %113
  %115 = ashr exact i32 %114, 5
  %116 = add i32 %115, %111
  %117 = icmp eq i32 %116, %108
  br i1 %117, label %189, label %118

118:                                              ; preds = %107, %102, %98, %93, %72, %67, %20
  %119 = phi ptr [ %91, %102 ], [ %91, %98 ], [ %91, %93 ], [ %58, %72 ], [ %58, %67 ], [ %91, %107 ], [ %10, %20 ]
  %120 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %0, i32 0, i32 5
  br label %122

122:                                              ; preds = %174, %118
  %123 = phi ptr [ %175, %174 ], [ %119, %118 ]
  %124 = load i32, ptr %21, align 4
  %125 = add i32 %124, 4096
  store i32 %125, ptr %21, align 4
  %126 = icmp ult i32 %125, %23
  br i1 %126, label %140, label %127

127:                                              ; preds = %122
  %128 = icmp eq ptr %123, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %127
  tail call void @kunmap_local_indexed(ptr noundef nonnull %123) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  %130 = tail call ptr @llvm.thread.pointer() #5
  %131 = getelementptr inbounds %struct.task_struct, ptr %130, i32 0, i32 149
  %132 = load i32, ptr %131, align 8
  %133 = add i32 %132, -1
  store i32 %133, ptr %131, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  br label %134

134:                                              ; preds = %129, %127
  %135 = load ptr, ptr %121, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %189, label %137

137:                                              ; preds = %134
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %138 = load i16, ptr %135, align 4
  %139 = add i16 %138, 1
  store i16 %139, ptr %135, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  br label %189

140:                                              ; preds = %122
  %141 = and i32 %125, 2093056
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %140
  %144 = load ptr, ptr %121, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %143
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %147 = load i16, ptr %144, align 4
  %148 = add i16 %147, 1
  store i16 %148, ptr %144, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  store ptr null, ptr %121, align 4
  %149 = load ptr, ptr %24, align 4
  br label %150

150:                                              ; preds = %146, %143
  %151 = phi ptr [ %149, %146 ], [ %123, %143 ]
  tail call void @kunmap_local_indexed(ptr noundef %151) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  %152 = tail call ptr @llvm.thread.pointer() #5
  %153 = getelementptr inbounds %struct.task_struct, ptr %152, i32 0, i32 149
  %154 = load i32, ptr %153, align 8
  %155 = add i32 %154, -1
  store i32 %155, ptr %153, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  store ptr null, ptr %24, align 4
  %156 = load i32, ptr %21, align 4
  br label %26

157:                                              ; preds = %140
  %158 = getelementptr i32, ptr %123, i32 1
  store ptr %158, ptr %24, align 4
  %159 = load i32, ptr %120, align 4
  %160 = and i32 %159, 1
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %174, label %162

162:                                              ; preds = %157
  %163 = load ptr, ptr %121, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %174

165:                                              ; preds = %162
  %166 = load ptr, ptr %6, align 4
  %167 = load ptr, ptr @mem_map, align 4
  %168 = load i32, ptr %166, align 4
  %169 = lshr i32 %168, 12
  %170 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %171 = sub i32 %169, %170
  %172 = getelementptr %struct.page, ptr %167, i32 %171, i32 1, i32 0, i32 3
  store ptr %172, ptr %121, align 4
  tail call void @_raw_spin_lock(ptr noundef %172) #5
  %173 = load ptr, ptr %24, align 4
  br label %174

174:                                              ; preds = %165, %162, %157
  %175 = phi ptr [ %158, %157 ], [ %158, %162 ], [ %173, %165 ]
  %176 = load i32, ptr %175, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %122, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr %121, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %86

181:                                              ; preds = %178
  %182 = load ptr, ptr %6, align 4
  %183 = load ptr, ptr @mem_map, align 4
  %184 = load i32, ptr %182, align 4
  %185 = lshr i32 %184, 12
  %186 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %187 = sub i32 %185, %186
  %188 = getelementptr %struct.page, ptr %183, i32 %187, i32 1, i32 0, i32 3
  store ptr %188, ptr %121, align 4
  br label %84

189:                                              ; preds = %137, %134, %107, %36, %17, %13
  %190 = phi i1 [ true, %107 ], [ false, %13 ], [ false, %17 ], [ false, %134 ], [ false, %137 ], [ false, %36 ]
  ret i1 %190
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @page_mapped_in_vma(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.page_vma_mapped_walk, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #5
  store ptr %0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %3, i32 0, i32 1
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %3, i32 0, i32 2
  %6 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %3, i32 0, i32 4
  %7 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %3, i32 0, i32 5
  %8 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %3, i32 0, i32 6
  %9 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %3, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false)
  store i32 1, ptr %8, align 4
  %10 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load i32, ptr %1, align 4
  %17 = sub i32 %11, %13
  %18 = shl i32 %17, 12
  %19 = add i32 %16, %18
  %20 = icmp ult i32 %19, %16
  br i1 %20, label %62, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %19, %23
  br i1 %24, label %43, label %62

25:                                               ; preds = %2
  %26 = load volatile i32, ptr %0, align 4
  %27 = and i32 %26, 65536
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %62, label %29

29:                                               ; preds = %25
  %30 = load volatile i32, ptr %0, align 4
  %31 = and i32 %30, 65536
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i32 [ %35, %33 ], [ 1, %29 ]
  %38 = add i32 %11, -1
  %39 = add i32 %38, %37
  %40 = icmp ult i32 %39, %13
  br i1 %40, label %62, label %41

41:                                               ; preds = %36
  %42 = load i32, ptr %1, align 4
  br label %43

43:                                               ; preds = %41, %21
  %44 = phi i32 [ %19, %21 ], [ %42, %41 ]
  store i32 %44, ptr %5, align 4
  %45 = icmp eq i32 %44, -14
  br i1 %45, label %62, label %46

46:                                               ; preds = %43
  %47 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %3)
  br i1 %47, label %48, label %62

48:                                               ; preds = %46
  %49 = load ptr, ptr %6, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  call void @kunmap_local_indexed(ptr noundef nonnull %49) #5
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  %52 = tail call ptr @llvm.thread.pointer() #5
  %53 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 149
  %54 = load i32, ptr %53, align 8
  %55 = add i32 %54, -1
  store i32 %55, ptr %53, align 8
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  br label %56

56:                                               ; preds = %51, %48
  %57 = load ptr, ptr %7, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %60 = load i16, ptr %57, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %57, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  br label %62

62:                                               ; preds = %59, %56, %46, %43, %36, %25, %21, %15
  %63 = phi i32 [ 0, %43 ], [ 0, %46 ], [ 1, %56 ], [ 1, %59 ], [ 0, %36 ], [ 0, %25 ], [ 0, %21 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #5
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 2149014481}
!9 = !{i64 2149010305}
!10 = !{i64 2149010380, i64 2149010407, i64 2149010454, i64 2149010476, i64 2149010504, i64 2149010524}
!11 = !{i64 2149037484}
!12 = !{i64 2152828649}
!13 = !{i64 2151511150}
!14 = !{i64 2151511357}
!15 = !{i64 2152831274}
