; ModuleID = '/llk/IR/kernel/stop_machine.c_pt.bc'
source_filename = "../kernel/stop_machine.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stop_machine:\09\09\09\09\09"
module asm "\09.asciz \09\22stop_machine\22\09\09\09\09\09"
module asm "__kstrtabns_stop_machine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpu_stopper = type { ptr, %struct.raw_spinlock, i8, %struct.list_head, %struct.cpu_stop_work, i32, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type {}
%struct.smp_hotplug_thread = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cpu_stop_done = type { %struct.atomic_t, i32, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wake_q_head = type { ptr, ptr }
%struct.multi_stop_data = type { ptr, ptr, i32, ptr, i32, %struct.atomic_t }

@cpu_stopper = internal global %struct.cpu_stopper zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str = private unnamed_addr constant [23 x i8] c"%sStopper: %pS <- %pS\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"kernel/stop_machine.c\00", align 1
@__initcall__kmod_stop_machine__226_586_cpu_stop_initearly = internal global ptr @cpu_stop_init, section ".initcallearly.init", align 4
@stop_machine_initialized = internal unnamed_addr global i1 false, align 1
@stop_machine_cpuslocked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_stop_machine = external dso_local constant [0 x i8], align 1
@__kstrtabns_stop_machine = external dso_local constant [0 x i8], align 1
@__ksymtab_stop_machine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stop_machine to i32), ptr @__kstrtab_stop_machine, ptr @__kstrtabns_stop_machine }, section "___ksymtab_gpl+stop_machine", align 4
@__cpu_active_mask = external dso_local global %struct.cpumask, align 4
@stop_cpus_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @stop_cpus_mutex, i64 12), ptr getelementptr (i8, ptr @stop_cpus_mutex, i64 12) } }, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@stop_cpus_in_progress = internal unnamed_addr global i1 false, align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_stop_threads = internal global %struct.smp_hotplug_thread { ptr @cpu_stopper, %struct.list_head zeroinitializer, ptr @cpu_stop_should_run, ptr @cpu_stopper_thread, ptr @cpu_stop_create, ptr null, ptr null, ptr @cpu_stop_park, ptr null, i8 1, ptr @.str.3 }, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"migration/%u\00", align 1
@cpu_stopper_thread.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"cpu_stop: %ps(%p) leaked preempt count\0A\00", align 1
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_stop_machine__226_586_cpu_stop_initearly, ptr @__ksymtab_stop_machine], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @print_stop_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %4 = load volatile i32, ptr %3, align 8
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, ptrtoint (ptr @cpu_stopper to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.cpu_stopper, ptr %8, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.cpu_stopper, ptr %8, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0, ptr noundef %13, ptr noundef %16) #10
  br label %18

18:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stop_one_cpu(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.cpu_stop_done, align 4
  %5 = alloca %struct.cpu_stop_work, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.cpu_stop_work, ptr %5, i32 0, i32 1
  store i64 0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.cpu_stop_work, ptr %5, i32 0, i32 2
  %8 = tail call ptr @llvm.returnaddress(i32 0)
  %9 = ptrtoint ptr %8 to i32
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.cpu_stop_work, ptr %5, i32 0, i32 3
  store ptr %2, ptr %10, align 8
  %11 = getelementptr inbounds %struct.cpu_stop_work, ptr %5, i32 0, i32 4
  store ptr %4, ptr %11, align 4
  %12 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %12, i8 0, i32 20, i1 false) #11
  store volatile i32 1, ptr %4, align 4
  %13 = getelementptr inbounds %struct.cpu_stop_done, ptr %4, i32 0, i32 2
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cpu_stop_done, ptr %4, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #11
  %15 = call fastcc zeroext i1 @cpu_stop_queue_work(i32 noundef %0, ptr noundef nonnull %5)
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = call i32 @__cond_resched() #11
  call void @wait_for_completion(ptr noundef %13) #11
  %18 = load i32, ptr %12, align 4
  br label %19

19:                                               ; preds = %16, %3
  %20 = phi i32 [ %18, %16 ], [ -2, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret i32 %20
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cpu_stop_queue_work(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.wake_q_head, align 8
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, ptrtoint (ptr @cpu_stopper to i32)
  %7 = inttoptr i32 %6 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store ptr inttoptr (i32 1 to ptr), ptr %3, align 8
  %8 = getelementptr inbounds %struct.wake_q_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %8, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %9 = getelementptr inbounds %struct.cpu_stopper, ptr %7, i32 0, i32 1
  %10 = call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #11
  %11 = getelementptr inbounds %struct.cpu_stopper, ptr %7, i32 0, i32 2
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.cpu_stopper, ptr %7, i32 0, i32 3
  %16 = getelementptr inbounds %struct.cpu_stopper, ptr %7, i32 0, i32 3, i32 1
  %17 = load ptr, ptr %16, align 4
  store ptr %1, ptr %16, align 4
  store ptr %15, ptr %1, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %1, ptr %17, align 4
  %19 = load ptr, ptr %7, align 4
  call void @wake_q_add(ptr noundef nonnull %3, ptr noundef %19) #11
  br label %30

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.cpu_stop_work, ptr %1, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %22) #11, !srcloc !11
  %25 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %22, ptr nonnull %22, i32 1, ptr nonnull elementtype(i32) %22) #11, !srcloc !12
  %26 = extractvalue { i32, i32 } %25, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.cpu_stop_done, ptr %22, i32 0, i32 2
  call void @complete(ptr noundef %29) #11
  br label %30

30:                                               ; preds = %28, %24, %20, %14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #11
  call void @wake_up_q(ptr noundef nonnull %3) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i1 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @stop_machine_yield(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stop_two_cpus(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.wake_q_head, align 8
  %6 = alloca %struct.cpu_stop_done, align 4
  %7 = alloca %struct.cpu_stop_work, align 4
  %8 = alloca %struct.cpu_stop_work, align 8
  %9 = alloca %struct.multi_stop_data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #11
  %10 = and i32 %0, 31
  %11 = add nuw nsw i32 %10, 1
  %12 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %11
  %13 = lshr i32 %0, 5
  %14 = sub nsw i32 0, %13
  %15 = getelementptr i32, ptr %12, i32 %14
  store ptr %2, ptr %9, align 4
  %16 = getelementptr inbounds i8, ptr %9, i32 4
  store ptr %3, ptr %16, align 4
  %17 = getelementptr inbounds i8, ptr %9, i32 8
  store i32 2, ptr %17, align 4
  %18 = getelementptr inbounds i8, ptr %9, i32 12
  store ptr %15, ptr %18, align 4
  %19 = getelementptr inbounds i8, ptr %9, i32 16
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds i8, ptr %9, i32 20
  store i32 0, ptr %20, align 4
  %21 = tail call ptr @llvm.returnaddress(i32 0)
  %22 = ptrtoint ptr %21 to i32
  store i64 0, ptr %8, align 8
  %23 = getelementptr inbounds i8, ptr %8, i32 8
  store ptr @multi_cpu_stop, ptr %23, align 8
  %24 = getelementptr inbounds i8, ptr %8, i32 12
  store i32 %22, ptr %24, align 4
  %25 = getelementptr inbounds i8, ptr %8, i32 16
  store ptr %9, ptr %25, align 8
  %26 = getelementptr inbounds i8, ptr %8, i32 20
  store ptr %6, ptr %26, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 24, i1 false)
  %27 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %27, i8 0, i32 20, i1 false) #11
  store volatile i32 2, ptr %6, align 4
  %28 = getelementptr inbounds %struct.cpu_stop_done, ptr %6, i32 0, i32 2
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.cpu_stop_done, ptr %6, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %29, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #11
  %30 = load i32, ptr %17, align 4
  store volatile i32 %30, ptr %20, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !17
  store volatile i32 1, ptr %19, align 4
  %31 = call i32 @llvm.umax.i32(i32 %0, i32 %1)
  %32 = call i32 @llvm.umin.i32(i32 %0, i32 %1)
  %33 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, ptrtoint (ptr @cpu_stopper to i32)
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, ptrtoint (ptr @cpu_stopper to i32)
  %40 = inttoptr i32 %39 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store ptr inttoptr (i32 1 to ptr), ptr %5, align 8
  %41 = getelementptr inbounds %struct.wake_q_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %41, align 4
  %42 = getelementptr inbounds %struct.cpu_stopper, ptr %36, i32 0, i32 1
  %43 = getelementptr inbounds %struct.cpu_stopper, ptr %40, i32 0, i32 1
  %44 = getelementptr inbounds %struct.cpu_stopper, ptr %36, i32 0, i32 2
  %45 = getelementptr inbounds %struct.cpu_stopper, ptr %40, i32 0, i32 2
  %46 = getelementptr inbounds %struct.cpu_stopper, ptr %36, i32 0, i32 3
  %47 = getelementptr inbounds %struct.cpu_stopper, ptr %36, i32 0, i32 3, i32 1
  %48 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %49 = getelementptr inbounds %struct.cpu_stopper, ptr %40, i32 0, i32 3
  %50 = getelementptr inbounds %struct.cpu_stopper, ptr %40, i32 0, i32 3, i32 1
  %51 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  br label %52

52:                                               ; preds = %74, %4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !18
  call void @_raw_spin_lock_irq(ptr noundef %42) #11
  call void @_raw_spin_lock(ptr noundef %43) #11
  %53 = load i8, ptr %44, align 4, !range !9
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  %56 = load i8, ptr %45, align 4, !range !9
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  %59 = load i1, ptr @stop_cpus_in_progress, align 1
  br i1 %59, label %65, label %60, !prof !19

60:                                               ; preds = %58
  %61 = load ptr, ptr %47, align 4
  store ptr %7, ptr %47, align 4
  store ptr %46, ptr %7, align 4
  store ptr %61, ptr %48, align 4
  store volatile ptr %7, ptr %61, align 4
  %62 = load ptr, ptr %36, align 4
  call void @wake_q_add(ptr noundef nonnull %5, ptr noundef %62) #11
  %63 = load ptr, ptr %50, align 4
  store ptr %8, ptr %50, align 4
  store ptr %49, ptr %8, align 8
  store ptr %63, ptr %51, align 4
  store volatile ptr %8, ptr %63, align 4
  %64 = load ptr, ptr %40, align 4
  call void @wake_q_add(ptr noundef nonnull %5, ptr noundef %64) #11
  br label %65

65:                                               ; preds = %60, %58, %55, %52
  %66 = phi i1 [ false, %60 ], [ false, %55 ], [ false, %52 ], [ true, %58 ]
  %67 = phi i1 [ true, %60 ], [ false, %55 ], [ false, %52 ], [ false, %58 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %68 = load i16, ptr %43, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %43, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !23
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %70 = load i16, ptr %42, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %42, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !22
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  br i1 %66, label %72, label %77, !prof !19

72:                                               ; preds = %65
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  %73 = load i1, ptr @stop_cpus_in_progress, align 1
  br i1 %73, label %75, label %74

74:                                               ; preds = %75, %72
  br label %52

75:                                               ; preds = %75, %72
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !27
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !28
  %76 = load i1, ptr @stop_cpus_in_progress, align 1
  br i1 %76, label %75, label %74

77:                                               ; preds = %65
  call void @wake_up_q(ptr noundef nonnull %5) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br i1 %67, label %78, label %80

78:                                               ; preds = %77
  call void @wait_for_completion(ptr noundef %28) #11
  %79 = load i32, ptr %27, align 4
  br label %80

80:                                               ; preds = %78, %77
  %81 = phi i32 [ %79, %78 ], [ -2, %77 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  ret i32 %81
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @multi_cpu_stop(ptr noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #11
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !30
  %6 = getelementptr inbounds %struct.multi_stop_data, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @__cpu_online_mask, i32 noundef 16) #11
  %11 = icmp eq i32 %4, %10
  br label %20

12:                                               ; preds = %1
  %13 = lshr i32 %4, 5
  %14 = getelementptr i32, ptr %7, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %4, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %12, %9
  %21 = phi ptr [ %7, %12 ], [ @__cpu_online_mask, %9 ]
  %22 = phi i1 [ %19, %12 ], [ %11, %9 ]
  %23 = getelementptr inbounds %struct.multi_stop_data, ptr %0, i32 0, i32 4
  %24 = getelementptr inbounds %struct.multi_stop_data, ptr %0, i32 0, i32 1
  %25 = getelementptr inbounds %struct.multi_stop_data, ptr %0, i32 0, i32 5
  %26 = getelementptr inbounds %struct.multi_stop_data, ptr %0, i32 0, i32 2
  br label %27

27:                                               ; preds = %48, %20
  %28 = phi i32 [ 0, %20 ], [ %49, %48 ]
  %29 = phi i32 [ 0, %20 ], [ %50, %48 ]
  tail call void @stop_machine_yield(ptr noundef nonnull %21)
  %30 = load volatile i32, ptr %23, align 4
  %31 = icmp eq i32 %30, %29
  br i1 %31, label %48, label %32

32:                                               ; preds = %27
  switch i32 %30, label %39 [
    i32 2, label %33
    i32 3, label %34
  ]

33:                                               ; preds = %32
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #11, !srcloc !31
  br label %39

34:                                               ; preds = %32
  br i1 %22, label %35, label %39

35:                                               ; preds = %34
  %36 = load ptr, ptr %0, align 4
  %37 = load ptr, ptr %24, align 4
  %38 = tail call i32 %36(ptr noundef %37) #11
  br label %39

39:                                               ; preds = %35, %34, %33, %32
  %40 = phi i32 [ %28, %32 ], [ %38, %35 ], [ %28, %34 ], [ %28, %33 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #11, !srcloc !11
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #11, !srcloc !12
  %42 = extractvalue { i32, i32 } %41, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, ptr %23, align 4
  %46 = add i32 %45, 1
  %47 = load i32, ptr %26, align 4
  store volatile i32 %47, ptr %25, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !17
  store volatile i32 %46, ptr %23, align 4
  br label %48

48:                                               ; preds = %44, %39, %27
  %49 = phi i32 [ %40, %39 ], [ %40, %44 ], [ %28, %27 ]
  %50 = phi i32 [ %30, %39 ], [ %30, %44 ], [ %29, %27 ]
  tail call void @rcu_momentary_dyntick_idle() #11
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %52, label %27

52:                                               ; preds = %48
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #11, !srcloc !32
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @stop_one_cpu_nowait(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @llvm.returnaddress(i32 0)
  %6 = ptrtoint ptr %5 to i32
  store i64 0, ptr %3, align 4
  %7 = getelementptr inbounds i8, ptr %3, i32 8
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds i8, ptr %3, i32 12
  store i32 %6, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %3, i32 16
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds i8, ptr %3, i32 20
  store ptr null, ptr %10, align 4
  %11 = tail call fastcc zeroext i1 @cpu_stop_queue_work(i32 noundef %0, ptr noundef %3)
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stop_machine_park(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpu_stopper to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.cpu_stopper, ptr %5, i32 0, i32 2
  store i8 0, ptr %6, align 4
  %7 = load ptr, ptr %5, align 4
  %8 = tail call i32 @kthread_park(ptr noundef %7) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stop_machine_unpark(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpu_stopper to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.cpu_stopper, ptr %5, i32 0, i32 2
  store i8 1, ptr %6, align 4
  %7 = load ptr, ptr %5, align 4
  tail call void @kthread_unpark(ptr noundef %7) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cpu_stop_init() #7 section ".init.text" {
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  %3 = icmp ult i32 %2, %1
  br i1 %3, label %4, label %15

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %13, %4 ], [ %2, %0 ]
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @cpu_stopper to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.cpu_stopper, ptr %9, i32 0, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.cpu_stopper, ptr %9, i32 0, i32 3
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cpu_stopper, ptr %9, i32 0, i32 3, i32 1
  store ptr %11, ptr %12, align 4
  %13 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #12
  %14 = icmp ult i32 %13, %1
  br i1 %14, label %4, label %15

15:                                               ; preds = %4, %0
  %16 = tail call i32 @smpboot_register_percpu_thread(ptr noundef nonnull @cpu_stop_threads) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18, !prof !33

18:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/stop_machine.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 581, 0\0A.popsection", ""() #11, !srcloc !34
  unreachable

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #11
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, ptrtoint (ptr @cpu_stopper to i32)
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr inbounds %struct.cpu_stopper, ptr %26, i32 0, i32 2
  store i8 1, ptr %27, align 4
  %28 = load ptr, ptr %26, align 4
  tail call void @kthread_unpark(ptr noundef %28) #11
  store i1 true, ptr @stop_machine_initialized, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stop_machine_cpuslocked(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.cpu_stop_done, align 4
  %5 = alloca %struct.multi_stop_data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.multi_stop_data, ptr %5, i32 0, i32 1
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.multi_stop_data, ptr %5, i32 0, i32 2
  %8 = load volatile i32, ptr @__num_online_cpus, align 4
  store i32 %8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.multi_stop_data, ptr %5, i32 0, i32 3
  store ptr %2, ptr %9, align 4
  tail call void @lockdep_assert_cpus_held() #11
  %10 = load i1, ptr @stop_machine_initialized, align 1
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = icmp ne i32 %8, 1
  %13 = load i1, ptr @stop_machine_cpuslocked.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !19

16:                                               ; preds = %11
  store i1 true, ptr @stop_machine_cpuslocked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 609, i32 noundef 9, ptr noundef null) #11
  br label %17

17:                                               ; preds = %16, %11
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !35
  %19 = tail call i32 %0(ptr noundef %1) #11
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #11, !srcloc !32
  br label %57

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.multi_stop_data, ptr %5, i32 0, i32 5
  %22 = getelementptr inbounds %struct.multi_stop_data, ptr %5, i32 0, i32 4
  store volatile i32 %8, ptr %21, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !17
  store volatile i32 1, ptr %22, align 4
  tail call void @mutex_lock(ptr noundef nonnull @stop_cpus_mutex) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %23 = load i32, ptr @__cpu_online_mask, align 4
  %24 = and i32 %23, 65535
  %25 = tail call i32 @__sw_hweight32(i32 noundef %24) #11
  %26 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %26, i8 0, i32 20, i1 false) #11
  store volatile i32 %25, ptr %4, align 4
  %27 = getelementptr inbounds %struct.cpu_stop_done, ptr %4, i32 0, i32 2
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.cpu_stop_done, ptr %4, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %28, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !36
  store i1 true, ptr @stop_cpus_in_progress, align 1
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !37
  %29 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #12
  %30 = load i32, ptr @nr_cpu_ids, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %20
  %33 = call ptr @llvm.returnaddress(i32 0) #11
  %34 = ptrtoint ptr %33 to i32
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i32 [ %29, %32 ], [ %48, %35 ]
  %37 = phi i1 [ false, %32 ], [ %47, %35 ]
  %38 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, ptrtoint (ptr getelementptr inbounds (%struct.cpu_stopper, ptr @cpu_stopper, i32 0, i32 4) to i32)
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr inbounds %struct.cpu_stop_work, ptr %41, i32 0, i32 1
  store ptr @multi_cpu_stop, ptr %42, align 4
  %43 = getelementptr inbounds %struct.cpu_stop_work, ptr %41, i32 0, i32 3
  store ptr %5, ptr %43, align 4
  %44 = getelementptr inbounds %struct.cpu_stop_work, ptr %41, i32 0, i32 4
  store ptr %4, ptr %44, align 4
  %45 = getelementptr inbounds %struct.cpu_stop_work, ptr %41, i32 0, i32 2
  store i32 %34, ptr %45, align 4
  %46 = call fastcc zeroext i1 @cpu_stop_queue_work(i32 noundef %36, ptr noundef %41) #11
  %47 = select i1 %46, i1 true, i1 %37
  %48 = call i32 @cpumask_next(i32 noundef %36, ptr noundef nonnull @__cpu_online_mask) #12
  %49 = load i32, ptr @nr_cpu_ids, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %35, label %51

51:                                               ; preds = %35
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !38
  store i1 false, ptr @stop_cpus_in_progress, align 1
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !39
  br i1 %47, label %52, label %55

52:                                               ; preds = %51
  call void @wait_for_completion(ptr noundef %27) #11
  %53 = load i32, ptr %26, align 4
  br label %55

54:                                               ; preds = %20
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !38
  store i1 false, ptr @stop_cpus_in_progress, align 1
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !39
  br label %55

55:                                               ; preds = %54, %52, %51
  %56 = phi i32 [ %53, %52 ], [ -2, %51 ], [ -2, %54 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @mutex_unlock(ptr noundef nonnull @stop_cpus_mutex) #11
  br label %57

57:                                               ; preds = %55, %17
  %58 = phi i32 [ %56, %55 ], [ %19, %17 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_assert_cpus_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stop_machine(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @cpus_read_lock() #11
  %4 = tail call i32 @stop_machine_cpuslocked(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call void @cpus_read_unlock() #11
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stop_machine_from_inactive_cpu(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.multi_stop_data, align 4
  %5 = alloca %struct.cpu_stop_done, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %6 = getelementptr inbounds i8, ptr %4, i32 16
  store i64 0, ptr %6, align 4, !annotation !40
  store ptr %0, ptr %4, align 4
  %7 = getelementptr inbounds %struct.multi_stop_data, ptr %4, i32 0, i32 1
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.multi_stop_data, ptr %4, i32 0, i32 3
  store ptr %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.multi_stop_data, ptr %4, i32 0, i32 4
  %10 = getelementptr inbounds %struct.multi_stop_data, ptr %4, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !40
  %11 = tail call ptr @llvm.thread.pointer() #11
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_active_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21, !prof !33

21:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/stop_machine.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 667, 0\0A.popsection", ""() #11, !srcloc !41
  unreachable

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.multi_stop_data, ptr %4, i32 0, i32 2
  %24 = load i32, ptr @__cpu_active_mask, align 4
  %25 = and i32 %24, 65535
  %26 = tail call i32 @__sw_hweight32(i32 noundef %25) #11
  %27 = add i32 %26, 1
  store i32 %27, ptr %23, align 4
  %28 = tail call i32 @mutex_trylock(ptr noundef nonnull @stop_cpus_mutex) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %30, %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !43
  %31 = tail call i32 @mutex_trylock(ptr noundef nonnull @stop_cpus_mutex) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %30, label %33

33:                                               ; preds = %30, %22
  store volatile i32 %27, ptr %10, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !17
  store volatile i32 1, ptr %9, align 4
  %34 = load i32, ptr @__cpu_active_mask, align 4
  %35 = and i32 %34, 65535
  %36 = tail call i32 @__sw_hweight32(i32 noundef %35) #11
  %37 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %37, i8 0, i32 20, i1 false) #11
  store volatile i32 %36, ptr %5, align 4
  %38 = getelementptr inbounds %struct.cpu_stop_done, ptr %5, i32 0, i32 2
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.cpu_stop_done, ptr %5, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %39, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !36
  store i1 true, ptr @stop_cpus_in_progress, align 1
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !37
  %40 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_active_mask) #12
  %41 = load i32, ptr @nr_cpu_ids, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %33
  %44 = call ptr @llvm.returnaddress(i32 0) #11
  %45 = ptrtoint ptr %44 to i32
  br label %46

46:                                               ; preds = %46, %43
  %47 = phi i32 [ %40, %43 ], [ %57, %46 ]
  %48 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, ptrtoint (ptr getelementptr inbounds (%struct.cpu_stopper, ptr @cpu_stopper, i32 0, i32 4) to i32)
  %51 = inttoptr i32 %50 to ptr
  %52 = getelementptr inbounds %struct.cpu_stop_work, ptr %51, i32 0, i32 1
  store ptr @multi_cpu_stop, ptr %52, align 4
  %53 = getelementptr inbounds %struct.cpu_stop_work, ptr %51, i32 0, i32 3
  store ptr %4, ptr %53, align 4
  %54 = getelementptr inbounds %struct.cpu_stop_work, ptr %51, i32 0, i32 4
  store ptr %5, ptr %54, align 4
  %55 = getelementptr inbounds %struct.cpu_stop_work, ptr %51, i32 0, i32 2
  store i32 %45, ptr %55, align 4
  %56 = call fastcc zeroext i1 @cpu_stop_queue_work(i32 noundef %47, ptr noundef %51) #11
  %57 = call i32 @cpumask_next(i32 noundef %47, ptr noundef nonnull @__cpu_active_mask) #12
  %58 = load i32, ptr @nr_cpu_ids, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %46, label %60

60:                                               ; preds = %46, %33
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !38
  store i1 false, ptr @stop_cpus_in_progress, align 1
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !39
  %61 = call i32 @multi_cpu_stop(ptr noundef nonnull %4)
  %62 = call zeroext i1 @completion_done(ptr noundef %38) #11
  br i1 %62, label %65, label %63

63:                                               ; preds = %63, %60
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !44
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !45
  %64 = call zeroext i1 @completion_done(ptr noundef %38) #11
  br i1 %64, label %65, label %63

65:                                               ; preds = %63, %60
  call void @mutex_unlock(ptr noundef nonnull @stop_cpus_mutex) #11
  %66 = icmp eq i32 %61, 0
  %67 = load i32, ptr %37, align 4
  %68 = select i1 %66, i32 %67, i32 %61
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_momentary_dyntick_idle() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_register_percpu_thread(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_stop_should_run(i32 noundef %0) #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpu_stopper to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.cpu_stopper, ptr %5, i32 0, i32 1
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #11
  %8 = getelementptr inbounds %struct.cpu_stopper, ptr %5, i32 0, i32 3
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp ne ptr %9, %8
  %11 = zext i1 %10 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #11
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpu_stopper_thread(i32 noundef %0) #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpu_stopper to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.cpu_stopper, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.cpu_stopper, ptr %5, i32 0, i32 3
  %8 = getelementptr inbounds %struct.cpu_stopper, ptr %5, i32 0, i32 5
  %9 = getelementptr inbounds %struct.cpu_stopper, ptr %5, i32 0, i32 6
  br label %10

10:                                               ; preds = %57, %1
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #11
  %11 = load volatile ptr, ptr %7, align 4
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store volatile ptr %11, ptr %11, align 4
  store ptr %11, ptr %14, align 4
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi ptr [ null, %10 ], [ %11, %13 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %20 = load i16, ptr %6, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !22
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  %22 = icmp eq ptr %19, null
  br i1 %22, label %58, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.cpu_stop_work, ptr %19, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.cpu_stop_work, ptr %19, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.cpu_stop_work, ptr %19, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.cpu_stop_work, ptr %19, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %8, align 4
  store ptr %25, ptr %9, align 4
  %32 = tail call ptr @llvm.thread.pointer() #11
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %34 = load volatile i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store volatile i32 %35, ptr %33, align 4
  %36 = tail call i32 %25(ptr noundef %27) #11
  %37 = icmp eq ptr %29, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %23
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.cpu_stop_done, ptr %29, i32 0, i32 1
  store i32 %36, ptr %41, align 4
  br label %42

42:                                               ; preds = %40, %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %29) #11, !srcloc !11
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %29, ptr nonnull %29, i32 1, ptr nonnull elementtype(i32) %29) #11, !srcloc !12
  %44 = extractvalue { i32, i32 } %43, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.cpu_stop_done, ptr %29, i32 0, i32 2
  tail call void @complete(ptr noundef %47) #11
  br label %48

48:                                               ; preds = %46, %42, %23
  %49 = load volatile i32, ptr %33, align 4
  %50 = add i32 %49, -1
  store volatile i32 %50, ptr %33, align 4
  store ptr null, ptr %9, align 4
  store i32 0, ptr %8, align 4
  %51 = load volatile i32, ptr %33, align 4
  %52 = icmp ne i32 %51, 0
  %53 = load i1, ptr @cpu_stopper_thread.__already_done, align 1
  %54 = xor i1 %53, true
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %57, !prof !19

56:                                               ; preds = %48
  store i1 true, ptr @cpu_stopper_thread.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 521, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %25, ptr noundef %27) #11
  br label %57

57:                                               ; preds = %56, %48
  br label %10

58:                                               ; preds = %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpu_stop_create(i32 noundef %0) #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpu_stopper to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  tail call void @sched_set_stop_task(i32 noundef %0, ptr noundef %6) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpu_stop_park(i32 noundef %0) #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpu_stopper to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.cpu_stopper, ptr %5, i32 0, i32 3
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %10, label %9, !prof !33

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 549, i32 noundef 9, ptr noundef null) #11
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_stop_task(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }

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
!8 = !{i64 2152830496}
!9 = !{i8 0, i8 2}
!10 = !{i64 2148284678}
!11 = !{i64 682613, i64 2148172584, i64 2148172610, i64 2148172657, i64 2148172679, i64 2148172707, i64 2148172727}
!12 = !{i64 2148187040, i64 2148187072, i64 2148187101, i64 2148187135, i64 2148187166, i64 2148187189}
!13 = !{i64 2148284881}
!14 = !{i64 2152831026}
!15 = !{i64 2152833732}
!16 = !{i64 2152833574}
!17 = !{i64 2152831284}
!18 = !{i64 2152839127}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2148851217}
!21 = !{i64 2148847041}
!22 = !{i64 2148847116, i64 2148847143, i64 2148847190, i64 2148847212, i64 2148847240, i64 2148847260}
!23 = !{i64 2148874220}
!24 = !{i64 588536}
!25 = !{i64 2148875361}
!26 = !{i64 2152839541}
!27 = !{i64 2152839770}
!28 = !{i64 2152839612}
!29 = !{i64 2152839838}
!30 = !{i64 591023}
!31 = !{i64 588726}
!32 = !{i64 591308}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2152852084, i64 2152852570, i64 2152852121, i64 2152852177, i64 2152852211, i64 2152852235, i64 2152852276, i64 2152852297, i64 2152852325, i64 2152852359}
!35 = !{i64 588291, i64 588352}
!36 = !{i64 2152840088}
!37 = !{i64 2152840126}
!38 = !{i64 2152841220}
!39 = !{i64 2152841268}
!40 = !{!"auto-init"}
!41 = !{i64 2152858591, i64 2152859077, i64 2152858628, i64 2152858684, i64 2152858718, i64 2152858742, i64 2152858783, i64 2152858804, i64 2152858832, i64 2152858866}
!42 = !{i64 2152859625}
!43 = !{i64 2152859467}
!44 = !{i64 2152859996}
!45 = !{i64 2152859838}
