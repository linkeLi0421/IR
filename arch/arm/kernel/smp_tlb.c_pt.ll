; ModuleID = '/llk/IR/arch/arm/kernel/smp_tlb.c_pt.bc'
source_filename = "../arch/arm/kernel/smp_tlb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tlb_args = type { ptr, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}

@erratum_a15_798181_handler = dso_local local_unnamed_addr global ptr null, align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@smp_on_up = external dso_local local_unnamed_addr global i32, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local void @erratum_a15_798181_init() local_unnamed_addr #0 {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #7, !srcloc !8
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 6", "=r,~{cc}"() #7, !srcloc !9
  %3 = and i32 %1, -15728656
  %4 = icmp eq i32 %3, 1108279536
  %5 = icmp ult i32 %1, 1108279539
  %6 = and i1 %5, %4
  br i1 %6, label %33, label %7

7:                                                ; preds = %0
  %8 = icmp eq i32 %3, 1091551472
  %9 = icmp ult i32 %1, 1093648626
  %10 = and i1 %9, %8
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = icmp ult i32 %1, 1093648628
  %13 = and i1 %12, %8
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = and i32 %2, 16
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, ptr @erratum_a15_798181_broadcast, ptr @erratum_a15_798181_partial
  br label %33

18:                                               ; preds = %11
  %19 = icmp ult i32 %1, 1094697203
  %20 = and i1 %19, %8
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = and i32 %2, 528
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = and i32 %2, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %33

27:                                               ; preds = %18
  %28 = icmp ult i32 %1, 1095745776
  %29 = and i1 %28, %8
  %30 = and i32 %2, 512
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %24, %21, %14, %7, %0
  %34 = phi ptr [ @erratum_a15_798181_broadcast, %0 ], [ @erratum_a15_798181_broadcast, %7 ], [ %17, %14 ], [ @erratum_a15_798181_broadcast, %21 ], [ @erratum_a15_798181_partial, %24 ], [ @erratum_a15_798181_partial, %27 ]
  store ptr %34, ptr @erratum_a15_798181_handler, align 4
  br label %35

35:                                               ; preds = %33, %27, %24
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @erratum_a15_798181_broadcast() #2 {
  tail call void asm sideeffect "mcr p15, 0, $0, c8, c3, 1", "r"(i32 0) #8, !srcloc !10
  tail call void asm sideeffect "dsb ish", "~{memory}"() #8, !srcloc !11
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @erratum_a15_798181_partial() #2 {
  tail call void asm sideeffect "mcr p15, 0, $0, c8, c3, 1", "r"(i32 0) #8, !srcloc !12
  tail call void asm sideeffect "dsb ish", "~{memory}"() #8, !srcloc !13
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_tlb_all() local_unnamed_addr #2 {
  %1 = load i32, ptr @smp_on_up, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 7", "=r,~{memory}"() #8, !srcloc !14
  %5 = and i32 %4, 57344
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @ipi_flush_tlb_all, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #8
  br label %11

8:                                                ; preds = %3, %0
  %9 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  %10 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %10, i32 4608) #8, !srcloc !16
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c3, 0", "r,r,Ir,~{cc}"(i32 0, i32 %9, i32 2097152) #8, !srcloc !17
  tail call void asm sideeffect "dsb ish", "~{memory}"() #8, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !19
  br label %11

11:                                               ; preds = %8, %7
  %12 = load ptr, ptr @erratum_a15_798181_handler, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !20

14:                                               ; preds = %11
  %15 = tail call zeroext i1 %12() #8
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void @smp_call_function(ptr noundef nonnull @ipi_flush_tlb_a15_erratum, ptr noundef null, i32 noundef 1) #8
  br label %17

17:                                               ; preds = %16, %14, %11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipi_flush_tlb_all(ptr nocapture noundef readnone %0) #3 {
  %2 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #8, !srcloc !21
  %3 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %3, i32 4608) #8, !srcloc !16
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %2, i32 2097152) #8, !srcloc !22
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #8, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_tlb_mm(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.cpumask, align 4
  %3 = load i32, ptr @smp_on_up, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 7", "=r,~{memory}"() #8, !srcloc !14
  %7 = and i32 %6, 57344
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 1
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @ipi_flush_tlb_mm, ptr noundef %0, i1 noundef zeroext true, ptr noundef %10) #8
  br label %18

11:                                               ; preds = %5, %1
  %12 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !25
  %13 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 42
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 255
  %17 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 2", "r,r,Ir,~{cc}"(i32 %16, i32 %17, i32 65536) #8, !srcloc !26
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c3, 0", "r,r,Ir,~{cc}"(i32 0, i32 %12, i32 4194304) #8, !srcloc !27
  tail call void asm sideeffect "dsb ish", "~{memory}"() #8, !srcloc !28
  br label %18

18:                                               ; preds = %11, %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4
  %19 = load ptr, ptr @erratum_a15_798181_handler, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21, !prof !20

21:                                               ; preds = %18
  %22 = tail call zeroext i1 %19() #8
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  %24 = tail call ptr @llvm.thread.pointer() #8
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  call void @a15_erratum_get_cpumask(i32 noundef %26, ptr noundef %0, ptr noundef nonnull %2) #8
  call void @smp_call_function_many(ptr noundef nonnull %2, ptr noundef nonnull @ipi_flush_tlb_a15_erratum, ptr noundef null, i1 noundef zeroext true) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !30
  br label %27

27:                                               ; preds = %23, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipi_flush_tlb_mm(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 42
  %3 = load i64, ptr %2, align 8
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 255
  %6 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #8, !srcloc !31
  %7 = load i64, ptr %2, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 255
  %10 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 2", "r,r,Ir,~{cc}"(i32 %9, i32 %10, i32 65536) #8, !srcloc !26
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 2", "r,r,Ir,~{cc}"(i32 %5, i32 %6, i32 4194304) #8, !srcloc !32
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #8, !srcloc !33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_tlb_page(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.cpumask, align 4
  %4 = alloca %struct.tlb_args, align 4
  %5 = load i32, ptr @smp_on_up, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 7", "=r,~{memory}"() #8, !srcloc !14
  %9 = and i32 %8, 57344
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %12 = getelementptr inbounds i8, ptr %4, i32 8
  store i32 0, ptr %12, align 4, !annotation !34
  store ptr %0, ptr %4, align 4
  %13 = getelementptr inbounds %struct.tlb_args, ptr %4, i32 0, i32 1
  store i32 %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mm_struct, ptr %15, i32 0, i32 1
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @ipi_flush_tlb_page, ptr noundef nonnull %4, i1 noundef zeroext true, ptr noundef %16) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  br label %28

17:                                               ; preds = %7, %2
  %18 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %19 = and i32 %1, -4096
  %20 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !35
  %21 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %22 = load ptr, ptr %20, align 4
  %23 = getelementptr inbounds %struct.anon, ptr %22, i32 0, i32 42
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = and i32 %25, 255
  %27 = or i32 %26, %19
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %27, i32 %21, i32 16) #8, !srcloc !36
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c3, 3", "r,r,Ir,~{cc}"(i32 %19, i32 %18, i32 1048576) #8, !srcloc !37
  tail call void asm sideeffect "dsb ish", "~{memory}"() #8, !srcloc !38
  br label %28

28:                                               ; preds = %17, %11
  %29 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  %31 = load ptr, ptr @erratum_a15_798181_handler, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33, !prof !20

33:                                               ; preds = %28
  %34 = call zeroext i1 %31() #8
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  %36 = tail call ptr @llvm.thread.pointer() #8
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  call void @a15_erratum_get_cpumask(i32 noundef %38, ptr noundef %30, ptr noundef nonnull %3) #8
  call void @smp_call_function_many(ptr noundef nonnull %3, ptr noundef nonnull @ipi_flush_tlb_a15_erratum, ptr noundef null, i1 noundef zeroext true) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !30
  br label %39

39:                                               ; preds = %35, %33, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipi_flush_tlb_page(ptr nocapture noundef readonly %0) #3 {
  %2 = tail call ptr @llvm.thread.pointer() #8
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %3) #9, !srcloc !39
  %5 = and i32 %4, -13
  %6 = or i32 %5, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #8, !srcloc !40
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !41
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.tlb_args, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %11 = and i32 %9, -4096
  %12 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 42
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = and i32 %16, 255
  %18 = or i32 %17, %11
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #8, !srcloc !42
  %19 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr inbounds %struct.anon, ptr %20, i32 0, i32 42
  %22 = load i64, ptr %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 255
  %25 = or i32 %24, %11
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %25, i32 %19, i32 16) #8, !srcloc !36
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %18, i32 %10, i32 1048576) #8, !srcloc !43
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #8, !srcloc !44
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #8, !srcloc !40
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_tlb_kernel_page(i32 noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.tlb_args, align 4
  %3 = load i32, ptr @smp_on_up, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 7", "=r,~{memory}"() #8, !srcloc !14
  %7 = and i32 %6, 57344
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !34
  %10 = getelementptr inbounds %struct.tlb_args, ptr %2, i32 0, i32 1
  store i32 %0, ptr %10, align 4
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @ipi_flush_tlb_kernel_page, ptr noundef nonnull %2, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  br label %15

11:                                               ; preds = %5, %1
  %12 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %13 = and i32 %0, -4096
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !45
  %14 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %13, i32 %14, i32 16) #8, !srcloc !46
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c3, 1", "r,r,Ir,~{cc}"(i32 %13, i32 %12, i32 1048576) #8, !srcloc !47
  tail call void asm sideeffect "dsb ish", "~{memory}"() #8, !srcloc !48
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !49
  br label %15

15:                                               ; preds = %11, %9
  %16 = load ptr, ptr @erratum_a15_798181_handler, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18, !prof !20

18:                                               ; preds = %15
  %19 = call zeroext i1 %16() #8
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  call void @smp_call_function(ptr noundef nonnull @ipi_flush_tlb_a15_erratum, ptr noundef null, i32 noundef 1) #8
  br label %21

21:                                               ; preds = %20, %18, %15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipi_flush_tlb_kernel_page(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.tlb_args, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %5 = and i32 %3, -4096
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #8, !srcloc !50
  %6 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %5, i32 %6, i32 16) #8, !srcloc !46
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %5, i32 %4, i32 1048576) #8, !srcloc !51
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #8, !srcloc !52
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !53
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_tlb_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.cpumask, align 4
  %5 = alloca %struct.tlb_args, align 4
  %6 = load i32, ptr @smp_on_up, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 7", "=r,~{memory}"() #8, !srcloc !14
  %10 = and i32 %9, 57344
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  store ptr %0, ptr %5, align 4
  %13 = getelementptr inbounds %struct.tlb_args, ptr %5, i32 0, i32 1
  store i32 %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.tlb_args, ptr %5, i32 0, i32 2
  store i32 %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mm_struct, ptr %16, i32 0, i32 1
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @ipi_flush_tlb_range, ptr noundef nonnull %5, i1 noundef zeroext true, ptr noundef %17) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  br label %20

18:                                               ; preds = %8, %3
  %19 = load ptr, ptr @cpu_tlb, align 4
  tail call void %19(i32 noundef %1, i32 noundef %2, ptr noundef %0) #8
  br label %20

20:                                               ; preds = %18, %12
  %21 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4
  %23 = load ptr, ptr @erratum_a15_798181_handler, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25, !prof !20

25:                                               ; preds = %20
  %26 = call zeroext i1 %23() #8
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  %28 = tail call ptr @llvm.thread.pointer() #8
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  call void @a15_erratum_get_cpumask(i32 noundef %30, ptr noundef %22, ptr noundef nonnull %4) #8
  call void @smp_call_function_many(ptr noundef nonnull %4, ptr noundef nonnull @ipi_flush_tlb_a15_erratum, ptr noundef null, i1 noundef zeroext true) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !30
  br label %31

31:                                               ; preds = %27, %25, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipi_flush_tlb_range(ptr nocapture noundef readonly %0) #3 {
  %2 = tail call ptr @llvm.thread.pointer() #8
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %3) #9, !srcloc !39
  %5 = and i32 %4, -13
  %6 = or i32 %5, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #8, !srcloc !40
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !41
  %7 = load ptr, ptr @cpu_tlb, align 4
  %8 = getelementptr inbounds %struct.tlb_args, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tlb_args, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %0, align 4
  tail call void %7(i32 noundef %9, i32 noundef %11, ptr noundef %12) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #8, !srcloc !40
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_tlb_kernel_range(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.tlb_args, align 4
  %4 = load i32, ptr @smp_on_up, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 7", "=r,~{memory}"() #8, !srcloc !14
  %8 = and i32 %7, 57344
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !34
  %11 = getelementptr inbounds %struct.tlb_args, ptr %3, i32 0, i32 1
  store i32 %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tlb_args, ptr %3, i32 0, i32 2
  store i32 %1, ptr %12, align 4
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @ipi_flush_tlb_kernel_range, ptr noundef nonnull %3, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  br label %15

13:                                               ; preds = %6, %2
  %14 = load ptr, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 1), align 4
  tail call void %14(i32 noundef %0, i32 noundef %1) #8
  br label %15

15:                                               ; preds = %13, %10
  %16 = load ptr, ptr @erratum_a15_798181_handler, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18, !prof !20

18:                                               ; preds = %15
  %19 = call zeroext i1 %16() #8
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  call void @smp_call_function(ptr noundef nonnull @ipi_flush_tlb_a15_erratum, ptr noundef null, i32 noundef 1) #8
  br label %21

21:                                               ; preds = %20, %18, %15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipi_flush_tlb_kernel_range(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 1), align 4
  %3 = getelementptr inbounds %struct.tlb_args, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tlb_args, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  tail call void %2(i32 noundef %4, i32 noundef %6) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_bp_all() local_unnamed_addr #2 {
  %1 = load i32, ptr @smp_on_up, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 7", "=r,~{memory}"() #8, !srcloc !14
  %5 = and i32 %4, 57344
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @ipi_flush_bp_all, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #8
  br label %17

8:                                                ; preds = %3, %0
  %9 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %10 = and i32 %9, 524288
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #8, !srcloc !54
  br label %13

13:                                               ; preds = %12, %8
  %14 = and i32 %9, 8388608
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c1, 6", "r"(i32 0) #8, !srcloc !55
  br label %17

17:                                               ; preds = %16, %13, %7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipi_flush_bp_all(ptr nocapture noundef readnone %0) #3 {
  %2 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %3 = and i32 %2, 524288
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #8, !srcloc !54
  br label %6

6:                                                ; preds = %5, %1
  %7 = and i32 %2, 8388608
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #8, !srcloc !56
  br label %10

10:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_call_function(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipi_flush_tlb_a15_erratum(ptr nocapture noundef readnone %0) #2 {
  tail call void asm sideeffect "dmb ", "~{memory}"() #8, !srcloc !57
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @a15_erratum_get_cpumask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_call_function_many(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

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
!8 = !{i64 2151194161}
!9 = !{i64 2152493705}
!10 = !{i64 1852}
!11 = !{i64 2152493622}
!12 = !{i64 1727}
!13 = !{i64 2152493563}
!14 = !{i64 2151198639}
!15 = !{i64 2151229184}
!16 = !{i64 2151218112, i64 2151218125}
!17 = !{i64 2151229456, i64 2151229469}
!18 = !{i64 2151232217}
!19 = !{i64 2151232276}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2151224545}
!22 = !{i64 2151224817, i64 2151224830}
!23 = !{i64 2151227578}
!24 = !{i64 2151227637}
!25 = !{i64 2151249507}
!26 = !{i64 2151238556, i64 2151238569}
!27 = !{i64 2151249776, i64 2151249789}
!28 = !{i64 2151252531}
!29 = !{i64 2152494249}
!30 = !{i64 2152494425}
!31 = !{i64 2151244924}
!32 = !{i64 2151245196, i64 2151245209}
!33 = !{i64 2151247957}
!34 = !{!"auto-init"}
!35 = !{i64 2151272572}
!36 = !{i64 2151261463, i64 2151261476}
!37 = !{i64 2151272897, i64 2151272910}
!38 = !{i64 2151275704}
!39 = !{i64 2405478}
!40 = !{i64 2405675}
!41 = !{i64 2149890954}
!42 = !{i64 2151267864}
!43 = !{i64 2151268137, i64 2151268150}
!44 = !{i64 2151270900}
!45 = !{i64 2151294744}
!46 = !{i64 2151283763, i64 2151283776}
!47 = !{i64 2151295017, i64 2151295030}
!48 = !{i64 2151297780}
!49 = !{i64 2151297839}
!50 = !{i64 2151290072}
!51 = !{i64 2151290345, i64 2151290358}
!52 = !{i64 2151293108}
!53 = !{i64 2151293167}
!54 = !{i64 3728906}
!55 = !{i64 3729356}
!56 = !{i64 3729133}
!57 = !{i64 2152493889}
