; ModuleID = '/llk/IR/drivers/irqchip/irq-gic-v4.c_pt.bc'
source_filename = "../drivers/irqchip/irq-gic-v4.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.30, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.11 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.30 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.its_vm = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, [16 x i32] }
%struct.its_vpe = type { ptr, ptr, %struct.atomic_t, i32, i32, i8, i8, %union.anon.44, %struct.raw_spinlock, i16, i16, i8 }
%union.anon.44 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, [16 x %struct.anon.47], %struct.atomic_t }
%struct.anon.47 = type { i8, i8, i8 }
%struct.its_cmd_info = type { i32, %union.anon.48 }
%union.anon.48 = type { ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.anon.49 = type { i8, i8 }
%struct.anon.50 = type { i8, i8 }

@.str = private unnamed_addr constant [10 x i8] c"GICv4-vpe\00", align 1
@gic_domain = internal unnamed_addr global ptr null, align 4
@vpe_domain_ops = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"\016ITS: Enabling GICv4 support\0A\00", align 1
@sgi_domain_ops = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"\013ITS: No GICv4 VPE domain allocated\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @gic_cpuif_has_vsgi() local_unnamed_addr #0 {
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @its_alloc_vcpu_irqs(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @llvm.thread.pointer() #6
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 52
  %4 = load i32, ptr %3, align 8
  %5 = tail call ptr @__irq_domain_alloc_fwnode(i32 noundef 2, i32 noundef %4, ptr noundef nonnull @.str, ptr noundef null) #6
  store ptr %5, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %55, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @gic_domain, align 4
  %9 = getelementptr inbounds %struct.its_vm, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr @vpe_domain_ops, align 4
  %12 = tail call ptr @irq_domain_create_hierarchy(ptr noundef %8, i32 noundef 0, i32 noundef %10, ptr noundef nonnull %5, ptr noundef %11, ptr noundef %0) #6
  %13 = getelementptr inbounds %struct.its_vm, ptr %0, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %55, label %15

15:                                               ; preds = %7
  %16 = load i32, ptr %9, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.its_vm, ptr %0, i32 0, i32 3
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i32 [ 0, %18 ], [ %30, %20 ]
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr ptr, ptr %22, i32 %21
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.its_vpe, ptr %24, i32 0, i32 1
  store ptr %0, ptr %25, align 4
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr ptr, ptr %26, i32 %21
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.its_vpe, ptr %28, i32 0, i32 7, i32 0, i32 1
  store i8 1, ptr %29, align 4
  %30 = add nuw nsw i32 %21, 1
  %31 = load i32, ptr %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %20, label %33

33:                                               ; preds = %20
  %34 = load ptr, ptr %13, align 4
  br label %35

35:                                               ; preds = %33, %15
  %36 = phi ptr [ %12, %15 ], [ %34, %33 ]
  %37 = phi i32 [ %16, %15 ], [ %31, %33 ]
  %38 = tail call i32 @__irq_domain_alloc_irqs(ptr noundef %36, i32 noundef -1, i32 noundef %37, i32 noundef -1, ptr noundef %0, i1 noundef zeroext false, ptr noundef null) #6
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %55, label %40

40:                                               ; preds = %35
  %41 = load i32, ptr %9, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.its_vm, ptr %0, i32 0, i32 3
  br label %45

45:                                               ; preds = %45, %43
  %46 = phi i32 [ 0, %43 ], [ %52, %45 ]
  %47 = add i32 %46, %38
  %48 = load ptr, ptr %44, align 4
  %49 = getelementptr ptr, ptr %48, i32 %46
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.its_vpe, ptr %50, i32 0, i32 3
  store i32 %47, ptr %51, align 4
  %52 = add nuw nsw i32 %46, 1
  %53 = load i32, ptr %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %45, label %64

55:                                               ; preds = %35, %7, %1
  %56 = getelementptr inbounds %struct.its_vm, ptr %0, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @irq_domain_remove(ptr noundef nonnull %57) #6
  br label %60

60:                                               ; preds = %59, %55
  %61 = load ptr, ptr %0, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  tail call void @irq_domain_free_fwnode(ptr noundef nonnull %61) #6
  br label %64

64:                                               ; preds = %63, %60, %45, %40
  %65 = phi i32 [ -12, %63 ], [ -12, %60 ], [ 0, %40 ], [ 0, %45 ]
  ret i32 %65
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_fwnode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @its_free_vcpu_irqs(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.its_vm, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.its_vpe, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.its_vm, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  tail call void @irq_domain_free_irqs(i32 noundef %6, i32 noundef %8) #6
  %9 = getelementptr inbounds %struct.its_vm, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @irq_domain_remove(ptr noundef %10) #6
  %11 = load ptr, ptr %0, align 4
  tail call void @irq_domain_free_fwnode(ptr noundef %11) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @its_make_vpe_non_resident(ptr nocapture noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = alloca %struct.its_cmd_info, align 8
  %4 = getelementptr inbounds %struct.its_vpe, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @irq_to_desc(i32 noundef %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 5, ptr %3, align 8
  %7 = load ptr, ptr @sgi_domain_ops, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = zext i1 %1 to i8
  %11 = getelementptr inbounds %struct.its_cmd_info, ptr %3, i32 0, i32 1
  store i8 %10, ptr %11, align 4
  br label %25

12:                                               ; preds = %2
  br i1 %1, label %13, label %25

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 65536
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %19, %13
  %20 = load i32, ptr %4, align 4
  tail call void @enable_irq(i32 noundef %20) #6
  %21 = load ptr, ptr %14, align 4
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 65536
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %19

25:                                               ; preds = %19, %13, %12, %9
  %26 = load i32, ptr %4, align 4
  %27 = call i32 @irq_set_vcpu_affinity(i32 noundef %26, ptr noundef nonnull %3) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.its_vpe, ptr %0, i32 0, i32 5
  store i8 0, ptr %30, align 4
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr inbounds %struct.its_vpe, ptr %0, i32 0, i32 6
  store i8 0, ptr %32, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @its_make_vpe_resident(ptr nocapture noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = alloca %struct.its_cmd_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 4, ptr %4, align 8
  %5 = load ptr, ptr @sgi_domain_ops, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = zext i1 %2 to i8
  %9 = zext i1 %1 to i8
  %10 = getelementptr inbounds %struct.its_cmd_info, ptr %4, i32 0, i32 1
  store i8 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.anon.49, ptr %10, i32 0, i32 1
  store i8 %8, ptr %11, align 1
  br label %15

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.its_vpe, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  tail call void @disable_irq_nosync(i32 noundef %14) #6
  br label %15

15:                                               ; preds = %12, %7
  %16 = getelementptr inbounds %struct.its_vpe, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = call i32 @irq_set_vcpu_affinity(i32 noundef %17, ptr noundef nonnull %4) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.its_vpe, ptr %0, i32 0, i32 5
  store i8 1, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @its_commit_vpe(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.its_cmd_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  store i64 6, ptr %2, align 8
  %3 = getelementptr inbounds %struct.its_vpe, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = call i32 @irq_set_vcpu_affinity(i32 noundef %4, ptr noundef nonnull %2) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.its_vpe, ptr %0, i32 0, i32 6
  store i8 1, ptr %8, align 1
  br label %9

9:                                                ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @its_invall_vpe(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = alloca %struct.its_cmd_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  store i64 7, ptr %2, align 8
  %3 = getelementptr inbounds %struct.its_vpe, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = call i32 @irq_set_vcpu_affinity(i32 noundef %4, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @its_map_vlpi(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.its_cmd_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = getelementptr inbounds %struct.its_cmd_info, ptr %3, i32 0, i32 1
  store ptr %1, ptr %4, align 4
  tail call void @irq_modify_status(i32 noundef %0, i32 noundef 0, i32 noundef 524288) #6
  %5 = call i32 @irq_set_vcpu_affinity(i32 noundef %0, ptr noundef nonnull %3) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  call void @irq_modify_status(i32 noundef %0, i32 noundef 524288, i32 noundef 0) #6
  br label %8

8:                                                ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_vcpu_affinity(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @its_get_vlpi(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.its_cmd_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 1, ptr %3, align 8, !annotation !8
  %4 = getelementptr inbounds %struct.its_cmd_info, ptr %3, i32 0, i32 1
  store ptr %1, ptr %4, align 4
  %5 = call i32 @irq_set_vcpu_affinity(i32 noundef %0, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @its_unmap_vlpi(i32 noundef %0) local_unnamed_addr #1 {
  tail call void @irq_modify_status(i32 noundef %0, i32 noundef 524288, i32 noundef 0) #6
  %2 = tail call i32 @irq_set_vcpu_affinity(i32 noundef %0, ptr noundef null) #6
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @its_prop_update_vlpi(i32 noundef %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = alloca %struct.its_cmd_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = select i1 %2, i32 3, i32 2
  store i32 %5, ptr %4, align 8
  %6 = getelementptr inbounds %struct.its_cmd_info, ptr %4, i32 0, i32 1
  store i8 %1, ptr %6, align 4
  %7 = call i32 @irq_set_vcpu_affinity(i32 noundef %0, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @its_prop_update_vsgi(i32 noundef %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = alloca %struct.its_cmd_info, align 8
  %5 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 8, ptr %4, align 8, !annotation !8
  %6 = getelementptr inbounds %struct.its_cmd_info, ptr %4, i32 0, i32 1
  store i8 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.anon.50, ptr %6, i32 0, i32 1
  store i8 %5, ptr %7, align 1
  %8 = call i32 @irq_set_vcpu_affinity(i32 noundef %0, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @its_init_v4(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #7
  store ptr %0, ptr @gic_domain, align 4
  store ptr %1, ptr @vpe_domain_ops, align 4
  store ptr %2, ptr @sgi_domain_ops, align 4
  br label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #7
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ 0, %5 ], [ -19, %7 ]
  ret i32 %10
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_alloc_fwnode(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
