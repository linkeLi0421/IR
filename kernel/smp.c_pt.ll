; ModuleID = '/llk/IR/kernel/smp.c_pt.bc'
source_filename = "../kernel/smp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smp_call_function_single:\09\09\09\09\09"
module asm "\09.asciz \09\22smp_call_function_single\22\09\09\09\09\09"
module asm "__kstrtabns_smp_call_function_single:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smp_call_function_single_async:\09\09\09\09\09"
module asm "\09.asciz \09\22smp_call_function_single_async\22\09\09\09\09\09"
module asm "__kstrtabns_smp_call_function_single_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smp_call_function_any:\09\09\09\09\09"
module asm "\09.asciz \09\22smp_call_function_any\22\09\09\09\09\09"
module asm "__kstrtabns_smp_call_function_any:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smp_call_function_many:\09\09\09\09\09"
module asm "\09.asciz \09\22smp_call_function_many\22\09\09\09\09\09"
module asm "__kstrtabns_smp_call_function_many:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smp_call_function:\09\09\09\09\09"
module asm "\09.asciz \09\22smp_call_function\22\09\09\09\09\09"
module asm "__kstrtabns_smp_call_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_setup_max_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22setup_max_cpus\22\09\09\09\09\09"
module asm "__kstrtabns_setup_max_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nr_cpu_ids:\09\09\09\09\09"
module asm "\09.asciz \09\22nr_cpu_ids\22\09\09\09\09\09"
module asm "__kstrtabns_nr_cpu_ids:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_on_each_cpu_cond_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22on_each_cpu_cond_mask\22\09\09\09\09\09"
module asm "__kstrtabns_on_each_cpu_cond_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kick_all_cpus_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22kick_all_cpus_sync\22\09\09\09\09\09"
module asm "__kstrtabns_kick_all_cpus_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wake_up_all_idle_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22wake_up_all_idle_cpus\22\09\09\09\09\09"
module asm "__kstrtabns_wake_up_all_idle_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smp_call_on_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22smp_call_on_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_smp_call_on_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.call_function_data = type { ptr, [1 x %struct.cpumask], [1 x %struct.cpumask] }
%struct.cpumask = type { [1 x i32] }
%struct.llist_head = type { ptr }
%struct.irq_cpustat_t = type { i32, [60 x i8] }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.smp_call_on_cpu_struct = type { %struct.work_struct, %struct.completion, ptr, ptr, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }

@cfd_data = internal global %struct.call_function_data zeroinitializer, section ".data..percpu..shared_aligned", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = dso_local global i32 16, section ".data..read_mostly", align 4
@call_single_queue = internal global %struct.llist_head zeroinitializer, section ".data..percpu..shared_aligned", align 64
@irq_stat = external dso_local global %struct.irq_cpustat_t, section ".data..percpu..shared_aligned", align 64
@__const.smp_call_function_single.csd_stack = private unnamed_addr constant %struct.__call_single_data { %struct.__call_single_node { %struct.llist_node zeroinitializer, %union.anon { i32 17 } }, ptr null, ptr null }, align 16
@smp_call_function_single.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"kernel/smp.c\00", align 1
@smp_call_function_single.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@csd_data = internal global %struct.__call_single_data zeroinitializer, section ".data..percpu..shared_aligned", align 64
@__kstrtab_smp_call_function_single = external dso_local constant [0 x i8], align 1
@__kstrtabns_smp_call_function_single = external dso_local constant [0 x i8], align 1
@__ksymtab_smp_call_function_single = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smp_call_function_single to i32), ptr @__kstrtab_smp_call_function_single, ptr @__kstrtabns_smp_call_function_single }, section "___ksymtab+smp_call_function_single", align 4
@__kstrtab_smp_call_function_single_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_smp_call_function_single_async = external dso_local constant [0 x i8], align 1
@__ksymtab_smp_call_function_single_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smp_call_function_single_async to i32), ptr @__kstrtab_smp_call_function_single_async, ptr @__kstrtabns_smp_call_function_single_async }, section "___ksymtab_gpl+smp_call_function_single_async", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_smp_call_function_any = external dso_local constant [0 x i8], align 1
@__kstrtabns_smp_call_function_any = external dso_local constant [0 x i8], align 1
@__ksymtab_smp_call_function_any = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smp_call_function_any to i32), ptr @__kstrtab_smp_call_function_any, ptr @__kstrtabns_smp_call_function_any }, section "___ksymtab_gpl+smp_call_function_any", align 4
@__kstrtab_smp_call_function_many = external dso_local constant [0 x i8], align 1
@__kstrtabns_smp_call_function_many = external dso_local constant [0 x i8], align 1
@__ksymtab_smp_call_function_many = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smp_call_function_many to i32), ptr @__kstrtab_smp_call_function_many, ptr @__kstrtabns_smp_call_function_many }, section "___ksymtab+smp_call_function_many", align 4
@__kstrtab_smp_call_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_smp_call_function = external dso_local constant [0 x i8], align 1
@__ksymtab_smp_call_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smp_call_function to i32), ptr @__kstrtab_smp_call_function, ptr @__kstrtabns_smp_call_function }, section "___ksymtab+smp_call_function", align 4
@setup_max_cpus = dso_local global i32 16, align 4
@__kstrtab_setup_max_cpus = external dso_local constant [0 x i8], align 1
@__kstrtabns_setup_max_cpus = external dso_local constant [0 x i8], align 1
@__ksymtab_setup_max_cpus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @setup_max_cpus to i32), ptr @__kstrtab_setup_max_cpus, ptr @__kstrtabns_setup_max_cpus }, section "___ksymtab+setup_max_cpus", align 4
@__setup_str_nosmp = internal constant [6 x i8] c"nosmp\00", section ".init.rodata", align 1
@__setup_nosmp = internal global %struct.obs_kernel_param { ptr @__setup_str_nosmp, ptr @nosmp, i32 1 }, section ".init.setup", align 4
@__setup_str_nrcpus = internal constant [8 x i8] c"nr_cpus\00", section ".init.rodata", align 1
@__setup_nrcpus = internal global %struct.obs_kernel_param { ptr @__setup_str_nrcpus, ptr @nrcpus, i32 1 }, section ".init.setup", align 4
@__setup_str_maxcpus = internal constant [8 x i8] c"maxcpus\00", section ".init.rodata", align 1
@__setup_maxcpus = internal global %struct.obs_kernel_param { ptr @__setup_str_maxcpus, ptr @maxcpus, i32 1 }, section ".init.setup", align 4
@__kstrtab_nr_cpu_ids = external dso_local constant [0 x i8], align 1
@__kstrtabns_nr_cpu_ids = external dso_local constant [0 x i8], align 1
@__ksymtab_nr_cpu_ids = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nr_cpu_ids to i32), ptr @__kstrtab_nr_cpu_ids, ptr @__kstrtabns_nr_cpu_ids }, section "___ksymtab+nr_cpu_ids", align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"\016smp: Bringing up secondary CPUs ...\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\016smp: Brought up %d node%s, %d CPU%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__kstrtab_on_each_cpu_cond_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_on_each_cpu_cond_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_on_each_cpu_cond_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @on_each_cpu_cond_mask to i32), ptr @__kstrtab_on_each_cpu_cond_mask, ptr @__kstrtabns_on_each_cpu_cond_mask }, section "___ksymtab+on_each_cpu_cond_mask", align 4
@__kstrtab_kick_all_cpus_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_kick_all_cpus_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_kick_all_cpus_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kick_all_cpus_sync to i32), ptr @__kstrtab_kick_all_cpus_sync, ptr @__kstrtabns_kick_all_cpus_sync }, section "___ksymtab_gpl+kick_all_cpus_sync", align 4
@__kstrtab_wake_up_all_idle_cpus = external dso_local constant [0 x i8], align 1
@__kstrtabns_wake_up_all_idle_cpus = external dso_local constant [0 x i8], align 1
@__ksymtab_wake_up_all_idle_cpus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wake_up_all_idle_cpus to i32), ptr @__kstrtab_wake_up_all_idle_cpus, ptr @__kstrtabns_wake_up_all_idle_cpus }, section "___ksymtab_gpl+wake_up_all_idle_cpus", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_smp_call_on_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_smp_call_on_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_smp_call_on_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smp_call_on_cpu to i32), ptr @__kstrtab_smp_call_on_cpu, ptr @__kstrtabns_smp_call_on_cpu }, section "___ksymtab_gpl+smp_call_on_cpu", align 4
@flush_smp_call_function_queue.warned = internal unnamed_addr global i1 false, align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"IPI on offline CPU %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"\014smp: IPI callback %pS sent to offline CPU\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"\014smp: IPI task-wakeup sent to offline CPU\0A\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"\014smp: IPI callback, unknown type %d, sent to offline CPU\0A\00", align 1
@smp_call_function_many_cond.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_kick_all_cpus_sync, ptr @__ksymtab_nr_cpu_ids, ptr @__ksymtab_on_each_cpu_cond_mask, ptr @__ksymtab_setup_max_cpus, ptr @__ksymtab_smp_call_function, ptr @__ksymtab_smp_call_function_any, ptr @__ksymtab_smp_call_function_many, ptr @__ksymtab_smp_call_function_single, ptr @__ksymtab_smp_call_function_single_async, ptr @__ksymtab_smp_call_on_cpu, ptr @__ksymtab_wake_up_all_idle_cpus, ptr @__setup_maxcpus, ptr @__setup_nosmp, ptr @__setup_nrcpus], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @smpcfd_prepare_cpu(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cfd_data to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.call_function_data, ptr %5, i32 0, i32 1
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.call_function_data, ptr %5, i32 0, i32 2
  store i32 0, ptr %7, align 4
  %8 = tail call noalias ptr @__alloc_percpu(i32 noundef 16, i32 noundef 16) #14
  store ptr %8, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, i32 -12, i32 0
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @smpcfd_dead_cpu(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cfd_data to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  tail call void @free_percpu(ptr noundef %6) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @smpcfd_dying_cpu(i32 noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @flush_smp_call_function_queue(i1 noundef zeroext false)
  tail call void @irq_work_run() #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @flush_smp_call_function_queue(i1 noundef zeroext %0) unnamed_addr #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #11, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr @call_single_queue to i32)
  %6 = inttoptr i32 %5 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #15, !srcloc !11
  %7 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %6) #15, !srcloc !12
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = inttoptr i32 %8 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  %10 = tail call ptr @llist_reverse_order(ptr noundef %9) #15
  br i1 %0, label %11, label %46

11:                                               ; preds = %1
  %12 = tail call ptr @llvm.thread.pointer() #15
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %11
  %23 = load i1, ptr @flush_smp_call_function_queue.warned, align 1
  br i1 %23, label %46, label %24

24:                                               ; preds = %22
  %25 = load volatile ptr, ptr %6, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %46, label %27, !prof !14

27:                                               ; preds = %24
  store i1 true, ptr @flush_smp_call_function_queue.warned, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 584, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %14) #15
  %28 = icmp eq ptr %10, null
  br i1 %28, label %110, label %29

29:                                               ; preds = %43, %27
  %30 = phi ptr [ %44, %43 ], [ %10, %27 ]
  %31 = getelementptr inbounds %struct.__call_single_node, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 240
  %34 = lshr exact i32 %33, 4
  switch i32 %34, label %41 [
    i32 0, label %35
    i32 1, label %35
    i32 2, label %35
    i32 3, label %39
  ]

35:                                               ; preds = %29, %29, %29
  %36 = getelementptr inbounds %struct.__call_single_data, ptr %30, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %37) #16
  br label %43

39:                                               ; preds = %29
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #16
  br label %43

41:                                               ; preds = %29
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %33) #16
  br label %43

43:                                               ; preds = %41, %39, %35
  %44 = load ptr, ptr %30, align 16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %29

46:                                               ; preds = %43, %24, %22, %11, %1
  %47 = icmp eq ptr %10, null
  br i1 %47, label %110, label %48

48:                                               ; preds = %71, %46
  %49 = phi ptr [ %52, %71 ], [ %10, %46 ]
  %50 = phi ptr [ %73, %71 ], [ %10, %46 ]
  %51 = phi ptr [ %72, %71 ], [ null, %46 ]
  %52 = load ptr, ptr %49, align 16
  %53 = getelementptr inbounds %struct.__call_single_node, ptr %49, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 240
  %56 = icmp eq i32 %55, 16
  br i1 %56, label %57, label %71

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.__call_single_data, ptr %49, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.__call_single_data, ptr %49, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %51, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  store ptr %52, ptr %51, align 4
  br label %64

64:                                               ; preds = %63, %57
  %65 = phi ptr [ %50, %63 ], [ %52, %57 ]
  tail call void %59(ptr noundef %61) #15
  %66 = load i32, ptr %53, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70, !prof !15

69:                                               ; preds = %64
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 459, i32 noundef 9, ptr noundef null) #15
  br label %70

70:                                               ; preds = %69, %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  store volatile i32 0, ptr %53, align 4
  br label %71

71:                                               ; preds = %70, %48
  %72 = phi ptr [ %51, %70 ], [ %49, %48 ]
  %73 = phi ptr [ %65, %70 ], [ %50, %48 ]
  %74 = icmp eq ptr %52, null
  br i1 %74, label %75, label %48

75:                                               ; preds = %71
  %76 = icmp eq ptr %73, null
  br i1 %76, label %110, label %77

77:                                               ; preds = %103, %75
  %78 = phi ptr [ %81, %103 ], [ %73, %75 ]
  %79 = phi ptr [ %105, %103 ], [ %73, %75 ]
  %80 = phi ptr [ %104, %103 ], [ null, %75 ]
  %81 = load ptr, ptr %78, align 16
  %82 = getelementptr inbounds %struct.__call_single_node, ptr %78, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 240
  %85 = icmp eq i32 %84, 48
  br i1 %85, label %103, label %86

86:                                               ; preds = %77
  %87 = icmp eq ptr %80, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %86
  store ptr %81, ptr %80, align 4
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi ptr [ %79, %88 ], [ %81, %86 ]
  %91 = trunc i32 %84 to i8
  switch i8 %91, label %103 [
    i8 0, label %92
    i8 32, label %102
  ]

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.__call_single_data, ptr %78, i32 0, i32 1
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr inbounds %struct.__call_single_data, ptr %78, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = load i32, ptr %82, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101, !prof !15

100:                                              ; preds = %92
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 459, i32 noundef 9, ptr noundef null) #15
  br label %101

101:                                              ; preds = %100, %92
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  store volatile i32 0, ptr %82, align 4
  tail call void %94(ptr noundef %96) #15
  br label %103

102:                                              ; preds = %89
  tail call void @irq_work_single(ptr noundef nonnull %78) #15
  br label %103

103:                                              ; preds = %102, %101, %89, %77
  %104 = phi ptr [ %80, %101 ], [ %80, %102 ], [ %80, %89 ], [ %78, %77 ]
  %105 = phi ptr [ %90, %101 ], [ %90, %102 ], [ %90, %89 ], [ %79, %77 ]
  %106 = icmp eq ptr %81, null
  br i1 %106, label %107, label %77

107:                                              ; preds = %103
  %108 = icmp eq ptr %105, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %107
  tail call void @sched_ttwu_pending(ptr noundef nonnull %105) #15
  br label %110

110:                                              ; preds = %109, %107, %75, %46, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_run() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @call_function_init() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %4, label %13

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %10, %4 ], [ %1, %0 ]
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @call_single_queue to i32)
  %9 = inttoptr i32 %8 to ptr
  store ptr null, ptr %9, align 4
  %10 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #17
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %4, label %13

13:                                               ; preds = %4, %0
  %14 = tail call ptr @llvm.thread.pointer() #15
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, ptrtoint (ptr @cfd_data to i32)
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.call_function_data, ptr %20, i32 0, i32 1
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.call_function_data, ptr %20, i32 0, i32 2
  store i32 0, ptr %22, align 4
  %23 = tail call noalias ptr @__alloc_percpu(i32 noundef 16, i32 noundef 16) #14
  store ptr %23, ptr %20, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__smp_call_single_queue(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @call_single_queue to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call zeroext i1 @llist_add_batch(ptr noundef %1, ptr noundef %1, ptr noundef %6) #15
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @send_call_function_single_ipi(i32 noundef %0) #15
  br label %9

9:                                                ; preds = %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @send_call_function_single_ipi(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @generic_smp_call_function_single_interrupt() local_unnamed_addr #0 {
  tail call fastcc void @flush_smp_call_function_queue(i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_smp_call_function_from_idle() local_unnamed_addr #0 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #11, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @call_single_queue to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %0
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !17
  tail call fastcc void @flush_smp_call_function_queue(i1 noundef zeroext true)
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #11, !srcloc !9
  %13 = add i32 %12, ptrtoint (ptr @irq_stat to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %8
  tail call void @do_softirq() #15
  br label %18

18:                                               ; preds = %17, %8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #15, !srcloc !18
  br label %19

19:                                               ; preds = %18, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_softirq() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @smp_call_function_single(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.__call_single_data, align 16
  %6 = getelementptr inbounds %struct.__call_single_node, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.__call_single_data, ptr %5, i32 0, i32 2
  %8 = getelementptr inbounds %struct.__call_single_data, ptr %5, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) @__const.smp_call_function_single.csd_stack, i32 16, i1 false)
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %9 = tail call ptr @llvm.thread.pointer() #15
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %4
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !20
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr @oops_in_progress, align 4
  %25 = icmp eq i32 %24, 0
  %26 = load i1, ptr @smp_call_function_single.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !15

29:                                               ; preds = %23
  store i1 true, ptr @smp_call_function_single.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 732, i32 noundef 9, ptr noundef null) #15
  br label %30

30:                                               ; preds = %29, %23, %19, %4
  %31 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 15728640
  %34 = load volatile i32, ptr %31, align 4
  %35 = and i32 %34, 983040
  %36 = or i32 %35, %33
  %37 = load volatile i32, ptr %31, align 4
  %38 = and i32 %37, 256
  %39 = or i32 %36, %38
  %40 = icmp ne i32 %39, 0
  %41 = load i1, ptr @smp_call_function_single.__already_done.2, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %45, !prof !15

44:                                               ; preds = %30
  store i1 true, ptr @smp_call_function_single.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 740, i32 noundef 9, ptr noundef null) #15
  br label %45

45:                                               ; preds = %44, %30
  %46 = icmp eq i32 %3, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %45
  %48 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %49 = inttoptr i32 %48 to ptr
  %50 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %49) #11, !srcloc !9
  %51 = add i32 %50, ptrtoint (ptr @csd_data to i32)
  %52 = inttoptr i32 %51 to ptr
  %53 = getelementptr inbounds %struct.__call_single_node, ptr %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.__call_single_data, ptr %52, i32 0, i32 2
  %55 = getelementptr inbounds %struct.__call_single_data, ptr %52, i32 0, i32 1
  %56 = load volatile i32, ptr %53, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %59, %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !22
  %60 = load volatile i32, ptr %53, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %59

63:                                               ; preds = %59, %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %64 = load i32, ptr %53, align 4
  %65 = or i32 %64, 1
  store i32 %65, ptr %53, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !24
  store ptr %1, ptr %55, align 8
  store ptr %2, ptr %54, align 4
  %66 = tail call fastcc i32 @generic_exec_single(i32 noundef %0, ptr noundef %52)
  br label %77

67:                                               ; preds = %45
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %7, align 4
  %68 = call fastcc i32 @generic_exec_single(i32 noundef %0, ptr noundef nonnull %5)
  %69 = load volatile i32, ptr %6, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %72, %67
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !22
  %73 = load volatile i32, ptr %6, align 4
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %72

76:                                               ; preds = %72, %67
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  br label %77

77:                                               ; preds = %76, %63
  %78 = phi i32 [ %68, %76 ], [ %66, %63 ]
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret i32 %78
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @generic_exec_single(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #15
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, %0
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.__call_single_data, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.__call_single_data, ptr %1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.__call_single_node, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !15

16:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 459, i32 noundef 9, ptr noundef null) #15
  br label %17

17:                                               ; preds = %16, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  store volatile i32 0, ptr %12, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !17
  tail call void %9(ptr noundef %11) #15
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #15, !srcloc !18
  br label %44

19:                                               ; preds = %2
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %21 = icmp ugt i32 %20, %0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = lshr i32 %0, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %0, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %22, %19
  %31 = getelementptr inbounds %struct.__call_single_node, ptr %1, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36, !prof !15

35:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 459, i32 noundef 9, ptr noundef null) #15
  br label %36

36:                                               ; preds = %35, %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  store volatile i32 0, ptr %31, align 4
  br label %44

37:                                               ; preds = %22
  %38 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, ptrtoint (ptr @call_single_queue to i32)
  %41 = inttoptr i32 %40 to ptr
  %42 = tail call zeroext i1 @llist_add_batch(ptr noundef %1, ptr noundef %1, ptr noundef %41) #15
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @send_call_function_single_ipi(i32 noundef %0) #15
  br label %44

44:                                               ; preds = %43, %37, %36, %17
  %45 = phi i32 [ 0, %17 ], [ -6, %36 ], [ 0, %37 ], [ 0, %43 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @smp_call_function_single_async(i32 noundef %0, ptr noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  %3 = getelementptr inbounds %struct.__call_single_node, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  store i32 1, ptr %3, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !27
  %8 = tail call fastcc i32 @generic_exec_single(i32 noundef %0, ptr noundef %1)
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ -16, %2 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @smp_call_function_any(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !29
  %5 = tail call ptr @llvm.thread.pointer() #15
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr %0, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %4
  %16 = load i32, ptr @__cpu_online_mask, align 4
  %17 = load i32, ptr %0, align 4
  %18 = and i32 %16, 65535
  %19 = and i32 %18, %17
  %20 = icmp eq i32 %19, 0
  %21 = tail call i32 @llvm.cttz.i32(i32 %19, i1 true) #15, !range !30
  %22 = select i1 %20, i32 16, i32 %21
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %34, %15
  %26 = phi i32 [ %35, %34 ], [ %22, %15 ]
  %27 = lshr i32 %26, 5
  %28 = getelementptr i32, ptr @__cpu_online_mask, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %26, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = tail call i32 @cpumask_next_and(i32 noundef %26, ptr noundef nonnull @__cpu_online_mask, ptr noundef %0) #17
  %36 = icmp ult i32 %35, %23
  br i1 %36, label %25, label %37

37:                                               ; preds = %34, %25, %15, %4
  %38 = phi i32 [ %7, %4 ], [ %22, %15 ], [ %26, %25 ], [ %22, %34 ]
  %39 = tail call i32 @smp_call_function_single(i32 noundef %38, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !31
  ret i32 %39
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @smp_call_function_many(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #0 {
  %5 = zext i1 %3 to i32
  tail call fastcc void @smp_call_function_many_cond(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %5, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @smp_call_function_many_cond(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef readonly %4) unnamed_addr #0 {
  %6 = tail call ptr @llvm.thread.pointer() #15
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %3, 1
  %10 = icmp eq i32 %9, 0
  %11 = lshr i32 %8, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %8, 31
  %15 = shl nuw i32 1, %14
  %16 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 15728640
  %19 = load volatile i32, ptr %16, align 4
  %20 = and i32 %19, 983040
  %21 = or i32 %20, %18
  %22 = load volatile i32, ptr %16, align 4
  %23 = and i32 %22, 256
  %24 = or i32 %21, %23
  %25 = icmp ne i32 %24, 0
  %26 = load i1, ptr @smp_call_function_many_cond.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !15

29:                                               ; preds = %5
  store i1 true, ptr @smp_call_function_many_cond.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 894, i32 noundef 9, ptr noundef null) #15
  br label %30

30:                                               ; preds = %29, %5
  %31 = and i32 %3, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = getelementptr i32, ptr %0, i32 %11
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, %15
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %33, %30
  %39 = phi i1 [ false, %30 ], [ %37, %33 ]
  %40 = load i32, ptr %0, align 4
  %41 = load i32, ptr @__cpu_online_mask, align 4
  %42 = and i32 %40, 65535
  %43 = and i32 %42, %41
  %44 = icmp eq i32 %43, 0
  %45 = tail call i32 @llvm.cttz.i32(i32 %43, i1 true) #15, !range !30
  %46 = select i1 %44, i32 16, i32 %45
  %47 = icmp eq i32 %46, %8
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = tail call i32 @cpumask_next_and(i32 noundef %8, ptr noundef %0, ptr noundef nonnull @__cpu_online_mask) #17
  br label %50

50:                                               ; preds = %48, %38
  %51 = phi i32 [ %49, %48 ], [ %46, %38 ]
  %52 = load i32, ptr @nr_cpu_ids, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %125

54:                                               ; preds = %50
  %55 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %56 = inttoptr i32 %55 to ptr
  %57 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %56) #11, !srcloc !9
  %58 = add i32 %57, ptrtoint (ptr @cfd_data to i32)
  %59 = inttoptr i32 %58 to ptr
  %60 = getelementptr inbounds %struct.call_function_data, ptr %59, i32 0, i32 1
  store i32 %43, ptr %60, align 4
  %61 = getelementptr i32, ptr %60, i32 %11
  %62 = xor i32 %15, -1
  %63 = load i32, ptr %61, align 4
  %64 = and i32 %63, %62
  store i32 %64, ptr %61, align 4
  %65 = getelementptr inbounds %struct.call_function_data, ptr %59, i32 0, i32 2
  store i32 0, ptr %65, align 4
  %66 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %60) #17
  %67 = load i32, ptr @nr_cpu_ids, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %125

69:                                               ; preds = %54
  %70 = icmp eq ptr %4, null
  br label %71

71:                                               ; preds = %113, %69
  %72 = phi i32 [ %66, %69 ], [ %116, %113 ]
  %73 = phi i32 [ 0, %69 ], [ %115, %113 ]
  %74 = phi i32 [ 0, %69 ], [ %114, %113 ]
  %75 = load ptr, ptr %59, align 4
  %76 = ptrtoint ptr %75 to i32
  %77 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %72
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, %76
  %80 = inttoptr i32 %79 to ptr
  br i1 %70, label %83, label %81

81:                                               ; preds = %71
  %82 = tail call zeroext i1 %4(i32 noundef %72, ptr noundef %2) #15
  br i1 %82, label %83, label %113

83:                                               ; preds = %81, %71
  %84 = getelementptr inbounds %struct.__call_single_node, ptr %80, i32 0, i32 1
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %88, %83
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !22
  %89 = load volatile i32, ptr %84, align 4
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %88

92:                                               ; preds = %88, %83
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %93 = load i32, ptr %84, align 4
  %94 = or i32 %93, 1
  store i32 %94, ptr %84, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !24
  br i1 %10, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, ptr %84, align 4
  %97 = or i32 %96, 16
  store i32 %97, ptr %84, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = getelementptr inbounds %struct.__call_single_data, ptr %80, i32 0, i32 1
  store ptr %1, ptr %99, align 8
  %100 = getelementptr inbounds %struct.__call_single_data, ptr %80, i32 0, i32 2
  store ptr %2, ptr %100, align 4
  %101 = load i32, ptr %77, align 4
  %102 = add i32 %101, ptrtoint (ptr @call_single_queue to i32)
  %103 = inttoptr i32 %102 to ptr
  %104 = tail call zeroext i1 @llist_add_batch(ptr noundef %80, ptr noundef %80, ptr noundef %103) #15
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = and i32 %72, 31
  %107 = shl nuw i32 1, %106
  %108 = lshr i32 %72, 5
  %109 = getelementptr i32, ptr %65, i32 %108
  %110 = load i32, ptr %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, ptr %109, align 4
  %112 = add i32 %74, 1
  br label %113

113:                                              ; preds = %105, %98, %81
  %114 = phi i32 [ %74, %81 ], [ %112, %105 ], [ %74, %98 ]
  %115 = phi i32 [ %73, %81 ], [ %72, %105 ], [ %73, %98 ]
  %116 = tail call i32 @cpumask_next(i32 noundef %72, ptr noundef %60) #17
  %117 = load i32, ptr @nr_cpu_ids, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %71, label %119

119:                                              ; preds = %113
  %120 = icmp eq i32 %114, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %119
  tail call void @send_call_function_single_ipi(i32 noundef %115) #15
  br label %125

122:                                              ; preds = %119
  %123 = icmp sgt i32 %114, 1
  br i1 %123, label %124, label %125, !prof !14

124:                                              ; preds = %122
  tail call void @arch_send_call_function_ipi_mask(ptr noundef %65) #15
  br label %125

125:                                              ; preds = %124, %122, %121, %54, %50
  %126 = phi ptr [ %59, %121 ], [ %59, %124 ], [ %59, %122 ], [ null, %50 ], [ %59, %54 ]
  br i1 %39, label %127, label %133

127:                                              ; preds = %125
  %128 = icmp eq ptr %4, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %127
  %130 = tail call zeroext i1 %4(i32 noundef %8, ptr noundef %2) #15
  br i1 %130, label %131, label %133

131:                                              ; preds = %129, %127
  %132 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !17
  tail call void %1(ptr noundef %2) #15
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %132) #15, !srcloc !18
  br label %133

133:                                              ; preds = %131, %129, %125
  %134 = xor i1 %53, true
  %135 = or i1 %10, %134
  br i1 %135, label %161, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.call_function_data, ptr %126, i32 0, i32 1
  %138 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %137) #17
  %139 = load i32, ptr @nr_cpu_ids, align 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %161

141:                                              ; preds = %157, %136
  %142 = phi i32 [ %158, %157 ], [ %138, %136 ]
  %143 = load ptr, ptr %126, align 4
  %144 = ptrtoint ptr %143 to i32
  %145 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %142
  %146 = load i32, ptr %145, align 4
  %147 = add i32 %146, %144
  %148 = inttoptr i32 %147 to ptr
  %149 = getelementptr inbounds %struct.__call_single_node, ptr %148, i32 0, i32 1
  %150 = load volatile i32, ptr %149, align 4
  %151 = and i32 %150, 1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %153, %141
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !22
  %154 = load volatile i32, ptr %149, align 4
  %155 = and i32 %154, 1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %153

157:                                              ; preds = %153, %141
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %158 = tail call i32 @cpumask_next(i32 noundef %142, ptr noundef %137) #17
  %159 = load i32, ptr @nr_cpu_ids, align 4
  %160 = icmp ult i32 %158, %159
  br i1 %160, label %141, label %161

161:                                              ; preds = %157, %136, %133
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @smp_call_function(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !32
  %4 = icmp ne i32 %2, 0
  %5 = zext i1 %4 to i32
  tail call fastcc void @smp_call_function_many_cond(ptr noundef nonnull @__cpu_online_mask, ptr noundef %0, ptr noundef %1, i32 noundef %5, ptr noundef null) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_disable_smp_support() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nosmp(ptr nocapture noundef readnone %0) #4 section ".init.text" {
  store i32 0, ptr @setup_max_cpus, align 4
  tail call void @arch_disable_smp_support()
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nrcpus(ptr noundef %0) #4 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !34
  %4 = call i32 @get_option(ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  %5 = icmp ne i32 %4, 0
  %6 = load i32, ptr %3, align 4
  %7 = icmp sgt i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %10 = icmp ult i32 %6, %9
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 %6, ptr @nr_cpu_ids, align 4
  br label %13

13:                                               ; preds = %12, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @maxcpus(ptr noundef %0) #4 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = call i32 @get_option(ptr noundef nonnull %2, ptr noundef nonnull @setup_max_cpus) #15
  %4 = load i32, ptr @setup_max_cpus, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @arch_disable_smp_support()
  br label %7

7:                                                ; preds = %6, %1
  ret i32 0
}

; Function Attrs: cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local void @setup_nr_cpu_ids() local_unnamed_addr #7 section ".init.text" {
  %1 = load i32, ptr @__cpu_possible_mask, align 4
  %2 = and i32 %1, 65535
  %3 = icmp eq i32 %2, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %2, i1 false) #15, !range !35
  %5 = sub nuw nsw i32 32, %4
  %6 = select i1 %3, i32 17, i32 %5
  store i32 %6, ptr @nr_cpu_ids, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @smp_init() local_unnamed_addr #4 section ".init.text" {
  tail call void @idle_threads_init() #15
  tail call void @cpuhp_threads_init() #16
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #16
  %2 = load i32, ptr @setup_max_cpus, align 4
  tail call void @bringup_nonboot_cpus(i32 noundef %2) #15
  %3 = load volatile i32, ptr @__num_online_cpus, align 4
  %4 = icmp sgt i32 %3, 1
  %5 = select i1 %4, ptr @.str.5, ptr @.str.6
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %3, ptr noundef nonnull %5) #16
  %7 = load i32, ptr @setup_max_cpus, align 4
  tail call void @smp_cpus_done(i32 noundef %7) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idle_threads_init() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @cpuhp_threads_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @bringup_nonboot_cpus(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_cpus_done(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @on_each_cpu_cond_mask(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) #0 {
  %6 = select i1 %3, i32 3, i32 2
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !36
  tail call fastcc void @smp_call_function_many_cond(ptr noundef %4, ptr noundef %1, ptr noundef %2, i32 noundef %6, ptr noundef %0)
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kick_all_cpus_sync() #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !38
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !32
  tail call fastcc void @smp_call_function_many_cond(ptr noundef nonnull @__cpu_online_mask, ptr noundef nonnull @do_nothing, ptr noundef null, i32 noundef 1, ptr noundef null) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @do_nothing(ptr nocapture noundef %0) #9 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wake_up_all_idle_cpus() #0 {
  %1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %4, label %23

4:                                                ; preds = %19, %0
  %5 = phi i32 [ %20, %19 ], [ %1, %0 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !39
  %6 = tail call ptr @llvm.thread.pointer() #15
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %4
  %11 = lshr i32 %5, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %5, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  tail call void @wake_up_if_idle(i32 noundef %5) #15
  br label %19

19:                                               ; preds = %18, %10, %4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !40
  %20 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #17
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %4, label %23

23:                                               ; preds = %19, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_if_idle(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @smp_call_on_cpu(i32 noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #0 {
  %5 = alloca %struct.smp_call_on_cpu_struct, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %5, i32 0, i32 1, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  call void @__init_swait_queue_head(ptr noundef %7, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #15
  %8 = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %5, i32 0, i32 2
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %5, i32 0, i32 3
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %5, i32 0, i32 4
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %5, i32 0, i32 5
  %12 = select i1 %3, i32 %0, i32 -1
  store i32 %12, ptr %11, align 4
  store i32 -32, ptr %5, align 4
  %13 = getelementptr inbounds %struct.work_struct, ptr %5, i32 0, i32 1
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.work_struct, ptr %5, i32 0, i32 1, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.work_struct, ptr %5, i32 0, i32 2
  store ptr @smp_call_on_cpu_callback, ptr %15, align 4
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %17 = icmp ugt i32 %16, %0
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = lshr i32 %0, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %0, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load ptr, ptr @system_wq, align 4
  %28 = call zeroext i1 @queue_work_on(i32 noundef %0, ptr noundef %27, ptr noundef nonnull %5) #15
  call void @wait_for_completion(ptr noundef %6) #15
  %29 = load i32, ptr %10, align 4
  br label %30

30:                                               ; preds = %26, %18, %4
  %31 = phi i32 [ %29, %26 ], [ -6, %18 ], [ -6, %4 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #15
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smp_call_on_cpu_callback(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %3(ptr noundef %5) #15
  %7 = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %0, i32 0, i32 4
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %0, i32 0, i32 1
  tail call void @complete(ptr noundef %8) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llist_reverse_order(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_single(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_ttwu_pending(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_call_function_ipi_mask(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly willreturn }

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
!9 = !{i64 327643}
!10 = !{i64 2148217536}
!11 = !{i64 291791, i64 2147793357, i64 2147793383, i64 2147793430, i64 2147793452, i64 2147793480, i64 2147793500}
!12 = !{i64 374322, i64 374339, i64 374363, i64 374389, i64 374407}
!13 = !{i64 2148217863}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2151985341}
!17 = !{i64 320538, i64 320599}
!18 = !{i64 323555}
!19 = !{i64 2152010128}
!20 = !{i64 323270}
!21 = !{i64 2151981979}
!22 = !{i64 2151981821}
!23 = !{i64 2151982128}
!24 = !{i64 2151982469}
!25 = !{i64 2152015439}
!26 = !{i64 2152016886}
!27 = !{i64 2152016999}
!28 = !{i64 2152017069}
!29 = !{i64 2152018719}
!30 = !{i32 0, i32 33}
!31 = !{i64 2152019129}
!32 = !{i64 2152028173}
!33 = !{i64 2152028266}
!34 = !{!"auto-init"}
!35 = !{i32 16, i32 33}
!36 = !{i64 2152036413}
!37 = !{i64 2152036461}
!38 = !{i64 2152037900}
!39 = !{i64 2152043587}
!40 = !{i64 2152043755}
