; ModuleID = '/llk/IR/drivers/tty/tty_ldisc.c_pt.bc'
source_filename = "../drivers/tty/tty_ldisc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_register_ldisc:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_register_ldisc\22\09\09\09\09\09"
module asm "__kstrtabns_tty_register_ldisc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_unregister_ldisc:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_unregister_ldisc\22\09\09\09\09\09"
module asm "__kstrtabns_tty_unregister_ldisc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_ldisc_ref_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_ldisc_ref_wait\22\09\09\09\09\09"
module asm "__kstrtabns_tty_ldisc_ref_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_ldisc_ref:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_ldisc_ref\22\09\09\09\09\09"
module asm "__kstrtabns_tty_ldisc_ref:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_ldisc_deref:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_ldisc_deref\22\09\09\09\09\09"
module asm "__kstrtabns_tty_ldisc_deref:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_ldisc_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_ldisc_flush\22\09\09\09\09\09"
module asm "__kstrtabns_tty_ldisc_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_set_ldisc:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_set_ldisc\22\09\09\09\09\09"
module asm "__kstrtabns_tty_set_ldisc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.62, %struct.anon.63, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.62 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.63 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.tty_ldisc = type { ptr, ptr }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }

@tty_ldiscs_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@tty_ldiscs = internal unnamed_addr global [30 x ptr] zeroinitializer, align 4
@__kstrtab_tty_register_ldisc = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_register_ldisc = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_register_ldisc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_register_ldisc to i32), ptr @__kstrtab_tty_register_ldisc, ptr @__kstrtabns_tty_register_ldisc }, section "___ksymtab+tty_register_ldisc", align 4
@__kstrtab_tty_unregister_ldisc = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_unregister_ldisc = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_unregister_ldisc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_unregister_ldisc to i32), ptr @__kstrtab_tty_unregister_ldisc, ptr @__kstrtabns_tty_unregister_ldisc }, section "___ksymtab+tty_unregister_ldisc", align 4
@tty_ldiscs_seq_ops = dso_local local_unnamed_addr constant %struct.seq_operations { ptr @tty_ldiscs_seq_start, ptr @tty_ldiscs_seq_stop, ptr @tty_ldiscs_seq_next, ptr @tty_ldiscs_seq_show }, align 4
@__kstrtab_tty_ldisc_ref_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_ldisc_ref_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_ldisc_ref_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_ldisc_ref_wait to i32), ptr @__kstrtab_tty_ldisc_ref_wait, ptr @__kstrtabns_tty_ldisc_ref_wait }, section "___ksymtab_gpl+tty_ldisc_ref_wait", align 4
@__kstrtab_tty_ldisc_ref = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_ldisc_ref = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_ldisc_ref = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_ldisc_ref to i32), ptr @__kstrtab_tty_ldisc_ref, ptr @__kstrtabns_tty_ldisc_ref }, section "___ksymtab_gpl+tty_ldisc_ref", align 4
@__kstrtab_tty_ldisc_deref = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_ldisc_deref = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_ldisc_deref = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_ldisc_deref to i32), ptr @__kstrtab_tty_ldisc_deref, ptr @__kstrtabns_tty_ldisc_deref }, section "___ksymtab_gpl+tty_ldisc_deref", align 4
@__kstrtab_tty_ldisc_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_ldisc_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_ldisc_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_ldisc_flush to i32), ptr @__kstrtab_tty_ldisc_flush, ptr @__kstrtabns_tty_ldisc_flush }, section "___ksymtab_gpl+tty_ldisc_flush", align 4
@__kstrtab_tty_set_ldisc = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_set_ldisc = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_set_ldisc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_set_ldisc to i32), ptr @__kstrtab_tty_set_ldisc, ptr @__kstrtabns_tty_set_ldisc }, section "___ksymtab_gpl+tty_set_ldisc", align 4
@.str = private unnamed_addr constant [24 x i8] c"drivers/tty/tty_ldisc.c\00", align 1
@tty_root_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.6, ptr null, i32 0, i16 365, ptr @tty_dir_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%-10s %2d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@tty_ldisc_autoload = internal global i32 1, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"tty-ldisc-%d\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@tty_ldisc_put.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"\014Falling back ldisc for %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Couldn't open N_NULL ldisc for %s.\00", align 1
@tty_ldisc_lock_pair_timeout.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@tty_dir_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.7, ptr null, i32 0, i16 365, ptr @tty_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@tty_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.8, ptr @tty_ldisc_autoload, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table zeroinitializer], align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"ldisc_autoload\00", align 1
@sysctl_vals = external dso_local constant [0 x i32], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_tty_ldisc_deref, ptr @__ksymtab_tty_ldisc_flush, ptr @__ksymtab_tty_ldisc_ref, ptr @__ksymtab_tty_ldisc_ref_wait, ptr @__ksymtab_tty_register_ldisc, ptr @__ksymtab_tty_set_ldisc, ptr @__ksymtab_tty_unregister_ldisc], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_register_ldisc(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 29
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tty_ldiscs_lock) #9
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr [30 x ptr], ptr @tty_ldiscs, i32 0, i32 %7
  store ptr %0, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tty_ldiscs_lock, i32 noundef %6) #9
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 0, %5 ], [ -22, %1 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_unregister_ldisc(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tty_ldiscs_lock) #9
  %3 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr [30 x ptr], ptr @tty_ldiscs, i32 0, i32 %4
  store ptr null, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tty_ldiscs_lock, i32 noundef %2) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @tty_ldiscs_seq_start(ptr nocapture noundef readnone %0, ptr noundef readonly %1) #2 {
  %3 = load i64, ptr %1, align 8
  %4 = icmp slt i64 %3, 30
  %5 = select i1 %4, ptr %1, ptr null
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @tty_ldiscs_seq_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #3 {
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @tty_ldiscs_seq_next(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #4 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = icmp slt i64 %5, 30
  %7 = select i1 %6, ptr %2, ptr null
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tty_ldiscs_seq_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tty_ldiscs_lock) #9
  %6 = getelementptr [30 x ptr], ptr @tty_ldiscs, i32 0, i32 %4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %7, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = tail call zeroext i1 @try_module_get(ptr noundef %11) #9
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tty_ldiscs_lock, i32 noundef %5) #9
  %14 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %23, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr @.str.2, ptr %16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %18, i32 noundef %4) #9
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tty_ldiscs_lock) #9
  %20 = load ptr, ptr %10, align 4
  tail call void @module_put(ptr noundef %20) #9
  br label %21

21:                                               ; preds = %15, %9, %2
  %22 = phi i32 [ %19, %15 ], [ %5, %2 ], [ %5, %9 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tty_ldiscs_lock, i32 noundef %22) #9
  br label %23

23:                                               ; preds = %21, %13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tty_ldisc_ref_wait(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 6
  %3 = tail call i32 @ldsem_down_read(ptr noundef %2, i32 noundef 2147483647) #9
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @ldsem_up_read(ptr noundef %2) #9
  br label %8

8:                                                ; preds = %7, %1
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ldsem_down_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ldsem_up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tty_ldisc_ref(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 6
  %3 = tail call i32 @ldsem_down_read_trylock(ptr noundef %2) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @ldsem_up_read(ptr noundef %2) #9
  br label %10

10:                                               ; preds = %9, %5, %1
  %11 = phi ptr [ %7, %5 ], [ null, %9 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ldsem_down_read_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_ldisc_deref(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tty_ldisc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 6
  tail call void @ldsem_up_read(ptr noundef %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_ldisc_lock(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 20, ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %4, i32 noundef 1, i32 noundef 0, ptr noundef null) #9
  %5 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %5, i32 noundef 1, i32 noundef 0, ptr noundef null) #9
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 6
  %7 = tail call i32 @ldsem_down_write(ptr noundef %6, i32 noundef %1) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @_set_bit(i32 noundef 22, ptr noundef %3) #9
  br label %10

10:                                               ; preds = %9, %2
  %11 = phi i32 [ 0, %9 ], [ -16, %2 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_ldisc_unlock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 22, ptr noundef %2) #9
  tail call void @_clear_bit(i32 noundef 20, ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 6
  tail call void @ldsem_up_write(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_ldisc_flush(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 6
  %3 = tail call i32 @ldsem_down_read_trylock(ptr noundef %2) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  tail call void @ldsem_up_read(ptr noundef %2) #9
  br label %10

10:                                               ; preds = %9, %1
  tail call void @tty_buffer_flush(ptr noundef %0, ptr noundef null) #9
  br label %15

11:                                               ; preds = %5
  tail call void @tty_buffer_flush(ptr noundef %0, ptr noundef nonnull %7) #9
  %12 = getelementptr inbounds %struct.tty_ldisc, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 6
  tail call void @ldsem_up_read(ptr noundef %14) #9
  br label %15

15:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_flush(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_set_ldisc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc ptr @tty_ldisc_get(ptr noundef %0, i32 noundef %1)
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %99

7:                                                ; preds = %2
  tail call void @tty_lock(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 20, ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %9, i32 noundef 1, i32 noundef 0, ptr noundef null) #9
  %10 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %10, i32 noundef 1, i32 noundef 0, ptr noundef null) #9
  %11 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 6
  %12 = tail call i32 @ldsem_down_write(ptr noundef %11, i32 noundef 500) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %84, label %14

14:                                               ; preds = %7
  tail call void @_set_bit(i32 noundef 22, ptr noundef %8) #9
  %15 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %78, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %78, label %23

23:                                               ; preds = %18
  %24 = load volatile i32, ptr %8, align 4
  %25 = and i32 %24, 262144
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %78

27:                                               ; preds = %23
  %28 = load volatile i32, ptr %8, align 4
  %29 = and i32 %28, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32, !prof !8

31:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 453, i32 noundef 9, ptr noundef null) #9
  br label %32

32:                                               ; preds = %31, %27
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %8) #9
  %33 = load ptr, ptr %16, align 4
  %34 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void %35(ptr noundef %0) #9
  br label %38

38:                                               ; preds = %37, %32
  store ptr %3, ptr %15, align 4
  %39 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  tail call void @down_write(ptr noundef %39) #9
  %40 = trunc i32 %1 to i8
  %41 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 4
  store i8 %40, ptr %41, align 4
  tail call void @up_write(ptr noundef %39) #9
  %42 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  store ptr null, ptr %42, align 4
  %43 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 22
  store i32 0, ptr %43, align 4
  %44 = tail call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %8) #9
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46, !prof !9

46:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 429, i32 noundef 9, ptr noundef null) #9
  br label %47

47:                                               ; preds = %46, %38
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = tail call i32 %50(ptr noundef %0) #9
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %8) #9
  %56 = icmp slt i32 %53, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  tail call fastcc void @tty_ldisc_put(ptr noundef %3)
  tail call fastcc void @tty_ldisc_restore(ptr noundef %0, ptr noundef nonnull %16)
  br label %58

58:                                               ; preds = %57, %55, %52, %47
  %59 = phi i32 [ %53, %57 ], [ %53, %55 ], [ 0, %52 ], [ 0, %47 ]
  %60 = load ptr, ptr %15, align 4
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %61, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = load ptr, ptr %16, align 4
  %65 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %64, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %78, label %68

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.tty_operations, ptr %70, i32 0, i32 22
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  tail call void @down_read(ptr noundef %39) #9
  %75 = load ptr, ptr %69, align 4
  %76 = getelementptr inbounds %struct.tty_operations, ptr %75, i32 0, i32 22
  %77 = load ptr, ptr %76, align 4
  tail call void %77(ptr noundef %0) #9
  tail call void @up_read(ptr noundef %39) #9
  br label %78

78:                                               ; preds = %74, %68, %58, %23, %18, %14
  %79 = phi i32 [ 0, %18 ], [ -5, %14 ], [ -5, %23 ], [ %59, %74 ], [ %59, %68 ], [ %59, %58 ]
  %80 = phi ptr [ %3, %18 ], [ %3, %14 ], [ %3, %23 ], [ %16, %74 ], [ %16, %68 ], [ %16, %58 ]
  tail call void @_clear_bit(i32 noundef 22, ptr noundef %8) #9
  tail call void @_clear_bit(i32 noundef 20, ptr noundef %8) #9
  tail call void @ldsem_up_write(ptr noundef %11) #9
  %81 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 37
  %82 = load ptr, ptr %81, align 4
  %83 = tail call zeroext i1 @tty_buffer_restart_work(ptr noundef %82) #9
  br label %84

84:                                               ; preds = %78, %7
  %85 = phi i32 [ %79, %78 ], [ -16, %7 ]
  %86 = phi ptr [ %80, %78 ], [ %3, %7 ]
  %87 = icmp eq ptr %86, null
  %88 = load i1, ptr @tty_ldisc_put.__already_done, align 1
  %89 = xor i1 %88, true
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %91, label %92, !prof !8

91:                                               ; preds = %84
  store i1 true, ptr @tty_ldisc_put.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 181, i32 noundef 9, ptr noundef null) #9
  br label %92

92:                                               ; preds = %91, %84
  br i1 %87, label %98, label %93

93:                                               ; preds = %92
  %94 = load ptr, ptr %86, align 4
  %95 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tty_ldiscs_lock) #9
  %96 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %94, i32 0, i32 16
  %97 = load ptr, ptr %96, align 4
  tail call void @module_put(ptr noundef %97) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tty_ldiscs_lock, i32 noundef %95) #9
  tail call void @kfree(ptr noundef nonnull %86) #9
  br label %98

98:                                               ; preds = %93, %92
  tail call void @tty_unlock(ptr noundef %0) #9
  br label %99

99:                                               ; preds = %98, %5
  %100 = phi i32 [ %6, %5 ], [ %85, %98 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @tty_ldisc_get(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp ugt i32 %1, 29
  br i1 %3, label %39, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tty_ldiscs_lock) #9
  %6 = getelementptr [30 x ptr], ptr @tty_ldiscs, i32 0, i32 %1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %7, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = tail call zeroext i1 @try_module_get(ptr noundef %11) #9
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tty_ldiscs_lock, i32 noundef %5) #9
  br label %16

14:                                               ; preds = %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tty_ldiscs_lock, i32 noundef %5) #9
  %15 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %34

16:                                               ; preds = %14, %13
  %17 = tail call zeroext i1 @capable(i32 noundef 16) #9
  %18 = load i32, ptr @tty_ldisc_autoload, align 4
  %19 = icmp ne i32 %18, 0
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.3, i32 noundef %1) #9
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tty_ldiscs_lock) #9
  %24 = load ptr, ptr %6, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %24, i32 0, i32 16
  %28 = load ptr, ptr %27, align 4
  %29 = tail call zeroext i1 @try_module_get(ptr noundef %28) #9
  br i1 %29, label %32, label %30

30:                                               ; preds = %26, %21
  %31 = phi ptr [ inttoptr (i32 -11 to ptr), %26 ], [ inttoptr (i32 -22 to ptr), %21 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tty_ldiscs_lock, i32 noundef %23) #9
  br label %39

32:                                               ; preds = %26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tty_ldiscs_lock, i32 noundef %23) #9
  %33 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %39, label %34

34:                                               ; preds = %32, %14
  %35 = phi ptr [ %24, %32 ], [ %7, %14 ]
  %36 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %37 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 36032, i32 noundef 8) #10
  store ptr %35, ptr %37, align 8
  %38 = getelementptr inbounds %struct.tty_ldisc, ptr %37, i32 0, i32 1
  store ptr %0, ptr %38, align 4
  br label %39

39:                                               ; preds = %34, %32, %30, %16, %2
  %40 = phi ptr [ %37, %34 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -1 to ptr), %16 ], [ %31, %30 ], [ %24, %32 ]
  ret ptr %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tty_ldisc_put(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %3 = load i1, ptr @tty_ldisc_put.__already_done, align 1
  %4 = xor i1 %3, true
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %1
  store i1 true, ptr @tty_ldisc_put.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 181, i32 noundef 9, ptr noundef null) #9
  br label %7

7:                                                ; preds = %6, %1
  br i1 %2, label %13, label %8

8:                                                ; preds = %7
  %9 = load ptr, ptr %0, align 4
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tty_ldiscs_lock) #9
  %11 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %9, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  tail call void @module_put(ptr noundef %12) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tty_ldiscs_lock, i32 noundef %10) #9
  tail call void @kfree(ptr noundef nonnull %0) #9
  br label %13

13:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tty_ldisc_restore(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call fastcc i32 @tty_ldisc_failto(ptr noundef %0, i32 noundef %5)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = tail call ptr @tty_name(ptr noundef %0) #9
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %9) #11
  %11 = tail call fastcc i32 @tty_ldisc_failto(ptr noundef %0, i32 noundef 0)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = tail call fastcc i32 @tty_ldisc_failto(ptr noundef %0, i32 noundef 27)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.5, ptr noundef %9) #12
  unreachable

17:                                               ; preds = %13, %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tty_buffer_restart_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_ldisc_reinit(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @tty_ldisc_get(ptr noundef %0, i32 noundef %1)
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/tty_ldisc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 650, 0\0A.popsection", ""() #9, !srcloc !10
  unreachable

8:                                                ; preds = %5
  %9 = ptrtoint ptr %3 to i32
  br label %72

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %39, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 2048
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 453, i32 noundef 9, ptr noundef null) #9
  br label %20

20:                                               ; preds = %19, %14
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %15) #9
  %21 = load ptr, ptr %12, align 4
  %22 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call void %23(ptr noundef %0) #9
  br label %26

26:                                               ; preds = %25, %20
  %27 = load ptr, ptr %11, align 4
  %28 = icmp eq ptr %27, null
  %29 = load i1, ptr @tty_ldisc_put.__already_done, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %33, !prof !8

32:                                               ; preds = %26
  store i1 true, ptr @tty_ldisc_put.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 181, i32 noundef 9, ptr noundef null) #9
  br label %33

33:                                               ; preds = %32, %26
  br i1 %28, label %39, label %34

34:                                               ; preds = %33
  %35 = load ptr, ptr %27, align 4
  %36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tty_ldiscs_lock) #9
  %37 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %35, i32 0, i32 16
  %38 = load ptr, ptr %37, align 4
  tail call void @module_put(ptr noundef %38) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tty_ldiscs_lock, i32 noundef %36) #9
  tail call void @kfree(ptr noundef nonnull %27) #9
  br label %39

39:                                               ; preds = %34, %33, %10
  store ptr %3, ptr %11, align 4
  %40 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  tail call void @down_write(ptr noundef %40) #9
  %41 = trunc i32 %1 to i8
  %42 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 4
  store i8 %41, ptr %42, align 4
  tail call void @up_write(ptr noundef %40) #9
  %43 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  store ptr null, ptr %43, align 4
  %44 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 22
  store i32 0, ptr %44, align 4
  %45 = load ptr, ptr %11, align 4
  %46 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %47 = tail call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %46) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49, !prof !9

49:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 429, i32 noundef 9, ptr noundef null) #9
  br label %50

50:                                               ; preds = %49, %39
  %51 = load ptr, ptr %45, align 4
  %52 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %72, label %55

55:                                               ; preds = %50
  %56 = tail call i32 %53(ptr noundef %0) #9
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %55
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %46) #9
  %59 = load ptr, ptr %11, align 4
  %60 = icmp eq ptr %59, null
  %61 = load i1, ptr @tty_ldisc_put.__already_done, align 1
  %62 = xor i1 %61, true
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %64, label %65, !prof !8

64:                                               ; preds = %58
  store i1 true, ptr @tty_ldisc_put.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 181, i32 noundef 9, ptr noundef null) #9
  br label %65

65:                                               ; preds = %64, %58
  br i1 %60, label %71, label %66

66:                                               ; preds = %65
  %67 = load ptr, ptr %59, align 4
  %68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tty_ldiscs_lock) #9
  %69 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %67, i32 0, i32 16
  %70 = load ptr, ptr %69, align 4
  tail call void @module_put(ptr noundef %70) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tty_ldiscs_lock, i32 noundef %68) #9
  tail call void @kfree(ptr noundef nonnull %59) #9
  br label %71

71:                                               ; preds = %66, %65
  store ptr null, ptr %11, align 4
  br label %72

72:                                               ; preds = %71, %55, %50, %8
  %73 = phi i32 [ %9, %8 ], [ %56, %71 ], [ 0, %55 ], [ 0, %50 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_ldisc_hangup(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 6
  %4 = tail call i32 @ldsem_down_read_trylock(ptr noundef %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %39, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void %13(ptr noundef %0) #9
  br label %16

16:                                               ; preds = %15, %10
  tail call void @tty_driver_flush_buffer(ptr noundef %0) #9
  %17 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %22, i32 0, i32 13
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void %24(ptr noundef %0) #9
  br label %27

27:                                               ; preds = %26, %21, %16
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %28, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void %30(ptr noundef %0) #9
  br label %33

33:                                               ; preds = %32, %27
  %34 = getelementptr inbounds %struct.tty_ldisc, ptr %8, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.tty_struct, ptr %35, i32 0, i32 6
  br label %37

37:                                               ; preds = %33, %6
  %38 = phi ptr [ %36, %33 ], [ %3, %6 ]
  tail call void @ldsem_up_read(ptr noundef %38) #9
  br label %39

39:                                               ; preds = %37, %2
  %40 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %40, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 4 to ptr)) #9
  %41 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %41, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #9
  %42 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 20, ptr noundef %42) #9
  tail call void @__wake_up(ptr noundef %41, i32 noundef 1, i32 noundef 0, ptr noundef null) #9
  tail call void @__wake_up(ptr noundef %40, i32 noundef 1, i32 noundef 0, ptr noundef null) #9
  %43 = tail call i32 @ldsem_down_write(ptr noundef %3, i32 noundef 2147483647) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  tail call void @_set_bit(i32 noundef 22, ptr noundef %42) #9
  br label %46

46:                                               ; preds = %45, %39
  %47 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.tty_driver, ptr %48, i32 0, i32 13
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  tail call void @down_write(ptr noundef %54) #9
  %55 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  %56 = load ptr, ptr %47, align 4
  %57 = getelementptr inbounds %struct.tty_driver, ptr %56, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %55, ptr noundef align 4 dereferenceable(44) %57, i32 44, i1 false) #9
  %58 = tail call i32 @tty_termios_input_baud_rate(ptr noundef %55) #9
  %59 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 6
  store i32 %58, ptr %59, align 4
  %60 = tail call i32 @tty_termios_baud_rate(ptr noundef %55) #9
  %61 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 7
  store i32 %60, ptr %61, align 4
  tail call void @up_write(ptr noundef %54) #9
  br label %62

62:                                               ; preds = %53, %46
  %63 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %81, label %66

66:                                               ; preds = %62
  br i1 %1, label %67, label %80

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 4
  %69 = load i8, ptr %68, align 4
  %70 = zext i8 %69 to i32
  %71 = tail call i32 @tty_ldisc_reinit(ptr noundef %0, i32 noundef %70)
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = tail call i32 @tty_ldisc_reinit(ptr noundef %0, i32 noundef 0)
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = tail call i32 @tty_ldisc_reinit(ptr noundef %0, i32 noundef 27)
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81, !prof !8

79:                                               ; preds = %76
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 722, i32 noundef 9, ptr noundef null) #9
  br label %81

80:                                               ; preds = %66
  tail call fastcc void @tty_ldisc_kill(ptr noundef %0)
  br label %81

81:                                               ; preds = %80, %79, %76, %73, %67, %62
  tail call void @_clear_bit(i32 noundef 22, ptr noundef %42) #9
  tail call void @_clear_bit(i32 noundef 20, ptr noundef %42) #9
  tail call void @ldsem_up_write(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_flush_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tty_ldisc_kill(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 2048
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 453, i32 noundef 9, ptr noundef null) #9
  br label %11

11:                                               ; preds = %10, %5
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %6) #9
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void %14(ptr noundef %0) #9
  br label %17

17:                                               ; preds = %16, %11
  %18 = load ptr, ptr %2, align 4
  %19 = icmp eq ptr %18, null
  %20 = load i1, ptr @tty_ldisc_put.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !8

23:                                               ; preds = %17
  store i1 true, ptr @tty_ldisc_put.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 181, i32 noundef 9, ptr noundef null) #9
  br label %24

24:                                               ; preds = %23, %17
  br i1 %19, label %30, label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr %18, align 4
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tty_ldiscs_lock) #9
  %28 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %26, i32 0, i32 16
  %29 = load ptr, ptr %28, align 4
  tail call void @module_put(ptr noundef %29) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tty_ldiscs_lock, i32 noundef %27) #9
  tail call void @kfree(ptr noundef nonnull %18) #9
  br label %30

30:                                               ; preds = %25, %24
  store ptr null, ptr %2, align 4
  br label %31

31:                                               ; preds = %30, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_ldisc_setup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %6 = tail call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %5) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 429, i32 noundef 9, ptr noundef null) #9
  br label %9

9:                                                ; preds = %8, %2
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = tail call i32 %12(ptr noundef %0) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %5) #9
  br label %47

18:                                               ; preds = %14, %9
  %19 = icmp eq ptr %1, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16
  %24 = tail call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %23) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !9

26:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 429, i32 noundef 9, ptr noundef null) #9
  br label %27

27:                                               ; preds = %26, %20
  %28 = load ptr, ptr %22, align 4
  %29 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %47, label %32

32:                                               ; preds = %27
  %33 = tail call i32 %30(ptr noundef nonnull %1) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %23) #9
  %36 = load ptr, ptr %3, align 4
  %37 = load volatile i32, ptr %5, align 4
  %38 = and i32 %37, 2048
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41, !prof !8

40:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 453, i32 noundef 9, ptr noundef null) #9
  br label %41

41:                                               ; preds = %40, %35
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %5) #9
  %42 = load ptr, ptr %36, align 4
  %43 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  tail call void %44(ptr noundef %0) #9
  br label %47

47:                                               ; preds = %46, %41, %32, %27, %18, %17
  %48 = phi i32 [ %15, %17 ], [ 0, %18 ], [ %33, %41 ], [ %33, %46 ], [ 0, %32 ], [ 0, %27 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_ldisc_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, %0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 6
  %7 = tail call i32 @ldsem_down_write(ptr noundef %6, i32 noundef 2147483647) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %44, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 6
  %11 = tail call i32 @ldsem_down_write(ptr noundef %10, i32 noundef 2147483647) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %9
  tail call void @ldsem_up_write(ptr noundef %6) #9
  br label %44

14:                                               ; preds = %1
  %15 = icmp eq ptr %3, %0
  %16 = load i1, ptr @tty_ldisc_lock_pair_timeout.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %14
  store i1 true, ptr @tty_ldisc_lock_pair_timeout.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 344, i32 noundef 9, ptr noundef null) #9
  br label %20

20:                                               ; preds = %19, %14
  %21 = icmp eq ptr %3, null
  %22 = or i1 %21, %15
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 6
  %25 = tail call i32 @ldsem_down_write(ptr noundef %24, i32 noundef 2147483647) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 6
  %29 = tail call i32 @ldsem_down_write(ptr noundef %28, i32 noundef 2147483647) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 22, ptr noundef %32) #9
  br label %41

33:                                               ; preds = %27
  tail call void @ldsem_up_write(ptr noundef %24) #9
  br label %43

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 6
  %36 = tail call i32 @ldsem_down_write(ptr noundef %35, i32 noundef 2147483647) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34, %9
  %39 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 22, ptr noundef %39) #9
  %40 = icmp eq ptr %3, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %38, %31
  %42 = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 22, ptr noundef %42) #9
  br label %43

43:                                               ; preds = %41, %33, %23
  tail call fastcc void @tty_ldisc_kill(ptr noundef %0)
  br label %47

44:                                               ; preds = %34, %13, %5
  tail call fastcc void @tty_ldisc_kill(ptr noundef %0)
  %45 = icmp eq ptr %3, null
  br i1 %45, label %49, label %47

46:                                               ; preds = %38
  tail call fastcc void @tty_ldisc_kill(ptr noundef %0)
  br label %49

47:                                               ; preds = %44, %43
  tail call fastcc void @tty_ldisc_kill(ptr noundef nonnull %3)
  %48 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 6
  tail call void @ldsem_up_write(ptr noundef %48) #9
  br label %49

49:                                               ; preds = %47, %46, %44
  %50 = phi ptr [ %0, %46 ], [ %3, %47 ], [ %0, %44 ]
  %51 = getelementptr inbounds %struct.tty_struct, ptr %50, i32 0, i32 6
  tail call void @ldsem_up_write(ptr noundef %51) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_ldisc_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @tty_ldisc_get(ptr noundef %0, i32 noundef 0)
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7
  store ptr %2, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %5, %4 ], [ 0, %6 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_ldisc_deinit(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tty_ldiscs_lock) #9
  %8 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %6, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  tail call void @module_put(ptr noundef %9) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tty_ldiscs_lock, i32 noundef %7) #9
  tail call void @kfree(ptr noundef nonnull %3) #9
  br label %10

10:                                               ; preds = %5, %1
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_sysctl_init() local_unnamed_addr #0 {
  %1 = tail call ptr @register_sysctl_table(ptr noundef nonnull @tty_root_table) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ldsem_down_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ldsem_up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tty_ldisc_failto(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @tty_ldisc_get(ptr noundef %0, i32 noundef %1)
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %40

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7
  store ptr %3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  tail call void @down_write(ptr noundef %9) #9
  %10 = trunc i32 %1 to i8
  %11 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 4
  store i8 %10, ptr %11, align 4
  tail call void @up_write(ptr noundef %9) #9
  %12 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 22
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %15 = tail call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %14) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17, !prof !9

17:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 429, i32 noundef 9, ptr noundef null) #9
  br label %18

18:                                               ; preds = %17, %7
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %18
  %24 = tail call i32 %21(ptr noundef %0) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %23
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %14) #9
  %27 = icmp slt i32 %24, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %26
  %29 = icmp eq ptr %3, null
  %30 = load i1, ptr @tty_ldisc_put.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !8

33:                                               ; preds = %28
  store i1 true, ptr @tty_ldisc_put.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 181, i32 noundef 9, ptr noundef null) #9
  br label %34

34:                                               ; preds = %33, %28
  br i1 %29, label %40, label %35

35:                                               ; preds = %34
  %36 = load ptr, ptr %3, align 4
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tty_ldiscs_lock) #9
  %38 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %36, i32 0, i32 16
  %39 = load ptr, ptr %38, align 4
  tail call void @module_put(ptr noundef %39) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tty_ldiscs_lock, i32 noundef %37) #9
  tail call void @kfree(ptr noundef nonnull %3) #9
  br label %40

40:                                               ; preds = %35, %34, %26, %23, %18, %5
  %41 = phi i32 [ %6, %5 ], [ %24, %26 ], [ %24, %34 ], [ %24, %35 ], [ 0, %23 ], [ 0, %18 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_input_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { cold noreturn nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2153034250, i64 2153034738, i64 2153034287, i64 2153034343, i64 2153034377, i64 2153034401, i64 2153034442, i64 2153034463, i64 2153034491, i64 2153034525}
