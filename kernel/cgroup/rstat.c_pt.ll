; ModuleID = '/llk/IR/kernel/cgroup/rstat.c_pt.bc'
source_filename = "../kernel/cgroup/rstat.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.cpumask = type { [1 x i32] }
%struct.kernel_cpustat = type { [10 x i64] }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [0 x ptr], ptr, %struct.list_head, [0 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.psi_group = type {}
%struct.cgroup_bpf = type {}
%struct.atomic_t = type { i32 }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.cgroup_rstat_cpu = type { %struct.u64_stats_sync, %struct.cgroup_base_stat, %struct.cgroup_base_stat, ptr, ptr }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@cgroup_rstat_cpu_lock = internal global %struct.raw_spinlock zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@cgroup_rstat_lock = internal global %struct.spinlock zeroinitializer, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cgroup_rstat_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [22 x i8] c"kernel/cgroup/rstat.c\00", align 1
@cgroup_rstat_exit.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"usage_usec %llu\0Auser_usec %llu\0Asystem_usec %llu\0A\00", align 1
@cgroup_rstat_cpu_pop_updated.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kernel_cpustat = external dso_local global %struct.kernel_cpustat, section ".data..percpu", align 8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_rstat_updated(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @cgroup_rstat_cpu_lock to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 24
  %8 = load ptr, ptr %7, align 8
  %9 = ptrtoint ptr %8 to i32
  %10 = add i32 %4, %9
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %50

15:                                               ; preds = %2
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %17 = load ptr, ptr %7, align 8
  %18 = ptrtoint ptr %17 to i32
  %19 = load i32, ptr %3, align 4
  %20 = add i32 %19, %18
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %21, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %33, %15
  %26 = phi ptr [ %46, %33 ], [ %22, %15 ]
  %27 = phi i32 [ %43, %33 ], [ %19, %15 ]
  %28 = phi ptr [ %30, %33 ], [ %0, %15 ]
  %29 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %28, i32 0, i32 12
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store ptr %28, ptr %26, align 4
  br label %49

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.cgroup, ptr %30, i32 0, i32 24
  %35 = load ptr, ptr %34, align 8
  %36 = ptrtoint ptr %35 to i32
  %37 = add i32 %27, %36
  %38 = inttoptr i32 %37 to ptr
  %39 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  store ptr %40, ptr %26, align 4
  store ptr %28, ptr %39, align 8
  %41 = load ptr, ptr %34, align 8
  %42 = ptrtoint ptr %41 to i32
  %43 = load i32, ptr %3, align 4
  %44 = add i32 %43, %42
  %45 = inttoptr i32 %44 to ptr
  %46 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %45, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %25, label %49

49:                                               ; preds = %33, %32, %15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %16) #8
  br label %50

50:                                               ; preds = %49, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_rstat_flush(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @cgroup_rstat_lock) #8
  tail call fastcc void @cgroup_rstat_flush_locked(ptr noundef %0, i1 noundef zeroext true)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  %2 = load i16, ptr @cgroup_rstat_lock, align 4
  %3 = add i16 %2, 1
  store i16 %3, ptr @cgroup_rstat_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cgroup_rstat_flush_locked(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %209

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 24
  %8 = icmp eq ptr %0, null
  br label %9

9:                                                ; preds = %205, %6
  %10 = phi i32 [ %3, %6 ], [ %206, %205 ]
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, ptrtoint (ptr @cgroup_rstat_cpu_lock to i32)
  %14 = inttoptr i32 %13 to ptr
  tail call void @_raw_spin_lock(ptr noundef %14) #8
  br i1 %8, label %190, label %15

15:                                               ; preds = %188, %9
  %16 = phi ptr [ %35, %188 ], [ null, %9 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load ptr, ptr %7, align 8
  %20 = ptrtoint ptr %19 to i32
  %21 = load i32, ptr %11, align 4
  %22 = add i32 %21, %20
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %23, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %190, label %31

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %16, i32 0, i32 12
  %29 = load ptr, ptr %28, align 8
  %30 = load i32, ptr %11, align 4
  br label %31

31:                                               ; preds = %27, %18
  %32 = phi i32 [ %30, %27 ], [ %21, %18 ]
  %33 = phi ptr [ %29, %27 ], [ %0, %18 ]
  br label %34

34:                                               ; preds = %34, %31
  %35 = phi ptr [ %33, %31 ], [ %42, %34 ]
  %36 = getelementptr inbounds %struct.cgroup, ptr %35, i32 0, i32 24
  %37 = load ptr, ptr %36, align 8
  %38 = ptrtoint ptr %37 to i32
  %39 = add i32 %32, %38
  %40 = inttoptr i32 %39 to ptr
  %41 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, %35
  br i1 %43, label %44, label %34

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.cgroup, ptr %35, i32 0, i32 24
  %46 = inttoptr i32 %39 to ptr
  %47 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %35, i32 0, i32 12
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %89, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.cgroup, ptr %48, i32 0, i32 24
  %52 = load ptr, ptr %51, align 8
  %53 = ptrtoint ptr %52 to i32
  %54 = add i32 %32, %53
  %55 = inttoptr i32 %54 to ptr
  %56 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %35
  br i1 %58, label %85, label %59

59:                                               ; preds = %50
  %60 = load i1, ptr @cgroup_rstat_cpu_pop_updated.__already_done, align 1
  br label %61

61:                                               ; preds = %80, %59
  %62 = phi i32 [ %81, %80 ], [ %32, %59 ]
  %63 = phi i1 [ %76, %80 ], [ %60, %59 ]
  %64 = phi ptr [ %78, %80 ], [ %57, %59 ]
  %65 = getelementptr inbounds %struct.cgroup, ptr %64, i32 0, i32 24
  %66 = load ptr, ptr %65, align 8
  %67 = ptrtoint ptr %66 to i32
  %68 = add i32 %62, %67
  %69 = inttoptr i32 %68 to ptr
  %70 = icmp eq ptr %64, %48
  %71 = xor i1 %63, true
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %73, label %75, !prof !14

73:                                               ; preds = %61
  store i1 true, ptr @cgroup_rstat_cpu_pop_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 134, i32 noundef 9, ptr noundef null) #8
  %74 = load i1, ptr @cgroup_rstat_cpu_pop_updated.__already_done, align 1
  br label %75

75:                                               ; preds = %73, %61
  %76 = phi i1 [ %74, %73 ], [ %63, %61 ]
  %77 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %69, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %35
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = load i32, ptr %11, align 4
  br label %61

82:                                               ; preds = %75
  %83 = inttoptr i32 %68 to ptr
  %84 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %83, i32 0, i32 4
  br label %85

85:                                               ; preds = %82, %50
  %86 = phi ptr [ %56, %50 ], [ %84, %82 ]
  %87 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %46, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  store ptr %88, ptr %86, align 4
  br label %89

89:                                               ; preds = %85, %44
  %90 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %46, i32 0, i32 4
  store ptr null, ptr %90, align 4
  %91 = icmp eq ptr %35, null
  br i1 %91, label %190, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %45, align 8
  %94 = ptrtoint ptr %93 to i32
  %95 = load i32, ptr %11, align 4
  %96 = add i32 %95, %94
  %97 = inttoptr i32 %96 to ptr
  %98 = load ptr, ptr %47, align 8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %175, label %100

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %97, i32 0, i32 1
  %102 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %97, i32 0, i32 1, i32 0, i32 1
  %103 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %97, i32 0, i32 1, i32 0, i32 2
  br label %104

104:                                              ; preds = %112, %100
  %105 = load volatile i32, ptr %97, align 4
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %108, %104
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !16
  %109 = load volatile i32, ptr %97, align 4
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %108

112:                                              ; preds = %108, %104
  %113 = phi i32 [ %105, %104 ], [ %109, %108 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  %114 = load i64, ptr %101, align 8
  %115 = load i64, ptr %102, align 8
  %116 = load i64, ptr %103, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  %117 = load volatile i32, ptr %97, align 4
  %118 = icmp eq i32 %117, %113
  br i1 %118, label %119, label %104

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %97, i32 0, i32 2
  %121 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %97, i32 0, i32 2, i32 0, i32 1
  %122 = load i64, ptr %121, align 8
  %123 = sub i64 %115, %122
  %124 = load i64, ptr %120, align 8
  %125 = sub i64 %114, %124
  %126 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %97, i32 0, i32 2, i32 0, i32 2
  %127 = load i64, ptr %126, align 8
  %128 = sub i64 %116, %127
  %129 = getelementptr inbounds %struct.cgroup, ptr %35, i32 0, i32 27
  %130 = getelementptr inbounds %struct.cgroup, ptr %35, i32 0, i32 27, i32 0, i32 1
  %131 = load i64, ptr %130, align 8
  %132 = add i64 %131, %123
  store i64 %132, ptr %130, align 8
  %133 = load i64, ptr %129, align 8
  %134 = add i64 %133, %125
  store i64 %134, ptr %129, align 8
  %135 = getelementptr inbounds %struct.cgroup, ptr %35, i32 0, i32 27, i32 0, i32 2
  %136 = load i64, ptr %135, align 8
  %137 = add i64 %136, %128
  store i64 %137, ptr %135, align 8
  %138 = load i64, ptr %121, align 8
  %139 = add i64 %138, %123
  store i64 %139, ptr %121, align 8
  %140 = load i64, ptr %120, align 8
  %141 = add i64 %140, %125
  store i64 %141, ptr %120, align 8
  %142 = load i64, ptr %126, align 8
  %143 = add i64 %142, %128
  store i64 %143, ptr %126, align 8
  %144 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %98, i32 0, i32 12
  %145 = load ptr, ptr %144, align 8
  %146 = icmp eq ptr %145, null
  br i1 %146, label %175, label %147

147:                                              ; preds = %119
  %148 = load i64, ptr %129, align 8
  %149 = load i64, ptr %130, align 8
  %150 = load i64, ptr %135, align 8
  %151 = getelementptr inbounds %struct.cgroup, ptr %35, i32 0, i32 26
  %152 = getelementptr inbounds %struct.cgroup, ptr %35, i32 0, i32 26, i32 0, i32 1
  %153 = load i64, ptr %152, align 8
  %154 = sub i64 %149, %153
  %155 = load i64, ptr %151, align 8
  %156 = sub i64 %148, %155
  %157 = getelementptr inbounds %struct.cgroup, ptr %35, i32 0, i32 26, i32 0, i32 2
  %158 = load i64, ptr %157, align 8
  %159 = sub i64 %150, %158
  %160 = getelementptr inbounds %struct.cgroup, ptr %98, i32 0, i32 27
  %161 = getelementptr inbounds %struct.cgroup, ptr %98, i32 0, i32 27, i32 0, i32 1
  %162 = load i64, ptr %161, align 8
  %163 = add i64 %162, %154
  store i64 %163, ptr %161, align 8
  %164 = load i64, ptr %160, align 8
  %165 = add i64 %164, %156
  store i64 %165, ptr %160, align 8
  %166 = getelementptr inbounds %struct.cgroup, ptr %98, i32 0, i32 27, i32 0, i32 2
  %167 = load i64, ptr %166, align 8
  %168 = add i64 %167, %159
  store i64 %168, ptr %166, align 8
  %169 = load i64, ptr %152, align 8
  %170 = add i64 %169, %154
  store i64 %170, ptr %152, align 8
  %171 = load i64, ptr %151, align 8
  %172 = add i64 %171, %156
  store i64 %172, ptr %151, align 8
  %173 = load i64, ptr %157, align 8
  %174 = add i64 %173, %159
  store i64 %174, ptr %157, align 8
  br label %175

175:                                              ; preds = %147, %119, %92
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  %176 = getelementptr inbounds %struct.cgroup, ptr %35, i32 0, i32 25
  %177 = load volatile ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, %176
  br i1 %178, label %188, label %179

179:                                              ; preds = %179, %175
  %180 = phi ptr [ %186, %179 ], [ %177, %175 ]
  %181 = getelementptr i8, ptr %180, i32 -32
  %182 = getelementptr i8, ptr %180, i32 -28
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.cgroup_subsys, ptr %183, i32 0, i32 6
  %185 = load ptr, ptr %184, align 4
  tail call void %185(ptr noundef %181, i32 noundef %10) #8
  %186 = load volatile ptr, ptr %180, align 4
  %187 = icmp eq ptr %186, %176
  br i1 %187, label %188, label %179

188:                                              ; preds = %179, %175
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !20
  %189 = icmp eq ptr %35, %0
  br i1 %189, label %190, label %15

190:                                              ; preds = %188, %89, %18, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  %191 = load i16, ptr %14, align 4
  %192 = add i16 %191, 1
  store i16 %192, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !21
  br i1 %1, label %193, label %205

193:                                              ; preds = %190
  %194 = tail call ptr @llvm.thread.pointer() #8
  %195 = load volatile i32, ptr %194, align 4
  %196 = and i32 %195, 2
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %205, label %198

198:                                              ; preds = %193
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  %199 = load i16, ptr @cgroup_rstat_lock, align 4
  %200 = add i16 %199, 1
  store i16 %200, ptr @cgroup_rstat_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %201 = tail call i32 @__cond_resched() #8
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !23
  br label %204

204:                                              ; preds = %203, %198
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @cgroup_rstat_lock) #8
  br label %205

205:                                              ; preds = %204, %193, %190
  %206 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_possible_mask) #9
  %207 = load i32, ptr @nr_cpu_ids, align 4
  %208 = icmp ult i32 %206, %207
  br i1 %208, label %9, label %209

209:                                              ; preds = %205, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_rstat_flush_irqsafe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @cgroup_rstat_lock) #8
  tail call fastcc void @cgroup_rstat_flush_locked(ptr noundef %0, i1 noundef zeroext false)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @cgroup_rstat_lock, i32 noundef %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_rstat_flush_hold(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @cgroup_rstat_lock) #8
  tail call fastcc void @cgroup_rstat_flush_locked(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_rstat_flush_release() local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  %1 = load i16, ptr @cgroup_rstat_lock, align 4
  %2 = add i16 %1, 1
  store i16 %2, ptr @cgroup_rstat_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup_rstat_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call noalias ptr @__alloc_percpu(i32 noundef 64, i32 noundef 8) #10
  store ptr %6, ptr %2, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %8
  %14 = ptrtoint ptr %9 to i32
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %18, i32 0, i32 3
  store ptr %0, ptr %19, align 8
  store i32 0, ptr %18, align 4
  %20 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_possible_mask) #9
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %23, %13
  %24 = phi i32 [ %32, %23 ], [ %20, %13 ]
  %25 = load ptr, ptr %2, align 8
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %26
  %30 = inttoptr i32 %29 to ptr
  %31 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %30, i32 0, i32 3
  store ptr %0, ptr %31, align 8
  store i32 0, ptr %30, align 4
  %32 = tail call i32 @cpumask_next(i32 noundef %24, ptr noundef nonnull @__cpu_possible_mask) #9
  %33 = load i32, ptr @nr_cpu_ids, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %23, label %35

35:                                               ; preds = %23, %13, %8, %5
  %36 = phi i32 [ -12, %5 ], [ 0, %8 ], [ 0, %13 ], [ 0, %23 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_rstat_exit(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @cgroup_rstat_lock) #8
  tail call fastcc void @cgroup_rstat_flush_locked(ptr noundef %0, i1 noundef zeroext true) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  %2 = load i16, ptr @cgroup_rstat_lock, align 4
  %3 = add i16 %2, 1
  store i16 %3, ptr @cgroup_rstat_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %4 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 24
  br label %5

5:                                                ; preds = %33, %1
  %6 = phi i32 [ -1, %1 ], [ %7, %33 ]
  %7 = tail call i32 @cpumask_next(i32 noundef %6, ptr noundef nonnull @__cpu_possible_mask) #9
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = icmp ult i32 %7, %8
  %10 = load ptr, ptr %4, align 8
  br i1 %9, label %11, label %34

11:                                               ; preds = %5
  %12 = ptrtoint ptr %10 to i32
  %13 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = icmp ne ptr %18, %0
  %20 = load i1, ptr @cgroup_rstat_exit.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !14

23:                                               ; preds = %11
  store i1 true, ptr @cgroup_rstat_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 277, i32 noundef 9, ptr noundef null) #8
  br label %24

24:                                               ; preds = %23, %11
  br i1 %19, label %35, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %16, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp ne ptr %27, null
  %29 = load i1, ptr @cgroup_rstat_exit.__already_done.1, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %33, !prof !14

32:                                               ; preds = %25
  store i1 true, ptr @cgroup_rstat_exit.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 278, i32 noundef 9, ptr noundef null) #8
  br label %33

33:                                               ; preds = %32, %25
  br i1 %28, label %35, label %5

34:                                               ; preds = %5
  tail call void @free_percpu(ptr noundef %10) #8
  store ptr null, ptr %4, align 8
  br label %35

35:                                               ; preds = %34, %33, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cgroup_rstat_boot() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %4, label %13

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %10, %4 ], [ %1, %0 ]
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @cgroup_rstat_cpu_lock to i32)
  %9 = inttoptr i32 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #9
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %4, label %13

13:                                               ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__cgroup_account_cputime(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !24
  %3 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 24
  %4 = load ptr, ptr %3, align 8
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %7) #7, !srcloc !25
  %9 = add i32 %8, %5
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !26
  %12 = load i32, ptr %10, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %10, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !27
  %14 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %10, i32 0, i32 1, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = add i64 %15, %1
  store i64 %16, ptr %14, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !28
  %17 = load i32, ptr %10, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %10, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #8, !srcloc !29
  %19 = tail call ptr @llvm.thread.pointer() #8
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, ptrtoint (ptr @cgroup_rstat_cpu_lock to i32)
  %25 = inttoptr i32 %24 to ptr
  %26 = load ptr, ptr %3, align 8
  %27 = ptrtoint ptr %26 to i32
  %28 = add i32 %23, %27
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %29, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %68

33:                                               ; preds = %2
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #8
  %35 = load ptr, ptr %3, align 8
  %36 = ptrtoint ptr %35 to i32
  %37 = load i32, ptr %22, align 4
  %38 = add i32 %37, %36
  %39 = inttoptr i32 %38 to ptr
  %40 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %39, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %51, %33
  %44 = phi ptr [ %64, %51 ], [ %40, %33 ]
  %45 = phi i32 [ %61, %51 ], [ %37, %33 ]
  %46 = phi ptr [ %48, %51 ], [ %0, %33 ]
  %47 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %46, i32 0, i32 12
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store ptr %46, ptr %44, align 4
  br label %67

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.cgroup, ptr %48, i32 0, i32 24
  %53 = load ptr, ptr %52, align 8
  %54 = ptrtoint ptr %53 to i32
  %55 = add i32 %45, %54
  %56 = inttoptr i32 %55 to ptr
  %57 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %56, i32 0, i32 3
  %58 = load ptr, ptr %57, align 8
  store ptr %58, ptr %44, align 4
  store ptr %46, ptr %57, align 8
  %59 = load ptr, ptr %52, align 8
  %60 = ptrtoint ptr %59 to i32
  %61 = load i32, ptr %22, align 4
  %62 = add i32 %61, %60
  %63 = inttoptr i32 %62 to ptr
  %64 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %63, i32 0, i32 4
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %43, label %67

67:                                               ; preds = %51, %50, %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %34) #8
  br label %68

68:                                               ; preds = %67, %2
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__cgroup_account_cputime_field(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !24
  %4 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 24
  %5 = load ptr, ptr %4, align 8
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #7, !srcloc !25
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !26
  %13 = load i32, ptr %11, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %11, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !27
  switch i32 %1, label %23 [
    i32 0, label %15
    i32 1, label %15
    i32 2, label %17
    i32 4, label %17
    i32 3, label %17
  ]

15:                                               ; preds = %3, %3
  %16 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %11, i32 0, i32 1, i32 0, i32 1
  br label %19

17:                                               ; preds = %3, %3, %3
  %18 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %11, i32 0, i32 1
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %18, %17 ], [ %16, %15 ]
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %21, %2
  store i64 %22, ptr %20, align 8
  br label %23

23:                                               ; preds = %19, %3
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !28
  %24 = load i32, ptr %11, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %11, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #8, !srcloc !29
  %26 = tail call ptr @llvm.thread.pointer() #8
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, ptrtoint (ptr @cgroup_rstat_cpu_lock to i32)
  %32 = inttoptr i32 %31 to ptr
  %33 = load ptr, ptr %4, align 8
  %34 = ptrtoint ptr %33 to i32
  %35 = add i32 %30, %34
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %36, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %75

40:                                               ; preds = %23
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #8
  %42 = load ptr, ptr %4, align 8
  %43 = ptrtoint ptr %42 to i32
  %44 = load i32, ptr %29, align 4
  %45 = add i32 %44, %43
  %46 = inttoptr i32 %45 to ptr
  %47 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %46, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %74

50:                                               ; preds = %58, %40
  %51 = phi ptr [ %71, %58 ], [ %47, %40 ]
  %52 = phi i32 [ %68, %58 ], [ %44, %40 ]
  %53 = phi ptr [ %55, %58 ], [ %0, %40 ]
  %54 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %53, i32 0, i32 12
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store ptr %53, ptr %51, align 4
  br label %74

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.cgroup, ptr %55, i32 0, i32 24
  %60 = load ptr, ptr %59, align 8
  %61 = ptrtoint ptr %60 to i32
  %62 = add i32 %52, %61
  %63 = inttoptr i32 %62 to ptr
  %64 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %63, i32 0, i32 3
  %65 = load ptr, ptr %64, align 8
  store ptr %65, ptr %51, align 4
  store ptr %53, ptr %64, align 8
  %66 = load ptr, ptr %59, align 8
  %67 = ptrtoint ptr %66 to i32
  %68 = load i32, ptr %29, align 4
  %69 = add i32 %68, %67
  %70 = inttoptr i32 %69 to ptr
  %71 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %70, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %50, label %74

74:                                               ; preds = %58, %57, %40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %41) #8
  br label %75

75:                                               ; preds = %74, %23
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_base_stat_cputime_show(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_css(ptr noundef %5) #8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !annotation !31
  %8 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %7, i32 0, i32 12
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @cgroup_rstat_lock) #8
  tail call fastcc void @cgroup_rstat_flush_locked(ptr noundef %7, i1 noundef zeroext true) #8
  %12 = getelementptr inbounds %struct.cgroup, ptr %7, i32 0, i32 27
  %13 = getelementptr inbounds %struct.cgroup, ptr %7, i32 0, i32 27, i32 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.cgroup, ptr %7, i32 0, i32 28
  call void @cputime_adjust(ptr noundef %12, ptr noundef %15, ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  %16 = load i16, ptr @cgroup_rstat_lock, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr @cgroup_rstat_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %18 = load i64, ptr %2, align 8
  %19 = load i64, ptr %3, align 8
  br label %54

20:                                               ; preds = %1
  %21 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %24, %20
  %25 = phi i64 [ %51, %24 ], [ 0, %20 ]
  %26 = phi i64 [ %48, %24 ], [ 0, %20 ]
  %27 = phi i64 [ %45, %24 ], [ 0, %20 ]
  %28 = phi i32 [ %52, %24 ], [ %21, %20 ]
  %29 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, ptrtoint (ptr @kernel_cpustat to i32)
  %32 = inttoptr i32 %31 to ptr
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds i8, ptr %32, i32 8
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds i8, ptr %32, i32 16
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds i8, ptr %32, i32 24
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds i8, ptr %32, i32 32
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds i8, ptr %32, i32 56
  %43 = load i64, ptr %42, align 8
  %44 = add i64 %35, %33
  %45 = add i64 %44, %27
  %46 = add i64 %39, %37
  %47 = add i64 %46, %41
  %48 = add i64 %47, %26
  %49 = add i64 %44, %25
  %50 = add i64 %49, %43
  %51 = add i64 %50, %47
  %52 = tail call i32 @cpumask_next(i32 noundef %28, ptr noundef nonnull @__cpu_possible_mask) #9
  %53 = icmp ult i32 %52, %22
  br i1 %53, label %24, label %54

54:                                               ; preds = %24, %20, %11
  %55 = phi i64 [ %19, %11 ], [ 0, %20 ], [ %48, %24 ]
  %56 = phi i64 [ %18, %11 ], [ 0, %20 ], [ %45, %24 ]
  %57 = phi i64 [ %14, %11 ], [ 0, %20 ], [ %51, %24 ]
  %58 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %57, i32 0) #11, !srcloc !32
  %59 = extractvalue { i64, i32 } %58, 0
  %60 = extractvalue { i64, i32 } %58, 1
  %61 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %57, i64 %59, i32 %60) #11, !srcloc !33
  %62 = extractvalue { i64, i32 } %61, 0
  %63 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %56, i32 0) #11, !srcloc !32
  %64 = extractvalue { i64, i32 } %63, 0
  %65 = extractvalue { i64, i32 } %63, 1
  %66 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %56, i64 %64, i32 %65) #11, !srcloc !33
  %67 = extractvalue { i64, i32 } %66, 0
  %68 = lshr i64 %67, 9
  store i64 %68, ptr %2, align 8
  %69 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %55, i32 0) #11, !srcloc !32
  %70 = extractvalue { i64, i32 } %69, 0
  %71 = extractvalue { i64, i32 } %69, 1
  %72 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %55, i64 %70, i32 %71) #11, !srcloc !33
  %73 = extractvalue { i64, i32 } %72, 0
  %74 = lshr i64 %73, 9
  store i64 %74, ptr %3, align 8
  %75 = lshr i64 %62, 9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %75, i64 noundef %68, i64 noundef %74) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cputime_adjust(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_css(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readnone }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 2149213293}
!10 = !{i64 2149209117}
!11 = !{i64 2149209192, i64 2149209219, i64 2149209266, i64 2149209288, i64 2149209316, i64 2149209336}
!12 = !{i64 594072}
!13 = !{i64 2149237437}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2152012866}
!16 = !{i64 2152012708}
!17 = !{i64 2152013010}
!18 = !{i64 2149632356}
!19 = !{i64 2148987094}
!20 = !{i64 2148987311}
!21 = !{i64 2149236296}
!22 = !{i64 2152841309}
!23 = !{i64 2152841151}
!24 = !{i64 2152848714}
!25 = !{i64 600932}
!26 = !{i64 593827, i64 593888}
!27 = !{i64 2149632655}
!28 = !{i64 2149632956}
!29 = !{i64 596844}
!30 = !{i64 2152849718}
!31 = !{!"auto-init"}
!32 = !{i64 1135859, i64 1135886, i64 1135908, i64 1135936}
!33 = !{i64 1136267, i64 1136294, i64 1136327, i64 1136348, i64 1136375, i64 1136401}
