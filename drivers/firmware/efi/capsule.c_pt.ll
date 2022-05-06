; ModuleID = '/llk/IR/drivers/firmware/efi/capsule.c_pt.bc'
source_filename = "../drivers/firmware/efi/capsule.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efi_capsule_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22efi_capsule_supported\22\09\09\09\09\09"
module asm "__kstrtabns_efi_capsule_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efi_capsule_update:\09\09\09\09\09"
module asm "\09.asciz \09\22efi_capsule_update\22\09\09\09\09\09"
module asm "__kstrtabns_efi_capsule_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.efi = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i32 }
%struct.efi_memory_map = type { i32, ptr, ptr, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.efi_capsule_header_t = type { %struct.guid_t, i32, i32, i32 }
%struct.guid_t = type { [16 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.45, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.16 }
%struct.llist_node = type { ptr }
%union.anon.16 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.45 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.efi_capsule_block_desc_t = type { i64, i64 }

@capsule_pending = internal unnamed_addr global i1 false, align 1
@efi_reset_type = internal unnamed_addr global i32 -1, align 4
@efi = external dso_local local_unnamed_addr global %struct.efi, align 4
@__kstrtab_efi_capsule_supported = external dso_local constant [0 x i8], align 1
@__kstrtabns_efi_capsule_supported = external dso_local constant [0 x i8], align 1
@__ksymtab_efi_capsule_supported = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efi_capsule_supported to i32), ptr @__kstrtab_efi_capsule_supported, ptr @__kstrtabns_efi_capsule_supported }, section "___ksymtab_gpl+efi_capsule_supported", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@capsule_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @capsule_mutex, i64 12), ptr getelementptr (i8, ptr @capsule_mutex, i64 12) } }, align 4
@__kstrtab_efi_capsule_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_efi_capsule_update = external dso_local constant [0 x i8], align 1
@__ksymtab_efi_capsule_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efi_capsule_update to i32), ptr @__kstrtab_efi_capsule_update, ptr @__kstrtabns_efi_capsule_update }, section "___ksymtab_gpl+efi_capsule_update", align 4
@__initcall__kmod_capsule__239_315_capsule_reboot_register1 = internal global ptr @capsule_reboot_register, section ".initcall1.init", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@.str = private unnamed_addr constant [48 x i8] c"\013efi: Conflicting capsule reset type %d (%d).\0A\00", align 1
@stop_capsules = internal unnamed_addr global i1 false, align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"\014efi: Capsule update raced with reboot, aborting.\0A\00", align 1
@capsule_reboot_nb = internal global %struct.notifier_block { ptr @capsule_reboot_notify, ptr null, i32 0 }, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_capsule__239_315_capsule_reboot_register1, ptr @__ksymtab_efi_capsule_supported, ptr @__ksymtab_efi_capsule_update], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @efi_capsule_pending(ptr noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load i1, ptr @capsule_pending, align 1
  %3 = icmp ne ptr %0, null
  %4 = and i1 %3, %2
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i32, ptr @efi_reset_type, align 4
  store i32 %6, ptr %0, align 4
  br label %7

7:                                                ; preds = %5, %1
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efi_capsule_supported([4 x i32] %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = alloca %struct.efi_capsule_header_t, align 4
  %6 = alloca [1 x ptr], align 4
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store ptr %5, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  store i64 0, ptr %7, align 8, !annotation !8
  %8 = and i32 %1, -196609
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %4
  %11 = extractvalue [4 x i32] %0, 3
  %12 = extractvalue [4 x i32] %0, 2
  %13 = extractvalue [4 x i32] %0, 1
  %14 = extractvalue [4 x i32] %0, 0
  %15 = getelementptr inbounds %struct.efi_capsule_header_t, ptr %5, i32 0, i32 3
  store i32 28, ptr %15, align 4
  %16 = getelementptr inbounds %struct.efi_capsule_header_t, ptr %5, i32 0, i32 1
  store i32 28, ptr %16, align 4
  store i32 %14, ptr %5, align 4
  %17 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 %13, ptr %17, align 4
  %18 = getelementptr inbounds i8, ptr %5, i32 8
  store i32 %12, ptr %18, align 4
  %19 = getelementptr inbounds i8, ptr %5, i32 12
  store i32 %11, ptr %19, align 4
  %20 = getelementptr inbounds %struct.efi_capsule_header_t, ptr %5, i32 0, i32 2
  store i32 %1, ptr %20, align 4
  %21 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 22), align 4
  %22 = call i32 %21(ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull %7, ptr noundef %3) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %10
  %25 = call i32 @efi_status_to_err(i32 noundef %22) #9
  br label %31

26:                                               ; preds = %10
  %27 = zext i32 %2 to i64
  %28 = load i64, ptr %7, align 8
  %29 = icmp ult i64 %28, %27
  %30 = select i1 %29, i32 -28, i32 0
  br label %31

31:                                               ; preds = %26, %24, %4
  %32 = phi i32 [ %25, %24 ], [ -22, %4 ], [ %30, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #9
  ret i32 %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efi_status_to_err(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efi_capsule_update(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca ptr, align 4
  %4 = alloca %struct.efi_capsule_header_t, align 4
  %5 = alloca [1 x ptr], align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.efi_capsule_header_t, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %0, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 12
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.efi_capsule_header_t, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr %4, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store i64 0, ptr %6, align 8, !annotation !8
  %19 = and i32 %18, -196609
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.efi_capsule_header_t, ptr %4, i32 0, i32 3
  store i32 28, ptr %22, align 4
  %23 = getelementptr inbounds %struct.efi_capsule_header_t, ptr %4, i32 0, i32 1
  store i32 28, ptr %23, align 4
  store i32 %10, ptr %4, align 4
  %24 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 %12, ptr %24, align 4
  %25 = getelementptr inbounds i8, ptr %4, i32 8
  store i32 %14, ptr %25, align 4
  %26 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 %16, ptr %26, align 4
  %27 = getelementptr inbounds %struct.efi_capsule_header_t, ptr %4, i32 0, i32 2
  store i32 %18, ptr %27, align 4
  %28 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 22), align 4
  %29 = call i32 %28(ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %21
  %32 = zext i32 %9 to i64
  %33 = load i64, ptr %6, align 8
  %34 = icmp ult i64 %33, %32
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #9
  br label %41

36:                                               ; preds = %31, %2
  %37 = phi i32 [ -22, %2 ], [ -28, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #9
  br label %174

38:                                               ; preds = %21
  %39 = call i32 @efi_status_to_err(i32 noundef %29) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %174

41:                                               ; preds = %38, %35
  %42 = add i32 %9, 4095
  %43 = lshr i32 %42, 12
  %44 = add nuw nsw i32 %43, 254
  %45 = udiv i32 %44, 255
  %46 = shl nuw nsw i32 %45, 2
  %47 = call noalias align 64 ptr @__kmalloc(i32 noundef %46, i32 noundef 3520) #10
  %48 = icmp eq ptr %47, null
  br i1 %48, label %174, label %49

49:                                               ; preds = %41
  %50 = icmp ult i32 %42, 4096
  br i1 %50, label %129, label %51

51:                                               ; preds = %49
  %52 = call i32 @llvm.umax.i32(i32 %45, i32 1)
  br label %59

53:                                               ; preds = %59
  %54 = add nuw nsw i32 %60, 1
  %55 = icmp eq i32 %54, %52
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  br i1 %50, label %129, label %57

57:                                               ; preds = %56
  %58 = call i32 @llvm.umax.i32(i32 %45, i32 1)
  br label %64

59:                                               ; preds = %53, %51
  %60 = phi i32 [ %54, %53 ], [ 0, %51 ]
  %61 = call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %62 = getelementptr ptr, ptr %47, i32 %60
  store ptr %61, ptr %62, align 4
  %63 = icmp eq ptr %61, null
  br i1 %63, label %159, label %53

64:                                               ; preds = %122, %57
  %65 = phi ptr [ %106, %122 ], [ %1, %57 ]
  %66 = phi i32 [ %105, %122 ], [ %9, %57 ]
  %67 = phi i32 [ %108, %122 ], [ 0, %57 ]
  %68 = phi i32 [ %103, %122 ], [ %43, %57 ]
  %69 = getelementptr ptr, ptr %47, i32 %67
  %70 = load ptr, ptr %69, align 4
  %71 = load i32, ptr @pgprot_kernel, align 4
  %72 = or i32 %71, 512
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %73 = tail call ptr @llvm.thread.pointer() #9
  %74 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 149
  %75 = load i32, ptr %74, align 8
  %76 = add i32 %75, 1
  store i32 %76, ptr %74, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %77 = call ptr @__kmap_local_page_prot(ptr noundef %70, i32 noundef %72) #9
  %78 = icmp eq i32 %68, 0
  br i1 %78, label %102, label %79

79:                                               ; preds = %64
  %80 = add i32 %68, -1
  %81 = call i32 @llvm.umin.i32(i32 %80, i32 254)
  %82 = add nuw nsw i32 %81, 1
  br label %83

83:                                               ; preds = %83, %79
  %84 = phi ptr [ %94, %83 ], [ %65, %79 ]
  %85 = phi i32 [ %98, %83 ], [ %66, %79 ]
  %86 = phi i32 [ %100, %83 ], [ 0, %79 ]
  %87 = phi i32 [ %99, %83 ], [ %68, %79 ]
  %88 = load i32, ptr %84, align 4
  %89 = and i32 %88, 4095
  %90 = sub nuw nsw i32 4096, %89
  %91 = call i32 @llvm.umin.i32(i32 %85, i32 %90)
  %92 = zext i32 %91 to i64
  %93 = getelementptr %struct.efi_capsule_block_desc_t, ptr %77, i32 %86
  store i64 %92, ptr %93, align 8
  %94 = getelementptr i32, ptr %84, i32 1
  %95 = load i32, ptr %84, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr %struct.efi_capsule_block_desc_t, ptr %77, i32 %86, i32 1
  store i64 %96, ptr %97, align 8
  %98 = sub i32 %85, %91
  %99 = add i32 %87, -1
  %100 = add nuw nsw i32 %86, 1
  %101 = icmp eq i32 %86, %81
  br i1 %101, label %102, label %83

102:                                              ; preds = %83, %64
  %103 = phi i32 [ 0, %64 ], [ %99, %83 ]
  %104 = phi i32 [ 0, %64 ], [ %82, %83 ]
  %105 = phi i32 [ %66, %64 ], [ %98, %83 ]
  %106 = phi ptr [ %65, %64 ], [ %94, %83 ]
  %107 = getelementptr %struct.efi_capsule_block_desc_t, ptr %77, i32 %104
  store i64 0, ptr %107, align 8
  %108 = add nuw nsw i32 %67, 1
  %109 = icmp eq i32 %108, %45
  br i1 %109, label %122, label %110

110:                                              ; preds = %102
  %111 = getelementptr ptr, ptr %47, i32 %108
  %112 = load ptr, ptr %111, align 4
  %113 = load ptr, ptr @mem_map, align 4
  %114 = ptrtoint ptr %112 to i32
  %115 = ptrtoint ptr %113 to i32
  %116 = sub i32 %114, %115
  %117 = lshr exact i32 %116, 5
  %118 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %119 = add i32 %117, %118
  %120 = shl i32 %119, 12
  %121 = zext i32 %120 to i64
  br label %122

122:                                              ; preds = %110, %102
  %123 = phi i64 [ %121, %110 ], [ 0, %102 ]
  %124 = getelementptr %struct.efi_capsule_block_desc_t, ptr %77, i32 %104, i32 1
  store i64 %123, ptr %124, align 8
  %125 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  call void %125(ptr noundef %77, i32 noundef 4096) #9
  call void @kunmap_local_indexed(ptr noundef %77) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %126 = load i32, ptr %74, align 8
  %127 = add i32 %126, -1
  store i32 %127, ptr %74, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %128 = icmp eq i32 %108, %58
  br i1 %128, label %129, label %64

129:                                              ; preds = %122, %56, %49
  call void @mutex_lock(ptr noundef nonnull @capsule_mutex) #9
  %130 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store ptr %0, ptr %3, align 4
  %131 = load i32, ptr @efi_reset_type, align 4
  %132 = icmp slt i32 %131, 0
  %133 = icmp eq i32 %131, %130
  %134 = or i1 %132, %133
  br i1 %134, label %137, label %135

135:                                              ; preds = %129
  %136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %130, i32 noundef %131) #11
  br label %157

137:                                              ; preds = %129
  %138 = load i1, ptr @stop_capsules, align 1
  br i1 %138, label %139, label %141, !prof !13

139:                                              ; preds = %137
  %140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %157

141:                                              ; preds = %137
  %142 = load ptr, ptr %47, align 64
  %143 = load ptr, ptr @mem_map, align 4
  %144 = ptrtoint ptr %142 to i32
  %145 = ptrtoint ptr %143 to i32
  %146 = sub i32 %144, %145
  %147 = lshr exact i32 %146, 5
  %148 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %149 = add i32 %147, %148
  %150 = shl i32 %149, 12
  %151 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 21), align 4
  %152 = call i32 %151(ptr noundef nonnull %3, i32 noundef 1, i32 noundef %150) #9
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %141
  store i1 true, ptr @capsule_pending, align 1
  store i32 %130, ptr @efi_reset_type, align 4
  br label %155

155:                                              ; preds = %154, %141
  %156 = call i32 @efi_status_to_err(i32 noundef %152) #9
  br label %157

157:                                              ; preds = %155, %139, %135
  %158 = phi i32 [ -22, %135 ], [ -22, %139 ], [ %156, %155 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  call void @mutex_unlock(ptr noundef nonnull @capsule_mutex) #9
  br label %159

159:                                              ; preds = %157, %59
  %160 = phi i32 [ %158, %157 ], [ -12, %59 ]
  %161 = icmp ne i32 %160, 0
  %162 = icmp ugt i32 %42, 4095
  %163 = select i1 %161, i1 %162, i1 false
  br i1 %163, label %164, label %173

164:                                              ; preds = %170, %159
  %165 = phi i32 [ %171, %170 ], [ 0, %159 ]
  %166 = getelementptr ptr, ptr %47, i32 %165
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %164
  call void @__free_pages(ptr noundef nonnull %167, i32 noundef 0) #9
  br label %170

170:                                              ; preds = %169, %164
  %171 = add nuw nsw i32 %165, 1
  %172 = icmp ult i32 %171, %45
  br i1 %172, label %164, label %173

173:                                              ; preds = %170, %159
  call void @kfree(ptr noundef nonnull %47) #9
  br label %174

174:                                              ; preds = %173, %41, %38, %36
  %175 = phi i32 [ %160, %173 ], [ %39, %38 ], [ -12, %41 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  ret i32 %175
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @capsule_reboot_register() #4 section ".init.text" {
  %1 = tail call i32 @register_reboot_notifier(ptr noundef nonnull @capsule_reboot_nb) #9
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @capsule_reboot_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @capsule_mutex) #9
  store i1 true, ptr @stop_capsules, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @capsule_mutex) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

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
!9 = !{i64 2152375468}
!10 = !{i64 2151132477}
!11 = !{i64 2151132684}
!12 = !{i64 2152378093}
!13 = !{!"branch_weights", i32 1, i32 2000}
