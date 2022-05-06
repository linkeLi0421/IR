; ModuleID = '/llk/IR/drivers/tty/vt/selection.c_pt.bc'
source_filename = "../drivers/tty/vt/selection.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clear_selection:\09\09\09\09\09"
module asm "\09.asciz \09\22clear_selection\22\09\09\09\09\09"
module asm "__kstrtabns_clear_selection:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_selection_kernel:\09\09\09\09\09"
module asm "\09.asciz \09\22set_selection_kernel\22\09\09\09\09\09"
module asm "__kstrtabns_set_selection_kernel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_paste_selection:\09\09\09\09\09"
module asm "\09.asciz \09\22paste_selection\22\09\09\09\09\09"
module asm "__kstrtabns_paste_selection:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.vc_selection = type { %struct.mutex, ptr, ptr, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.vc = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tiocl_selection = type { i16, i16, i16, i16, i16 }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.0, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.0 = type { ptr }
%struct.llist_head = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.62, %struct.anon.63, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.62 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.63 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.49 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@vc_sel = internal global %struct.vc_selection { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @vc_sel, i64 12), ptr getelementptr (i8, ptr @vc_sel, i64 12) } }, ptr null, ptr null, i32 0, i32 -1, i32 0 }, align 4
@__kstrtab_clear_selection = external dso_local constant [0 x i8], align 1
@__kstrtabns_clear_selection = external dso_local constant [0 x i8], align 1
@__ksymtab_clear_selection = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clear_selection to i32), ptr @__kstrtab_clear_selection, ptr @__kstrtabns_clear_selection }, section "___ksymtab_gpl+clear_selection", align 4
@inwordLut = internal unnamed_addr global [4 x i32] [i32 0, i32 67100672, i32 -2013265922, i32 134217726], align 4
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 4
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_set_selection_kernel = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_selection_kernel = external dso_local constant [0 x i8], align 1
@__ksymtab_set_selection_kernel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_selection_kernel to i32), ptr @__kstrtab_set_selection_kernel, ptr @__kstrtabns_set_selection_kernel }, section "___ksymtab_gpl+set_selection_kernel", align 4
@__kstrtab_paste_selection = external dso_local constant [0 x i8], align 1
@__kstrtabns_paste_selection = external dso_local constant [0 x i8], align 1
@__ksymtab_paste_selection = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @paste_selection to i32), ptr @__kstrtab_paste_selection, ptr @__kstrtabns_paste_selection }, section "___ksymtab_gpl+paste_selection", align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"\014selection: kmalloc() failed\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_clear_selection, ptr @__ksymtab_paste_selection, ptr @__ksymtab_set_selection_kernel], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clear_selection() #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  tail call void @complement_pos(ptr noundef %1, i32 noundef -1) #10
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %8 = sub i32 2, %5
  %9 = add i32 %8, %6
  tail call void @invert_screen(ptr noundef %7, i32 noundef %5, i32 noundef %9, i1 noundef zeroext true) #10
  store volatile i32 -1, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  br label %10

10:                                               ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @vc_is_sel(ptr noundef readnone %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %3 = icmp eq ptr %2, %0
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sel_loadlut(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %3 = getelementptr i8, ptr %0, i32 4
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 16, i32 -1090519040) #11, !srcloc !9
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !10

7:                                                ; preds = %1
  %8 = tail call ptr @llvm.thread.pointer() #10
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #12, !srcloc !11
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %2, ptr noundef %3, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #10, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !10

15:                                               ; preds = %7, %1
  %16 = phi i32 [ %13, %7 ], [ 16, %1 ]
  %17 = sub i32 16, %16
  %18 = getelementptr i8, ptr %2, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #10
  br label %20

19:                                               ; preds = %7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) @inwordLut, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 16, i1 false)
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ 0, %19 ], [ -14, %15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret i32 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_selection_user(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.tiocl_selection, align 2
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(10) %3, i8 0, i32 10, i1 false), !annotation !8
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 10, i32 -1090519040) #11, !srcloc !9
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !10

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #10
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #12, !srcloc !11
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 10) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #10, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !10

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 10, %2 ]
  %17 = sub i32 10, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #10
  br label %21

19:                                               ; preds = %7
  %20 = call i32 @set_selection_kernel(ptr noundef nonnull %3, ptr noundef %1)
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i32 [ %20, %19 ], [ -14, %15 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #10
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_selection_kernel(ptr nocapture noundef %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @vc_sel) #10
  tail call void @console_lock() #10
  %3 = load i32, ptr @fg_console, align 4
  %4 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  tail call void @poke_blanked_console() #10
  %6 = getelementptr inbounds %struct.tiocl_selection, ptr %0, i32 0, i32 4
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 4
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  tail call void @complement_pos(ptr noundef %10, i32 noundef -1) #10
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %460, label %13

13:                                               ; preds = %9
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %15 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 4
  %16 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %17 = sub i32 2, %14
  %18 = add i32 %17, %15
  tail call void @invert_screen(ptr noundef %16, i32 noundef %14, i32 noundef %18, i1 noundef zeroext true) #10
  store volatile i32 -1, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  br label %460

19:                                               ; preds = %2
  %20 = load i16, ptr %0, align 2
  %21 = add i16 %20, -1
  %22 = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 65535
  %25 = zext i16 %21 to i32
  %26 = and i32 %24, 65535
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %25) #10
  %28 = trunc i32 %27 to i16
  store i16 %28, ptr %0, align 2
  %29 = getelementptr inbounds %struct.tiocl_selection, ptr %0, i32 0, i32 1
  %30 = load i16, ptr %29, align 2
  %31 = add i16 %30, -1
  %32 = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 65535
  %35 = zext i16 %31 to i32
  %36 = and i32 %34, 65535
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 %35) #10
  %38 = trunc i32 %37 to i16
  store i16 %38, ptr %29, align 2
  %39 = getelementptr inbounds %struct.tiocl_selection, ptr %0, i32 0, i32 2
  %40 = load i16, ptr %39, align 2
  %41 = add i16 %40, -1
  %42 = load i32, ptr %22, align 4
  %43 = add i32 %42, 65535
  %44 = zext i16 %41 to i32
  %45 = and i32 %43, 65535
  %46 = tail call i32 @llvm.umin.i32(i32 %45, i32 %44) #10
  %47 = trunc i32 %46 to i16
  store i16 %47, ptr %39, align 2
  %48 = getelementptr inbounds %struct.tiocl_selection, ptr %0, i32 0, i32 3
  %49 = load i16, ptr %48, align 2
  %50 = add i16 %49, -1
  %51 = load i32, ptr %32, align 4
  %52 = add i32 %51, 65535
  %53 = zext i16 %50 to i32
  %54 = and i32 %52, 65535
  %55 = tail call i32 @llvm.umin.i32(i32 %54, i32 %53) #10
  %56 = trunc i32 %55 to i16
  store i16 %56, ptr %48, align 2
  %57 = tail call i32 @mouse_reporting() #10
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %19
  %60 = load i16, ptr %6, align 2
  %61 = zext i16 %60 to i32
  %62 = and i32 %61, 16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = and i32 %61, 15
  %66 = load i16, ptr %0, align 2
  %67 = zext i16 %66 to i32
  %68 = load i16, ptr %29, align 2
  %69 = zext i16 %68 to i32
  tail call void @mouse_report(ptr noundef %1, i32 noundef %65, i32 noundef %67, i32 noundef %69) #10
  br label %460

70:                                               ; preds = %59, %19
  %71 = load i16, ptr %29, align 2
  %72 = zext i16 %71 to i32
  %73 = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = mul i32 %74, %72
  %76 = load i16, ptr %0, align 2
  %77 = zext i16 %76 to i32
  %78 = shl nuw nsw i32 %77, 1
  %79 = add i32 %78, %75
  %80 = load i16, ptr %48, align 2
  %81 = zext i16 %80 to i32
  %82 = mul i32 %74, %81
  %83 = load i16, ptr %39, align 2
  %84 = zext i16 %83 to i32
  %85 = shl nuw nsw i32 %84, 1
  %86 = add i32 %85, %82
  %87 = tail call i32 @llvm.smax.i32(i32 %79, i32 %86) #10
  %88 = tail call i32 @llvm.smin.i32(i32 %79, i32 %86) #10
  %89 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %90 = icmp eq ptr %89, %5
  br i1 %90, label %101, label %91

91:                                               ; preds = %70
  tail call void @complement_pos(ptr noundef %89, i32 noundef -1) #10
  %92 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %96 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 4
  %97 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %98 = sub i32 2, %95
  %99 = add i32 %98, %96
  tail call void @invert_screen(ptr noundef %97, i32 noundef %95, i32 noundef %99, i1 noundef zeroext true) #10
  store volatile i32 -1, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  br label %100

100:                                              ; preds = %94, %91
  store ptr %5, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br label %101

101:                                              ; preds = %100, %70
  %102 = load i16, ptr %6, align 2
  %103 = load i32, ptr @fg_console, align 4
  %104 = tail call i32 @vt_do_kdgkbmode(i32 noundef %103) #10
  %105 = icmp eq i32 %104, 3
  switch i16 %102, label %460 [
    i16 0, label %226
    i16 1, label %106
    i16 2, label %216
    i16 3, label %224
  ]

106:                                              ; preds = %101
  %107 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br i1 %105, label %108, label %111

108:                                              ; preds = %106
  %109 = sdiv i32 %88, 2
  %110 = tail call i32 @screen_glyph_unicode(ptr noundef %107, i32 noundef %109) #10
  br label %116

111:                                              ; preds = %106
  %112 = tail call zeroext i16 @screen_glyph(ptr noundef %107, i32 noundef %88) #10
  %113 = zext i16 %112 to i32
  %114 = tail call zeroext i16 @inverse_translate(ptr noundef %107, i32 noundef %113, i32 noundef 0) #10
  %115 = zext i16 %114 to i32
  br label %116

116:                                              ; preds = %111, %108
  %117 = phi i32 [ %110, %108 ], [ %115, %111 ]
  %118 = icmp eq i32 %117, 32
  br label %119

119:                                              ; preds = %159, %116
  %120 = phi i32 [ %88, %116 ], [ %121, %159 ]
  %121 = phi i32 [ %88, %116 ], [ %160, %159 ]
  %122 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br i1 %118, label %123, label %135

123:                                              ; preds = %119
  br i1 %105, label %124, label %127

124:                                              ; preds = %123
  %125 = sdiv i32 %121, 2
  %126 = tail call i32 @screen_glyph_unicode(ptr noundef %122, i32 noundef %125) #10
  br label %132

127:                                              ; preds = %123
  %128 = tail call zeroext i16 @screen_glyph(ptr noundef %122, i32 noundef %121) #10
  %129 = zext i16 %128 to i32
  %130 = tail call zeroext i16 @inverse_translate(ptr noundef %122, i32 noundef %129, i32 noundef 0) #10
  %131 = zext i16 %130 to i32
  br label %132

132:                                              ; preds = %127, %124
  %133 = phi i32 [ %126, %124 ], [ %131, %127 ]
  %134 = icmp eq i32 %133, 32
  br i1 %134, label %155, label %161

135:                                              ; preds = %119
  br i1 %105, label %136, label %139

136:                                              ; preds = %135
  %137 = sdiv i32 %121, 2
  %138 = tail call i32 @screen_glyph_unicode(ptr noundef %122, i32 noundef %137) #10
  br label %144

139:                                              ; preds = %135
  %140 = tail call zeroext i16 @screen_glyph(ptr noundef %122, i32 noundef %121) #10
  %141 = zext i16 %140 to i32
  %142 = tail call zeroext i16 @inverse_translate(ptr noundef %122, i32 noundef %141, i32 noundef 0) #10
  %143 = zext i16 %142 to i32
  br label %144

144:                                              ; preds = %139, %136
  %145 = phi i32 [ %138, %136 ], [ %143, %139 ]
  %146 = icmp ugt i32 %145, 127
  br i1 %146, label %155, label %147

147:                                              ; preds = %144
  %148 = lshr i32 %145, 5
  %149 = getelementptr [4 x i32], ptr @inwordLut, i32 0, i32 %148
  %150 = load i32, ptr %149, align 4
  %151 = and i32 %145, 31
  %152 = shl nuw i32 1, %151
  %153 = and i32 %150, %152
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %147, %144, %132
  %156 = load i32, ptr %73, align 4
  %157 = urem i32 %121, %156
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %155
  %160 = add i32 %121, -2
  br label %119

161:                                              ; preds = %155, %147, %132
  %162 = phi i32 [ %121, %155 ], [ %120, %147 ], [ %120, %132 ]
  %163 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br i1 %105, label %164, label %167

164:                                              ; preds = %161
  %165 = sdiv i32 %87, 2
  %166 = tail call i32 @screen_glyph_unicode(ptr noundef %163, i32 noundef %165) #10
  br label %172

167:                                              ; preds = %161
  %168 = tail call zeroext i16 @screen_glyph(ptr noundef %163, i32 noundef %87) #10
  %169 = zext i16 %168 to i32
  %170 = tail call zeroext i16 @inverse_translate(ptr noundef %163, i32 noundef %169, i32 noundef 0) #10
  %171 = zext i16 %170 to i32
  br label %172

172:                                              ; preds = %167, %164
  %173 = phi i32 [ %166, %164 ], [ %171, %167 ]
  %174 = icmp eq i32 %173, 32
  br label %175

175:                                              ; preds = %211, %172
  %176 = phi i32 [ %87, %172 ], [ %177, %211 ]
  %177 = phi i32 [ %87, %172 ], [ %212, %211 ]
  %178 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br i1 %174, label %179, label %191

179:                                              ; preds = %175
  br i1 %105, label %180, label %183

180:                                              ; preds = %179
  %181 = sdiv i32 %177, 2
  %182 = tail call i32 @screen_glyph_unicode(ptr noundef %178, i32 noundef %181) #10
  br label %188

183:                                              ; preds = %179
  %184 = tail call zeroext i16 @screen_glyph(ptr noundef %178, i32 noundef %177) #10
  %185 = zext i16 %184 to i32
  %186 = tail call zeroext i16 @inverse_translate(ptr noundef %178, i32 noundef %185, i32 noundef 0) #10
  %187 = zext i16 %186 to i32
  br label %188

188:                                              ; preds = %183, %180
  %189 = phi i32 [ %182, %180 ], [ %187, %183 ]
  %190 = icmp eq i32 %189, 32
  br i1 %190, label %211, label %226

191:                                              ; preds = %175
  br i1 %105, label %192, label %195

192:                                              ; preds = %191
  %193 = sdiv i32 %177, 2
  %194 = tail call i32 @screen_glyph_unicode(ptr noundef %178, i32 noundef %193) #10
  br label %200

195:                                              ; preds = %191
  %196 = tail call zeroext i16 @screen_glyph(ptr noundef %178, i32 noundef %177) #10
  %197 = zext i16 %196 to i32
  %198 = tail call zeroext i16 @inverse_translate(ptr noundef %178, i32 noundef %197, i32 noundef 0) #10
  %199 = zext i16 %198 to i32
  br label %200

200:                                              ; preds = %195, %192
  %201 = phi i32 [ %194, %192 ], [ %199, %195 ]
  %202 = icmp ugt i32 %201, 127
  br i1 %202, label %211, label %203

203:                                              ; preds = %200
  %204 = lshr i32 %201, 5
  %205 = getelementptr [4 x i32], ptr @inwordLut, i32 0, i32 %204
  %206 = load i32, ptr %205, align 4
  %207 = and i32 %201, 31
  %208 = shl nuw i32 1, %207
  %209 = and i32 %206, %208
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %226, label %211

211:                                              ; preds = %203, %200, %188
  %212 = add i32 %177, 2
  %213 = load i32, ptr %73, align 4
  %214 = urem i32 %212, %213
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %226, label %175

216:                                              ; preds = %101
  %217 = load i32, ptr %73, align 4
  %218 = urem i32 %88, %217
  %219 = sub i32 %88, %218
  %220 = urem i32 %87, %217
  %221 = add i32 %87, -2
  %222 = add i32 %221, %217
  %223 = sub i32 %222, %220
  br label %226

224:                                              ; preds = %101
  %225 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  tail call void @complement_pos(ptr noundef %225, i32 noundef %87) #10
  br label %460

226:                                              ; preds = %216, %211, %203, %188, %101
  %227 = phi i32 [ %223, %216 ], [ %87, %101 ], [ %176, %188 ], [ %176, %203 ], [ %177, %211 ]
  %228 = phi i32 [ %219, %216 ], [ %88, %101 ], [ %162, %188 ], [ %162, %203 ], [ %162, %211 ]
  %229 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  tail call void @complement_pos(ptr noundef %229, i32 noundef -1) #10
  %230 = icmp sgt i32 %227, %228
  br i1 %230, label %231, label %289

231:                                              ; preds = %226
  %232 = load i32, ptr %73, align 4
  %233 = srem i32 %227, %232
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %289, label %235

235:                                              ; preds = %231
  %236 = add i32 %227, 2
  %237 = srem i32 %236, %232
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %289, label %239

239:                                              ; preds = %235
  %240 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br i1 %105, label %241, label %244

241:                                              ; preds = %239
  %242 = sdiv i32 %227, 2
  %243 = tail call i32 @screen_glyph_unicode(ptr noundef %240, i32 noundef %242) #10
  br label %249

244:                                              ; preds = %239
  %245 = tail call zeroext i16 @screen_glyph(ptr noundef %240, i32 noundef %227) #10
  %246 = zext i16 %245 to i32
  %247 = tail call zeroext i16 @inverse_translate(ptr noundef %240, i32 noundef %246, i32 noundef 0) #10
  %248 = zext i16 %247 to i32
  br label %249

249:                                              ; preds = %244, %241
  %250 = phi i32 [ %243, %241 ], [ %248, %244 ]
  %251 = icmp eq i32 %250, 32
  br i1 %251, label %252, label %289

252:                                              ; preds = %271, %249
  %253 = phi i32 [ %254, %271 ], [ %227, %249 ]
  %254 = add i32 %253, 2
  %255 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br i1 %105, label %256, label %259

256:                                              ; preds = %252
  %257 = sdiv i32 %254, 2
  %258 = tail call i32 @screen_glyph_unicode(ptr noundef %255, i32 noundef %257) #10
  br label %264

259:                                              ; preds = %252
  %260 = tail call zeroext i16 @screen_glyph(ptr noundef %255, i32 noundef %254) #10
  %261 = zext i16 %260 to i32
  %262 = tail call zeroext i16 @inverse_translate(ptr noundef %255, i32 noundef %261, i32 noundef 0) #10
  %263 = zext i16 %262 to i32
  br label %264

264:                                              ; preds = %259, %256
  %265 = phi i32 [ %258, %256 ], [ %263, %259 ]
  %266 = icmp eq i32 %265, 32
  br i1 %266, label %267, label %275

267:                                              ; preds = %264
  %268 = load i32, ptr %73, align 4
  %269 = srem i32 %254, %268
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %275, label %271

271:                                              ; preds = %267
  %272 = add i32 %253, 4
  %273 = srem i32 %272, %268
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %252

275:                                              ; preds = %271, %267, %264
  %276 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br i1 %105, label %277, label %280

277:                                              ; preds = %275
  %278 = sdiv i32 %254, 2
  %279 = tail call i32 @screen_glyph_unicode(ptr noundef %276, i32 noundef %278) #10
  br label %285

280:                                              ; preds = %275
  %281 = tail call zeroext i16 @screen_glyph(ptr noundef %276, i32 noundef %254) #10
  %282 = zext i16 %281 to i32
  %283 = tail call zeroext i16 @inverse_translate(ptr noundef %276, i32 noundef %282, i32 noundef 0) #10
  %284 = zext i16 %283 to i32
  br label %285

285:                                              ; preds = %280, %277
  %286 = phi i32 [ %279, %277 ], [ %284, %280 ]
  %287 = icmp eq i32 %286, 32
  %288 = select i1 %287, i32 %254, i32 %227
  br label %289

289:                                              ; preds = %285, %249, %235, %231, %226
  %290 = phi i32 [ %227, %235 ], [ %227, %249 ], [ %227, %226 ], [ %288, %285 ], [ %227, %231 ]
  %291 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %292 = icmp eq i32 %291, -1
  br i1 %292, label %293, label %297

293:                                              ; preds = %289
  %294 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %295 = sub i32 2, %228
  %296 = add i32 %295, %290
  tail call void @invert_screen(ptr noundef %294, i32 noundef %228, i32 noundef %296, i1 noundef zeroext true) #10
  br label %337

297:                                              ; preds = %289
  %298 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %299 = icmp eq i32 %228, %298
  %300 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 4
  %301 = icmp eq i32 %290, %300
  br i1 %299, label %302, label %313

302:                                              ; preds = %297
  br i1 %301, label %460, label %303

303:                                              ; preds = %302
  %304 = icmp sgt i32 %290, %300
  br i1 %304, label %305, label %309

305:                                              ; preds = %303
  %306 = add i32 %300, 2
  %307 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %308 = sub i32 %290, %300
  tail call void @invert_screen(ptr noundef %307, i32 noundef %306, i32 noundef %308, i1 noundef zeroext true) #10
  br label %337

309:                                              ; preds = %303
  %310 = add i32 %290, 2
  %311 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %312 = sub i32 %300, %290
  tail call void @invert_screen(ptr noundef %311, i32 noundef %310, i32 noundef %312, i1 noundef zeroext true) #10
  br label %337

313:                                              ; preds = %297
  br i1 %301, label %314, label %323

314:                                              ; preds = %313
  %315 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %316 = icmp slt i32 %228, %315
  %317 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %318 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br i1 %316, label %319, label %321

319:                                              ; preds = %314
  %320 = sub i32 %317, %228
  tail call void @invert_screen(ptr noundef %318, i32 noundef %228, i32 noundef %320, i1 noundef zeroext true) #10
  br label %337

321:                                              ; preds = %314
  %322 = sub i32 %228, %317
  tail call void @invert_screen(ptr noundef %318, i32 noundef %317, i32 noundef %322, i1 noundef zeroext true) #10
  br label %337

323:                                              ; preds = %313
  %324 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  tail call void @complement_pos(ptr noundef %324, i32 noundef -1) #10
  %325 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %326 = icmp eq i32 %325, -1
  br i1 %326, label %333, label %327

327:                                              ; preds = %323
  %328 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %329 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 4
  %330 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %331 = sub i32 2, %328
  %332 = add i32 %331, %329
  tail call void @invert_screen(ptr noundef %330, i32 noundef %328, i32 noundef %332, i1 noundef zeroext true) #10
  store volatile i32 -1, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  br label %333

333:                                              ; preds = %327, %323
  %334 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %335 = sub i32 2, %228
  %336 = add i32 %335, %290
  tail call void @invert_screen(ptr noundef %334, i32 noundef %228, i32 noundef %336, i1 noundef zeroext true) #10
  br label %337

337:                                              ; preds = %333, %321, %319, %309, %305, %293
  store volatile i32 %228, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  store i32 %290, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 4
  %338 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %339 = sub i32 %290, %338
  %340 = sdiv i32 %339, 2
  %341 = add nsw i32 %340, 1
  %342 = select i1 %105, i32 4, i32 1
  %343 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %341, i32 %342) #10
  %344 = extractvalue { i32, i1 } %343, 1
  br i1 %344, label %349, label %345, !prof !14

345:                                              ; preds = %337
  %346 = extractvalue { i32, i1 } %343, 0
  %347 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %346, i32 noundef 11456) #13
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %360

349:                                              ; preds = %345, %337
  %350 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  %351 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  tail call void @complement_pos(ptr noundef %351, i32 noundef -1) #10
  %352 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %353 = icmp eq i32 %352, -1
  br i1 %353, label %460, label %354

354:                                              ; preds = %349
  %355 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %356 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 4
  %357 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  %358 = sub i32 2, %355
  %359 = add i32 %358, %356
  tail call void @invert_screen(ptr noundef %357, i32 noundef %355, i32 noundef %359, i1 noundef zeroext true) #10
  store volatile i32 -1, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  br label %460

360:                                              ; preds = %345
  %361 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 2), align 4
  tail call void @kfree(ptr noundef %361) #10
  store ptr %347, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 2), align 4
  %362 = load volatile i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 4), align 4
  %363 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 4
  %364 = icmp ugt i32 %362, %363
  br i1 %364, label %454, label %365

365:                                              ; preds = %447, %360
  %366 = phi i32 [ %439, %447 ], [ %362, %360 ]
  %367 = phi ptr [ %449, %447 ], [ %347, %360 ]
  %368 = phi ptr [ %448, %447 ], [ %347, %360 ]
  %369 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 1), align 4
  br i1 %105, label %370, label %427

370:                                              ; preds = %365
  %371 = sdiv i32 %366, 2
  %372 = tail call i32 @screen_glyph_unicode(ptr noundef %369, i32 noundef %371) #10
  %373 = icmp ult i32 %372, 128
  br i1 %373, label %374, label %376

374:                                              ; preds = %370
  %375 = trunc i32 %372 to i8
  store i8 %375, ptr %368, align 1
  br label %424

376:                                              ; preds = %370
  %377 = icmp ult i32 %372, 2048
  br i1 %377, label %378, label %386

378:                                              ; preds = %376
  %379 = lshr i32 %372, 6
  %380 = trunc i32 %379 to i8
  %381 = or i8 %380, -64
  store i8 %381, ptr %368, align 1
  %382 = trunc i32 %372 to i8
  %383 = and i8 %382, 63
  %384 = or i8 %383, -128
  %385 = getelementptr i8, ptr %368, i32 1
  store i8 %384, ptr %385, align 1
  br label %424

386:                                              ; preds = %376
  %387 = icmp ult i32 %372, 65536
  br i1 %387, label %388, label %401

388:                                              ; preds = %386
  %389 = lshr i32 %372, 12
  %390 = trunc i32 %389 to i8
  %391 = or i8 %390, -32
  store i8 %391, ptr %368, align 1
  %392 = lshr i32 %372, 6
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 63
  %395 = or i8 %394, -128
  %396 = getelementptr i8, ptr %368, i32 1
  store i8 %395, ptr %396, align 1
  %397 = trunc i32 %372 to i8
  %398 = and i8 %397, 63
  %399 = or i8 %398, -128
  %400 = getelementptr i8, ptr %368, i32 2
  store i8 %399, ptr %400, align 1
  br label %424

401:                                              ; preds = %386
  %402 = icmp ult i32 %372, 1114112
  br i1 %402, label %403, label %421

403:                                              ; preds = %401
  %404 = lshr i32 %372, 18
  %405 = trunc i32 %404 to i8
  %406 = or i8 %405, -16
  store i8 %406, ptr %368, align 1
  %407 = lshr i32 %372, 12
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 63
  %410 = or i8 %409, -128
  %411 = getelementptr i8, ptr %368, i32 1
  store i8 %410, ptr %411, align 1
  %412 = lshr i32 %372, 6
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 63
  %415 = or i8 %414, -128
  %416 = getelementptr i8, ptr %368, i32 2
  store i8 %415, ptr %416, align 1
  %417 = trunc i32 %372 to i8
  %418 = and i8 %417, 63
  %419 = or i8 %418, -128
  %420 = getelementptr i8, ptr %368, i32 3
  store i8 %419, ptr %420, align 1
  br label %424

421:                                              ; preds = %401
  store i8 -17, ptr %368, align 1
  %422 = getelementptr i8, ptr %368, i32 1
  store i8 -65, ptr %422, align 1
  %423 = getelementptr i8, ptr %368, i32 2
  store i8 -67, ptr %423, align 1
  br label %424

424:                                              ; preds = %421, %403, %388, %378, %374
  %425 = phi i32 [ 1, %374 ], [ 2, %378 ], [ 3, %388 ], [ 4, %403 ], [ 3, %421 ]
  %426 = getelementptr i8, ptr %368, i32 %425
  br label %434

427:                                              ; preds = %365
  %428 = tail call zeroext i16 @screen_glyph(ptr noundef %369, i32 noundef %366) #10
  %429 = zext i16 %428 to i32
  %430 = tail call zeroext i16 @inverse_translate(ptr noundef %369, i32 noundef %429, i32 noundef 0) #10
  %431 = zext i16 %430 to i32
  %432 = trunc i16 %430 to i8
  %433 = getelementptr i8, ptr %368, i32 1
  store i8 %432, ptr %368, align 1
  br label %434

434:                                              ; preds = %427, %424
  %435 = phi i32 [ %372, %424 ], [ %431, %427 ]
  %436 = phi ptr [ %426, %424 ], [ %433, %427 ]
  %437 = icmp eq i32 %435, 32
  %438 = select i1 %437, ptr %367, ptr %436
  %439 = add i32 %366, 2
  %440 = load i32, ptr %73, align 4
  %441 = urem i32 %439, %440
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %443, label %447

443:                                              ; preds = %434
  %444 = icmp eq ptr %438, %436
  br i1 %444, label %447, label %445

445:                                              ; preds = %443
  %446 = getelementptr i8, ptr %438, i32 1
  store i8 13, ptr %438, align 1
  br label %447

447:                                              ; preds = %445, %443, %434
  %448 = phi ptr [ %436, %434 ], [ %446, %445 ], [ %436, %443 ]
  %449 = phi ptr [ %438, %434 ], [ %446, %445 ], [ %436, %443 ]
  %450 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 5), align 4
  %451 = icmp ugt i32 %439, %450
  br i1 %451, label %452, label %365

452:                                              ; preds = %447
  %453 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 2), align 4
  br label %454

454:                                              ; preds = %452, %360
  %455 = phi ptr [ %347, %360 ], [ %453, %452 ]
  %456 = phi ptr [ %347, %360 ], [ %448, %452 ]
  %457 = ptrtoint ptr %456 to i32
  %458 = ptrtoint ptr %455 to i32
  %459 = sub i32 %457, %458
  store i32 %459, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 3), align 4
  br label %460

460:                                              ; preds = %454, %354, %349, %302, %224, %101, %64, %13, %9
  %461 = phi i32 [ 0, %64 ], [ 0, %9 ], [ 0, %13 ], [ 0, %224 ], [ -22, %101 ], [ 0, %302 ], [ 0, %454 ], [ -12, %349 ], [ -12, %354 ]
  tail call void @console_unlock() #10
  tail call void @mutex_unlock(ptr noundef nonnull @vc_sel) #10
  ret i32 %461
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @paste_selection(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1
  %6 = tail call ptr @llvm.thread.pointer() #10
  store i32 0, ptr %2, align 4
  store ptr %6, ptr %5, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 2
  store ptr @default_wake_function, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3, i32 1
  store ptr null, ptr %9, align 4
  tail call void @console_lock() #10
  tail call void @poke_blanked_console() #10
  tail call void @console_unlock() #10
  %10 = tail call ptr @tty_ldisc_ref_wait(ptr noundef %0) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %56, label %12

12:                                               ; preds = %1
  tail call void @tty_buffer_lock_exclusive(ptr noundef %4) #10
  %13 = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 36
  call void @add_wait_queue(ptr noundef %13, ptr noundef nonnull %2) #10
  call void @mutex_lock(ptr noundef nonnull @vc_sel) #10
  %14 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 2), align 4
  %16 = icmp ne ptr %15, null
  %17 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 3), align 4
  %18 = icmp ne i32 %17, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %54

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  br label %22

22:                                               ; preds = %42, %20
  %23 = phi i32 [ 0, %20 ], [ %48, %42 ]
  br label %24

24:                                               ; preds = %36, %22
  store volatile i32 1, ptr %14, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %25 = load volatile i32, ptr %6, align 4
  %26 = and i32 %25, 256
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %54, !prof !10

28:                                               ; preds = %24
  %29 = load volatile i32, ptr %6, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load volatile i32, ptr %21, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  call void @mutex_unlock(ptr noundef nonnull @vc_sel) #10
  call void @schedule() #10
  call void @mutex_lock(ptr noundef nonnull @vc_sel) #10
  %37 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 2), align 4
  %38 = icmp ne ptr %37, null
  %39 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 3), align 4
  %40 = icmp ugt i32 %39, %23
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %24, label %54

42:                                               ; preds = %32
  store volatile i32 0, ptr %14, align 8
  %43 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 3), align 4
  %44 = sub i32 %43, %23
  %45 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 2), align 4
  %46 = getelementptr i8, ptr %45, i32 %23
  %47 = call i32 @tty_ldisc_receive_buf(ptr noundef nonnull %10, ptr noundef %46, ptr noundef null, i32 noundef %44) #10
  %48 = add i32 %47, %23
  %49 = load ptr, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 2), align 4
  %50 = icmp ne ptr %49, null
  %51 = load i32, ptr getelementptr inbounds (%struct.vc_selection, ptr @vc_sel, i32 0, i32 3), align 4
  %52 = icmp ugt i32 %51, %48
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %22, label %54

54:                                               ; preds = %42, %36, %28, %24, %12
  %55 = phi i32 [ 0, %12 ], [ -4, %24 ], [ -4, %28 ], [ 0, %36 ], [ 0, %42 ]
  call void @mutex_unlock(ptr noundef nonnull @vc_sel) #10
  call void @remove_wait_queue(ptr noundef %13, ptr noundef nonnull %2) #10
  store volatile i32 0, ptr %14, align 8
  call void @tty_buffer_unlock_exclusive(ptr noundef %4) #10
  call void @tty_ldisc_deref(ptr noundef nonnull %10) #10
  br label %56

56:                                               ; preds = %54, %1
  %57 = phi i32 [ %55, %54 ], [ -5, %1 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @poke_blanked_console() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_ldisc_ref_wait(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_lock_exclusive(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_ldisc_receive_buf(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_unlock_exclusive(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_deref(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complement_pos(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @invert_screen(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mouse_reporting() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mouse_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_do_kdgkbmode(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @screen_glyph_unicode(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @inverse_translate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @screen_glyph(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

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
!9 = !{i64 2151256584, i64 2151256609}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 3752696}
!12 = !{i64 3752893}
!13 = !{i64 2151238172}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2153038261}
