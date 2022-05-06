; ModuleID = '/llk/IR/arch/arm/mm/pgd.c_pt.bc'
source_filename = "../arch/arm/mm/pgd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.page = type { i32, %union.anon.3, %union.anon.58, %struct.atomic_t }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.42, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13 }
%struct.llist_node = type { ptr }
%union.anon.13 = type { i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.14 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.42 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@init_mm = external dso_local local_unnamed_addr global %struct.mm_struct, align 8
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pgd_alloc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 2) #5
  %3 = inttoptr i32 %2 to ptr
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %62, label %5

5:                                                ; preds = %1
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12224) %3, i8 0, i32 12224, i1 false)
  %6 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %7 = getelementptr [2 x i32], ptr %3, i32 1528
  %8 = getelementptr [2 x i32], ptr %6, i32 1528
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(4160) %7, ptr noundef align 4 dereferenceable(4160) %8, i32 4160, i1 false)
  %9 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 7), align 4
  tail call void %9(ptr noundef nonnull %3, i32 noundef 16384) #5
  %10 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #6, !srcloc !8
  %11 = and i32 %10, 8192
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %62

13:                                               ; preds = %5
  %14 = load i32, ptr %3, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21, !prof !9

16:                                               ; preds = %13
  %17 = tail call i32 @__pte_alloc(ptr noundef %0, ptr noundef nonnull %3) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %61

19:                                               ; preds = %16
  %20 = load i32, ptr %3, align 4
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi i32 [ %20, %19 ], [ %14, %13 ]
  %23 = load ptr, ptr @mem_map, align 4
  %24 = lshr i32 %22, 12
  %25 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %26 = sub i32 %24, %25
  %27 = getelementptr %struct.page, ptr %23, i32 %26
  %28 = load i32, ptr @pgprot_kernel, align 4
  %29 = or i32 %28, 512
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !10
  %30 = tail call ptr @llvm.thread.pointer() #5
  %31 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 149
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  %34 = tail call ptr @__kmap_local_page_prot(ptr noundef %27, i32 noundef %29) #5
  %35 = icmp eq ptr %34, null
  br i1 %35, label %61, label %36

36:                                               ; preds = %21
  %37 = load i32, ptr %3, align 4
  %38 = and i32 %37, -481
  %39 = or i32 %38, 96
  store i32 %39, ptr %3, align 4
  %40 = load ptr, ptr @mem_map, align 4
  %41 = load i32, ptr %6, align 4
  %42 = lshr i32 %41, 12
  %43 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %44 = sub i32 %42, %43
  %45 = getelementptr %struct.page, ptr %40, i32 %44
  %46 = load i32, ptr @pgprot_kernel, align 4
  %47 = or i32 %46, 512
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !10
  %48 = load i32, ptr %31, align 8
  %49 = add i32 %48, 1
  store i32 %49, ptr %31, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  %50 = tail call ptr @__kmap_local_page_prot(ptr noundef %45, i32 noundef %47) #5
  %51 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  %52 = load i32, ptr %50, align 4
  tail call void %51(ptr noundef nonnull %34, i32 noundef %52, i32 noundef 0) #5
  %53 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  %54 = getelementptr i32, ptr %34, i32 1
  %55 = getelementptr i32, ptr %50, i32 1
  %56 = load i32, ptr %55, align 4
  tail call void %53(ptr noundef %54, i32 noundef %56, i32 noundef 0) #5
  tail call void @kunmap_local_indexed(ptr noundef %50) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %57 = load i32, ptr %31, align 8
  %58 = add i32 %57, -1
  store i32 %58, ptr %31, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  tail call void @kunmap_local_indexed(ptr noundef nonnull %34) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %59 = load i32, ptr %31, align 8
  %60 = add i32 %59, -1
  store i32 %60, ptr %31, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  br label %62

61:                                               ; preds = %21, %16
  tail call void @free_pages(i32 noundef %2, i32 noundef 2) #5
  br label %62

62:                                               ; preds = %61, %36, %5, %1
  %63 = phi ptr [ %3, %36 ], [ %3, %5 ], [ null, %1 ], [ null, %61 ]
  ret ptr %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pte_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pgd_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = and i32 %5, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !14

10:                                               ; preds = %7
  tail call void @pmd_clear_bad(ptr noundef nonnull %1) #5
  br label %24

11:                                               ; preds = %7
  %12 = load ptr, ptr @mem_map, align 4
  %13 = lshr i32 %5, 12
  %14 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %15 = sub i32 %13, %14
  %16 = getelementptr %struct.page, ptr %12, i32 %15
  store i32 0, ptr %1, align 4
  %17 = getelementptr i32, ptr %1, i32 1
  store i32 0, ptr %17, align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr nonnull %1, i32 %18, i32 1073741824) #5, !srcloc !15
  %19 = getelementptr %struct.page, ptr %12, i32 %15, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, 512
  store i32 %21, ptr %19, align 4
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 38, i32 noundef -1) #5
  tail call void @__free_pages(ptr noundef %16, i32 noundef 0) #5
  %22 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #5, !srcloc !16
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 2048, ptr elementtype(i32) %22) #5, !srcloc !17
  br label %24

24:                                               ; preds = %11, %10, %4
  %25 = ptrtoint ptr %1 to i32
  tail call void @free_pages(i32 noundef %25, i32 noundef 2) #5
  br label %26

26:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmd_clear_bad(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

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
!8 = !{i64 4921327}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152374792}
!11 = !{i64 2151506782}
!12 = !{i64 2151506989}
!13 = !{i64 2152377417}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2150898695, i64 2150898708}
!16 = !{i64 843047, i64 2148333018, i64 2148333044, i64 2148333091, i64 2148333113, i64 2148333141, i64 2148333161}
!17 = !{i64 2148346790, i64 2148346816, i64 2148346845, i64 2148346879, i64 2148346910, i64 2148346933}
