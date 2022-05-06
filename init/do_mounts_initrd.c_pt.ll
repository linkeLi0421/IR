; ModuleID = '/llk/IR/init/do_mounts_initrd.c_pt.bc'
source_filename = "../init/do_mounts_initrd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.89, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.70 }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.89 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__setup_str_no_initrd = internal constant [9 x i8] c"noinitrd\00", section ".init.rodata", align 1
@__setup_no_initrd = internal global %struct.obs_kernel_param { ptr @__setup_str_no_initrd, ptr @no_initrd, i32 0 }, section ".init.setup", align 4
@__setup_str_early_initrdmem = internal constant [10 x i8] c"initrdmem\00", section ".init.rodata", align 1
@__setup_early_initrdmem = internal global %struct.obs_kernel_param { ptr @__setup_str_early_initrdmem, ptr @early_initrdmem, i32 1 }, section ".init.setup", align 4
@__setup_str_early_initrd = internal constant [7 x i8] c"initrd\00", section ".init.rodata", align 1
@__setup_early_initrd = internal global %struct.obs_kernel_param { ptr @__setup_str_early_initrd, ptr @early_initrd, i32 1 }, section ".init.setup", align 4
@mount_initrd = internal unnamed_addr global i1 false, section ".init.data", align 4
@.str = private unnamed_addr constant [9 x i8] c"/dev/ram\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"/initrd.image\00", align 1
@ROOT_DEV = external dso_local local_unnamed_addr global i32, align 4
@initrd_start = dso_local local_unnamed_addr global i32 0, align 4
@initrd_end = dso_local local_unnamed_addr global i32 0, align 4
@initrd_below_start_ok = dso_local local_unnamed_addr global i32 0, align 4
@real_root_dev = dso_local local_unnamed_addr global i32 0, align 4
@phys_initrd_start = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@phys_initrd_size = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@handle_initrd.argv = internal global [2 x ptr] [ptr @.str.2, ptr null], align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"linuxrc\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"\014using deprecated initrd support, will be removed in 2021.\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"/dev/root.old\00", align 1
@root_mountflags = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"/old\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"/linuxrc\00", align 1
@envp_init = external dso_local global [0 x ptr], align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"\015Trying to move old root to /initrd ... \00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"/root/initrd\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"okay\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"/initrd does not exist. Ignored.\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"\015Unmounting old root\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"/root\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__setup_early_initrd, ptr @__setup_early_initrdmem, ptr @__setup_no_initrd], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @no_initrd(ptr nocapture noundef readnone %0) #0 section ".init.text" {
  store i1 true, ptr @mount_initrd, align 4
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_initrdmem(ptr noundef %0) #1 section ".init.text" {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = call i64 @memparse(ptr noundef %0, ptr noundef nonnull %2) #7
  %4 = load ptr, ptr %2, align 4
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 44
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = trunc i64 %3 to i32
  %9 = getelementptr i8, ptr %4, i32 1
  %10 = call i64 @memparse(ptr noundef %9, ptr noundef null) #7
  %11 = trunc i64 %10 to i32
  store i32 %8, ptr @phys_initrd_start, align 4
  store i32 %11, ptr @phys_initrd_size, align 4
  br label %12

12:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_initrd(ptr noundef %0) #1 section ".init.text" {
  %2 = tail call i32 @early_initrdmem(ptr noundef %0) #8
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local zeroext i1 @initrd_load() local_unnamed_addr #1 section ".init.text" {
  %1 = load i1, ptr @mount_initrd, align 4
  br i1 %1, label %10, label %2

2:                                                ; preds = %0
  tail call fastcc void @create_dev(ptr noundef nonnull @.str) #8
  %3 = tail call i32 @rd_load_image(ptr noundef nonnull @.str.1) #9
  %4 = icmp ne i32 %3, 0
  %5 = load i32, ptr @ROOT_DEV, align 4
  %6 = icmp ne i32 %5, 1048576
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call i32 @init_unlink(ptr noundef nonnull @.str.1) #9
  tail call fastcc void @handle_initrd() #8
  br label %12

10:                                               ; preds = %2, %0
  %11 = tail call i32 @init_unlink(ptr noundef nonnull @.str.1) #9
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i1 [ true, %8 ], [ false, %10 ]
  ret i1 %13
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @create_dev(ptr noundef %0) unnamed_addr #2 section ".init.text" {
  %2 = tail call i32 @init_unlink(ptr noundef %0) #9
  %3 = tail call i32 @init_mknod(ptr noundef %0, i16 noundef zeroext 24960, i32 noundef 256) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @rd_load_image(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_unlink(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @handle_initrd() unnamed_addr #1 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  %2 = load i32, ptr @ROOT_DEV, align 4
  %3 = and i32 %2, 255
  %4 = lshr i32 %2, 12
  %5 = and i32 %4, 1048320
  %6 = or i32 %5, %3
  %7 = shl i32 %2, 12
  %8 = and i32 %7, -1048576
  %9 = or i32 %6, %8
  store i32 %9, ptr @real_root_dev, align 4
  tail call fastcc void @create_dev(ptr noundef nonnull @.str.4) #8
  %10 = load i32, ptr @root_mountflags, align 4
  %11 = and i32 %10, -2
  tail call void @mount_block_root(ptr noundef nonnull @.str.4, i32 noundef %11) #7
  %12 = tail call i32 @init_mkdir(ptr noundef nonnull @.str.5, i16 noundef zeroext 448) #9
  %13 = tail call i32 @init_chdir(ptr noundef nonnull @.str.5) #9
  %14 = tail call ptr @llvm.thread.pointer() #7
  %15 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 1073741824
  store i32 %17, ptr %15, align 4
  %18 = tail call ptr @call_usermodehelper_setup(ptr noundef nonnull @.str.6, ptr noundef nonnull @handle_initrd.argv, ptr noundef nonnull @envp_init, i32 noundef 3264, ptr noundef nonnull @init_linuxrc, ptr noundef null, ptr noundef null) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %57, label %20

20:                                               ; preds = %0
  %21 = tail call i32 @call_usermodehelper_exec(ptr noundef nonnull %18, i32 noundef 2) #7
  %22 = load i32, ptr %15, align 4
  %23 = and i32 %22, -1073741825
  store i32 %23, ptr %15, align 4
  %24 = tail call i32 @init_mount(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 8192, ptr noundef null) #9
  %25 = tail call i32 @init_chroot(ptr noundef nonnull @.str.7) #9
  %26 = load i32, ptr @real_root_dev, align 4
  %27 = and i32 %26, 255
  %28 = lshr i32 %26, 12
  %29 = and i32 %28, 1048320
  %30 = or i32 %29, %27
  %31 = shl i32 %26, 12
  %32 = and i32 %31, -1048576
  %33 = or i32 %30, %32
  %34 = icmp eq i32 %33, 1048576
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = tail call i32 @init_chdir(ptr noundef nonnull @.str.5) #9
  br label %57

37:                                               ; preds = %20
  %38 = tail call i32 @init_chdir(ptr noundef nonnull @.str.9) #9
  %39 = load i32, ptr @real_root_dev, align 4
  %40 = and i32 %39, 255
  %41 = lshr i32 %39, 12
  %42 = and i32 %41, 1048320
  %43 = or i32 %42, %40
  %44 = shl i32 %39, 12
  %45 = and i32 %44, -1048576
  %46 = or i32 %43, %45
  store i32 %46, ptr @ROOT_DEV, align 4
  tail call void @mount_root() #7
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  %48 = tail call i32 @init_mount(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 8192, ptr noundef null) #9
  switch i32 %48, label %51 [
    i32 0, label %49
    i32 -2, label %52
  ]

49:                                               ; preds = %37
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %57

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %37
  %53 = phi ptr [ @.str.14, %51 ], [ @.str.13, %37 ]
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %53) #9
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #9
  %56 = tail call i32 @init_umount(ptr noundef nonnull @.str.5, i32 noundef 2) #9
  br label %57

57:                                               ; preds = %52, %49, %35, %0
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mknod(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mount_block_root(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mkdir(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_chdir(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @call_usermodehelper_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_linuxrc(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #1 section ".init.text" {
  %3 = tail call i32 @ksys_unshare(i32 noundef 1536) #7
  tail call void @console_on_rootfs() #7
  %4 = tail call i32 @init_chdir(ptr noundef nonnull @.str.16) #9
  %5 = tail call i32 @init_mount(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 8192, ptr noundef null) #9
  %6 = tail call i32 @init_chroot(ptr noundef nonnull @.str.8) #9
  %7 = tail call i32 @ksys_setsid() #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper_exec(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mount(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_chroot(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mount_root() local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_umount(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksys_unshare(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_on_rootfs() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksys_setsid() local_unnamed_addr #5

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { cold nounwind }

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
