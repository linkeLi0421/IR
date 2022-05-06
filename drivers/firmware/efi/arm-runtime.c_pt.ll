; ModuleID = '/llk/IR/drivers/firmware/efi/arm-runtime.c_pt.bc'
source_filename = "../drivers/firmware/efi/arm-runtime.c"
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
%struct.efi = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i32 }
%struct.efi_memory_map = type { i32, ptr, ptr, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.44, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15 }
%struct.llist_node = type { ptr }
%union.anon.15 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.16 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.44 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }

@__initcall__kmod_arm_runtime__238_153_arm_enable_runtime_servicesearly = internal global ptr @arm_enable_runtime_services, section ".initcallearly.init", align 4
@efi_mm = external dso_local global %struct.mm_struct, align 8
@__initcall__kmod_arm_runtime__239_178_arm_dmi_init1 = internal global ptr @arm_dmi_init, section ".initcall1.init", align 4
@.str = private unnamed_addr constant [39 x i8] c"\016EFI services will not be available.\0A\00", align 1
@efi = external dso_local global %struct.efi, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"\013Failed to remap EFI memory map\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"\016EFI runtime services will be disabled.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"\016EFI runtime services access via paravirt.\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\016Remapping and enabling EFI services.\0A\00", align 1
@.str.7 = private unnamed_addr constant [85 x i8] c"\013UEFI virtual mapping missing or invalid -- runtime services will not be available\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"\014  EFI remap %pa: failed to create mapping (%d)\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_arm_runtime__238_153_arm_enable_runtime_servicesearly, ptr @__initcall__kmod_arm_runtime__239_178_arm_dmi_init1], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @arm_enable_runtime_services() #0 section ".init.text" {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %2 = and i32 %1, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %31

6:                                                ; preds = %0
  tail call void @efi_memmap_unmap() #6
  %7 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 5), align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 3), align 4
  %9 = mul i32 %8, %7
  %10 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25), align 4
  %11 = tail call i32 @efi_memmap_init_late(i32 noundef %10, i32 noundef %9) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  br label %31

15:                                               ; preds = %6
  %16 = tail call zeroext i1 @efi_runtime_disabled() #7
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  br label %31

19:                                               ; preds = %15
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #6
  br label %31

25:                                               ; preds = %19
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #6
  %27 = tail call fastcc zeroext i1 @efi_virtmap_init() #8
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #6
  br label %31

30:                                               ; preds = %25
  tail call void @efi_native_runtime_setup() #7
  tail call void @_set_bit(i32 noundef 3, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26)) #7
  br label %31

31:                                               ; preds = %30, %28, %23, %17, %13, %4
  %32 = phi i32 [ 0, %13 ], [ 0, %17 ], [ 0, %23 ], [ 0, %30 ], [ -12, %28 ], [ 0, %4 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @efi_virtmap_load() local_unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  tail call void @check_and_switch_context(ptr noundef nonnull @efi_mm, ptr noundef null) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @efi_virtmap_unload() local_unnamed_addr #1 {
  %1 = tail call ptr @llvm.thread.pointer() #7
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 38
  %3 = load ptr, ptr %2, align 8
  tail call void @check_and_switch_context(ptr noundef %3, ptr noundef null) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @arm_dmi_init() #0 section ".init.text" {
  tail call void @dmi_setup() #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @efi_memmap_unmap() local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @efi_memmap_init_late(i32 noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @efi_runtime_disabled() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc zeroext i1 @efi_virtmap_init() unnamed_addr #0 section ".init.text" {
  %1 = alloca i32, align 4
  %2 = tail call ptr @pgd_alloc(ptr noundef nonnull @efi_mm) #7
  store ptr %2, ptr getelementptr inbounds (%struct.mm_struct, ptr @efi_mm, i32 0, i32 0, i32 8), align 4
  store i32 0, ptr inttoptr (i32 add (i32 ptrtoint (ptr @efi_mm to i32), i32 448) to ptr), align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.mm_struct, ptr @efi_mm, i32 0, i32 0, i32 42)) #7, !srcloc !10
  %3 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) getelementptr inbounds (%struct.mm_struct, ptr @efi_mm, i32 0, i32 0, i32 42), ptr getelementptr inbounds (%struct.mm_struct, ptr @efi_mm, i32 0, i32 0, i32 42), i64 0) #7, !srcloc !11
  %4 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 1), align 4
  %5 = icmp ne ptr %4, null
  %6 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 5), align 4
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 2), align 4
  %9 = icmp ule ptr %7, %8
  %10 = select i1 %5, i1 %9, i1 false
  br i1 %10, label %11, label %42

11:                                               ; preds = %34, %0
  %12 = phi ptr [ %35, %34 ], [ %8, %0 ]
  %13 = phi i32 [ %36, %34 ], [ %6, %0 ]
  %14 = phi ptr [ %37, %34 ], [ %4, %0 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #7
  %15 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %14, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, ptr %1, align 4
  %18 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %14, i32 0, i32 5
  %19 = load i64, ptr %18, align 8
  %20 = icmp sgt i64 %19, -1
  br i1 %20, label %34, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %14, i32 0, i32 3
  %23 = load i64, ptr %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @efi_create_mapping(ptr noundef nonnull @efi_mm, ptr noundef nonnull %14) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 5), align 4
  %30 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 2), align 4
  br label %34

31:                                               ; preds = %25
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %1, i32 noundef %26) #6
  br label %33

33:                                               ; preds = %31, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #7
  br label %45

34:                                               ; preds = %28, %11
  %35 = phi ptr [ %30, %28 ], [ %12, %11 ]
  %36 = phi i32 [ %29, %28 ], [ %13, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #7
  %37 = getelementptr i8, ptr %14, i32 %36
  %38 = icmp ne ptr %37, null
  %39 = getelementptr i8, ptr %37, i32 %36
  %40 = icmp ule ptr %39, %35
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %11, label %42

42:                                               ; preds = %34, %0
  %43 = tail call i32 @efi_memattr_apply_permissions(ptr noundef nonnull @efi_mm, ptr noundef nonnull @efi_set_mapping_permissions) #7
  %44 = icmp eq i32 %43, 0
  br label %45

45:                                               ; preds = %42, %33
  %46 = phi i1 [ %44, %42 ], [ false, %33 ]
  ret i1 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efi_native_runtime_setup() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pgd_alloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efi_create_mapping(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efi_memattr_apply_permissions(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efi_set_mapping_permissions(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_and_switch_context(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmi_setup() local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold }

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
!8 = !{i64 2153227789}
!9 = !{i64 2153227851}
!10 = !{i64 634774, i64 2148124745, i64 2148124771, i64 2148124818, i64 2148124840, i64 2148124868, i64 2148124888}
!11 = !{i64 624633, i64 624653, i64 624681, i64 624711, i64 624727}
