; ModuleID = '/llk/IR/lib/buildid.c_pt.bc'
source_filename = "../lib/buildid.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.61, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.rb_node, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.34, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.5 }
%struct.llist_node = type { ptr }
%union.anon.5 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.34 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_phdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.elf32_note = type { i32, i32, i32 }
%struct.elf64_hdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf64_phdr = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.page = type { i32, %union.anon.35, %union.anon.47, %struct.atomic_t }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.47 = type { %struct.atomic_t }

@.str = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@__stop_notes = extern_weak dso_local constant i8, align 1
@__start_notes = extern_weak dso_local constant i8, align 1
@vmlinux_build_id = dso_local global [20 x i8] zeroinitializer, section ".data..ro_after_init", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"GNU\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @build_id_parse(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %193, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 17
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @pagecache_get_page(ptr noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %193, label %12

12:                                               ; preds = %7
  %13 = load i32, ptr @pgprot_kernel, align 4
  %14 = or i32 %13, 512
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !8
  %15 = tail call ptr @llvm.thread.pointer() #9
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 149
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %19 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %10, i32 noundef %14) #9
  %20 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %19, ptr noundef nonnull dereferenceable(4) @.str, i32 4)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %173

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.elf32_hdr, ptr %19, i32 0, i32 1
  %24 = load i16, ptr %23, align 4
  %25 = and i16 %24, -2
  %26 = icmp eq i16 %25, 2
  br i1 %26, label %27, label %173

27:                                               ; preds = %22
  %28 = getelementptr [16 x i8], ptr %19, i32 0, i32 4
  %29 = load i8, ptr %28, align 4
  switch i8 %29, label %173 [
    i8 1, label %30
    i8 2, label %99
  ]

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.elf32_hdr, ptr %19, i32 0, i32 10
  %32 = load i16, ptr %31, align 4
  %33 = icmp ugt i16 %32, 126
  br i1 %33, label %173, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %19, i32 52
  %36 = zext i16 %32 to i32
  %37 = icmp eq i16 %32, 0
  br i1 %37, label %173, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %19, i32 4096
  br label %40

40:                                               ; preds = %96, %38
  %41 = phi i32 [ 0, %38 ], [ %97, %96 ]
  %42 = getelementptr %struct.elf32_phdr, ptr %35, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %45, label %96

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.elf32_phdr, ptr %42, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr i8, ptr %19, i32 %47
  %49 = getelementptr inbounds %struct.elf32_phdr, ptr %42, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = icmp ult ptr %48, %19
  br i1 %51, label %96, label %52

52:                                               ; preds = %45
  %53 = getelementptr i8, ptr %48, i32 %50
  %54 = icmp ult ptr %53, %48
  %55 = icmp ugt ptr %53, %39
  %56 = or i1 %54, %55
  br i1 %56, label %96, label %57

57:                                               ; preds = %85, %52
  %58 = phi i32 [ %94, %85 ], [ 0, %52 ]
  %59 = add i32 %58, 12
  %60 = icmp ult i32 %59, %50
  br i1 %60, label %61, label %96

61:                                               ; preds = %57
  %62 = getelementptr i8, ptr %48, i32 %58
  %63 = getelementptr inbounds %struct.elf32_note, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 3
  %66 = load i32, ptr %62, align 4
  %67 = icmp eq i32 %66, 4
  %68 = select i1 %65, i1 %67, i1 false
  br i1 %68, label %69, label %85

69:                                               ; preds = %61
  %70 = getelementptr %struct.elf32_note, ptr %62, i32 1
  %71 = tail call i32 @strcmp(ptr noundef %70, ptr noundef nonnull dereferenceable(4) @.str.1) #9
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = getelementptr %struct.elf32_note, ptr %62, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, -1
  %77 = icmp ult i32 %76, 20
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = getelementptr %struct.elf32_note, ptr %62, i32 0, i32 1
  %80 = getelementptr i8, ptr %79, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %80, i32 %75, i1 false) #9
  %81 = load i32, ptr %79, align 4
  %82 = getelementptr i8, ptr %1, i32 %81
  %83 = sub i32 20, %81
  tail call void @llvm.memset.p0.i32(ptr align 1 %82, i8 0, i32 %83, i1 false) #9
  %84 = icmp eq ptr %2, null
  br i1 %84, label %173, label %170

85:                                               ; preds = %73, %69, %61
  %86 = phi i32 [ 4, %73 ], [ 4, %69 ], [ %66, %61 ]
  %87 = add i32 %86, 3
  %88 = and i32 %87, -4
  %89 = add i32 %88, %59
  %90 = getelementptr inbounds %struct.elf32_note, ptr %62, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, 3
  %93 = and i32 %92, -4
  %94 = add i32 %89, %93
  %95 = icmp ugt i32 %94, %58
  br i1 %95, label %57, label %96

96:                                               ; preds = %85, %57, %52, %45, %40
  %97 = add nuw nsw i32 %41, 1
  %98 = icmp eq i32 %97, %36
  br i1 %98, label %173, label %40

99:                                               ; preds = %27
  %100 = getelementptr inbounds %struct.elf64_hdr, ptr %19, i32 0, i32 10
  %101 = load i16, ptr %100, align 8
  %102 = icmp ugt i16 %101, 72
  br i1 %102, label %173, label %103

103:                                              ; preds = %99
  %104 = getelementptr i8, ptr %19, i32 64
  %105 = zext i16 %101 to i32
  %106 = icmp eq i16 %101, 0
  br i1 %106, label %173, label %107

107:                                              ; preds = %103
  %108 = getelementptr i8, ptr %19, i32 4096
  br label %109

109:                                              ; preds = %167, %107
  %110 = phi i32 [ 0, %107 ], [ %168, %167 ]
  %111 = getelementptr %struct.elf64_phdr, ptr %104, i32 %110
  %112 = load i32, ptr %111, align 8
  %113 = icmp eq i32 %112, 4
  br i1 %113, label %114, label %167

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.elf64_phdr, ptr %111, i32 0, i32 2
  %116 = load i64, ptr %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = getelementptr i8, ptr %19, i32 %117
  %119 = getelementptr inbounds %struct.elf64_phdr, ptr %111, i32 0, i32 5
  %120 = load i64, ptr %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = icmp ult ptr %118, %19
  br i1 %122, label %167, label %123

123:                                              ; preds = %114
  %124 = getelementptr i8, ptr %118, i32 %121
  %125 = icmp ult ptr %124, %118
  %126 = icmp ugt ptr %124, %108
  %127 = or i1 %125, %126
  br i1 %127, label %167, label %128

128:                                              ; preds = %156, %123
  %129 = phi i32 [ %165, %156 ], [ 0, %123 ]
  %130 = add i32 %129, 12
  %131 = icmp ult i32 %130, %121
  br i1 %131, label %132, label %167

132:                                              ; preds = %128
  %133 = getelementptr i8, ptr %118, i32 %129
  %134 = getelementptr inbounds %struct.elf32_note, ptr %133, i32 0, i32 2
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 3
  %137 = load i32, ptr %133, align 4
  %138 = icmp eq i32 %137, 4
  %139 = select i1 %136, i1 %138, i1 false
  br i1 %139, label %140, label %156

140:                                              ; preds = %132
  %141 = getelementptr %struct.elf32_note, ptr %133, i32 1
  %142 = tail call i32 @strcmp(ptr noundef %141, ptr noundef nonnull dereferenceable(4) @.str.1) #9
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %140
  %145 = getelementptr %struct.elf32_note, ptr %133, i32 0, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = add i32 %146, -1
  %148 = icmp ult i32 %147, 20
  br i1 %148, label %149, label %156

149:                                              ; preds = %144
  %150 = getelementptr %struct.elf32_note, ptr %133, i32 0, i32 1
  %151 = getelementptr i8, ptr %150, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %151, i32 %146, i1 false) #9
  %152 = load i32, ptr %150, align 4
  %153 = getelementptr i8, ptr %1, i32 %152
  %154 = sub i32 20, %152
  tail call void @llvm.memset.p0.i32(ptr align 1 %153, i8 0, i32 %154, i1 false) #9
  %155 = icmp eq ptr %2, null
  br i1 %155, label %173, label %170

156:                                              ; preds = %144, %140, %132
  %157 = phi i32 [ 4, %144 ], [ 4, %140 ], [ %137, %132 ]
  %158 = add i32 %157, 3
  %159 = and i32 %158, -4
  %160 = add i32 %159, %130
  %161 = getelementptr inbounds %struct.elf32_note, ptr %133, i32 0, i32 1
  %162 = load i32, ptr %161, align 4
  %163 = add i32 %162, 3
  %164 = and i32 %163, -4
  %165 = add i32 %160, %164
  %166 = icmp ugt i32 %165, %129
  br i1 %166, label %128, label %167

167:                                              ; preds = %156, %128, %123, %114, %109
  %168 = add nuw nsw i32 %110, 1
  %169 = icmp eq i32 %168, %105
  br i1 %169, label %173, label %109

170:                                              ; preds = %149, %78
  %171 = phi ptr [ %79, %78 ], [ %150, %149 ]
  %172 = load i32, ptr %171, align 4
  store i32 %172, ptr %2, align 4
  br label %173

173:                                              ; preds = %170, %167, %149, %103, %99, %96, %78, %34, %30, %27, %22, %12
  %174 = phi i32 [ -22, %12 ], [ -22, %22 ], [ -22, %27 ], [ -22, %30 ], [ 0, %78 ], [ -22, %34 ], [ -22, %99 ], [ 0, %149 ], [ -22, %103 ], [ 0, %170 ], [ -22, %96 ], [ -22, %167 ]
  tail call void @kunmap_local_indexed(ptr noundef %19) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %175 = load i32, ptr %16, align 8
  %176 = add i32 %175, -1
  store i32 %176, ptr %16, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %177 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %178 = load volatile i32, ptr %177, align 4
  %179 = and i32 %178, 1
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %183, label %181, !prof !12

181:                                              ; preds = %173
  %182 = add i32 %178, -1
  br label %185

183:                                              ; preds = %173
  %184 = ptrtoint ptr %10 to i32
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi i32 [ %182, %181 ], [ %184, %183 ]
  %187 = inttoptr i32 %186 to ptr
  %188 = getelementptr inbounds %struct.page, ptr %187, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %188) #9, !srcloc !14
  %189 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %188, ptr %188, i32 1, ptr elementtype(i32) %188) #9, !srcloc !15
  %190 = extractvalue { i32, i32 } %189, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %185
  tail call void @__put_page(ptr noundef %187) #9
  br label %193

193:                                              ; preds = %192, %185, %7, %3
  %194 = phi i32 [ -22, %3 ], [ -14, %7 ], [ %174, %185 ], [ %174, %192 ]
  ret i32 %194
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @build_id_parse_buf(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #1 {
  br label %4

4:                                                ; preds = %31, %3
  %5 = phi i32 [ 0, %3 ], [ %40, %31 ]
  %6 = add i32 %5, 12
  %7 = icmp ult i32 %6, %2
  br i1 %7, label %8, label %42

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 %5
  %10 = getelementptr inbounds %struct.elf32_note, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 3
  %13 = load i32, ptr %9, align 4
  %14 = icmp eq i32 %13, 4
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %31

16:                                               ; preds = %8
  %17 = getelementptr %struct.elf32_note, ptr %9, i32 1
  %18 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(4) @.str.1) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = getelementptr %struct.elf32_note, ptr %9, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -1
  %24 = icmp ult i32 %23, 20
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = getelementptr %struct.elf32_note, ptr %9, i32 0, i32 1
  %27 = getelementptr i8, ptr %26, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %27, i32 %22, i1 false) #9
  %28 = load i32, ptr %26, align 4
  %29 = getelementptr i8, ptr %1, i32 %28
  %30 = sub i32 20, %28
  tail call void @llvm.memset.p0.i32(ptr align 1 %29, i8 0, i32 %30, i1 false) #9
  br label %42

31:                                               ; preds = %20, %16, %8
  %32 = phi i32 [ 4, %20 ], [ 4, %16 ], [ %13, %8 ]
  %33 = add i32 %32, 3
  %34 = and i32 %33, -4
  %35 = add i32 %34, %6
  %36 = getelementptr inbounds %struct.elf32_note, ptr %9, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 3
  %39 = and i32 %38, -4
  %40 = add i32 %35, %39
  %41 = icmp ugt i32 %40, %5
  br i1 %41, label %4, label %42

42:                                               ; preds = %31, %25, %4
  %43 = phi i32 [ 0, %25 ], [ -22, %31 ], [ -22, %4 ]
  ret i32 %43
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @init_vmlinux_build_id() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @build_id_parse_buf(ptr noundef @__start_notes, ptr noundef nonnull @vmlinux_build_id, i32 noundef sub (i32 ptrtoint (ptr @__stop_notes to i32), i32 ptrtoint (ptr @__start_notes to i32)))
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }

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
!8 = !{i64 2152458351}
!9 = !{i64 2151590341}
!10 = !{i64 2151590548}
!11 = !{i64 2152460976}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2147956348}
!14 = !{i64 281741, i64 2147783307, i64 2147783333, i64 2147783380, i64 2147783402, i64 2147783430, i64 2147783450}
!15 = !{i64 2147858734, i64 2147858766, i64 2147858795, i64 2147858829, i64 2147858860, i64 2147858883}
!16 = !{i64 2147956551}
