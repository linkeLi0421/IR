; ModuleID = '/llk/IR/drivers/tty/n_tty.c_pt.bc'
source_filename = "../drivers/tty/n_tty.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_n_tty_inherit_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22n_tty_inherit_ops\22\09\09\09\09\09"
module asm "__kstrtabns_n_tty_inherit_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.n_tty_data = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i8, i8, [4096 x i8], [128 x i32], [4096 x i8], i32, i32, i32, i32, i32, %struct.mutex, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.62, %struct.anon.63, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.62 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.63 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.61, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.61 = type { ptr }
%struct.llist_head = type { ptr }

@n_tty_ops = internal global %struct.tty_ldisc_ops { ptr @.str, i32 0, ptr @n_tty_open, ptr @n_tty_close, ptr @n_tty_flush_buffer, ptr @n_tty_read, ptr @n_tty_write, ptr @n_tty_ioctl, ptr null, ptr @n_tty_set_termios, ptr @n_tty_poll, ptr null, ptr @n_tty_receive_buf, ptr @n_tty_write_wakeup, ptr null, ptr @n_tty_receive_buf2, ptr null }, align 4
@__kstrtab_n_tty_inherit_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_n_tty_inherit_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_n_tty_inherit_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @n_tty_inherit_ops to i32), ptr @__kstrtab_n_tty_inherit_ops, ptr @__kstrtabns_n_tty_inherit_ops }, section "___ksymtab_gpl+n_tty_inherit_ops", align 4
@.str = private unnamed_addr constant [6 x i8] c"n_tty\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@n_tty_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"&ldata->atomic_read_lock\00", align 1
@n_tty_open.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"&ldata->output_lock\00", align 1
@n_tty_kick_worker._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.n_tty_kick_worker = private unnamed_addr constant [18 x i8] c"n_tty_kick_worker\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"drivers/tty/n_tty.c\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"scheduling with invalid itty\0A\00", align 1
@n_tty_kick_worker._rs.6 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"scheduling buffer work for halted ldisc\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"\013%s %s: unknown flag %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"\014%s %s: %d input overrun(s)\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_n_tty_inherit_ops], section "llvm.metadata"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @n_tty_inherit_ops(ptr nocapture noundef writeonly %0) #0 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(68) @n_tty_ops, i32 64, i1 false)
  %2 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %0, i32 0, i32 16
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @n_tty_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @tty_register_ldisc(ptr noundef nonnull @n_tty_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_ldisc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @n_tty_open(ptr noundef %0) #4 {
  %2 = tail call noalias ptr @vzalloc(i32 noundef 8832) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = getelementptr inbounds %struct.n_tty_data, ptr %2, i32 0, i32 7
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.n_tty_data, ptr %2, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @n_tty_open.__key) #11
  %8 = getelementptr inbounds %struct.n_tty_data, ptr %2, i32 0, i32 20
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull @n_tty_open.__key.2) #11
  %9 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 33
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 22, ptr noundef %11) #11
  tail call void @n_tty_set_termios(ptr noundef %0, ptr noundef null)
  tail call void @tty_unthrottle(ptr noundef %0) #11
  br label %12

12:                                               ; preds = %4, %1
  %13 = phi i32 [ 0, %4 ], [ -12, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @n_tty_close(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 20, i32 4
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #11
  %14 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 3
  %15 = load i8, ptr %14, align 4
  %16 = or i8 %15, 1
  store i8 %16, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #11
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %18, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %19

19:                                               ; preds = %11, %7, %1
  %20 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  tail call void @down_write(ptr noundef %20) #11
  tail call void @vfree(ptr noundef %3) #11
  store ptr null, ptr %2, align 4
  tail call void @up_write(ptr noundef %20) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @n_tty_flush_buffer(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  tail call void @down_write(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 14
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 2
  store i32 0, ptr %6, align 4
  store i32 0, ptr %4, align 4
  %7 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 15
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 10
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 12
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(512) %11, i8 0, i32 512, i1 false) #11
  %12 = and i8 %10, -35
  store i8 %12, ptr %9, align 1
  tail call fastcc void @n_tty_kick_worker(ptr noundef %0)
  %13 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.tty_struct, ptr %14, i32 0, i32 20, i32 4
  %18 = load i8, ptr %17, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #11
  %23 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 3
  %24 = load i8, ptr %23, align 4
  %25 = or i8 %24, 1
  store i8 %25, ptr %23, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #11
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr inbounds %struct.tty_struct, ptr %26, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %27, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %28

28:                                               ; preds = %20, %16, %1
  tail call void @up_write(ptr noundef %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @n_tty_read(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #4 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.wait_queue_entry, align 4
  store i32 %3, ptr %7, align 4
  %10 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store ptr %2, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #11
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %9, i32 0, i32 1
  %13 = tail call ptr @llvm.thread.pointer() #11
  store i32 0, ptr %9, align 4
  store ptr %13, ptr %12, align 4
  %14 = getelementptr inbounds %struct.wait_queue_entry, ptr %9, i32 0, i32 2
  store ptr @woken_wake_function, ptr %14, align 4
  %15 = getelementptr inbounds %struct.wait_queue_entry, ptr %9, i32 0, i32 3
  store ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.wait_queue_entry, ptr %9, i32 0, i32 3, i32 1
  store ptr %15, ptr %16, align 4
  %17 = load ptr, ptr %4, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %93, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.n_tty_data, ptr %11, i32 0, i32 10
  %21 = load i8, ptr %20, align 1
  %22 = and i8 %21, 16
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 65536
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = call fastcc zeroext i1 @canon_copy_from_read_buf(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %7)
  br i1 %30, label %31, label %86

31:                                               ; preds = %29
  %32 = load ptr, ptr %8, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = ptrtoint ptr %2 to i32
  %35 = sub i32 %33, %34
  br label %353

36:                                               ; preds = %24, %19
  %37 = getelementptr inbounds %struct.n_tty_data, ptr %11, i32 0, i32 1
  %38 = load volatile i32, ptr %37, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %39 = getelementptr inbounds %struct.n_tty_data, ptr %11, i32 0, i32 14
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 4095
  %42 = sub i32 %38, %40
  %43 = sub nuw nsw i32 4096, %41
  %44 = call i32 @llvm.umin.i32(i32 %42, i32 %43) #11
  %45 = call i32 @llvm.umin.i32(i32 %3, i32 %44) #11
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %86, label %47

47:                                               ; preds = %36
  %48 = getelementptr %struct.n_tty_data, ptr %11, i32 0, i32 11, i32 %41
  %49 = load ptr, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %49, ptr align 1 %48, i32 %45, i1 false) #11
  %50 = icmp eq i32 %45, 1
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i8, ptr %48, align 1
  %53 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 4
  %54 = load i8, ptr %53, align 1
  %55 = icmp ne i8 %52, %54
  br label %56

56:                                               ; preds = %51, %47
  %57 = phi i1 [ true, %47 ], [ %55, %51 ]
  %58 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 10
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  call void @llvm.memset.p0.i32(ptr align 1 %48, i8 0, i32 %45, i1 false) #11
  br label %63

63:                                               ; preds = %62, %56
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %64 = load i32, ptr %39, align 4
  %65 = add i32 %64, %45
  store volatile i32 %65, ptr %39, align 4
  %66 = load i32, ptr %58, align 4
  %67 = and i32 %66, 65536
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %63
  %70 = load i8, ptr %20, align 1
  %71 = and i8 %70, 16
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %72, i1 true, i1 %57
  %74 = xor i1 %73, true
  %75 = icmp eq i32 %38, %65
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %86, label %77

77:                                               ; preds = %69, %63
  %78 = load ptr, ptr %8, align 4
  %79 = getelementptr i8, ptr %78, i32 %45
  store ptr %79, ptr %8, align 4
  %80 = sub i32 %3, %45
  store i32 %80, ptr %7, align 4
  %81 = icmp eq i32 %38, %65
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = ptrtoint ptr %79 to i32
  %84 = ptrtoint ptr %2 to i32
  %85 = sub i32 %83, %84
  br label %353

86:                                               ; preds = %77, %69, %36, %29
  call fastcc void @n_tty_kick_worker(ptr noundef %0)
  call fastcc void @n_tty_check_unthrottle(ptr noundef %0)
  %87 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  call void @up_read(ptr noundef %87) #11
  %88 = getelementptr inbounds %struct.n_tty_data, ptr %11, i32 0, i32 19
  call void @mutex_unlock(ptr noundef %88) #11
  store ptr null, ptr %4, align 4
  %89 = load ptr, ptr %8, align 4
  %90 = ptrtoint ptr %89 to i32
  %91 = ptrtoint ptr %2 to i32
  %92 = sub i32 %90, %91
  br label %353

93:                                               ; preds = %6
  %94 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.file_operations, ptr %95, i32 0, i32 5
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, @redirected_tty_write
  br i1 %98, label %102, label %99

99:                                               ; preds = %93
  %100 = call i32 @__tty_check_change(ptr noundef %0, i32 noundef 21) #11
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %353, label %102

102:                                              ; preds = %99, %93
  %103 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, 2048
  %106 = icmp eq i32 %105, 0
  %107 = getelementptr inbounds %struct.n_tty_data, ptr %11, i32 0, i32 19
  br i1 %106, label %111, label %108

108:                                              ; preds = %102
  %109 = call i32 @mutex_trylock(ptr noundef %107) #11
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %353, label %114

111:                                              ; preds = %102
  %112 = call i32 @mutex_lock_interruptible(ptr noundef %107) #11
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %353

114:                                              ; preds = %111, %108
  %115 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  call void @down_read(ptr noundef %115) #11
  %116 = getelementptr inbounds %struct.n_tty_data, ptr %11, i32 0, i32 10
  %117 = load i8, ptr %116, align 1
  %118 = and i8 %117, 16
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %114
  %121 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 6
  %122 = load i8, ptr %121, align 1
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %120
  %125 = zext i8 %122 to i32
  %126 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 5
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  %129 = mul nuw nsw i32 %128, 10
  br label %135

130:                                              ; preds = %120
  %131 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 5
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = mul nuw nsw i32 %133, 10
  br label %135

135:                                              ; preds = %130, %124, %114
  %136 = phi i32 [ 0, %114 ], [ %125, %124 ], [ 1, %130 ]
  %137 = phi i32 [ 0, %114 ], [ %129, %124 ], [ 0, %130 ]
  %138 = phi i32 [ 2147483647, %114 ], [ 2147483647, %124 ], [ %134, %130 ]
  %139 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 4
  %140 = load i8, ptr %139, align 1, !range !8
  %141 = icmp eq i8 %140, 0
  %142 = getelementptr inbounds %struct.n_tty_data, ptr %11, i32 0, i32 14
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 27
  call void @add_wait_queue(ptr noundef %144, ptr noundef nonnull %9) #11
  %145 = icmp eq i32 %3, 0
  br i1 %145, label %340, label %146

146:                                              ; preds = %135
  %147 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %148 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %149 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 37
  %150 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %151 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 4
  %152 = ptrtoint ptr %2 to i32
  %153 = icmp eq i32 %137, 0
  %154 = getelementptr i8, ptr %2, i32 1
  %155 = xor i1 %141, true
  br label %156

156:                                              ; preds = %255, %146
  %157 = phi i32 [ %3, %146 ], [ %256, %255 ]
  %158 = phi i32 [ %138, %146 ], [ %257, %255 ]
  br i1 %141, label %179, label %159

159:                                              ; preds = %156
  %160 = load ptr, ptr %147, align 4
  %161 = getelementptr inbounds %struct.tty_struct, ptr %160, i32 0, i32 20, i32 3
  %162 = load i8, ptr %161, align 4
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %179, label %164

164:                                              ; preds = %159
  %165 = load ptr, ptr %8, align 4
  %166 = icmp eq ptr %165, %2
  br i1 %166, label %167, label %340

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.tty_struct, ptr %160, i32 0, i32 20
  call void @_raw_spin_lock_irq(ptr noundef %168) #11
  %169 = load ptr, ptr %147, align 4
  %170 = getelementptr inbounds %struct.tty_struct, ptr %169, i32 0, i32 20, i32 3
  %171 = load i8, ptr %170, align 4
  store i8 0, ptr %170, align 4
  %172 = load ptr, ptr %147, align 4
  %173 = getelementptr inbounds %struct.tty_struct, ptr %172, i32 0, i32 20
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %174 = load i16, ptr %173, align 4
  %175 = add i16 %174, 1
  store i16 %175, ptr %173, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %176 = load ptr, ptr %8, align 4
  %177 = getelementptr i8, ptr %176, i32 1
  store ptr %177, ptr %8, align 4
  store i8 %171, ptr %176, align 1
  %178 = add i32 %157, -1
  store i32 %178, ptr %7, align 4
  br label %340

179:                                              ; preds = %159, %156
  %180 = load ptr, ptr %10, align 4
  %181 = getelementptr inbounds %struct.n_tty_data, ptr %180, i32 0, i32 10
  %182 = load i8, ptr %181, align 1
  %183 = and i8 %182, 16
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %179
  %186 = load i32, ptr %148, align 4
  %187 = and i32 %186, 65536
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %185, %179
  %190 = getelementptr inbounds %struct.n_tty_data, ptr %180, i32 0, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr inbounds %struct.n_tty_data, ptr %180, i32 0, i32 14
  %193 = load i32, ptr %192, align 4
  %194 = icmp eq i32 %191, %193
  br i1 %194, label %201, label %259

195:                                              ; preds = %185
  %196 = getelementptr inbounds %struct.n_tty_data, ptr %180, i32 0, i32 2
  %197 = load i32, ptr %196, align 4
  %198 = getelementptr inbounds %struct.n_tty_data, ptr %180, i32 0, i32 14
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %197, %199
  br i1 %200, label %201, label %259

201:                                              ; preds = %195, %189
  call void @up_read(ptr noundef %115) #11
  %202 = load ptr, ptr %149, align 4
  call void @tty_buffer_flush_work(ptr noundef %202) #11
  call void @down_read(ptr noundef %115) #11
  %203 = load ptr, ptr %10, align 4
  %204 = getelementptr inbounds %struct.n_tty_data, ptr %203, i32 0, i32 10
  %205 = load i8, ptr %204, align 1
  %206 = and i8 %205, 16
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %201
  %209 = load i32, ptr %148, align 4
  %210 = and i32 %209, 65536
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %208, %201
  %213 = getelementptr inbounds %struct.n_tty_data, ptr %203, i32 0, i32 1
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr inbounds %struct.n_tty_data, ptr %203, i32 0, i32 14
  %216 = load i32, ptr %215, align 4
  %217 = icmp eq i32 %214, %216
  br i1 %217, label %224, label %259

218:                                              ; preds = %208
  %219 = getelementptr inbounds %struct.n_tty_data, ptr %203, i32 0, i32 2
  %220 = load i32, ptr %219, align 4
  %221 = getelementptr inbounds %struct.n_tty_data, ptr %203, i32 0, i32 14
  %222 = load i32, ptr %221, align 4
  %223 = icmp eq i32 %220, %222
  br i1 %223, label %224, label %259

224:                                              ; preds = %218, %212
  %225 = load volatile i32, ptr %150, align 4
  %226 = and i32 %225, 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %340

228:                                              ; preds = %224
  %229 = call i32 @tty_hung_up_p(ptr noundef %1) #11
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %340

231:                                              ; preds = %228
  %232 = load volatile i32, ptr %150, align 4
  %233 = and i32 %232, 524288
  %234 = icmp eq i32 %233, 0
  %235 = icmp ne i32 %158, 0
  %236 = select i1 %234, i1 %235, i1 false
  br i1 %236, label %237, label %340

237:                                              ; preds = %231
  %238 = load i32, ptr %103, align 4
  %239 = and i32 %238, 2048
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %340

241:                                              ; preds = %237
  %242 = load volatile i32, ptr %150, align 4
  %243 = and i32 %242, 1048576
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %340

245:                                              ; preds = %241
  %246 = load volatile i32, ptr %13, align 4
  %247 = and i32 %246, 256
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %340, !prof !16

249:                                              ; preds = %245
  %250 = load volatile i32, ptr %13, align 4
  %251 = and i32 %250, 1
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %340

253:                                              ; preds = %249
  call void @up_read(ptr noundef %115) #11
  %254 = call i32 @wait_woken(ptr noundef nonnull %9, i32 noundef 1, i32 noundef %158) #11
  call void @down_read(ptr noundef %115) #11
  br label %255

255:                                              ; preds = %337, %253
  %256 = phi i32 [ %339, %337 ], [ %157, %253 ]
  %257 = phi i32 [ %338, %337 ], [ %254, %253 ]
  %258 = icmp eq i32 %256, 0
  br i1 %258, label %340, label %156

259:                                              ; preds = %218, %212, %195, %189
  %260 = phi ptr [ %203, %218 ], [ %180, %195 ], [ %180, %189 ], [ %203, %212 ]
  %261 = load i8, ptr %116, align 1
  %262 = and i8 %261, 16
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %270, label %264

264:                                              ; preds = %259
  %265 = load i32, ptr %148, align 4
  %266 = and i32 %265, 65536
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %264
  %269 = call fastcc zeroext i1 @canon_copy_from_read_buf(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %7)
  br i1 %269, label %328, label %332

270:                                              ; preds = %264, %259
  %271 = load ptr, ptr %8, align 4
  %272 = icmp eq ptr %271, %2
  %273 = select i1 %155, i1 %272, i1 false
  br i1 %273, label %274, label %277

274:                                              ; preds = %270
  store ptr %154, ptr %8, align 4
  store i8 0, ptr %2, align 1
  %275 = add i32 %157, -1
  store i32 %275, ptr %7, align 4
  %276 = load ptr, ptr %10, align 4
  br label %277

277:                                              ; preds = %274, %270
  %278 = phi i32 [ %275, %274 ], [ %157, %270 ]
  %279 = phi ptr [ %276, %274 ], [ %260, %270 ]
  %280 = getelementptr inbounds %struct.n_tty_data, ptr %279, i32 0, i32 1
  %281 = load volatile i32, ptr %280, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %282 = getelementptr inbounds %struct.n_tty_data, ptr %279, i32 0, i32 14
  %283 = load i32, ptr %282, align 4
  %284 = and i32 %283, 4095
  %285 = sub i32 %281, %283
  %286 = sub nuw nsw i32 4096, %284
  %287 = call i32 @llvm.umin.i32(i32 %285, i32 %286) #11
  %288 = call i32 @llvm.umin.i32(i32 %278, i32 %287) #11
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %332, label %290

290:                                              ; preds = %277
  %291 = getelementptr %struct.n_tty_data, ptr %279, i32 0, i32 11, i32 %284
  %292 = load ptr, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %292, ptr align 1 %291, i32 %288, i1 false) #11
  %293 = icmp eq i32 %288, 1
  br i1 %293, label %294, label %298

294:                                              ; preds = %290
  %295 = load i8, ptr %291, align 1
  %296 = load i8, ptr %151, align 1
  %297 = icmp ne i8 %295, %296
  br label %298

298:                                              ; preds = %294, %290
  %299 = phi i1 [ true, %290 ], [ %297, %294 ]
  %300 = load i32, ptr %148, align 4
  %301 = and i32 %300, 10
  %302 = icmp eq i32 %301, 2
  br i1 %302, label %303, label %304

303:                                              ; preds = %298
  call void @llvm.memset.p0.i32(ptr align 1 %291, i8 0, i32 %288, i1 false) #11
  br label %304

304:                                              ; preds = %303, %298
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %305 = load i32, ptr %282, align 4
  %306 = add i32 %305, %288
  store volatile i32 %306, ptr %282, align 4
  %307 = load i32, ptr %148, align 4
  %308 = and i32 %307, 65536
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %319, label %310

310:                                              ; preds = %304
  %311 = getelementptr inbounds %struct.n_tty_data, ptr %279, i32 0, i32 10
  %312 = load i8, ptr %311, align 1
  %313 = and i8 %312, 16
  %314 = icmp eq i8 %313, 0
  %315 = select i1 %314, i1 true, i1 %299
  %316 = xor i1 %315, true
  %317 = icmp eq i32 %281, %306
  %318 = select i1 %316, i1 %317, i1 false
  br i1 %318, label %332, label %319

319:                                              ; preds = %310, %304
  %320 = load ptr, ptr %8, align 4
  %321 = getelementptr i8, ptr %320, i32 %288
  store ptr %321, ptr %8, align 4
  %322 = sub i32 %278, %288
  store i32 %322, ptr %7, align 4
  %323 = icmp eq i32 %281, %306
  %324 = ptrtoint ptr %321 to i32
  %325 = sub i32 %324, %152
  %326 = icmp slt i32 %325, %136
  %327 = select i1 %323, i1 true, i1 %326
  br i1 %327, label %332, label %328

328:                                              ; preds = %319, %268
  call void @remove_wait_queue(ptr noundef %144, ptr noundef nonnull %9) #11
  store ptr %4, ptr %4, align 4
  %329 = load ptr, ptr %8, align 4
  %330 = ptrtoint ptr %329 to i32
  %331 = sub i32 %330, %152
  br label %353

332:                                              ; preds = %319, %310, %277, %268
  call fastcc void @n_tty_check_unthrottle(ptr noundef %0)
  %333 = load ptr, ptr %8, align 4
  %334 = ptrtoint ptr %333 to i32
  %335 = sub i32 %334, %152
  %336 = icmp slt i32 %335, %136
  br i1 %336, label %337, label %340

337:                                              ; preds = %332
  %338 = select i1 %153, i32 %158, i32 %137
  %339 = load i32, ptr %7, align 4
  br label %255

340:                                              ; preds = %332, %255, %249, %245, %241, %237, %231, %228, %224, %167, %164, %135
  %341 = phi i32 [ 0, %164 ], [ 0, %167 ], [ 0, %135 ], [ 0, %255 ], [ 0, %228 ], [ 0, %231 ], [ 0, %332 ], [ -5, %224 ], [ -11, %241 ], [ -512, %249 ], [ -11, %237 ], [ -512, %245 ]
  %342 = load i32, ptr %142, align 4
  %343 = icmp eq i32 %143, %342
  br i1 %343, label %345, label %344

344:                                              ; preds = %340
  call fastcc void @n_tty_kick_worker(ptr noundef %0)
  br label %345

345:                                              ; preds = %344, %340
  call void @up_read(ptr noundef %115) #11
  call void @remove_wait_queue(ptr noundef %144, ptr noundef nonnull %9) #11
  %346 = getelementptr inbounds %struct.n_tty_data, ptr %11, i32 0, i32 19
  call void @mutex_unlock(ptr noundef %346) #11
  %347 = load ptr, ptr %8, align 4
  %348 = ptrtoint ptr %347 to i32
  %349 = ptrtoint ptr %2 to i32
  %350 = sub i32 %348, %349
  %351 = icmp eq ptr %347, %2
  %352 = select i1 %351, i32 %341, i32 %350
  br label %353

353:                                              ; preds = %345, %328, %111, %108, %99, %86, %82, %31
  %354 = phi i32 [ %85, %82 ], [ %92, %86 ], [ %35, %31 ], [ %352, %345 ], [ %331, %328 ], [ %100, %99 ], [ -11, %108 ], [ -512, %111 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  ret i32 %354
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @n_tty_write(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #4 {
  %5 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  %7 = tail call ptr @llvm.thread.pointer() #11
  store i32 0, ptr %5, align 4
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  store ptr @woken_wake_function, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3
  store ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.file_operations, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, @redirected_tty_write
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = call i32 @tty_check_change(ptr noundef %0) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %245

24:                                               ; preds = %21, %15, %4
  %25 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  call void @down_read(ptr noundef %25) #11
  %26 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.n_tty_data, ptr %27, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.n_tty_data, ptr %27, i32 0, i32 18
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %46, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.n_tty_data, ptr %27, i32 0, i32 20
  call void @mutex_lock(ptr noundef %34) #11
  %35 = load i32, ptr %28, align 4
  %36 = getelementptr inbounds %struct.n_tty_data, ptr %27, i32 0, i32 4
  store i32 %35, ptr %36, align 4
  %37 = call fastcc i32 @__process_echoes(ptr noundef %0) #11
  call void @mutex_unlock(ptr noundef %34) #11
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.tty_operations, ptr %41, i32 0, i32 9
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  call void %43(ptr noundef %0) #11
  br label %46

46:                                               ; preds = %45, %39, %33, %24
  %47 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 26
  call void @add_wait_queue(ptr noundef %47, ptr noundef nonnull %5) #11
  %48 = load volatile i32, ptr %7, align 4
  %49 = and i32 %48, 256
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %221, !prof !16

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %53 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 1
  %54 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  %55 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %56 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %57 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  br label %58

58:                                               ; preds = %216, %51
  %59 = phi ptr [ %2, %51 ], [ %207, %216 ]
  %60 = phi i32 [ %3, %51 ], [ %208, %216 ]
  %61 = load volatile i32, ptr %7, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %221

64:                                               ; preds = %58
  %65 = call i32 @tty_hung_up_p(ptr noundef %1) #11
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %221

67:                                               ; preds = %64
  %68 = load ptr, ptr %52, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.tty_struct, ptr %68, i32 0, i32 17
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %221, label %74

74:                                               ; preds = %70, %67
  %75 = load i32, ptr %53, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  %78 = icmp eq i32 %60, 0
  br i1 %77, label %184, label %79

79:                                               ; preds = %74
  br i1 %78, label %176, label %80

80:                                               ; preds = %172, %79
  %81 = phi ptr [ %173, %172 ], [ %59, %79 ]
  %82 = phi i32 [ %174, %172 ], [ %60, %79 ]
  %83 = load ptr, ptr %26, align 4
  %84 = getelementptr inbounds %struct.n_tty_data, ptr %83, i32 0, i32 20
  call void @mutex_lock(ptr noundef %84) #11
  %85 = call i32 @tty_write_room(ptr noundef %0) #11
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %156, label %87

87:                                               ; preds = %80
  %88 = call i32 @llvm.umin.i32(i32 %85, i32 %82) #11
  %89 = getelementptr inbounds %struct.n_tty_data, ptr %83, i32 0, i32 16
  %90 = getelementptr inbounds %struct.n_tty_data, ptr %83, i32 0, i32 17
  br label %91

91:                                               ; preds = %146, %87
  %92 = phi ptr [ %81, %87 ], [ %148, %146 ]
  %93 = phi i32 [ 0, %87 ], [ %147, %146 ]
  %94 = load i8, ptr %92, align 1
  switch i8 %94, label %126 [
    i8 10, label %95
    i8 13, label %107
    i8 9, label %150
    i8 8, label %121
  ]

95:                                               ; preds = %91
  %96 = load i32, ptr %53, align 4
  %97 = and i32 %96, 32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  store i32 0, ptr %89, align 4
  %100 = load i32, ptr %53, align 4
  br label %101

101:                                              ; preds = %99, %95
  %102 = phi i32 [ %100, %99 ], [ %96, %95 ]
  %103 = and i32 %102, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %150

105:                                              ; preds = %101
  %106 = load i32, ptr %89, align 4
  store i32 %106, ptr %90, align 4
  br label %146

107:                                              ; preds = %91
  %108 = load i32, ptr %53, align 4
  %109 = and i32 %108, 16
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %107
  %112 = load i32, ptr %89, align 4
  %113 = icmp ne i32 %112, 0
  %114 = and i32 %108, 8
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %113, i1 %115, i1 false
  br i1 %116, label %120, label %150

117:                                              ; preds = %107
  %118 = and i32 %108, 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %150

120:                                              ; preds = %117, %111
  store i32 0, ptr %89, align 4
  store i32 0, ptr %90, align 4
  br label %146

121:                                              ; preds = %91
  %122 = load i32, ptr %89, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %146, label %124

124:                                              ; preds = %121
  %125 = add i32 %122, -1
  store i32 %125, ptr %89, align 4
  br label %146

126:                                              ; preds = %91
  %127 = zext i8 %94 to i32
  %128 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %127
  %129 = load i8, ptr %128, align 1
  %130 = and i8 %129, 8
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %126
  %133 = load i32, ptr %53, align 4
  %134 = and i32 %133, 2
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %132
  %137 = load i32, ptr %54, align 4
  %138 = and i32 %137, 16384
  %139 = icmp eq i32 %138, 0
  %140 = and i8 %94, -64
  %141 = icmp ne i8 %140, -128
  %142 = or i1 %141, %139
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load i32, ptr %89, align 4
  %145 = add i32 %144, 1
  store i32 %145, ptr %89, align 4
  br label %146

146:                                              ; preds = %143, %136, %126, %124, %121, %120, %105
  %147 = add nuw i32 %93, 1
  %148 = getelementptr i8, ptr %92, i32 1
  %149 = icmp eq i32 %147, %88
  br i1 %149, label %150, label %91

150:                                              ; preds = %146, %132, %117, %111, %101, %91
  %151 = phi i32 [ %93, %101 ], [ %93, %111 ], [ %93, %117 ], [ %93, %91 ], [ %93, %132 ], [ %88, %146 ]
  %152 = load ptr, ptr %55, align 4
  %153 = getelementptr inbounds %struct.tty_operations, ptr %152, i32 0, i32 7
  %154 = load ptr, ptr %153, align 4
  %155 = call i32 %154(ptr noundef %0, ptr noundef %81, i32 noundef %151) #11
  br label %156

156:                                              ; preds = %150, %80
  %157 = phi i32 [ %155, %150 ], [ %85, %80 ]
  call void @mutex_unlock(ptr noundef %84) #11
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = icmp eq i32 %157, -11
  br i1 %160, label %176, label %226

161:                                              ; preds = %156
  %162 = getelementptr i8, ptr %81, i32 %157
  %163 = sub i32 %82, %157
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %176, label %165

165:                                              ; preds = %161
  %166 = load i8, ptr %162, align 1
  %167 = load ptr, ptr %26, align 4
  %168 = getelementptr inbounds %struct.n_tty_data, ptr %167, i32 0, i32 20
  call void @mutex_lock(ptr noundef %168) #11
  %169 = call i32 @tty_write_room(ptr noundef %0) #11
  %170 = call fastcc i32 @do_output_char(i8 noundef zeroext %166, ptr noundef %0, i32 noundef %169) #11
  call void @mutex_unlock(ptr noundef %168) #11
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %165
  %173 = getelementptr i8, ptr %162, i32 1
  %174 = add i32 %163, -1
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %80

176:                                              ; preds = %172, %165, %161, %159, %79
  %177 = phi i32 [ %82, %159 ], [ 0, %79 ], [ 0, %172 ], [ 0, %161 ], [ %163, %165 ]
  %178 = phi ptr [ %81, %159 ], [ %59, %79 ], [ %173, %172 ], [ %162, %161 ], [ %162, %165 ]
  %179 = load ptr, ptr %55, align 4
  %180 = getelementptr inbounds %struct.tty_operations, ptr %179, i32 0, i32 9
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %202, label %183

183:                                              ; preds = %176
  call void %181(ptr noundef %0) #11
  br label %202

184:                                              ; preds = %74
  br i1 %78, label %204, label %185

185:                                              ; preds = %184
  %186 = load ptr, ptr %26, align 4
  %187 = getelementptr inbounds %struct.n_tty_data, ptr %186, i32 0, i32 20
  br label %188

188:                                              ; preds = %198, %185
  %189 = phi ptr [ %59, %185 ], [ %199, %198 ]
  %190 = phi i32 [ %60, %185 ], [ %200, %198 ]
  call void @mutex_lock(ptr noundef %187) #11
  %191 = load ptr, ptr %55, align 4
  %192 = getelementptr inbounds %struct.tty_operations, ptr %191, i32 0, i32 7
  %193 = load ptr, ptr %192, align 4
  %194 = call i32 %193(ptr noundef %0, ptr noundef %189, i32 noundef %190) #11
  call void @mutex_unlock(ptr noundef %187) #11
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %226, label %196

196:                                              ; preds = %188
  %197 = icmp eq i32 %194, 0
  br i1 %197, label %206, label %198

198:                                              ; preds = %196
  %199 = getelementptr i8, ptr %189, i32 %194
  %200 = sub i32 %190, %194
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %204, label %188

202:                                              ; preds = %183, %176
  %203 = icmp eq i32 %177, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %202, %198, %184
  %205 = phi ptr [ %199, %198 ], [ %59, %184 ], [ %178, %202 ]
  call void @remove_wait_queue(ptr noundef %47, ptr noundef nonnull %5) #11
  br label %237

206:                                              ; preds = %202, %196
  %207 = phi ptr [ %178, %202 ], [ %189, %196 ]
  %208 = phi i32 [ %177, %202 ], [ %190, %196 ]
  %209 = load i32, ptr %56, align 4
  %210 = and i32 %209, 2048
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %206
  %213 = load volatile i32, ptr %57, align 4
  %214 = and i32 %213, 1048576
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %212
  call void @up_read(ptr noundef %25) #11
  %217 = call i32 @wait_woken(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 2147483647) #11
  call void @down_read(ptr noundef %25) #11
  %218 = load volatile i32, ptr %7, align 4
  %219 = and i32 %218, 256
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %58, label %226, !prof !16

221:                                              ; preds = %70, %64, %58, %46
  %222 = phi i32 [ %3, %46 ], [ %60, %64 ], [ %60, %70 ], [ %60, %58 ]
  %223 = phi ptr [ %2, %46 ], [ %59, %64 ], [ %59, %70 ], [ %59, %58 ]
  %224 = phi i32 [ -512, %46 ], [ -512, %58 ], [ -5, %70 ], [ -5, %64 ]
  call void @remove_wait_queue(ptr noundef %47, ptr noundef nonnull %5) #11
  %225 = icmp eq i32 %222, 0
  br i1 %225, label %237, label %229

226:                                              ; preds = %216, %212, %206, %188, %159
  %227 = phi i32 [ %194, %188 ], [ -11, %206 ], [ -11, %212 ], [ %157, %159 ], [ -512, %216 ]
  %228 = phi ptr [ %189, %188 ], [ %207, %206 ], [ %207, %212 ], [ %81, %159 ], [ %207, %216 ]
  call void @remove_wait_queue(ptr noundef %47, ptr noundef nonnull %5) #11
  br label %229

229:                                              ; preds = %226, %221
  %230 = phi i32 [ %224, %221 ], [ %227, %226 ]
  %231 = phi ptr [ %223, %221 ], [ %228, %226 ]
  %232 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 25
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %237, label %235

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  call void @_set_bit(i32 noundef 5, ptr noundef %236) #11
  br label %237

237:                                              ; preds = %235, %229, %221, %204
  %238 = phi i32 [ %230, %235 ], [ %230, %229 ], [ %224, %221 ], [ 0, %204 ]
  %239 = phi ptr [ %231, %235 ], [ %231, %229 ], [ %223, %221 ], [ %205, %204 ]
  call void @up_read(ptr noundef %25) #11
  %240 = ptrtoint ptr %239 to i32
  %241 = ptrtoint ptr %2 to i32
  %242 = sub i32 %240, %241
  %243 = icmp eq ptr %239, %2
  %244 = select i1 %243, i32 %238, i32 %242
  br label %245

245:                                              ; preds = %237, %21
  %246 = phi i32 [ %244, %237 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  ret i32 %246
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @n_tty_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 4
  switch i32 %1, label %70 [
    i32 21521, label %6
    i32 21531, label %15
  ]

6:                                                ; preds = %3
  %7 = inttoptr i32 %2 to ptr
  %8 = tail call i32 @tty_chars_in_buffer(ptr noundef %0) #11
  %9 = tail call ptr @llvm.thread.pointer() #11
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #13, !srcloc !17
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #11, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !19
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %7, i32 %8, i32 -1090519041) #11, !srcloc !20
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #11, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !19
  br label %72

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  tail call void @down_write(ptr noundef %16) #11
  %17 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 65538
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %56

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 14
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %61, label %27

27:                                               ; preds = %21
  %28 = sub i32 %23, %25
  %29 = and i32 %23, 4095
  %30 = and i32 %25, 4095
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %61, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 12
  br label %34

34:                                               ; preds = %51, %32
  %35 = phi i32 [ %30, %32 ], [ %54, %51 ]
  %36 = phi i32 [ %25, %32 ], [ %53, %51 ]
  %37 = phi i32 [ %28, %32 ], [ %52, %51 ]
  %38 = lshr i32 %35, 5
  %39 = getelementptr i32, ptr %33, i32 %38
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %36, 31
  %42 = shl nuw i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %34
  %46 = getelementptr %struct.n_tty_data, ptr %5, i32 0, i32 11, i32 %35
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 0
  %49 = sext i1 %48 to i32
  %50 = add i32 %37, %49
  br label %51

51:                                               ; preds = %45, %34
  %52 = phi i32 [ %37, %34 ], [ %50, %45 ]
  %53 = add i32 %36, 1
  %54 = and i32 %53, 4095
  %55 = icmp eq i32 %29, %54
  br i1 %55, label %61, label %34

56:                                               ; preds = %15
  %57 = load i32, ptr %5, align 4
  %58 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 14
  %59 = load i32, ptr %58, align 4
  %60 = sub i32 %57, %59
  br label %61

61:                                               ; preds = %56, %51, %27, %21
  %62 = phi i32 [ %60, %56 ], [ 0, %21 ], [ %28, %27 ], [ %52, %51 ]
  tail call void @up_write(ptr noundef %16) #11
  %63 = inttoptr i32 %2 to ptr
  %64 = tail call ptr @llvm.thread.pointer() #11
  %65 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 3
  %66 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %65) #13, !srcloc !17
  %67 = and i32 %66, -13
  %68 = or i32 %67, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #11, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !19
  %69 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %63, i32 %62, i32 -1090519041) #11, !srcloc !21
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #11, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !19
  br label %72

70:                                               ; preds = %3
  %71 = tail call i32 @n_tty_ioctl_helper(ptr noundef %0, i32 noundef %1, i32 noundef %2) #11
  br label %72

72:                                               ; preds = %70, %61, %6
  %73 = phi i32 [ %71, %70 ], [ %69, %61 ], [ %14, %6 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @n_tty_set_termios(ptr noundef %0, ptr noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ne ptr %1, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = xor i32 %10, %8
  %12 = and i32 %11, 65538
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 10
  %16 = load i8, ptr %15, align 1
  br label %50

17:                                               ; preds = %6, %2
  %18 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 12
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(512) %18, i8 0, i32 512, i1 false) #11
  %19 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 14
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 15
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  %26 = load i32, ptr %4, align 4
  br i1 %25, label %29, label %27

27:                                               ; preds = %17
  %28 = icmp eq i32 %26, %20
  br i1 %28, label %29, label %35

29:                                               ; preds = %27, %17
  %30 = phi i32 [ %20, %27 ], [ %26, %17 ]
  %31 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 2
  store i32 %20, ptr %31, align 4
  %32 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 10
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, -33
  br label %43

35:                                               ; preds = %27
  %36 = add i32 %26, 4095
  %37 = and i32 %36, 4095
  tail call void @_set_bit(i32 noundef %37, ptr noundef %18) #11
  %38 = load i32, ptr %4, align 4
  %39 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 10
  %41 = load i8, ptr %40, align 1
  %42 = or i8 %41, 32
  br label %43

43:                                               ; preds = %35, %29
  %44 = phi i8 [ %42, %35 ], [ %34, %29 ]
  %45 = phi i32 [ %38, %35 ], [ %30, %29 ]
  %46 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 1
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 10
  %48 = and i8 %44, -4
  store i8 %48, ptr %47, align 1
  %49 = load i32, ptr %22, align 4
  br label %50

50:                                               ; preds = %43, %14
  %51 = phi i8 [ %48, %43 ], [ %16, %14 ]
  %52 = phi i32 [ %49, %43 ], [ %10, %14 ]
  %53 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  %54 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %55 = trunc i32 %52 to i8
  %56 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 10
  %57 = shl i8 %55, 3
  %58 = and i8 %57, 16
  %59 = and i8 %51, -17
  %60 = or i8 %58, %59
  store i8 %60, ptr %56, align 1
  %61 = load i32, ptr %53, align 4
  %62 = and i32 %61, 992
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %50
  %65 = load i32, ptr %54, align 4
  %66 = and i32 %65, 2
  %67 = icmp eq i32 %66, 0
  %68 = and i32 %61, 1024
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %67, i1 %69, i1 false
  %71 = and i32 %65, 1
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %70, i1 %72, i1 false
  %74 = and i32 %65, 8
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %73, i1 %75, i1 false
  %77 = and i32 %61, 8
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %157, label %80

80:                                               ; preds = %64, %50
  %81 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %81, i8 0, i32 32, i1 false) #11
  %82 = load i32, ptr %53, align 4
  %83 = and i32 %82, 384
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  tail call void @_set_bit(i32 noundef 13, ptr noundef %81) #11
  %86 = load i32, ptr %53, align 4
  br label %87

87:                                               ; preds = %85, %80
  %88 = phi i32 [ %82, %80 ], [ %86, %85 ]
  %89 = and i32 %88, 64
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @_set_bit(i32 noundef 10, ptr noundef %81) #11
  br label %92

92:                                               ; preds = %91, %87
  %93 = load i32, ptr %54, align 4
  %94 = and i32 %93, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %129, label %96

96:                                               ; preds = %92
  %97 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 2
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  tail call void @_set_bit(i32 noundef %99, ptr noundef %81) #11
  %100 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 3
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  tail call void @_set_bit(i32 noundef %102, ptr noundef %81) #11
  %103 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 4
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  tail call void @_set_bit(i32 noundef %105, ptr noundef %81) #11
  tail call void @_set_bit(i32 noundef 10, ptr noundef %81) #11
  %106 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 11
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  tail call void @_set_bit(i32 noundef %108, ptr noundef %81) #11
  %109 = load i32, ptr %54, align 4
  %110 = and i32 %109, 32768
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %129, label %112

112:                                              ; preds = %96
  %113 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 14
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  tail call void @_set_bit(i32 noundef %115, ptr noundef %81) #11
  %116 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 15
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  tail call void @_set_bit(i32 noundef %118, ptr noundef %81) #11
  %119 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 16
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  tail call void @_set_bit(i32 noundef %121, ptr noundef %81) #11
  %122 = load i32, ptr %54, align 4
  %123 = and i32 %122, 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %112
  %126 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 12
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  tail call void @_set_bit(i32 noundef %128, ptr noundef %81) #11
  br label %129

129:                                              ; preds = %125, %112, %96, %92
  %130 = load i32, ptr %53, align 4
  %131 = and i32 %130, 1024
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %129
  %134 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 8
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  tail call void @_set_bit(i32 noundef %136, ptr noundef %81) #11
  %137 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 9
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  tail call void @_set_bit(i32 noundef %139, ptr noundef %81) #11
  br label %140

140:                                              ; preds = %133, %129
  %141 = load i32, ptr %54, align 4
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  tail call void @_set_bit(i32 noundef %147, ptr noundef %81) #11
  %148 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 1
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i32
  tail call void @_set_bit(i32 noundef %150, ptr noundef %81) #11
  %151 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 10
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  tail call void @_set_bit(i32 noundef %153, ptr noundef %81) #11
  br label %154

154:                                              ; preds = %144, %140
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %81) #11
  %155 = load i8, ptr %56, align 1
  %156 = and i8 %155, -13
  br label %179

157:                                              ; preds = %64
  %158 = or i8 %60, 4
  store i8 %158, ptr %56, align 1
  %159 = load i32, ptr %53, align 4
  %160 = and i32 %159, 1
  %161 = icmp eq i32 %160, 0
  %162 = and i32 %159, 10
  %163 = icmp ne i32 %162, 0
  %164 = and i1 %161, %163
  %165 = and i32 %159, 20
  %166 = icmp eq i32 %165, 16
  %167 = select i1 %164, i1 true, i1 %166
  br i1 %167, label %177, label %168

168:                                              ; preds = %157
  %169 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.tty_driver, ptr %170, i32 0, i32 13
  %172 = load i32, ptr %171, align 4
  %173 = and i32 %172, 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %168
  %176 = or i8 %60, 12
  br label %179

177:                                              ; preds = %168, %157
  %178 = and i8 %158, -9
  br label %179

179:                                              ; preds = %177, %175, %154
  %180 = phi i8 [ %176, %175 ], [ %178, %177 ], [ %156, %154 ]
  store i8 %180, ptr %56, align 1
  %181 = load i32, ptr %53, align 4
  %182 = and i32 %181, 1024
  %183 = icmp eq i32 %182, 0
  %184 = and i1 %5, %183
  br i1 %184, label %185, label %213

185:                                              ; preds = %179
  %186 = load i32, ptr %1, align 4
  %187 = and i32 %186, 1024
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %213, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19, i32 2
  %191 = load i8, ptr %190, align 1, !range !8
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %213

193:                                              ; preds = %189
  tail call void @start_tty(ptr noundef %0) #11
  %194 = load ptr, ptr %3, align 4
  %195 = getelementptr inbounds %struct.n_tty_data, ptr %194, i32 0, i32 5
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr inbounds %struct.n_tty_data, ptr %194, i32 0, i32 18
  %198 = load i32, ptr %197, align 4
  %199 = icmp eq i32 %196, %198
  br i1 %199, label %213, label %200

200:                                              ; preds = %193
  %201 = getelementptr inbounds %struct.n_tty_data, ptr %194, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %201) #11
  %202 = load i32, ptr %195, align 4
  %203 = getelementptr inbounds %struct.n_tty_data, ptr %194, i32 0, i32 4
  store i32 %202, ptr %203, align 4
  %204 = tail call fastcc i32 @__process_echoes(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %201) #11
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %213, label %206

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.tty_operations, ptr %208, i32 0, i32 9
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %206
  tail call void %210(ptr noundef %0) #11
  br label %213

213:                                              ; preds = %212, %206, %200, %193, %189, %185, %179
  %214 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %214, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %215 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %215, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @n_tty_poll(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 27
  %5 = icmp eq ptr %2, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 4
  %8 = icmp ne ptr %7, null
  %9 = icmp ne ptr %4, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  tail call void %7(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %2) #11
  %12 = load ptr, ptr %2, align 4
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi ptr [ %7, %6 ], [ %12, %11 ]
  %15 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 26
  %16 = icmp ne ptr %14, null
  %17 = icmp ne ptr %15, null
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  tail call void %14(ptr noundef %1, ptr noundef nonnull %15, ptr noundef nonnull %2) #11
  br label %20

20:                                               ; preds = %19, %13, %3
  %21 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 6
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i8 1, i8 %28
  %31 = zext i8 %30 to i32
  br label %32

32:                                               ; preds = %26, %20
  %33 = phi i32 [ 1, %20 ], [ %31, %26 ]
  %34 = getelementptr inbounds %struct.n_tty_data, ptr %22, i32 0, i32 10
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 65536
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %38, %32
  %44 = getelementptr inbounds %struct.n_tty_data, ptr %22, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.n_tty_data, ptr %22, i32 0, i32 14
  %47 = load i32, ptr %46, align 4
  %48 = sub i32 %45, %47
  %49 = icmp ult i32 %48, %33
  br i1 %49, label %56, label %95

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.n_tty_data, ptr %22, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.n_tty_data, ptr %22, i32 0, i32 14
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %50, %43
  %57 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 37
  %58 = load ptr, ptr %57, align 4
  tail call void @tty_buffer_flush_work(ptr noundef %58) #11
  %59 = load ptr, ptr %21, align 4
  %60 = load i8, ptr %23, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 6
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 0
  %66 = select i1 %65, i8 1, i8 %64
  %67 = zext i8 %66 to i32
  br label %68

68:                                               ; preds = %62, %56
  %69 = phi i32 [ 1, %56 ], [ %67, %62 ]
  %70 = getelementptr inbounds %struct.n_tty_data, ptr %59, i32 0, i32 10
  %71 = load i8, ptr %70, align 1
  %72 = and i8 %71, 16
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 65536
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.n_tty_data, ptr %59, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.n_tty_data, ptr %59, i32 0, i32 14
  %83 = load i32, ptr %82, align 4
  %84 = icmp ne i32 %81, %83
  br label %92

85:                                               ; preds = %74, %68
  %86 = getelementptr inbounds %struct.n_tty_data, ptr %59, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.n_tty_data, ptr %59, i32 0, i32 14
  %89 = load i32, ptr %88, align 4
  %90 = sub i32 %87, %89
  %91 = icmp uge i32 %90, %69
  br label %92

92:                                               ; preds = %85, %79
  %93 = phi i1 [ %91, %85 ], [ %84, %79 ]
  %94 = select i1 %93, i32 65, i32 0
  br label %95

95:                                               ; preds = %92, %50, %43
  %96 = phi i32 [ 65, %50 ], [ %94, %92 ], [ 65, %43 ]
  %97 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 4
  %98 = load i8, ptr %97, align 1, !range !8
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.tty_struct, ptr %102, i32 0, i32 20, i32 3
  %104 = load i8, ptr %103, align 4
  %105 = icmp eq i8 %104, 0
  %106 = select i1 %105, i32 %96, i32 67
  br label %107

107:                                              ; preds = %100, %95
  %108 = phi i32 [ %96, %95 ], [ %106, %100 ]
  %109 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %110 = load volatile i32, ptr %109, align 4
  %111 = shl i32 %110, 2
  %112 = and i32 %111, 16
  %113 = tail call i32 @tty_hung_up_p(ptr noundef %1) #11
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, i32 %112, i32 16
  %116 = or i32 %115, %108
  %117 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.tty_operations, ptr %118, i32 0, i32 7
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %133, label %122

122:                                              ; preds = %107
  %123 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 8
  %124 = tail call zeroext i1 @mutex_is_locked(ptr noundef %123) #11
  br i1 %124, label %133, label %125

125:                                              ; preds = %122
  %126 = tail call i32 @tty_chars_in_buffer(ptr noundef %0) #11
  %127 = icmp ult i32 %126, 256
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = tail call i32 @tty_write_room(ptr noundef %0) #11
  %130 = icmp eq i32 %129, 0
  %131 = or i32 %116, 260
  %132 = select i1 %130, i32 %116, i32 %131
  br label %133

133:                                              ; preds = %128, %125, %122, %107
  %134 = phi i32 [ %116, %122 ], [ %116, %125 ], [ %116, %107 ], [ %132, %128 ]
  ret i32 %134
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @n_tty_receive_buf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #4 {
  %5 = tail call fastcc i32 @n_tty_receive_buf_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @n_tty_write_wakeup(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 25
  tail call void @kill_fasync(ptr noundef %3, i32 noundef 29, i32 noundef 2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @n_tty_receive_buf2(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #4 {
  %5 = tail call fastcc i32 @n_tty_receive_buf_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 1)
  ret i32 %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unthrottle(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @n_tty_kick_worker(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.n_tty_data, ptr %3, i32 0, i32 9
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %29, label %7, !prof !16

7:                                                ; preds = %1
  store i8 0, ptr %4, align 4
  %8 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tty_port, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = tail call i32 @___ratelimit(ptr noundef nonnull @n_tty_kick_worker._rs, ptr noundef nonnull @__func__.n_tty_kick_worker) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !16

16:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.5) #11
  br label %17

17:                                               ; preds = %16, %13, %7
  %18 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 4194304
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @___ratelimit(ptr noundef nonnull @n_tty_kick_worker._rs.6, ptr noundef nonnull @__func__.n_tty_kick_worker) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25, !prof !16

25:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.7) #11
  br label %26

26:                                               ; preds = %25, %22, %17
  %27 = load ptr, ptr %8, align 4
  %28 = tail call zeroext i1 @tty_buffer_restart_work(ptr noundef %27) #11
  br label %29

29:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tty_buffer_restart_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @canon_copy_from_read_buf(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %2, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %150, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 2
  %10 = load volatile i32, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  %11 = load i32, ptr %2, align 4
  %12 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 14
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %10, %13
  %15 = tail call i32 @llvm.umin.i32(i32 %11, i32 %14)
  %16 = and i32 %13, 4095
  %17 = add i32 %15, %16
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 4096)
  %19 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 12
  %20 = tail call i32 @_find_next_bit_le(ptr noundef %19, i32 noundef %18, i32 noundef %16) #11
  %21 = sub nsw i32 %16, %18
  %22 = add i32 %21, %15
  %23 = icmp eq i32 %20, 4096
  %24 = icmp ne i32 %22, 0
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %35

26:                                               ; preds = %8
  %27 = tail call i32 @_find_first_bit_le(ptr noundef %19, i32 noundef %22) #11
  %28 = icmp ne i32 %27, %22
  %29 = zext i1 %28 to i32
  %30 = sub i32 %27, %16
  %31 = icmp ugt i32 %30, 4096
  %32 = add i32 %30, 4096
  %33 = select i1 %31, i32 %32, i32 %30
  %34 = add i32 %33, %29
  br i1 %28, label %43, label %103

35:                                               ; preds = %8
  %36 = icmp ne i32 %20, %18
  %37 = zext i1 %36 to i32
  %38 = sub i32 %20, %16
  %39 = icmp ugt i32 %38, 4096
  %40 = add i32 %38, 4096
  %41 = select i1 %39, i32 %40, i32 %38
  %42 = add i32 %41, %37
  br i1 %36, label %43, label %103

43:                                               ; preds = %35, %26
  %44 = phi i32 [ %34, %26 ], [ %42, %35 ]
  %45 = phi i32 [ %33, %26 ], [ %41, %35 ]
  %46 = phi i32 [ %27, %26 ], [ %20, %35 ]
  %47 = and i32 %46, 4095
  %48 = getelementptr %struct.n_tty_data, ptr %5, i32 0, i32 11, i32 %47
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, 0
  %51 = load ptr, ptr %1, align 4
  %52 = load ptr, ptr %4, align 4
  %53 = sub nuw nsw i32 4096, %16
  %54 = getelementptr %struct.n_tty_data, ptr %52, i32 0, i32 11, i32 %16
  br i1 %50, label %55, label %76

55:                                               ; preds = %43
  %56 = icmp ugt i32 %45, %53
  br i1 %56, label %57, label %67

57:                                               ; preds = %55
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %51, ptr align 1 %54, i32 %53, i1 false) #11
  %58 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 10
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  tail call void @llvm.memset.p0.i32(ptr align 1 %54, i8 0, i32 %53, i1 false) #11
  br label %63

63:                                               ; preds = %62, %57
  %64 = getelementptr i8, ptr %51, i32 %53
  %65 = sub i32 %45, %53
  %66 = getelementptr inbounds %struct.n_tty_data, ptr %52, i32 0, i32 11
  br label %67

67:                                               ; preds = %63, %55
  %68 = phi ptr [ %64, %63 ], [ %51, %55 ]
  %69 = phi i32 [ %65, %63 ], [ %45, %55 ]
  %70 = phi ptr [ %66, %63 ], [ %54, %55 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %68, ptr align 1 %70, i32 %69, i1 false) #11
  %71 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 10
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %97

75:                                               ; preds = %67
  tail call void @llvm.memset.p0.i32(ptr align 1 %70, i8 0, i32 %69, i1 false) #11
  br label %97

76:                                               ; preds = %43
  %77 = icmp ugt i32 %44, %53
  br i1 %77, label %78, label %88

78:                                               ; preds = %76
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %51, ptr align 1 %54, i32 %53, i1 false) #11
  %79 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 10
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  tail call void @llvm.memset.p0.i32(ptr align 1 %54, i8 0, i32 %53, i1 false) #11
  br label %84

84:                                               ; preds = %83, %78
  %85 = getelementptr i8, ptr %51, i32 %53
  %86 = sub i32 %44, %53
  %87 = getelementptr inbounds %struct.n_tty_data, ptr %52, i32 0, i32 11
  br label %88

88:                                               ; preds = %84, %76
  %89 = phi ptr [ %85, %84 ], [ %51, %76 ]
  %90 = phi i32 [ %86, %84 ], [ %44, %76 ]
  %91 = phi ptr [ %87, %84 ], [ %54, %76 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %89, ptr align 1 %91, i32 %90, i1 false) #11
  %92 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 10
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  tail call void @llvm.memset.p0.i32(ptr align 1 %91, i8 0, i32 %90, i1 false) #11
  br label %97

97:                                               ; preds = %96, %88, %75, %67
  %98 = phi i32 [ %45, %67 ], [ %45, %75 ], [ %44, %88 ], [ %44, %96 ]
  %99 = load ptr, ptr %1, align 4
  %100 = getelementptr i8, ptr %99, i32 %98
  store ptr %100, ptr %1, align 4
  %101 = load i32, ptr %2, align 4
  %102 = sub i32 %101, %98
  store i32 %102, ptr %2, align 4
  tail call void @_clear_bit(i32 noundef %46, ptr noundef %19) #11
  br label %134

103:                                              ; preds = %35, %26
  %104 = phi i32 [ %34, %26 ], [ %42, %35 ]
  %105 = load ptr, ptr %1, align 4
  %106 = load ptr, ptr %4, align 4
  %107 = sub nuw nsw i32 4096, %16
  %108 = getelementptr %struct.n_tty_data, ptr %106, i32 0, i32 11, i32 %16
  %109 = icmp ugt i32 %104, %107
  br i1 %109, label %110, label %120

110:                                              ; preds = %103
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %105, ptr align 1 %108, i32 %107, i1 false) #11
  %111 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 10
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  tail call void @llvm.memset.p0.i32(ptr align 1 %108, i8 0, i32 %107, i1 false) #11
  br label %116

116:                                              ; preds = %115, %110
  %117 = getelementptr i8, ptr %105, i32 %107
  %118 = sub i32 %104, %107
  %119 = getelementptr inbounds %struct.n_tty_data, ptr %106, i32 0, i32 11
  br label %120

120:                                              ; preds = %116, %103
  %121 = phi ptr [ %117, %116 ], [ %105, %103 ]
  %122 = phi i32 [ %118, %116 ], [ %104, %103 ]
  %123 = phi ptr [ %119, %116 ], [ %108, %103 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %121, ptr align 1 %123, i32 %122, i1 false) #11
  %124 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %125 = load i32, ptr %124, align 4
  %126 = and i32 %125, 10
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  tail call void @llvm.memset.p0.i32(ptr align 1 %123, i8 0, i32 %122, i1 false) #11
  br label %129

129:                                              ; preds = %128, %120
  %130 = load ptr, ptr %1, align 4
  %131 = getelementptr i8, ptr %130, i32 %104
  store ptr %131, ptr %1, align 4
  %132 = load i32, ptr %2, align 4
  %133 = sub i32 %132, %104
  store i32 %133, ptr %2, align 4
  br label %134

134:                                              ; preds = %129, %97
  %135 = phi i32 [ %104, %129 ], [ %44, %97 ]
  %136 = phi i1 [ false, %129 ], [ true, %97 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !23
  %137 = load i32, ptr %12, align 4
  %138 = add i32 %137, %135
  store volatile i32 %138, ptr %12, align 4
  br i1 %136, label %139, label %148

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 10
  %141 = load i8, ptr %140, align 1
  %142 = and i8 %141, 32
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 15
  store i32 %138, ptr %145, align 4
  br label %150

146:                                              ; preds = %139
  %147 = and i8 %141, -33
  store i8 %147, ptr %140, align 1
  br label %150

148:                                              ; preds = %134
  %149 = icmp ne i32 %138, %10
  br label %150

150:                                              ; preds = %148, %146, %144, %3
  %151 = phi i1 [ %149, %148 ], [ false, %3 ], [ false, %146 ], [ false, %144 ]
  ret i1 %151
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @n_tty_check_unthrottle(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_driver, ptr %3, i32 0, i32 10
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 4
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 23
  %9 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  br label %28

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.n_tty_data, ptr %12, i32 0, i32 10
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 16
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds %struct.n_tty_data, ptr %12, i32 0, i32 2
  %18 = getelementptr inbounds %struct.n_tty_data, ptr %12, i32 0, i32 1
  %19 = select i1 %16, ptr %18, ptr %17
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.n_tty_data, ptr %12, i32 0, i32 14
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = icmp sgt i32 %23, 128
  br i1 %24, label %46, label %25

25:                                               ; preds = %10
  tail call fastcc void @n_tty_kick_worker(ptr noundef %0)
  %26 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %27 = load ptr, ptr %26, align 4
  tail call void @tty_wakeup(ptr noundef %27) #11
  br label %46

28:                                               ; preds = %42, %7
  store i32 2, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !24
  %29 = load ptr, ptr %9, align 4
  %30 = getelementptr inbounds %struct.n_tty_data, ptr %29, i32 0, i32 10
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, 16
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr inbounds %struct.n_tty_data, ptr %29, i32 0, i32 2
  %35 = getelementptr inbounds %struct.n_tty_data, ptr %29, i32 0, i32 1
  %36 = select i1 %33, ptr %35, ptr %34
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.n_tty_data, ptr %29, i32 0, i32 14
  %39 = load i32, ptr %38, align 4
  %40 = sub i32 %37, %39
  %41 = icmp sgt i32 %40, 128
  br i1 %41, label %45, label %42

42:                                               ; preds = %28
  tail call fastcc void @n_tty_kick_worker(ptr noundef %0)
  %43 = tail call i32 @tty_unthrottle_safe(ptr noundef %0) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %28

45:                                               ; preds = %42, %28
  store i32 0, ptr %8, align 4
  br label %46

46:                                               ; preds = %45, %25, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_hung_up_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_unthrottle_safe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @redirected_tty_write(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_check_change(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_check_change(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__process_echoes(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @tty_write_room(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.n_tty_data, ptr %3, i32 0, i32 18
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.n_tty_data, ptr %3, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = xor i32 %8, %6
  %10 = and i32 %9, 4095
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %165, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 1
  %14 = getelementptr inbounds %struct.n_tty_data, ptr %3, i32 0, i32 16
  %15 = getelementptr inbounds %struct.n_tty_data, ptr %3, i32 0, i32 17
  br label %16

16:                                               ; preds = %153, %12
  %17 = phi i32 [ %6, %12 ], [ %156, %153 ]
  %18 = phi i32 [ %4, %12 ], [ %155, %153 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !25
  %19 = and i32 %17, 4095
  %20 = getelementptr %struct.n_tty_data, ptr %3, i32 0, i32 13, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, -1
  br i1 %22, label %23, label %140

23:                                               ; preds = %16
  %24 = load i32, ptr %7, align 4
  %25 = add i32 %17, 1
  %26 = xor i32 %24, %25
  %27 = and i32 %26, 4095
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %196, label %29

29:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !25
  %30 = and i32 %25, 4095
  %31 = getelementptr %struct.n_tty_data, ptr %3, i32 0, i32 13, i32 %30
  %32 = load i8, ptr %31, align 1
  switch i8 %32, label %131 [
    i8 -126, label %33
    i8 -127, label %117
    i8 -128, label %119
    i8 -1, label %124
  ]

33:                                               ; preds = %29
  %34 = load i32, ptr %7, align 4
  %35 = add i32 %17, 2
  %36 = xor i32 %34, %35
  %37 = and i32 %36, 4095
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %196, label %39

39:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !25
  %40 = and i32 %35, 4095
  %41 = getelementptr %struct.n_tty_data, ptr %3, i32 0, i32 13, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 128
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, ptr %15, align 4
  %48 = add i32 %47, %43
  br label %49

49:                                               ; preds = %46, %39
  %50 = phi i32 [ %43, %39 ], [ %48, %46 ]
  %51 = and i32 %50, 7
  %52 = sub nuw nsw i32 8, %51
  %53 = icmp ult i32 %18, %52
  br i1 %53, label %161, label %54

54:                                               ; preds = %49
  %55 = sub i32 %18, %52
  %56 = tail call i32 @tty_put_char(ptr noundef %0, i8 noundef zeroext 8) #11
  %57 = load i32, ptr %14, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = add i32 %57, -1
  store i32 %60, ptr %14, align 4
  br label %61

61:                                               ; preds = %59, %54
  %62 = icmp eq i32 %51, 7
  br i1 %62, label %153, label %63

63:                                               ; preds = %61
  %64 = tail call i32 @tty_put_char(ptr noundef %0, i8 noundef zeroext 8) #11
  %65 = load i32, ptr %14, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = add i32 %65, -1
  store i32 %68, ptr %14, align 4
  br label %69

69:                                               ; preds = %67, %63
  %70 = icmp eq i32 %51, 6
  br i1 %70, label %153, label %71

71:                                               ; preds = %69
  %72 = tail call i32 @tty_put_char(ptr noundef %0, i8 noundef zeroext 8) #11
  %73 = load i32, ptr %14, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = add i32 %73, -1
  store i32 %76, ptr %14, align 4
  br label %77

77:                                               ; preds = %75, %71
  %78 = icmp eq i32 %51, 5
  br i1 %78, label %153, label %79

79:                                               ; preds = %77
  %80 = tail call i32 @tty_put_char(ptr noundef %0, i8 noundef zeroext 8) #11
  %81 = load i32, ptr %14, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = add i32 %81, -1
  store i32 %84, ptr %14, align 4
  br label %85

85:                                               ; preds = %83, %79
  %86 = icmp eq i32 %51, 4
  br i1 %86, label %153, label %87

87:                                               ; preds = %85
  %88 = tail call i32 @tty_put_char(ptr noundef %0, i8 noundef zeroext 8) #11
  %89 = load i32, ptr %14, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = add i32 %89, -1
  store i32 %92, ptr %14, align 4
  br label %93

93:                                               ; preds = %91, %87
  %94 = icmp eq i32 %51, 3
  br i1 %94, label %153, label %95

95:                                               ; preds = %93
  %96 = tail call i32 @tty_put_char(ptr noundef %0, i8 noundef zeroext 8) #11
  %97 = load i32, ptr %14, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = add i32 %97, -1
  store i32 %100, ptr %14, align 4
  br label %101

101:                                              ; preds = %99, %95
  %102 = icmp eq i32 %51, 2
  br i1 %102, label %153, label %103

103:                                              ; preds = %101
  %104 = tail call i32 @tty_put_char(ptr noundef %0, i8 noundef zeroext 8) #11
  %105 = load i32, ptr %14, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = add i32 %105, -1
  store i32 %108, ptr %14, align 4
  br label %109

109:                                              ; preds = %107, %103
  %110 = icmp eq i32 %51, 1
  br i1 %110, label %153, label %111

111:                                              ; preds = %109
  %112 = tail call i32 @tty_put_char(ptr noundef %0, i8 noundef zeroext 8) #11
  %113 = load i32, ptr %14, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %153, label %115

115:                                              ; preds = %111
  %116 = add i32 %113, -1
  store i32 %116, ptr %14, align 4
  br label %153

117:                                              ; preds = %29
  %118 = load i32, ptr %14, align 4
  store i32 %118, ptr %15, align 4
  br label %153

119:                                              ; preds = %29
  %120 = load i32, ptr %14, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %153, label %122

122:                                              ; preds = %119
  %123 = add i32 %120, -1
  store i32 %123, ptr %14, align 4
  br label %153

124:                                              ; preds = %29
  %125 = icmp eq i32 %18, 0
  br i1 %125, label %161, label %126

126:                                              ; preds = %124
  %127 = tail call i32 @tty_put_char(ptr noundef %0, i8 noundef zeroext -1) #11
  %128 = load i32, ptr %14, align 4
  %129 = add i32 %128, 1
  store i32 %129, ptr %14, align 4
  %130 = add i32 %18, -1
  br label %153

131:                                              ; preds = %29
  %132 = icmp slt i32 %18, 2
  br i1 %132, label %161, label %133

133:                                              ; preds = %131
  %134 = tail call i32 @tty_put_char(ptr noundef %0, i8 noundef zeroext 94) #11
  %135 = xor i8 %32, 64
  %136 = tail call i32 @tty_put_char(ptr noundef %0, i8 noundef zeroext %135) #11
  %137 = load i32, ptr %14, align 4
  %138 = add i32 %137, 2
  store i32 %138, ptr %14, align 4
  %139 = add nsw i32 %18, -2
  br label %153

140:                                              ; preds = %16
  %141 = load i32, ptr %13, align 4
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = tail call fastcc i32 @do_output_char(i8 noundef zeroext %21, ptr noundef %0, i32 noundef %18)
  %146 = icmp slt i32 %145, 0
  %147 = sub i32 %18, %145
  br i1 %146, label %161, label %153

148:                                              ; preds = %140
  %149 = icmp eq i32 %18, 0
  br i1 %149, label %161, label %150

150:                                              ; preds = %148
  %151 = tail call i32 @tty_put_char(ptr noundef %0, i8 noundef zeroext %21) #11
  %152 = add i32 %18, -1
  br label %153

153:                                              ; preds = %150, %144, %133, %126, %122, %119, %117, %115, %111, %109, %101, %93, %85, %77, %69, %61
  %154 = phi i32 [ 2, %117 ], [ 2, %126 ], [ 2, %133 ], [ 2, %122 ], [ 2, %119 ], [ 1, %144 ], [ 1, %150 ], [ 3, %111 ], [ 3, %115 ], [ 3, %109 ], [ 3, %101 ], [ 3, %93 ], [ 3, %85 ], [ 3, %77 ], [ 3, %69 ], [ 3, %61 ]
  %155 = phi i32 [ %18, %117 ], [ %130, %126 ], [ %139, %133 ], [ %18, %122 ], [ %18, %119 ], [ %147, %144 ], [ %152, %150 ], [ %55, %111 ], [ %55, %115 ], [ %55, %109 ], [ %55, %101 ], [ %55, %93 ], [ %55, %85 ], [ %55, %77 ], [ %55, %69 ], [ %55, %61 ]
  %156 = add i32 %17, %154
  %157 = load i32, ptr %7, align 4
  %158 = xor i32 %157, %156
  %159 = and i32 %158, 4095
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %16

161:                                              ; preds = %153, %148, %144, %131, %124, %49
  %162 = phi i32 [ %156, %153 ], [ %17, %148 ], [ %17, %144 ], [ %17, %131 ], [ %17, %124 ], [ %17, %49 ]
  %163 = phi i32 [ %155, %153 ], [ 0, %148 ], [ %18, %144 ], [ %18, %131 ], [ 0, %124 ], [ %18, %49 ]
  %164 = load i32, ptr %7, align 4
  br label %165

165:                                              ; preds = %161, %1
  %166 = phi i32 [ %8, %1 ], [ %164, %161 ]
  %167 = phi i32 [ %6, %1 ], [ %162, %161 ]
  %168 = phi i32 [ %4, %1 ], [ %163, %161 ]
  %169 = icmp ugt i32 %166, %167
  %170 = sub i32 %166, %167
  %171 = icmp ugt i32 %170, 3807
  %172 = and i1 %169, %171
  br i1 %172, label %173, label %196

173:                                              ; preds = %189, %165
  %174 = phi i32 [ %190, %189 ], [ %167, %165 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !25
  %175 = and i32 %174, 4095
  %176 = getelementptr %struct.n_tty_data, ptr %3, i32 0, i32 13, i32 %175
  %177 = load i8, ptr %176, align 1
  %178 = icmp eq i8 %177, -1
  %179 = add nuw i32 %174, 1
  br i1 %178, label %180, label %189

180:                                              ; preds = %173
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !25
  %181 = and i32 %179, 4095
  %182 = getelementptr %struct.n_tty_data, ptr %3, i32 0, i32 13, i32 %181
  %183 = load i8, ptr %182, align 1
  %184 = icmp eq i8 %183, -126
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = add i32 %174, 3
  br label %189

187:                                              ; preds = %180
  %188 = add i32 %174, 2
  br label %189

189:                                              ; preds = %187, %185, %173
  %190 = phi i32 [ %186, %185 ], [ %188, %187 ], [ %179, %173 ]
  %191 = load i32, ptr %7, align 4
  %192 = icmp ugt i32 %191, %190
  %193 = sub i32 %191, %190
  %194 = icmp ugt i32 %193, 3807
  %195 = and i1 %192, %194
  br i1 %195, label %173, label %196

196:                                              ; preds = %189, %165, %33, %23
  %197 = phi i32 [ %168, %165 ], [ %168, %189 ], [ %18, %23 ], [ %18, %33 ]
  %198 = phi i32 [ %167, %165 ], [ %190, %189 ], [ %17, %23 ], [ %17, %33 ]
  store i32 %198, ptr %5, align 4
  %199 = sub i32 %4, %197
  ret i32 %199
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_write_room(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_put_char(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_output_char(i8 noundef zeroext %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 29
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %111, label %7

7:                                                ; preds = %3
  switch i8 %0, label %81 [
    i8 10, label %8
    i8 13, label %34
    i8 9, label %55
    i8 8, label %75
  ]

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 16
  store i32 0, ptr %14, align 4
  %15 = load i32, ptr %9, align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi i32 [ %15, %13 ], [ %10, %8 ]
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = icmp slt i32 %2, 2
  br i1 %21, label %111, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 16
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 17
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tty_operations, ptr %26, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef 2) #11
  br label %111

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 16
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 17
  store i32 %32, ptr %33, align 4
  br label %108

34:                                               ; preds = %7
  %35 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 16
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %111, label %43

43:                                               ; preds = %39, %34
  %44 = and i32 %36, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = and i32 %36, 32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %108, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 16
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 17
  store i32 0, ptr %51, align 4
  br label %108

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 16
  store i32 0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 17
  store i32 0, ptr %54, align 4
  br label %108

55:                                               ; preds = %7
  %56 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 16
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 7
  %59 = sub nuw nsw i32 8, %58
  %60 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 6144
  %63 = icmp eq i32 %62, 6144
  br i1 %63, label %64, label %73

64:                                               ; preds = %55
  %65 = icmp sgt i32 %59, %2
  br i1 %65, label %111, label %66

66:                                               ; preds = %64
  %67 = add i32 %59, %57
  store i32 %67, ptr %56, align 4
  %68 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 4
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.tty_operations, ptr %69, i32 0, i32 7
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 %71(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %59) #11
  br label %111

73:                                               ; preds = %55
  %74 = add i32 %59, %57
  store i32 %74, ptr %56, align 4
  br label %108

75:                                               ; preds = %7
  %76 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 16
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %108, label %79

79:                                               ; preds = %75
  %80 = add i32 %77, -1
  store i32 %80, ptr %76, align 4
  br label %108

81:                                               ; preds = %7
  %82 = zext i8 %0 to i32
  %83 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %82
  %84 = load i8, ptr %83, align 1
  %85 = and i8 %84, 8
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 2
  %91 = icmp eq i32 %90, 0
  %92 = and i8 %84, 2
  %93 = icmp eq i8 %92, 0
  %94 = add i8 %0, -32
  %95 = select i1 %91, i1 true, i1 %93
  %96 = select i1 %95, i8 %0, i8 %94
  %97 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, 16384
  %100 = icmp eq i32 %99, 0
  %101 = and i8 %96, -64
  %102 = icmp ne i8 %101, -128
  %103 = or i1 %100, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %87
  %105 = getelementptr inbounds %struct.n_tty_data, ptr %5, i32 0, i32 16
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %105, align 4
  br label %108

108:                                              ; preds = %104, %87, %81, %79, %75, %73, %52, %49, %46, %30
  %109 = phi i8 [ %0, %81 ], [ %96, %87 ], [ %96, %104 ], [ 8, %79 ], [ 8, %75 ], [ 9, %73 ], [ 10, %49 ], [ 10, %46 ], [ 13, %52 ], [ 10, %30 ]
  %110 = tail call i32 @tty_put_char(ptr noundef %1, i8 noundef zeroext %109) #11
  br label %111

111:                                              ; preds = %108, %66, %64, %39, %22, %20, %3
  %112 = phi i32 [ 1, %108 ], [ %59, %66 ], [ 2, %22 ], [ -1, %3 ], [ -1, %20 ], [ 0, %39 ], [ -1, %64 ]
  ret i32 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_chars_in_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @n_tty_ioctl_helper(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @start_tty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @n_tty_receive_buf_common(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  tail call void @down_read(ptr noundef %8) #11
  %9 = getelementptr inbounds %struct.n_tty_data, ptr %7, i32 0, i32 14
  %10 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  %11 = getelementptr inbounds %struct.n_tty_data, ptr %7, i32 0, i32 10
  %12 = getelementptr inbounds %struct.n_tty_data, ptr %7, i32 0, i32 2
  %13 = icmp ne i32 %4, 0
  %14 = getelementptr inbounds %struct.n_tty_data, ptr %7, i32 0, i32 9
  %15 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %16 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 33
  %17 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5
  %18 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 9
  %19 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 8
  %20 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19, i32 1
  %21 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19, i32 2
  %22 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 1
  %23 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 10
  %24 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %25 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 2
  %26 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 3
  %27 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 14
  %28 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 15
  %29 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 12
  %30 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 4
  %31 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 11
  %32 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 16
  %33 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 25
  %34 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 27
  %35 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  br label %36

36:                                               ; preds = %1394, %5
  %37 = phi i32 [ 0, %5 ], [ %1399, %1394 ]
  %38 = phi i32 [ %3, %5 ], [ %1398, %1394 ]
  %39 = phi ptr [ %2, %5 ], [ %1397, %1394 ]
  %40 = phi ptr [ %1, %5 ], [ %1395, %1394 ]
  %41 = load volatile i32, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !26
  %42 = load i32, ptr %7, align 4
  %43 = sub i32 %41, %42
  %44 = add i32 %43, 4096
  %45 = load i32, ptr %10, align 4
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  %48 = add i32 %43, 4098
  %49 = sdiv i32 %48, 3
  %50 = select i1 %47, i32 %44, i32 %49
  %51 = add i32 %50, -1
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %70

53:                                               ; preds = %36
  %54 = load i8, ptr %11, align 1
  %55 = and i8 %54, 16
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %12, align 4
  %59 = icmp eq i32 %58, %41
  %60 = icmp slt i32 %51, 0
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = add i32 %42, -1
  store i32 %63, ptr %7, align 4
  br label %64

64:                                               ; preds = %62, %57, %53
  %65 = phi i1 [ true, %62 ], [ %59, %57 ], [ false, %53 ]
  %66 = zext i1 %65 to i32
  %67 = xor i1 %65, true
  %68 = select i1 %13, i1 %67, i1 false
  %69 = zext i1 %68 to i8
  store i8 %69, ptr %14, align 4
  br label %70

70:                                               ; preds = %64, %36
  %71 = phi i32 [ %66, %64 ], [ 0, %36 ]
  %72 = phi i32 [ %66, %64 ], [ %51, %36 ]
  %73 = tail call i32 @llvm.smin.i32(i32 %38, i32 %72)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %1403, label %75

75:                                               ; preds = %70
  %76 = icmp ne i32 %71, 0
  %77 = icmp ne ptr %39, null
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i8, ptr %39, align 1
  %81 = icmp eq i8 %80, 3
  br i1 %81, label %1394, label %82

82:                                               ; preds = %79, %75
  %83 = load ptr, ptr %6, align 4
  %84 = load i32, ptr %10, align 4
  %85 = and i32 %84, 32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = and i32 %84, 512
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load i32, ptr %15, align 4
  %92 = and i32 %91, 32768
  %93 = icmp ne i32 %92, 0
  br label %94

94:                                               ; preds = %90, %87, %82
  %95 = phi i1 [ true, %82 ], [ false, %87 ], [ %93, %90 ]
  %96 = getelementptr inbounds %struct.n_tty_data, ptr %83, i32 0, i32 10
  %97 = load i8, ptr %96, align 1
  %98 = and i8 %97, 8
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %94
  %101 = load i32, ptr %83, align 4
  %102 = and i32 %101, 4095
  %103 = sub nuw nsw i32 4096, %102
  %104 = tail call i32 @llvm.umin.i32(i32 %103, i32 %73) #11
  %105 = getelementptr %struct.n_tty_data, ptr %83, i32 0, i32 11, i32 %102
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %105, ptr align 1 %40, i32 %104, i1 false) #11
  %106 = load i32, ptr %83, align 4
  %107 = add i32 %104, %106
  store i32 %107, ptr %83, align 4
  %108 = getelementptr i8, ptr %40, i32 %104
  %109 = sub i32 %73, %104
  %110 = and i32 %107, 4095
  %111 = sub nuw nsw i32 4096, %110
  %112 = tail call i32 @llvm.umin.i32(i32 %109, i32 %111) #11
  %113 = getelementptr %struct.n_tty_data, ptr %83, i32 0, i32 11, i32 %110
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %113, ptr align 1 %108, i32 %112, i1 false) #11
  %114 = load i32, ptr %83, align 4
  %115 = add i32 %112, %114
  store i32 %115, ptr %83, align 4
  br label %1379

116:                                              ; preds = %94
  %117 = and i8 %97, 4
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i32, ptr %15, align 4
  %121 = and i32 %120, 65536
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %122, i1 true, i1 %95
  br i1 %123, label %149, label %124

124:                                              ; preds = %119, %116
  br label %125

125:                                              ; preds = %146, %124
  %126 = phi i32 [ %130, %146 ], [ %73, %124 ]
  %127 = phi i8 [ %137, %146 ], [ 0, %124 ]
  %128 = phi ptr [ %136, %146 ], [ %39, %124 ]
  %129 = phi ptr [ %147, %146 ], [ %40, %124 ]
  %130 = add i32 %126, -1
  %131 = icmp eq ptr %128, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %125
  %133 = getelementptr i8, ptr %128, i32 1
  %134 = load i8, ptr %128, align 1
  br label %135

135:                                              ; preds = %132, %125
  %136 = phi ptr [ %133, %132 ], [ null, %125 ]
  %137 = phi i8 [ %134, %132 ], [ %127, %125 ]
  %138 = icmp eq i8 %137, 0
  %139 = load i8, ptr %129, align 1
  br i1 %138, label %140, label %145, !prof !16

140:                                              ; preds = %135
  %141 = load i32, ptr %83, align 4
  %142 = and i32 %141, 4095
  %143 = getelementptr %struct.n_tty_data, ptr %83, i32 0, i32 11, i32 %142
  store i8 %139, ptr %143, align 1
  %144 = add i32 %141, 1
  store i32 %144, ptr %83, align 4
  br label %146

145:                                              ; preds = %135
  tail call fastcc void @n_tty_receive_char_flagged(ptr noundef %0, i8 noundef zeroext %139, i8 noundef zeroext %137) #11
  br label %146

146:                                              ; preds = %145, %140
  %147 = getelementptr i8, ptr %129, i32 1
  %148 = icmp eq i32 %130, 0
  br i1 %148, label %1379, label %125

149:                                              ; preds = %119
  %150 = load i32, ptr %16, align 4
  %151 = icmp eq i32 %150, 0
  %152 = xor i1 %122, true
  %153 = select i1 %151, i1 true, i1 %152
  br i1 %153, label %241, label %154

154:                                              ; preds = %238, %149
  %155 = phi i32 [ %159, %238 ], [ %73, %149 ]
  %156 = phi i8 [ %166, %238 ], [ 0, %149 ]
  %157 = phi ptr [ %165, %238 ], [ %39, %149 ]
  %158 = phi ptr [ %239, %238 ], [ %40, %149 ]
  %159 = add i32 %155, -1
  %160 = icmp eq ptr %157, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %154
  %162 = getelementptr i8, ptr %157, i32 1
  %163 = load i8, ptr %157, align 1
  br label %164

164:                                              ; preds = %161, %154
  %165 = phi ptr [ %162, %161 ], [ null, %154 ]
  %166 = phi i8 [ %163, %161 ], [ %156, %154 ]
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %238, !prof !16

168:                                              ; preds = %164
  %169 = getelementptr i8, ptr %158, i32 1
  %170 = load i8, ptr %158, align 1
  %171 = load i32, ptr %10, align 4
  %172 = and i32 %171, 32
  %173 = icmp eq i32 %172, 0
  %174 = and i8 %170, 127
  %175 = select i1 %173, i8 %170, i8 %174
  %176 = and i32 %171, 512
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %190, label %178

178:                                              ; preds = %168
  %179 = load i32, ptr %15, align 4
  %180 = and i32 %179, 32768
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %190, label %182

182:                                              ; preds = %178
  %183 = zext i8 %175 to i32
  %184 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %183
  %185 = load i8, ptr %184, align 1
  %186 = and i8 %185, 1
  %187 = icmp eq i8 %186, 0
  %188 = add i8 %175, 32
  %189 = select i1 %187, i8 %175, i8 %188
  br label %190

190:                                              ; preds = %182, %178, %168
  %191 = phi i8 [ %189, %182 ], [ %175, %178 ], [ %175, %168 ]
  %192 = and i32 %171, 1024
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %238, label %194

194:                                              ; preds = %190
  %195 = load i8, ptr %18, align 1
  %196 = icmp eq i8 %191, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  tail call void @stop_tty(ptr noundef %0) #11
  br label %238

198:                                              ; preds = %194
  %199 = load i8, ptr %19, align 1
  %200 = icmp eq i8 %191, %199
  br i1 %200, label %219, label %201

201:                                              ; preds = %198
  %202 = load i8, ptr %20, align 4, !range !8
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %238, label %204

204:                                              ; preds = %201
  %205 = load i8, ptr %21, align 1, !range !8
  %206 = icmp ne i8 %205, 0
  %207 = and i32 %171, 2048
  %208 = icmp eq i32 %207, 0
  %209 = select i1 %206, i1 true, i1 %208
  br i1 %209, label %238, label %210

210:                                              ; preds = %204
  %211 = load i8, ptr %17, align 1
  %212 = icmp eq i8 %191, %211
  br i1 %212, label %238, label %213

213:                                              ; preds = %210
  %214 = load i8, ptr %22, align 1
  %215 = icmp eq i8 %191, %214
  br i1 %215, label %238, label %216

216:                                              ; preds = %213
  %217 = load i8, ptr %23, align 1
  %218 = icmp eq i8 %191, %217
  br i1 %218, label %238, label %219

219:                                              ; preds = %216, %198
  tail call void @start_tty(ptr noundef %0) #11
  %220 = load ptr, ptr %6, align 4
  %221 = getelementptr inbounds %struct.n_tty_data, ptr %220, i32 0, i32 5
  %222 = load i32, ptr %221, align 4
  %223 = getelementptr inbounds %struct.n_tty_data, ptr %220, i32 0, i32 18
  %224 = load i32, ptr %223, align 4
  %225 = icmp eq i32 %222, %224
  br i1 %225, label %238, label %226

226:                                              ; preds = %219
  %227 = getelementptr inbounds %struct.n_tty_data, ptr %220, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %227) #11
  %228 = load i32, ptr %221, align 4
  %229 = getelementptr inbounds %struct.n_tty_data, ptr %220, i32 0, i32 4
  store i32 %228, ptr %229, align 4
  %230 = tail call fastcc i32 @__process_echoes(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %227) #11
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %238, label %232

232:                                              ; preds = %226
  %233 = load ptr, ptr %24, align 4
  %234 = getelementptr inbounds %struct.tty_operations, ptr %233, i32 0, i32 9
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %238, label %237

237:                                              ; preds = %232
  tail call void %235(ptr noundef %0) #11
  br label %238

238:                                              ; preds = %237, %232, %226, %219, %216, %213, %210, %204, %201, %197, %190, %164
  %239 = phi ptr [ %158, %164 ], [ %169, %190 ], [ %169, %197 ], [ %169, %201 ], [ %169, %204 ], [ %169, %210 ], [ %169, %213 ], [ %169, %216 ], [ %169, %219 ], [ %169, %226 ], [ %169, %232 ], [ %169, %237 ]
  %240 = icmp eq i32 %159, 0
  br i1 %240, label %1379, label %154

241:                                              ; preds = %149
  %242 = getelementptr inbounds %struct.n_tty_data, ptr %83, i32 0, i32 6
  br label %243

243:                                              ; preds = %1356, %241
  %244 = phi i32 [ %73, %241 ], [ %248, %1356 ]
  %245 = phi i8 [ 0, %241 ], [ %257, %1356 ]
  %246 = phi ptr [ %39, %241 ], [ %256, %1356 ]
  %247 = phi ptr [ %40, %241 ], [ %249, %1356 ]
  %248 = add i32 %244, -1
  %249 = getelementptr i8, ptr %247, i32 1
  %250 = load i8, ptr %247, align 1
  %251 = icmp eq ptr %246, null
  br i1 %251, label %255, label %252

252:                                              ; preds = %243
  %253 = getelementptr i8, ptr %246, i32 1
  %254 = load i8, ptr %246, align 1
  br label %255

255:                                              ; preds = %252, %243
  %256 = phi ptr [ %253, %252 ], [ null, %243 ]
  %257 = phi i8 [ %254, %252 ], [ %245, %243 ]
  %258 = load i8, ptr %96, align 1
  %259 = and i8 %258, 1
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %290, label %261

261:                                              ; preds = %255
  %262 = load ptr, ptr %6, align 4
  %263 = getelementptr inbounds %struct.n_tty_data, ptr %262, i32 0, i32 10
  %264 = load i8, ptr %263, align 1
  %265 = and i8 %264, -2
  store i8 %265, ptr %263, align 1
  %266 = icmp eq i8 %257, 0
  br i1 %266, label %267, label %289, !prof !16

267:                                              ; preds = %261
  %268 = load i32, ptr %10, align 4
  %269 = and i32 %268, 32
  %270 = icmp eq i32 %269, 0
  %271 = and i8 %250, 127
  %272 = select i1 %270, i8 %250, i8 %271
  %273 = and i32 %268, 512
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %287, label %275

275:                                              ; preds = %267
  %276 = load i32, ptr %15, align 4
  %277 = and i32 %276, 32768
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %287, label %279

279:                                              ; preds = %275
  %280 = zext i8 %272 to i32
  %281 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %280
  %282 = load i8, ptr %281, align 1
  %283 = and i8 %282, 1
  %284 = icmp eq i8 %283, 0
  %285 = add i8 %272, 32
  %286 = select i1 %284, i8 %272, i8 %285
  br label %287

287:                                              ; preds = %279, %275, %267
  %288 = phi i8 [ %286, %279 ], [ %272, %275 ], [ %272, %267 ]
  tail call fastcc void @n_tty_receive_char(ptr noundef %0, i8 noundef zeroext %288) #11
  br label %1356

289:                                              ; preds = %261
  tail call fastcc void @n_tty_receive_char_flagged(ptr noundef %0, i8 noundef zeroext %250, i8 noundef zeroext %257) #11
  br label %1356

290:                                              ; preds = %255
  %291 = icmp eq i8 %257, 0
  br i1 %291, label %293, label %292, !prof !16

292:                                              ; preds = %290
  tail call fastcc void @n_tty_receive_char_flagged(ptr noundef %0, i8 noundef zeroext %250, i8 noundef zeroext %257) #11
  br label %1356

293:                                              ; preds = %290
  %294 = load i32, ptr %10, align 4
  %295 = and i32 %294, 32
  %296 = icmp eq i32 %295, 0
  %297 = and i8 %250, 127
  %298 = select i1 %296, i8 %250, i8 %297
  %299 = and i32 %294, 512
  %300 = icmp eq i32 %299, 0
  %301 = load i32, ptr %15, align 4
  %302 = and i32 %301, 32768
  %303 = icmp eq i32 %302, 0
  %304 = select i1 %300, i1 true, i1 %303
  br i1 %304, label %313, label %305

305:                                              ; preds = %293
  %306 = zext i8 %298 to i32
  %307 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %306
  %308 = load i8, ptr %307, align 1
  %309 = and i8 %308, 1
  %310 = icmp eq i8 %309, 0
  %311 = add i8 %298, 32
  %312 = select i1 %310, i8 %298, i8 %311
  br label %313

313:                                              ; preds = %305, %293
  %314 = phi i8 [ %312, %305 ], [ %298, %293 ]
  %315 = and i32 %301, 65536
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %322, label %317

317:                                              ; preds = %313
  %318 = load i32, ptr %83, align 4
  %319 = and i32 %318, 4095
  %320 = getelementptr %struct.n_tty_data, ptr %83, i32 0, i32 11, i32 %319
  store i8 %314, ptr %320, align 1
  %321 = add i32 %318, 1
  store i32 %321, ptr %83, align 4
  br label %1356

322:                                              ; preds = %313
  %323 = zext i8 %314 to i32
  %324 = lshr i32 %323, 5
  %325 = getelementptr i32, ptr %242, i32 %324
  %326 = load volatile i32, ptr %325, align 4
  %327 = and i32 %323, 31
  %328 = shl nuw i32 1, %327
  %329 = and i32 %326, %328
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %1355, label %331

331:                                              ; preds = %322
  %332 = load ptr, ptr %6, align 4
  %333 = and i32 %294, 1024
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %361, label %335

335:                                              ; preds = %331
  %336 = load i8, ptr %19, align 1
  %337 = icmp eq i8 %336, %314
  br i1 %337, label %338, label %357

338:                                              ; preds = %335
  tail call void @start_tty(ptr noundef %0) #11
  %339 = load ptr, ptr %6, align 4
  %340 = getelementptr inbounds %struct.n_tty_data, ptr %339, i32 0, i32 5
  %341 = load i32, ptr %340, align 4
  %342 = getelementptr inbounds %struct.n_tty_data, ptr %339, i32 0, i32 18
  %343 = load i32, ptr %342, align 4
  %344 = icmp eq i32 %341, %343
  br i1 %344, label %1356, label %345

345:                                              ; preds = %338
  %346 = getelementptr inbounds %struct.n_tty_data, ptr %339, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %346) #11
  %347 = load i32, ptr %340, align 4
  %348 = getelementptr inbounds %struct.n_tty_data, ptr %339, i32 0, i32 4
  store i32 %347, ptr %348, align 4
  %349 = tail call fastcc i32 @__process_echoes(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %346) #11
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %1356, label %351

351:                                              ; preds = %345
  %352 = load ptr, ptr %24, align 4
  %353 = getelementptr inbounds %struct.tty_operations, ptr %352, i32 0, i32 9
  %354 = load ptr, ptr %353, align 4
  %355 = icmp eq ptr %354, null
  br i1 %355, label %1356, label %356

356:                                              ; preds = %351
  tail call void %354(ptr noundef %0) #11
  br label %1356

357:                                              ; preds = %335
  %358 = load i8, ptr %18, align 1
  %359 = icmp eq i8 %358, %314
  br i1 %359, label %360, label %361

360:                                              ; preds = %357
  tail call void @stop_tty(ptr noundef %0) #11
  br label %1356

361:                                              ; preds = %357, %331
  %362 = and i32 %301, 1
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %376, label %364

364:                                              ; preds = %361
  %365 = load i8, ptr %17, align 1
  %366 = icmp eq i8 %365, %314
  br i1 %366, label %367, label %368

367:                                              ; preds = %364
  tail call fastcc void @n_tty_receive_signal_char(ptr noundef %0, i32 noundef 2, i8 noundef zeroext %314) #11
  br label %1356

368:                                              ; preds = %364
  %369 = load i8, ptr %22, align 1
  %370 = icmp eq i8 %369, %314
  br i1 %370, label %371, label %372

371:                                              ; preds = %368
  tail call fastcc void @n_tty_receive_signal_char(ptr noundef %0, i32 noundef 3, i8 noundef zeroext %314) #11
  br label %1356

372:                                              ; preds = %368
  %373 = load i8, ptr %23, align 1
  %374 = icmp eq i8 %373, %314
  br i1 %374, label %375, label %376

375:                                              ; preds = %372
  tail call fastcc void @n_tty_receive_signal_char(ptr noundef %0, i32 noundef 20, i8 noundef zeroext %314) #11
  br label %1356

376:                                              ; preds = %372, %361
  %377 = load i8, ptr %20, align 4, !range !8
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %404, label %379

379:                                              ; preds = %376
  %380 = load i8, ptr %21, align 1, !range !8
  %381 = icmp eq i8 %380, 0
  %382 = and i32 %294, 3072
  %383 = icmp eq i32 %382, 3072
  %384 = select i1 %381, i1 %383, i1 false
  br i1 %384, label %385, label %404

385:                                              ; preds = %379
  tail call void @start_tty(ptr noundef %0) #11
  %386 = load ptr, ptr %6, align 4
  %387 = getelementptr inbounds %struct.n_tty_data, ptr %386, i32 0, i32 5
  %388 = load i32, ptr %387, align 4
  %389 = getelementptr inbounds %struct.n_tty_data, ptr %386, i32 0, i32 18
  %390 = load i32, ptr %389, align 4
  %391 = icmp eq i32 %388, %390
  br i1 %391, label %404, label %392

392:                                              ; preds = %385
  %393 = getelementptr inbounds %struct.n_tty_data, ptr %386, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %393) #11
  %394 = load i32, ptr %387, align 4
  %395 = getelementptr inbounds %struct.n_tty_data, ptr %386, i32 0, i32 4
  store i32 %394, ptr %395, align 4
  %396 = tail call fastcc i32 @__process_echoes(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %393) #11
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %404, label %398

398:                                              ; preds = %392
  %399 = load ptr, ptr %24, align 4
  %400 = getelementptr inbounds %struct.tty_operations, ptr %399, i32 0, i32 9
  %401 = load ptr, ptr %400, align 4
  %402 = icmp eq ptr %401, null
  br i1 %402, label %404, label %403

403:                                              ; preds = %398
  tail call void %401(ptr noundef %0) #11
  br label %404

404:                                              ; preds = %403, %398, %392, %385, %379, %376
  switch i8 %314, label %418 [
    i8 13, label %405
    i8 10, label %413
  ]

405:                                              ; preds = %404
  %406 = load i32, ptr %10, align 4
  %407 = and i32 %406, 128
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %1356

409:                                              ; preds = %405
  %410 = and i32 %406, 256
  %411 = icmp eq i32 %410, 0
  %412 = select i1 %411, i8 13, i8 10
  br label %418

413:                                              ; preds = %404
  %414 = load i32, ptr %10, align 4
  %415 = and i32 %414, 64
  %416 = icmp eq i32 %415, 0
  %417 = select i1 %416, i8 10, i8 13
  br label %418

418:                                              ; preds = %413, %409, %404
  %419 = phi i8 [ %412, %409 ], [ %314, %404 ], [ %417, %413 ]
  %420 = getelementptr inbounds %struct.n_tty_data, ptr %332, i32 0, i32 10
  %421 = load i8, ptr %420, align 1
  %422 = and i8 %421, 16
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %1234, label %424

424:                                              ; preds = %418
  %425 = load i8, ptr %25, align 1
  %426 = icmp eq i8 %419, %425
  br i1 %426, label %443, label %427

427:                                              ; preds = %424
  %428 = load i8, ptr %26, align 1
  %429 = icmp eq i8 %419, %428
  br i1 %429, label %437, label %430

430:                                              ; preds = %427
  %431 = load i8, ptr %27, align 1
  %432 = icmp eq i8 %419, %431
  br i1 %432, label %433, label %859

433:                                              ; preds = %430
  %434 = load i32, ptr %15, align 4
  %435 = and i32 %434, 32768
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %859, label %437

437:                                              ; preds = %433, %427
  %438 = load ptr, ptr %6, align 4
  %439 = load i32, ptr %438, align 4
  %440 = getelementptr inbounds %struct.n_tty_data, ptr %438, i32 0, i32 2
  %441 = load i32, ptr %440, align 4
  %442 = icmp eq i32 %439, %441
  br i1 %442, label %832, label %449

443:                                              ; preds = %424
  %444 = load ptr, ptr %6, align 4
  %445 = load i32, ptr %444, align 4
  %446 = getelementptr inbounds %struct.n_tty_data, ptr %444, i32 0, i32 2
  %447 = load i32, ptr %446, align 4
  %448 = icmp eq i32 %445, %447
  br i1 %448, label %832, label %525

449:                                              ; preds = %437
  %450 = load i8, ptr %27, align 1
  %451 = icmp eq i8 %450, %419
  br i1 %451, label %525, label %452

452:                                              ; preds = %449
  %453 = load i32, ptr %15, align 4
  %454 = and i32 %453, 8
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %452
  store i32 %441, ptr %438, align 4
  br label %832

457:                                              ; preds = %452
  %458 = and i32 %453, 2096
  %459 = icmp eq i32 %458, 2096
  br i1 %459, label %525, label %460

460:                                              ; preds = %457
  store i32 %441, ptr %438, align 4
  %461 = getelementptr inbounds %struct.n_tty_data, ptr %438, i32 0, i32 10
  %462 = load i8, ptr %461, align 1
  %463 = and i8 %462, 2
  %464 = icmp eq i8 %463, 0
  br i1 %464, label %474, label %465

465:                                              ; preds = %460
  %466 = getelementptr inbounds %struct.n_tty_data, ptr %438, i32 0, i32 3
  %467 = load i32, ptr %466, align 4
  %468 = and i32 %467, 4095
  %469 = getelementptr %struct.n_tty_data, ptr %438, i32 0, i32 13, i32 %468
  store i8 47, ptr %469, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %470 = load i32, ptr %466, align 4
  %471 = add i32 %470, 1
  store i32 %471, ptr %466, align 4
  %472 = load i8, ptr %461, align 1
  %473 = and i8 %472, -3
  store i8 %473, ptr %461, align 1
  br label %474

474:                                              ; preds = %465, %460
  %475 = load i8, ptr %26, align 1
  %476 = load ptr, ptr %6, align 4
  %477 = zext i8 %475 to i32
  %478 = icmp eq i8 %475, -1
  br i1 %478, label %479, label %488

479:                                              ; preds = %474
  %480 = getelementptr inbounds %struct.n_tty_data, ptr %476, i32 0, i32 3
  %481 = load i32, ptr %480, align 4
  %482 = and i32 %481, 4095
  %483 = getelementptr %struct.n_tty_data, ptr %476, i32 0, i32 13, i32 %482
  store i8 -1, ptr %483, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %484 = load i32, ptr %480, align 4
  %485 = add i32 %484, 1
  store i32 %485, ptr %480, align 4
  %486 = and i32 %485, 4095
  %487 = getelementptr %struct.n_tty_data, ptr %476, i32 0, i32 13, i32 %486
  store i8 -1, ptr %487, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %511

488:                                              ; preds = %474
  %489 = load i32, ptr %15, align 4
  %490 = and i32 %489, 512
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %506, label %492

492:                                              ; preds = %488
  %493 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %477
  %494 = load i8, ptr %493, align 1
  %495 = and i8 %494, 8
  %496 = icmp ne i8 %495, 0
  %497 = icmp ne i8 %475, 9
  %498 = and i1 %497, %496
  br i1 %498, label %499, label %506

499:                                              ; preds = %492
  %500 = getelementptr inbounds %struct.n_tty_data, ptr %476, i32 0, i32 3
  %501 = load i32, ptr %500, align 4
  %502 = and i32 %501, 4095
  %503 = getelementptr %struct.n_tty_data, ptr %476, i32 0, i32 13, i32 %502
  store i8 -1, ptr %503, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %504 = load i32, ptr %500, align 4
  %505 = add i32 %504, 1
  store i32 %505, ptr %500, align 4
  br label %506

506:                                              ; preds = %499, %492, %488
  %507 = getelementptr inbounds %struct.n_tty_data, ptr %476, i32 0, i32 3
  %508 = load i32, ptr %507, align 4
  %509 = and i32 %508, 4095
  %510 = getelementptr %struct.n_tty_data, ptr %476, i32 0, i32 13, i32 %509
  store i8 %475, ptr %510, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %511

511:                                              ; preds = %506, %479
  %512 = phi ptr [ %507, %506 ], [ %480, %479 ]
  %513 = load i32, ptr %512, align 4
  %514 = add i32 %513, 1
  store i32 %514, ptr %512, align 4
  %515 = load i32, ptr %15, align 4
  %516 = and i32 %515, 32
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %832, label %518

518:                                              ; preds = %511
  %519 = getelementptr inbounds %struct.n_tty_data, ptr %438, i32 0, i32 3
  %520 = load i32, ptr %519, align 4
  %521 = and i32 %520, 4095
  %522 = getelementptr %struct.n_tty_data, ptr %438, i32 0, i32 13, i32 %521
  store i8 10, ptr %522, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %523 = load i32, ptr %519, align 4
  %524 = add i32 %523, 1
  store i32 %524, ptr %519, align 4
  br label %832

525:                                              ; preds = %457, %449, %443
  %526 = phi i32 [ %439, %449 ], [ %439, %457 ], [ %445, %443 ]
  %527 = phi ptr [ %440, %449 ], [ %440, %457 ], [ %446, %443 ]
  %528 = phi i32 [ %441, %449 ], [ %441, %457 ], [ %447, %443 ]
  %529 = phi ptr [ %438, %449 ], [ %438, %457 ], [ %444, %443 ]
  %530 = phi i1 [ true, %449 ], [ false, %457 ], [ false, %443 ]
  %531 = getelementptr inbounds %struct.n_tty_data, ptr %529, i32 0, i32 10
  %532 = getelementptr inbounds %struct.n_tty_data, ptr %529, i32 0, i32 3
  br label %533

533:                                              ; preds = %809, %525
  %534 = phi i32 [ %528, %525 ], [ %811, %809 ]
  %535 = phi i32 [ %526, %525 ], [ %810, %809 ]
  %536 = phi i32 [ 0, %525 ], [ %571, %809 ]
  %537 = xor i32 %535, %534
  %538 = and i32 %537, 4095
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %812, label %540

540:                                              ; preds = %533
  %541 = load i32, ptr %10, align 4
  %542 = and i32 %541, 16384
  %543 = icmp eq i32 %542, 0
  br label %544

544:                                              ; preds = %553, %540
  %545 = phi i32 [ %546, %553 ], [ %535, %540 ]
  %546 = add i32 %545, -1
  %547 = and i32 %546, 4095
  %548 = getelementptr %struct.n_tty_data, ptr %529, i32 0, i32 11, i32 %547
  %549 = load i8, ptr %548, align 1
  %550 = and i8 %549, -64
  %551 = icmp ne i8 %550, -128
  %552 = or i1 %543, %551
  br i1 %552, label %557, label %553

553:                                              ; preds = %544
  %554 = xor i32 %546, %534
  %555 = and i32 %554, 4095
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %812, label %544

557:                                              ; preds = %544
  br i1 %530, label %558, label %570

558:                                              ; preds = %557
  %559 = zext i8 %549 to i32
  %560 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %559
  %561 = load i8, ptr %560, align 1
  %562 = and i8 %561, 7
  %563 = icmp ne i8 %562, 0
  %564 = icmp eq i8 %549, 95
  %565 = or i1 %564, %563
  br i1 %565, label %566, label %568

566:                                              ; preds = %558
  %567 = add i32 %536, 1
  br label %570

568:                                              ; preds = %558
  %569 = icmp eq i32 %536, 0
  br i1 %569, label %570, label %812

570:                                              ; preds = %568, %566, %557
  %571 = phi i32 [ %567, %566 ], [ 0, %568 ], [ %536, %557 ]
  store i32 %546, ptr %529, align 4
  %572 = load i32, ptr %15, align 4
  %573 = and i32 %572, 8
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %809, label %575

575:                                              ; preds = %570
  %576 = and i32 %572, 1024
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %664, label %578

578:                                              ; preds = %575
  %579 = load i8, ptr %531, align 1
  %580 = and i8 %579, 2
  %581 = icmp eq i8 %580, 0
  br i1 %581, label %582, label %590

582:                                              ; preds = %578
  %583 = load i32, ptr %532, align 4
  %584 = and i32 %583, 4095
  %585 = getelementptr %struct.n_tty_data, ptr %529, i32 0, i32 13, i32 %584
  store i8 92, ptr %585, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %586 = load i32, ptr %532, align 4
  %587 = add i32 %586, 1
  store i32 %587, ptr %532, align 4
  %588 = load i8, ptr %531, align 1
  %589 = or i8 %588, 2
  store i8 %589, ptr %531, align 1
  br label %590

590:                                              ; preds = %582, %578
  %591 = load ptr, ptr %6, align 4
  %592 = zext i8 %549 to i32
  %593 = icmp eq i8 %549, -1
  br i1 %593, label %594, label %603

594:                                              ; preds = %590
  %595 = getelementptr inbounds %struct.n_tty_data, ptr %591, i32 0, i32 3
  %596 = load i32, ptr %595, align 4
  %597 = and i32 %596, 4095
  %598 = getelementptr %struct.n_tty_data, ptr %591, i32 0, i32 13, i32 %597
  store i8 -1, ptr %598, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %599 = load i32, ptr %595, align 4
  %600 = add i32 %599, 1
  store i32 %600, ptr %595, align 4
  %601 = and i32 %600, 4095
  %602 = getelementptr %struct.n_tty_data, ptr %591, i32 0, i32 13, i32 %601
  store i8 -1, ptr %602, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %626

603:                                              ; preds = %590
  %604 = load i32, ptr %15, align 4
  %605 = and i32 %604, 512
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %621, label %607

607:                                              ; preds = %603
  %608 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %592
  %609 = load i8, ptr %608, align 1
  %610 = and i8 %609, 8
  %611 = icmp ne i8 %610, 0
  %612 = icmp ne i8 %549, 9
  %613 = and i1 %612, %611
  br i1 %613, label %614, label %621

614:                                              ; preds = %607
  %615 = getelementptr inbounds %struct.n_tty_data, ptr %591, i32 0, i32 3
  %616 = load i32, ptr %615, align 4
  %617 = and i32 %616, 4095
  %618 = getelementptr %struct.n_tty_data, ptr %591, i32 0, i32 13, i32 %617
  store i8 -1, ptr %618, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %619 = load i32, ptr %615, align 4
  %620 = add i32 %619, 1
  store i32 %620, ptr %615, align 4
  br label %621

621:                                              ; preds = %614, %607, %603
  %622 = getelementptr inbounds %struct.n_tty_data, ptr %591, i32 0, i32 3
  %623 = load i32, ptr %622, align 4
  %624 = and i32 %623, 4095
  %625 = getelementptr %struct.n_tty_data, ptr %591, i32 0, i32 13, i32 %624
  store i8 %549, ptr %625, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %626

626:                                              ; preds = %621, %594
  %627 = phi ptr [ %622, %621 ], [ %595, %594 ]
  %628 = load i32, ptr %627, align 4
  %629 = add i32 %628, 1
  store i32 %629, ptr %627, align 4
  %630 = sub i32 %535, %545
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %809, label %632

632:                                              ; preds = %626
  %633 = load i32, ptr %532, align 4
  br label %634

634:                                              ; preds = %651, %632
  %635 = phi i32 [ %661, %651 ], [ %633, %632 ]
  %636 = phi i32 [ %662, %651 ], [ %630, %632 ]
  %637 = phi i32 [ %638, %651 ], [ %546, %632 ]
  %638 = add i32 %637, 1
  %639 = and i32 %638, 4095
  %640 = getelementptr %struct.n_tty_data, ptr %529, i32 0, i32 11, i32 %639
  %641 = load i8, ptr %640, align 1
  %642 = icmp eq i8 %641, -1
  %643 = and i32 %635, 4095
  %644 = getelementptr %struct.n_tty_data, ptr %529, i32 0, i32 13, i32 %643
  br i1 %642, label %645, label %650

645:                                              ; preds = %634
  store i8 -1, ptr %644, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %646 = load i32, ptr %532, align 4
  %647 = add i32 %646, 1
  store i32 %647, ptr %532, align 4
  %648 = and i32 %647, 4095
  %649 = getelementptr %struct.n_tty_data, ptr %529, i32 0, i32 13, i32 %648
  store i8 -1, ptr %649, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %651

650:                                              ; preds = %634
  store i8 %641, ptr %644, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %651

651:                                              ; preds = %650, %645
  %652 = load i32, ptr %532, align 4
  %653 = add i32 %652, 1
  store i32 %653, ptr %532, align 4
  %654 = and i32 %653, 4095
  %655 = getelementptr %struct.n_tty_data, ptr %529, i32 0, i32 13, i32 %654
  store i8 -1, ptr %655, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %656 = load i32, ptr %532, align 4
  %657 = add i32 %656, 1
  store i32 %657, ptr %532, align 4
  %658 = and i32 %657, 4095
  %659 = getelementptr %struct.n_tty_data, ptr %529, i32 0, i32 13, i32 %658
  store i8 -128, ptr %659, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %660 = load i32, ptr %532, align 4
  %661 = add i32 %660, 1
  store i32 %661, ptr %532, align 4
  %662 = add i32 %636, -1
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %809, label %634

664:                                              ; preds = %575
  %665 = and i32 %572, 16
  %666 = icmp eq i32 %665, 0
  %667 = select i1 %426, i1 %666, i1 false
  br i1 %667, label %668, label %704

668:                                              ; preds = %664
  %669 = load i8, ptr %25, align 1
  %670 = load ptr, ptr %6, align 4
  %671 = zext i8 %669 to i32
  %672 = icmp eq i8 %669, -1
  br i1 %672, label %673, label %682

673:                                              ; preds = %668
  %674 = getelementptr inbounds %struct.n_tty_data, ptr %670, i32 0, i32 3
  %675 = load i32, ptr %674, align 4
  %676 = and i32 %675, 4095
  %677 = getelementptr %struct.n_tty_data, ptr %670, i32 0, i32 13, i32 %676
  store i8 -1, ptr %677, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %678 = load i32, ptr %674, align 4
  %679 = add i32 %678, 1
  store i32 %679, ptr %674, align 4
  %680 = and i32 %679, 4095
  %681 = getelementptr %struct.n_tty_data, ptr %670, i32 0, i32 13, i32 %680
  store i8 -1, ptr %681, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %805

682:                                              ; preds = %668
  %683 = and i32 %572, 512
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %699, label %685

685:                                              ; preds = %682
  %686 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %671
  %687 = load i8, ptr %686, align 1
  %688 = and i8 %687, 8
  %689 = icmp ne i8 %688, 0
  %690 = icmp ne i8 %669, 9
  %691 = and i1 %690, %689
  br i1 %691, label %692, label %699

692:                                              ; preds = %685
  %693 = getelementptr inbounds %struct.n_tty_data, ptr %670, i32 0, i32 3
  %694 = load i32, ptr %693, align 4
  %695 = and i32 %694, 4095
  %696 = getelementptr %struct.n_tty_data, ptr %670, i32 0, i32 13, i32 %695
  store i8 -1, ptr %696, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %697 = load i32, ptr %693, align 4
  %698 = add i32 %697, 1
  store i32 %698, ptr %693, align 4
  br label %699

699:                                              ; preds = %692, %685, %682
  %700 = getelementptr inbounds %struct.n_tty_data, ptr %670, i32 0, i32 3
  %701 = load i32, ptr %700, align 4
  %702 = and i32 %701, 4095
  %703 = getelementptr %struct.n_tty_data, ptr %670, i32 0, i32 13, i32 %702
  store i8 %669, ptr %703, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %805

704:                                              ; preds = %664
  %705 = icmp eq i8 %549, 9
  br i1 %705, label %706, label %765

706:                                              ; preds = %704
  %707 = xor i32 %546, %534
  %708 = and i32 %707, 4095
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %747, label %710

710:                                              ; preds = %706
  %711 = and i32 %572, 512
  %712 = icmp eq i32 %711, 0
  br label %713

713:                                              ; preds = %739, %710
  %714 = phi i32 [ %546, %710 ], [ %716, %739 ]
  %715 = phi i32 [ 0, %710 ], [ %740, %739 ]
  %716 = add i32 %714, -1
  %717 = and i32 %716, 4095
  %718 = getelementptr %struct.n_tty_data, ptr %529, i32 0, i32 11, i32 %717
  %719 = load i8, ptr %718, align 1
  %720 = icmp eq i8 %719, 9
  br i1 %720, label %744, label %721

721:                                              ; preds = %713
  %722 = zext i8 %719 to i32
  %723 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %722
  %724 = load i8, ptr %723, align 1
  %725 = and i8 %724, 8
  %726 = icmp eq i8 %725, 0
  br i1 %726, label %730, label %727

727:                                              ; preds = %721
  %728 = add i32 %715, 2
  %729 = select i1 %712, i32 %715, i32 %728
  br label %739

730:                                              ; preds = %721
  %731 = load i32, ptr %10, align 4
  %732 = and i32 %731, 16384
  %733 = icmp eq i32 %732, 0
  %734 = and i8 %719, -64
  %735 = icmp ne i8 %734, -128
  %736 = or i1 %735, %733
  %737 = zext i1 %736 to i32
  %738 = add i32 %715, %737
  br label %739

739:                                              ; preds = %730, %727
  %740 = phi i32 [ %729, %727 ], [ %738, %730 ]
  %741 = xor i32 %716, %534
  %742 = and i32 %741, 4095
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %744, label %713

744:                                              ; preds = %739, %713
  %745 = phi i32 [ %740, %739 ], [ %715, %713 ]
  %746 = xor i1 %720, true
  br label %747

747:                                              ; preds = %744, %706
  %748 = phi i32 [ 0, %706 ], [ %745, %744 ]
  %749 = phi i1 [ true, %706 ], [ %746, %744 ]
  %750 = load i32, ptr %532, align 4
  %751 = and i32 %750, 4095
  %752 = getelementptr %struct.n_tty_data, ptr %529, i32 0, i32 13, i32 %751
  store i8 -1, ptr %752, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %753 = load i32, ptr %532, align 4
  %754 = add i32 %753, 1
  store i32 %754, ptr %532, align 4
  %755 = and i32 %754, 4095
  %756 = getelementptr %struct.n_tty_data, ptr %529, i32 0, i32 13, i32 %755
  store i8 -126, ptr %756, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %757 = load i32, ptr %532, align 4
  %758 = add i32 %757, 1
  store i32 %758, ptr %532, align 4
  %759 = and i32 %748, 7
  %760 = or i32 %759, 128
  %761 = select i1 %749, i32 %759, i32 %760
  %762 = trunc i32 %761 to i8
  %763 = and i32 %758, 4095
  %764 = getelementptr %struct.n_tty_data, ptr %529, i32 0, i32 13, i32 %763
  store i8 %762, ptr %764, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %805

765:                                              ; preds = %704
  %766 = zext i8 %549 to i32
  %767 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %766
  %768 = load i8, ptr %767, align 1
  %769 = and i8 %768, 8
  %770 = icmp eq i8 %769, 0
  br i1 %770, label %771, label %773

771:                                              ; preds = %765
  %772 = load i32, ptr %532, align 4
  br label %793

773:                                              ; preds = %765
  %774 = and i32 %572, 512
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %809, label %776

776:                                              ; preds = %773
  %777 = load i32, ptr %532, align 4
  %778 = and i32 %777, 4095
  %779 = getelementptr %struct.n_tty_data, ptr %529, i32 0, i32 13, i32 %778
  store i8 8, ptr %779, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %780 = load i32, ptr %532, align 4
  %781 = add i32 %780, 1
  store i32 %781, ptr %532, align 4
  %782 = and i32 %781, 4095
  %783 = getelementptr %struct.n_tty_data, ptr %529, i32 0, i32 13, i32 %782
  store i8 32, ptr %783, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %784 = load i32, ptr %532, align 4
  %785 = add i32 %784, 1
  store i32 %785, ptr %532, align 4
  %786 = and i32 %785, 4095
  %787 = getelementptr %struct.n_tty_data, ptr %529, i32 0, i32 13, i32 %786
  store i8 8, ptr %787, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %788 = load i32, ptr %532, align 4
  %789 = add i32 %788, 1
  store i32 %789, ptr %532, align 4
  %790 = load i32, ptr %15, align 4
  %791 = and i32 %790, 512
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %809, label %793

793:                                              ; preds = %776, %771
  %794 = phi i32 [ %772, %771 ], [ %789, %776 ]
  %795 = and i32 %794, 4095
  %796 = getelementptr %struct.n_tty_data, ptr %529, i32 0, i32 13, i32 %795
  store i8 8, ptr %796, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %797 = load i32, ptr %532, align 4
  %798 = add i32 %797, 1
  store i32 %798, ptr %532, align 4
  %799 = and i32 %798, 4095
  %800 = getelementptr %struct.n_tty_data, ptr %529, i32 0, i32 13, i32 %799
  store i8 32, ptr %800, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %801 = load i32, ptr %532, align 4
  %802 = add i32 %801, 1
  store i32 %802, ptr %532, align 4
  %803 = and i32 %802, 4095
  %804 = getelementptr %struct.n_tty_data, ptr %529, i32 0, i32 13, i32 %803
  store i8 8, ptr %804, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %805

805:                                              ; preds = %793, %747, %699, %673
  %806 = phi ptr [ %532, %747 ], [ %532, %793 ], [ %700, %699 ], [ %674, %673 ]
  %807 = load i32, ptr %806, align 4
  %808 = add i32 %807, 1
  store i32 %808, ptr %806, align 4
  br label %809

809:                                              ; preds = %805, %776, %773, %651, %626, %570
  %810 = load i32, ptr %529, align 4
  %811 = load i32, ptr %527, align 4
  br i1 %426, label %812, label %533

812:                                              ; preds = %809, %568, %553, %533
  %813 = phi i32 [ %534, %553 ], [ %534, %533 ], [ %534, %568 ], [ %811, %809 ]
  %814 = phi i32 [ %535, %553 ], [ %535, %533 ], [ %535, %568 ], [ %810, %809 ]
  %815 = icmp eq i32 %814, %813
  br i1 %815, label %816, label %832

816:                                              ; preds = %812
  %817 = load i32, ptr %15, align 4
  %818 = and i32 %817, 8
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %832, label %820

820:                                              ; preds = %816
  %821 = load i8, ptr %531, align 1
  %822 = and i8 %821, 2
  %823 = icmp eq i8 %822, 0
  br i1 %823, label %832, label %824

824:                                              ; preds = %820
  %825 = load i32, ptr %532, align 4
  %826 = and i32 %825, 4095
  %827 = getelementptr %struct.n_tty_data, ptr %529, i32 0, i32 13, i32 %826
  store i8 47, ptr %827, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %828 = load i32, ptr %532, align 4
  %829 = add i32 %828, 1
  store i32 %829, ptr %532, align 4
  %830 = load i8, ptr %531, align 1
  %831 = and i8 %830, -3
  store i8 %831, ptr %531, align 1
  br label %832

832:                                              ; preds = %824, %820, %816, %812, %518, %511, %456, %443, %437
  %833 = load ptr, ptr %6, align 4
  %834 = getelementptr inbounds %struct.n_tty_data, ptr %833, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %834) #11
  %835 = getelementptr inbounds %struct.n_tty_data, ptr %833, i32 0, i32 3
  %836 = load i32, ptr %835, align 4
  %837 = getelementptr inbounds %struct.n_tty_data, ptr %833, i32 0, i32 5
  store i32 %836, ptr %837, align 4
  %838 = getelementptr inbounds %struct.n_tty_data, ptr %833, i32 0, i32 4
  %839 = getelementptr inbounds %struct.n_tty_data, ptr %833, i32 0, i32 18
  %840 = load i32, ptr %839, align 4
  %841 = sub i32 %836, %840
  %842 = icmp ult i32 %841, 256
  br i1 %842, label %849, label %843

843:                                              ; preds = %832
  %844 = load i32, ptr %838, align 4
  %845 = sub i32 %844, %840
  %846 = and i32 %841, 255
  %847 = and i32 %845, 255
  %848 = icmp ugt i32 %846, %847
  br i1 %848, label %849, label %850

849:                                              ; preds = %843, %832
  tail call void @mutex_unlock(ptr noundef %834) #11
  br label %1356

850:                                              ; preds = %843
  store i32 %836, ptr %838, align 4
  %851 = tail call fastcc i32 @__process_echoes(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %834) #11
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %1356, label %853

853:                                              ; preds = %850
  %854 = load ptr, ptr %24, align 4
  %855 = getelementptr inbounds %struct.tty_operations, ptr %854, i32 0, i32 9
  %856 = load ptr, ptr %855, align 4
  %857 = icmp eq ptr %856, null
  br i1 %857, label %1356, label %858

858:                                              ; preds = %853
  tail call void %856(ptr noundef %0) #11
  br label %1356

859:                                              ; preds = %433, %430
  %860 = load i8, ptr %28, align 1
  %861 = icmp eq i8 %419, %860
  br i1 %861, label %862, label %925

862:                                              ; preds = %859
  %863 = load i32, ptr %15, align 4
  %864 = and i32 %863, 32768
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %925, label %866

866:                                              ; preds = %862
  %867 = or i8 %421, 1
  store i8 %867, ptr %420, align 1
  %868 = load i32, ptr %15, align 4
  %869 = and i32 %868, 8
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %1356, label %871

871:                                              ; preds = %866
  %872 = and i8 %421, 2
  %873 = icmp eq i8 %872, 0
  br i1 %873, label %884, label %874

874:                                              ; preds = %871
  %875 = getelementptr inbounds %struct.n_tty_data, ptr %332, i32 0, i32 3
  %876 = load i32, ptr %875, align 4
  %877 = and i32 %876, 4095
  %878 = getelementptr %struct.n_tty_data, ptr %332, i32 0, i32 13, i32 %877
  store i8 47, ptr %878, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %879 = load i32, ptr %875, align 4
  %880 = add i32 %879, 1
  store i32 %880, ptr %875, align 4
  %881 = load i8, ptr %420, align 1
  %882 = and i8 %881, -3
  store i8 %882, ptr %420, align 1
  %883 = load i32, ptr %15, align 4
  br label %884

884:                                              ; preds = %874, %871
  %885 = phi i32 [ %868, %871 ], [ %883, %874 ]
  %886 = and i32 %885, 512
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %1356, label %888

888:                                              ; preds = %884
  %889 = getelementptr inbounds %struct.n_tty_data, ptr %332, i32 0, i32 3
  %890 = load i32, ptr %889, align 4
  %891 = and i32 %890, 4095
  %892 = getelementptr %struct.n_tty_data, ptr %332, i32 0, i32 13, i32 %891
  store i8 94, ptr %892, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %893 = load i32, ptr %889, align 4
  %894 = add i32 %893, 1
  store i32 %894, ptr %889, align 4
  %895 = and i32 %894, 4095
  %896 = getelementptr %struct.n_tty_data, ptr %332, i32 0, i32 13, i32 %895
  store i8 8, ptr %896, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %897 = load i32, ptr %889, align 4
  %898 = add i32 %897, 1
  store i32 %898, ptr %889, align 4
  %899 = load ptr, ptr %6, align 4
  %900 = getelementptr inbounds %struct.n_tty_data, ptr %899, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %900) #11
  %901 = getelementptr inbounds %struct.n_tty_data, ptr %899, i32 0, i32 3
  %902 = load i32, ptr %901, align 4
  %903 = getelementptr inbounds %struct.n_tty_data, ptr %899, i32 0, i32 5
  store i32 %902, ptr %903, align 4
  %904 = getelementptr inbounds %struct.n_tty_data, ptr %899, i32 0, i32 4
  %905 = getelementptr inbounds %struct.n_tty_data, ptr %899, i32 0, i32 18
  %906 = load i32, ptr %905, align 4
  %907 = sub i32 %902, %906
  %908 = icmp ult i32 %907, 256
  br i1 %908, label %915, label %909

909:                                              ; preds = %888
  %910 = load i32, ptr %904, align 4
  %911 = sub i32 %910, %906
  %912 = and i32 %907, 255
  %913 = and i32 %911, 255
  %914 = icmp ugt i32 %912, %913
  br i1 %914, label %915, label %916

915:                                              ; preds = %909, %888
  tail call void @mutex_unlock(ptr noundef %900) #11
  br label %1356

916:                                              ; preds = %909
  store i32 %902, ptr %904, align 4
  %917 = tail call fastcc i32 @__process_echoes(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %900) #11
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %1356, label %919

919:                                              ; preds = %916
  %920 = load ptr, ptr %24, align 4
  %921 = getelementptr inbounds %struct.tty_operations, ptr %920, i32 0, i32 9
  %922 = load ptr, ptr %921, align 4
  %923 = icmp eq ptr %922, null
  br i1 %923, label %1356, label %924

924:                                              ; preds = %919
  tail call void %922(ptr noundef %0) #11
  br label %1356

925:                                              ; preds = %862, %859
  %926 = load i8, ptr %29, align 1
  %927 = icmp eq i8 %419, %926
  br i1 %927, label %928, label %1072

928:                                              ; preds = %925
  %929 = load i32, ptr %15, align 4
  %930 = and i32 %929, 32776
  %931 = icmp eq i32 %930, 32776
  br i1 %931, label %932, label %1072

932:                                              ; preds = %928
  %933 = getelementptr inbounds %struct.n_tty_data, ptr %332, i32 0, i32 2
  %934 = load i32, ptr %933, align 4
  %935 = and i8 %421, 2
  %936 = icmp eq i8 %935, 0
  br i1 %936, label %946, label %937

937:                                              ; preds = %932
  %938 = getelementptr inbounds %struct.n_tty_data, ptr %332, i32 0, i32 3
  %939 = load i32, ptr %938, align 4
  %940 = and i32 %939, 4095
  %941 = getelementptr %struct.n_tty_data, ptr %332, i32 0, i32 13, i32 %940
  store i8 47, ptr %941, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %942 = load i32, ptr %938, align 4
  %943 = add i32 %942, 1
  store i32 %943, ptr %938, align 4
  %944 = load i8, ptr %420, align 1
  %945 = and i8 %944, -3
  store i8 %945, ptr %420, align 1
  br label %946

946:                                              ; preds = %937, %932
  %947 = load ptr, ptr %6, align 4
  %948 = zext i8 %419 to i32
  %949 = icmp eq i8 %419, -1
  br i1 %949, label %950, label %959

950:                                              ; preds = %946
  %951 = getelementptr inbounds %struct.n_tty_data, ptr %947, i32 0, i32 3
  %952 = load i32, ptr %951, align 4
  %953 = and i32 %952, 4095
  %954 = getelementptr %struct.n_tty_data, ptr %947, i32 0, i32 13, i32 %953
  store i8 -1, ptr %954, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %955 = load i32, ptr %951, align 4
  %956 = add i32 %955, 1
  store i32 %956, ptr %951, align 4
  %957 = and i32 %956, 4095
  %958 = getelementptr %struct.n_tty_data, ptr %947, i32 0, i32 13, i32 %957
  store i8 -1, ptr %958, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %982

959:                                              ; preds = %946
  %960 = load i32, ptr %15, align 4
  %961 = and i32 %960, 512
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %977, label %963

963:                                              ; preds = %959
  %964 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %948
  %965 = load i8, ptr %964, align 1
  %966 = and i8 %965, 8
  %967 = icmp ne i8 %966, 0
  %968 = icmp ne i8 %419, 9
  %969 = and i1 %968, %967
  br i1 %969, label %970, label %977

970:                                              ; preds = %963
  %971 = getelementptr inbounds %struct.n_tty_data, ptr %947, i32 0, i32 3
  %972 = load i32, ptr %971, align 4
  %973 = and i32 %972, 4095
  %974 = getelementptr %struct.n_tty_data, ptr %947, i32 0, i32 13, i32 %973
  store i8 -1, ptr %974, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %975 = load i32, ptr %971, align 4
  %976 = add i32 %975, 1
  store i32 %976, ptr %971, align 4
  br label %977

977:                                              ; preds = %970, %963, %959
  %978 = getelementptr inbounds %struct.n_tty_data, ptr %947, i32 0, i32 3
  %979 = load i32, ptr %978, align 4
  %980 = and i32 %979, 4095
  %981 = getelementptr %struct.n_tty_data, ptr %947, i32 0, i32 13, i32 %980
  store i8 %419, ptr %981, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %982

982:                                              ; preds = %977, %950
  %983 = phi ptr [ %978, %977 ], [ %951, %950 ]
  %984 = load i32, ptr %983, align 4
  %985 = add i32 %984, 1
  store i32 %985, ptr %983, align 4
  %986 = getelementptr inbounds %struct.n_tty_data, ptr %332, i32 0, i32 3
  %987 = load i32, ptr %986, align 4
  %988 = and i32 %987, 4095
  %989 = getelementptr %struct.n_tty_data, ptr %332, i32 0, i32 13, i32 %988
  store i8 10, ptr %989, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %990 = load i32, ptr %986, align 4
  %991 = add i32 %990, 1
  store i32 %991, ptr %986, align 4
  %992 = load i32, ptr %332, align 4
  %993 = xor i32 %992, %934
  %994 = and i32 %993, 4095
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %1045, label %996

996:                                              ; preds = %1036, %982
  %997 = phi i32 [ %1040, %1036 ], [ %934, %982 ]
  %998 = and i32 %997, 4095
  %999 = getelementptr %struct.n_tty_data, ptr %332, i32 0, i32 11, i32 %998
  %1000 = load i8, ptr %999, align 1
  %1001 = load ptr, ptr %6, align 4
  %1002 = zext i8 %1000 to i32
  %1003 = icmp eq i8 %1000, -1
  br i1 %1003, label %1004, label %1013

1004:                                             ; preds = %996
  %1005 = getelementptr inbounds %struct.n_tty_data, ptr %1001, i32 0, i32 3
  %1006 = load i32, ptr %1005, align 4
  %1007 = and i32 %1006, 4095
  %1008 = getelementptr %struct.n_tty_data, ptr %1001, i32 0, i32 13, i32 %1007
  store i8 -1, ptr %1008, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %1009 = load i32, ptr %1005, align 4
  %1010 = add i32 %1009, 1
  store i32 %1010, ptr %1005, align 4
  %1011 = and i32 %1010, 4095
  %1012 = getelementptr %struct.n_tty_data, ptr %1001, i32 0, i32 13, i32 %1011
  store i8 -1, ptr %1012, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %1036

1013:                                             ; preds = %996
  %1014 = load i32, ptr %15, align 4
  %1015 = and i32 %1014, 512
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1031, label %1017

1017:                                             ; preds = %1013
  %1018 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %1002
  %1019 = load i8, ptr %1018, align 1
  %1020 = and i8 %1019, 8
  %1021 = icmp ne i8 %1020, 0
  %1022 = icmp ne i8 %1000, 9
  %1023 = and i1 %1022, %1021
  br i1 %1023, label %1024, label %1031

1024:                                             ; preds = %1017
  %1025 = getelementptr inbounds %struct.n_tty_data, ptr %1001, i32 0, i32 3
  %1026 = load i32, ptr %1025, align 4
  %1027 = and i32 %1026, 4095
  %1028 = getelementptr %struct.n_tty_data, ptr %1001, i32 0, i32 13, i32 %1027
  store i8 -1, ptr %1028, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %1029 = load i32, ptr %1025, align 4
  %1030 = add i32 %1029, 1
  store i32 %1030, ptr %1025, align 4
  br label %1031

1031:                                             ; preds = %1024, %1017, %1013
  %1032 = getelementptr inbounds %struct.n_tty_data, ptr %1001, i32 0, i32 3
  %1033 = load i32, ptr %1032, align 4
  %1034 = and i32 %1033, 4095
  %1035 = getelementptr %struct.n_tty_data, ptr %1001, i32 0, i32 13, i32 %1034
  store i8 %1000, ptr %1035, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %1036

1036:                                             ; preds = %1031, %1004
  %1037 = phi ptr [ %1032, %1031 ], [ %1005, %1004 ]
  %1038 = load i32, ptr %1037, align 4
  %1039 = add i32 %1038, 1
  store i32 %1039, ptr %1037, align 4
  %1040 = add i32 %997, 1
  %1041 = load i32, ptr %332, align 4
  %1042 = xor i32 %1041, %1040
  %1043 = and i32 %1042, 4095
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1045, label %996

1045:                                             ; preds = %1036, %982
  %1046 = load ptr, ptr %6, align 4
  %1047 = getelementptr inbounds %struct.n_tty_data, ptr %1046, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %1047) #11
  %1048 = getelementptr inbounds %struct.n_tty_data, ptr %1046, i32 0, i32 3
  %1049 = load i32, ptr %1048, align 4
  %1050 = getelementptr inbounds %struct.n_tty_data, ptr %1046, i32 0, i32 5
  store i32 %1049, ptr %1050, align 4
  %1051 = getelementptr inbounds %struct.n_tty_data, ptr %1046, i32 0, i32 4
  %1052 = getelementptr inbounds %struct.n_tty_data, ptr %1046, i32 0, i32 18
  %1053 = load i32, ptr %1052, align 4
  %1054 = sub i32 %1049, %1053
  %1055 = icmp ult i32 %1054, 256
  br i1 %1055, label %1062, label %1056

1056:                                             ; preds = %1045
  %1057 = load i32, ptr %1051, align 4
  %1058 = sub i32 %1057, %1053
  %1059 = and i32 %1054, 255
  %1060 = and i32 %1058, 255
  %1061 = icmp ugt i32 %1059, %1060
  br i1 %1061, label %1062, label %1063

1062:                                             ; preds = %1056, %1045
  tail call void @mutex_unlock(ptr noundef %1047) #11
  br label %1356

1063:                                             ; preds = %1056
  store i32 %1049, ptr %1051, align 4
  %1064 = tail call fastcc i32 @__process_echoes(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %1047) #11
  %1065 = icmp eq i32 %1064, 0
  br i1 %1065, label %1356, label %1066

1066:                                             ; preds = %1063
  %1067 = load ptr, ptr %24, align 4
  %1068 = getelementptr inbounds %struct.tty_operations, ptr %1067, i32 0, i32 9
  %1069 = load ptr, ptr %1068, align 4
  %1070 = icmp eq ptr %1069, null
  br i1 %1070, label %1356, label %1071

1071:                                             ; preds = %1066
  tail call void %1069(ptr noundef %0) #11
  br label %1356

1072:                                             ; preds = %928, %925
  %1073 = icmp eq i8 %419, 10
  br i1 %1073, label %1074, label %1111

1074:                                             ; preds = %1072
  %1075 = load i32, ptr %15, align 4
  %1076 = and i32 %1075, 72
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1223, label %1078

1078:                                             ; preds = %1074
  %1079 = getelementptr inbounds %struct.n_tty_data, ptr %332, i32 0, i32 3
  %1080 = load i32, ptr %1079, align 4
  %1081 = and i32 %1080, 4095
  %1082 = getelementptr %struct.n_tty_data, ptr %332, i32 0, i32 13, i32 %1081
  store i8 10, ptr %1082, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %1083 = load i32, ptr %1079, align 4
  %1084 = add i32 %1083, 1
  store i32 %1084, ptr %1079, align 4
  %1085 = load ptr, ptr %6, align 4
  %1086 = getelementptr inbounds %struct.n_tty_data, ptr %1085, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %1086) #11
  %1087 = getelementptr inbounds %struct.n_tty_data, ptr %1085, i32 0, i32 3
  %1088 = load i32, ptr %1087, align 4
  %1089 = getelementptr inbounds %struct.n_tty_data, ptr %1085, i32 0, i32 5
  store i32 %1088, ptr %1089, align 4
  %1090 = getelementptr inbounds %struct.n_tty_data, ptr %1085, i32 0, i32 4
  %1091 = getelementptr inbounds %struct.n_tty_data, ptr %1085, i32 0, i32 18
  %1092 = load i32, ptr %1091, align 4
  %1093 = sub i32 %1088, %1092
  %1094 = icmp ult i32 %1093, 256
  br i1 %1094, label %1101, label %1095

1095:                                             ; preds = %1078
  %1096 = load i32, ptr %1090, align 4
  %1097 = sub i32 %1096, %1092
  %1098 = and i32 %1093, 255
  %1099 = and i32 %1097, 255
  %1100 = icmp ugt i32 %1098, %1099
  br i1 %1100, label %1101, label %1102

1101:                                             ; preds = %1095, %1078
  tail call void @mutex_unlock(ptr noundef %1086) #11
  br label %1223

1102:                                             ; preds = %1095
  store i32 %1088, ptr %1090, align 4
  %1103 = tail call fastcc i32 @__process_echoes(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %1086) #11
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1223, label %1105

1105:                                             ; preds = %1102
  %1106 = load ptr, ptr %24, align 4
  %1107 = getelementptr inbounds %struct.tty_operations, ptr %1106, i32 0, i32 9
  %1108 = load ptr, ptr %1107, align 4
  %1109 = icmp eq ptr %1108, null
  br i1 %1109, label %1223, label %1110

1110:                                             ; preds = %1105
  tail call void %1108(ptr noundef %0) #11
  br label %1223

1111:                                             ; preds = %1072
  %1112 = load i8, ptr %30, align 1
  %1113 = icmp eq i8 %419, %1112
  br i1 %1113, label %1223, label %1114

1114:                                             ; preds = %1111
  %1115 = load i8, ptr %31, align 1
  %1116 = icmp eq i8 %419, %1115
  br i1 %1116, label %1117, label %1119

1117:                                             ; preds = %1114
  %1118 = load i32, ptr %15, align 4
  br label %1126

1119:                                             ; preds = %1114
  %1120 = load i8, ptr %32, align 1
  %1121 = icmp eq i8 %419, %1120
  br i1 %1121, label %1122, label %1234

1122:                                             ; preds = %1119
  %1123 = load i32, ptr %15, align 4
  %1124 = and i32 %1123, 32768
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1234, label %1126

1126:                                             ; preds = %1122, %1117
  %1127 = phi i32 [ %1118, %1117 ], [ %1123, %1122 ]
  %1128 = and i32 %1127, 8
  %1129 = icmp eq i32 %1128, 0
  br i1 %1129, label %1212, label %1130

1130:                                             ; preds = %1126
  %1131 = getelementptr inbounds %struct.n_tty_data, ptr %332, i32 0, i32 2
  %1132 = load i32, ptr %1131, align 4
  %1133 = load i32, ptr %332, align 4
  %1134 = icmp eq i32 %1132, %1133
  br i1 %1134, label %1135, label %1146

1135:                                             ; preds = %1130
  %1136 = getelementptr inbounds %struct.n_tty_data, ptr %332, i32 0, i32 3
  %1137 = load i32, ptr %1136, align 4
  %1138 = and i32 %1137, 4095
  %1139 = getelementptr %struct.n_tty_data, ptr %332, i32 0, i32 13, i32 %1138
  store i8 -1, ptr %1139, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %1140 = load i32, ptr %1136, align 4
  %1141 = add i32 %1140, 1
  store i32 %1141, ptr %1136, align 4
  %1142 = and i32 %1141, 4095
  %1143 = getelementptr %struct.n_tty_data, ptr %332, i32 0, i32 13, i32 %1142
  store i8 -127, ptr %1143, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %1144 = load i32, ptr %1136, align 4
  %1145 = add i32 %1144, 1
  store i32 %1145, ptr %1136, align 4
  br label %1146

1146:                                             ; preds = %1135, %1130
  %1147 = load ptr, ptr %6, align 4
  %1148 = zext i8 %419 to i32
  %1149 = icmp eq i8 %419, -1
  br i1 %1149, label %1150, label %1159

1150:                                             ; preds = %1146
  %1151 = getelementptr inbounds %struct.n_tty_data, ptr %1147, i32 0, i32 3
  %1152 = load i32, ptr %1151, align 4
  %1153 = and i32 %1152, 4095
  %1154 = getelementptr %struct.n_tty_data, ptr %1147, i32 0, i32 13, i32 %1153
  store i8 -1, ptr %1154, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %1155 = load i32, ptr %1151, align 4
  %1156 = add i32 %1155, 1
  store i32 %1156, ptr %1151, align 4
  %1157 = and i32 %1156, 4095
  %1158 = getelementptr %struct.n_tty_data, ptr %1147, i32 0, i32 13, i32 %1157
  store i8 -1, ptr %1158, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %1182

1159:                                             ; preds = %1146
  %1160 = load i32, ptr %15, align 4
  %1161 = and i32 %1160, 512
  %1162 = icmp eq i32 %1161, 0
  br i1 %1162, label %1177, label %1163

1163:                                             ; preds = %1159
  %1164 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %1148
  %1165 = load i8, ptr %1164, align 1
  %1166 = and i8 %1165, 8
  %1167 = icmp ne i8 %1166, 0
  %1168 = icmp ne i8 %419, 9
  %1169 = and i1 %1168, %1167
  br i1 %1169, label %1170, label %1177

1170:                                             ; preds = %1163
  %1171 = getelementptr inbounds %struct.n_tty_data, ptr %1147, i32 0, i32 3
  %1172 = load i32, ptr %1171, align 4
  %1173 = and i32 %1172, 4095
  %1174 = getelementptr %struct.n_tty_data, ptr %1147, i32 0, i32 13, i32 %1173
  store i8 -1, ptr %1174, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %1175 = load i32, ptr %1171, align 4
  %1176 = add i32 %1175, 1
  store i32 %1176, ptr %1171, align 4
  br label %1177

1177:                                             ; preds = %1170, %1163, %1159
  %1178 = getelementptr inbounds %struct.n_tty_data, ptr %1147, i32 0, i32 3
  %1179 = load i32, ptr %1178, align 4
  %1180 = and i32 %1179, 4095
  %1181 = getelementptr %struct.n_tty_data, ptr %1147, i32 0, i32 13, i32 %1180
  store i8 %419, ptr %1181, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %1182

1182:                                             ; preds = %1177, %1150
  %1183 = phi ptr [ %1178, %1177 ], [ %1151, %1150 ]
  %1184 = load i32, ptr %1183, align 4
  %1185 = add i32 %1184, 1
  store i32 %1185, ptr %1183, align 4
  %1186 = load ptr, ptr %6, align 4
  %1187 = getelementptr inbounds %struct.n_tty_data, ptr %1186, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %1187) #11
  %1188 = getelementptr inbounds %struct.n_tty_data, ptr %1186, i32 0, i32 3
  %1189 = load i32, ptr %1188, align 4
  %1190 = getelementptr inbounds %struct.n_tty_data, ptr %1186, i32 0, i32 5
  store i32 %1189, ptr %1190, align 4
  %1191 = getelementptr inbounds %struct.n_tty_data, ptr %1186, i32 0, i32 4
  %1192 = getelementptr inbounds %struct.n_tty_data, ptr %1186, i32 0, i32 18
  %1193 = load i32, ptr %1192, align 4
  %1194 = sub i32 %1189, %1193
  %1195 = icmp ult i32 %1194, 256
  br i1 %1195, label %1202, label %1196

1196:                                             ; preds = %1182
  %1197 = load i32, ptr %1191, align 4
  %1198 = sub i32 %1197, %1193
  %1199 = and i32 %1194, 255
  %1200 = and i32 %1198, 255
  %1201 = icmp ugt i32 %1199, %1200
  br i1 %1201, label %1202, label %1203

1202:                                             ; preds = %1196, %1182
  tail call void @mutex_unlock(ptr noundef %1187) #11
  br label %1212

1203:                                             ; preds = %1196
  store i32 %1189, ptr %1191, align 4
  %1204 = tail call fastcc i32 @__process_echoes(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %1187) #11
  %1205 = icmp eq i32 %1204, 0
  br i1 %1205, label %1212, label %1206

1206:                                             ; preds = %1203
  %1207 = load ptr, ptr %24, align 4
  %1208 = getelementptr inbounds %struct.tty_operations, ptr %1207, i32 0, i32 9
  %1209 = load ptr, ptr %1208, align 4
  %1210 = icmp eq ptr %1209, null
  br i1 %1210, label %1212, label %1211

1211:                                             ; preds = %1206
  tail call void %1209(ptr noundef %0) #11
  br label %1212

1212:                                             ; preds = %1211, %1206, %1203, %1202, %1126
  %1213 = icmp eq i8 %419, -1
  br i1 %1213, label %1214, label %1223

1214:                                             ; preds = %1212
  %1215 = load i32, ptr %10, align 4
  %1216 = and i32 %1215, 8
  %1217 = icmp eq i32 %1216, 0
  br i1 %1217, label %1223, label %1218

1218:                                             ; preds = %1214
  %1219 = load i32, ptr %332, align 4
  %1220 = and i32 %1219, 4095
  %1221 = getelementptr %struct.n_tty_data, ptr %332, i32 0, i32 11, i32 %1220
  store i8 -1, ptr %1221, align 1
  %1222 = add i32 %1219, 1
  store i32 %1222, ptr %332, align 4
  br label %1223

1223:                                             ; preds = %1218, %1214, %1212, %1111, %1110, %1105, %1102, %1101, %1074
  %1224 = phi i8 [ -1, %1218 ], [ -1, %1214 ], [ %419, %1212 ], [ 10, %1074 ], [ 0, %1111 ], [ 10, %1101 ], [ 10, %1102 ], [ 10, %1105 ], [ 10, %1110 ]
  %1225 = load i32, ptr %332, align 4
  %1226 = and i32 %1225, 4095
  %1227 = getelementptr inbounds %struct.n_tty_data, ptr %332, i32 0, i32 12
  tail call void @_set_bit(i32 noundef %1226, ptr noundef %1227) #11
  %1228 = load i32, ptr %332, align 4
  %1229 = and i32 %1228, 4095
  %1230 = getelementptr %struct.n_tty_data, ptr %332, i32 0, i32 11, i32 %1229
  store i8 %1224, ptr %1230, align 1
  %1231 = add i32 %1228, 1
  store i32 %1231, ptr %332, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !28
  %1232 = load i32, ptr %332, align 4
  %1233 = getelementptr inbounds %struct.n_tty_data, ptr %332, i32 0, i32 2
  store volatile i32 %1232, ptr %1233, align 4
  tail call void @kill_fasync(ptr noundef %33, i32 noundef 29, i32 noundef 1) #11
  tail call void @__wake_up(ptr noundef %34, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 65 to ptr)) #11
  br label %1356

1234:                                             ; preds = %1122, %1119, %418
  %1235 = load i32, ptr %15, align 4
  %1236 = and i32 %1235, 8
  %1237 = icmp eq i32 %1236, 0
  br i1 %1237, label %1339, label %1238

1238:                                             ; preds = %1234
  %1239 = and i8 %421, 2
  %1240 = icmp eq i8 %1239, 0
  br i1 %1240, label %1250, label %1241

1241:                                             ; preds = %1238
  %1242 = getelementptr inbounds %struct.n_tty_data, ptr %332, i32 0, i32 3
  %1243 = load i32, ptr %1242, align 4
  %1244 = and i32 %1243, 4095
  %1245 = getelementptr %struct.n_tty_data, ptr %332, i32 0, i32 13, i32 %1244
  store i8 47, ptr %1245, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %1246 = load i32, ptr %1242, align 4
  %1247 = add i32 %1246, 1
  store i32 %1247, ptr %1242, align 4
  %1248 = load i8, ptr %420, align 1
  %1249 = and i8 %1248, -3
  store i8 %1249, ptr %420, align 1
  br label %1250

1250:                                             ; preds = %1241, %1238
  %1251 = icmp eq i8 %419, 10
  br i1 %1251, label %1252, label %1257

1252:                                             ; preds = %1250
  %1253 = getelementptr inbounds %struct.n_tty_data, ptr %332, i32 0, i32 3
  %1254 = load i32, ptr %1253, align 4
  %1255 = and i32 %1254, 4095
  %1256 = getelementptr %struct.n_tty_data, ptr %332, i32 0, i32 13, i32 %1255
  store i8 10, ptr %1256, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %1309

1257:                                             ; preds = %1250
  %1258 = getelementptr inbounds %struct.n_tty_data, ptr %332, i32 0, i32 2
  %1259 = load i32, ptr %1258, align 4
  %1260 = load i32, ptr %332, align 4
  %1261 = icmp eq i32 %1259, %1260
  br i1 %1261, label %1262, label %1273

1262:                                             ; preds = %1257
  %1263 = getelementptr inbounds %struct.n_tty_data, ptr %332, i32 0, i32 3
  %1264 = load i32, ptr %1263, align 4
  %1265 = and i32 %1264, 4095
  %1266 = getelementptr %struct.n_tty_data, ptr %332, i32 0, i32 13, i32 %1265
  store i8 -1, ptr %1266, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %1267 = load i32, ptr %1263, align 4
  %1268 = add i32 %1267, 1
  store i32 %1268, ptr %1263, align 4
  %1269 = and i32 %1268, 4095
  %1270 = getelementptr %struct.n_tty_data, ptr %332, i32 0, i32 13, i32 %1269
  store i8 -127, ptr %1270, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %1271 = load i32, ptr %1263, align 4
  %1272 = add i32 %1271, 1
  store i32 %1272, ptr %1263, align 4
  br label %1273

1273:                                             ; preds = %1262, %1257
  %1274 = load ptr, ptr %6, align 4
  %1275 = zext i8 %419 to i32
  %1276 = icmp eq i8 %419, -1
  br i1 %1276, label %1277, label %1286

1277:                                             ; preds = %1273
  %1278 = getelementptr inbounds %struct.n_tty_data, ptr %1274, i32 0, i32 3
  %1279 = load i32, ptr %1278, align 4
  %1280 = and i32 %1279, 4095
  %1281 = getelementptr %struct.n_tty_data, ptr %1274, i32 0, i32 13, i32 %1280
  store i8 -1, ptr %1281, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %1282 = load i32, ptr %1278, align 4
  %1283 = add i32 %1282, 1
  store i32 %1283, ptr %1278, align 4
  %1284 = and i32 %1283, 4095
  %1285 = getelementptr %struct.n_tty_data, ptr %1274, i32 0, i32 13, i32 %1284
  store i8 -1, ptr %1285, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %1309

1286:                                             ; preds = %1273
  %1287 = load i32, ptr %15, align 4
  %1288 = and i32 %1287, 512
  %1289 = icmp eq i32 %1288, 0
  br i1 %1289, label %1304, label %1290

1290:                                             ; preds = %1286
  %1291 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %1275
  %1292 = load i8, ptr %1291, align 1
  %1293 = and i8 %1292, 8
  %1294 = icmp ne i8 %1293, 0
  %1295 = icmp ne i8 %419, 9
  %1296 = and i1 %1295, %1294
  br i1 %1296, label %1297, label %1304

1297:                                             ; preds = %1290
  %1298 = getelementptr inbounds %struct.n_tty_data, ptr %1274, i32 0, i32 3
  %1299 = load i32, ptr %1298, align 4
  %1300 = and i32 %1299, 4095
  %1301 = getelementptr %struct.n_tty_data, ptr %1274, i32 0, i32 13, i32 %1300
  store i8 -1, ptr %1301, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %1302 = load i32, ptr %1298, align 4
  %1303 = add i32 %1302, 1
  store i32 %1303, ptr %1298, align 4
  br label %1304

1304:                                             ; preds = %1297, %1290, %1286
  %1305 = getelementptr inbounds %struct.n_tty_data, ptr %1274, i32 0, i32 3
  %1306 = load i32, ptr %1305, align 4
  %1307 = and i32 %1306, 4095
  %1308 = getelementptr %struct.n_tty_data, ptr %1274, i32 0, i32 13, i32 %1307
  store i8 %419, ptr %1308, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %1309

1309:                                             ; preds = %1304, %1277, %1252
  %1310 = phi ptr [ %1253, %1252 ], [ %1305, %1304 ], [ %1278, %1277 ]
  %1311 = load i32, ptr %1310, align 4
  %1312 = add i32 %1311, 1
  store i32 %1312, ptr %1310, align 4
  %1313 = load ptr, ptr %6, align 4
  %1314 = getelementptr inbounds %struct.n_tty_data, ptr %1313, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %1314) #11
  %1315 = getelementptr inbounds %struct.n_tty_data, ptr %1313, i32 0, i32 3
  %1316 = load i32, ptr %1315, align 4
  %1317 = getelementptr inbounds %struct.n_tty_data, ptr %1313, i32 0, i32 5
  store i32 %1316, ptr %1317, align 4
  %1318 = getelementptr inbounds %struct.n_tty_data, ptr %1313, i32 0, i32 4
  %1319 = getelementptr inbounds %struct.n_tty_data, ptr %1313, i32 0, i32 18
  %1320 = load i32, ptr %1319, align 4
  %1321 = sub i32 %1316, %1320
  %1322 = icmp ult i32 %1321, 256
  br i1 %1322, label %1329, label %1323

1323:                                             ; preds = %1309
  %1324 = load i32, ptr %1318, align 4
  %1325 = sub i32 %1324, %1320
  %1326 = and i32 %1321, 255
  %1327 = and i32 %1325, 255
  %1328 = icmp ugt i32 %1326, %1327
  br i1 %1328, label %1329, label %1330

1329:                                             ; preds = %1323, %1309
  tail call void @mutex_unlock(ptr noundef %1314) #11
  br label %1339

1330:                                             ; preds = %1323
  store i32 %1316, ptr %1318, align 4
  %1331 = tail call fastcc i32 @__process_echoes(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %1314) #11
  %1332 = icmp eq i32 %1331, 0
  br i1 %1332, label %1339, label %1333

1333:                                             ; preds = %1330
  %1334 = load ptr, ptr %24, align 4
  %1335 = getelementptr inbounds %struct.tty_operations, ptr %1334, i32 0, i32 9
  %1336 = load ptr, ptr %1335, align 4
  %1337 = icmp eq ptr %1336, null
  br i1 %1337, label %1339, label %1338

1338:                                             ; preds = %1333
  tail call void %1336(ptr noundef %0) #11
  br label %1339

1339:                                             ; preds = %1338, %1333, %1330, %1329, %1234
  %1340 = icmp eq i8 %419, -1
  br i1 %1340, label %1341, label %1350

1341:                                             ; preds = %1339
  %1342 = load i32, ptr %10, align 4
  %1343 = and i32 %1342, 8
  %1344 = icmp eq i32 %1343, 0
  br i1 %1344, label %1350, label %1345

1345:                                             ; preds = %1341
  %1346 = load i32, ptr %332, align 4
  %1347 = and i32 %1346, 4095
  %1348 = getelementptr %struct.n_tty_data, ptr %332, i32 0, i32 11, i32 %1347
  store i8 -1, ptr %1348, align 1
  %1349 = add i32 %1346, 1
  store i32 %1349, ptr %332, align 4
  br label %1350

1350:                                             ; preds = %1345, %1341, %1339
  %1351 = load i32, ptr %332, align 4
  %1352 = and i32 %1351, 4095
  %1353 = getelementptr %struct.n_tty_data, ptr %332, i32 0, i32 11, i32 %1352
  store i8 %419, ptr %1353, align 1
  %1354 = add i32 %1351, 1
  store i32 %1354, ptr %332, align 4
  br label %1356

1355:                                             ; preds = %322
  tail call fastcc void @n_tty_receive_char(ptr noundef %0, i8 noundef zeroext %314) #11
  br label %1356

1356:                                             ; preds = %1355, %1350, %1223, %1071, %1066, %1063, %1062, %924, %919, %916, %915, %884, %866, %858, %853, %850, %849, %405, %375, %371, %367, %360, %356, %351, %345, %338, %317, %292, %289, %287
  %1357 = icmp eq i32 %248, 0
  br i1 %1357, label %1358, label %243

1358:                                             ; preds = %1356
  %1359 = load ptr, ptr %6, align 4
  %1360 = load i32, ptr %15, align 4
  %1361 = and i32 %1360, 72
  %1362 = icmp eq i32 %1361, 0
  br i1 %1362, label %1373, label %1363

1363:                                             ; preds = %1358
  %1364 = getelementptr inbounds %struct.n_tty_data, ptr %1359, i32 0, i32 4
  %1365 = load i32, ptr %1364, align 4
  %1366 = getelementptr inbounds %struct.n_tty_data, ptr %1359, i32 0, i32 3
  %1367 = load i32, ptr %1366, align 4
  %1368 = icmp eq i32 %1365, %1367
  br i1 %1368, label %1373, label %1369

1369:                                             ; preds = %1363
  %1370 = getelementptr inbounds %struct.n_tty_data, ptr %1359, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %1370) #11
  %1371 = load i32, ptr %1366, align 4
  store i32 %1371, ptr %1364, align 4
  %1372 = tail call fastcc i32 @__process_echoes(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %1370) #11
  br label %1373

1373:                                             ; preds = %1369, %1363, %1358
  %1374 = load ptr, ptr %24, align 4
  %1375 = getelementptr inbounds %struct.tty_operations, ptr %1374, i32 0, i32 9
  %1376 = load ptr, ptr %1375, align 4
  %1377 = icmp eq ptr %1376, null
  br i1 %1377, label %1379, label %1378

1378:                                             ; preds = %1373
  tail call void %1376(ptr noundef %0) #11
  br label %1379

1379:                                             ; preds = %1378, %1373, %238, %146, %100
  %1380 = load i8, ptr %96, align 1
  %1381 = and i8 %1380, 16
  %1382 = icmp eq i8 %1381, 0
  br i1 %1382, label %1387, label %1383

1383:                                             ; preds = %1379
  %1384 = load i32, ptr %15, align 4
  %1385 = and i32 %1384, 65536
  %1386 = icmp eq i32 %1385, 0
  br i1 %1386, label %1394, label %1387

1387:                                             ; preds = %1383, %1379
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !29
  %1388 = load i32, ptr %83, align 4
  %1389 = getelementptr inbounds %struct.n_tty_data, ptr %83, i32 0, i32 1
  store volatile i32 %1388, ptr %1389, align 4
  %1390 = getelementptr inbounds %struct.n_tty_data, ptr %83, i32 0, i32 14
  %1391 = load i32, ptr %1390, align 4
  %1392 = icmp eq i32 %1388, %1391
  br i1 %1392, label %1394, label %1393

1393:                                             ; preds = %1387
  tail call void @kill_fasync(ptr noundef %33, i32 noundef 29, i32 noundef 1) #11
  tail call void @__wake_up(ptr noundef %34, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 65 to ptr)) #11
  br label %1394

1394:                                             ; preds = %1393, %1387, %1383, %79
  %1395 = getelementptr i8, ptr %40, i32 %73
  %1396 = getelementptr i8, ptr %39, i32 %73
  %1397 = select i1 %77, ptr %1396, ptr null
  %1398 = sub i32 %38, %73
  %1399 = add i32 %73, %37
  %1400 = load volatile i32, ptr %35, align 4
  %1401 = and i32 %1400, 1048576
  %1402 = icmp eq i32 %1401, 0
  br i1 %1402, label %36, label %1403

1403:                                             ; preds = %1394, %70
  %1404 = phi i32 [ %1399, %1394 ], [ %37, %70 ]
  %1405 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 22
  store i32 %72, ptr %1405, align 4
  %1406 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3
  %1407 = load ptr, ptr %1406, align 4
  %1408 = getelementptr inbounds %struct.tty_driver, ptr %1407, i32 0, i32 10
  %1409 = load i16, ptr %1408, align 4
  %1410 = icmp eq i16 %1409, 4
  br i1 %1410, label %1411, label %1416

1411:                                             ; preds = %1403
  %1412 = icmp eq i32 %71, 0
  br i1 %1412, label %1442, label %1413

1413:                                             ; preds = %1411
  %1414 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 23
  store i32 2, ptr %1414, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !24
  %1415 = tail call i32 @tty_unthrottle_safe(ptr noundef %0) #11
  br label %1440

1416:                                             ; preds = %1403
  %1417 = load ptr, ptr %6, align 4
  %1418 = getelementptr inbounds %struct.n_tty_data, ptr %1417, i32 0, i32 10
  %1419 = load i8, ptr %1418, align 1
  %1420 = and i8 %1419, 16
  %1421 = icmp eq i8 %1420, 0
  br i1 %1421, label %1428, label %1422

1422:                                             ; preds = %1416
  %1423 = getelementptr inbounds %struct.n_tty_data, ptr %1417, i32 0, i32 2
  %1424 = load i32, ptr %1423, align 4
  %1425 = getelementptr inbounds %struct.n_tty_data, ptr %1417, i32 0, i32 14
  %1426 = load i32, ptr %1425, align 4
  %1427 = icmp eq i32 %1424, %1426
  br i1 %1427, label %1442, label %1428

1428:                                             ; preds = %1422, %1416
  %1429 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 23
  %1430 = getelementptr inbounds %struct.n_tty_data, ptr %1417, i32 0, i32 14
  br label %1431

1431:                                             ; preds = %1437, %1428
  store i32 1, ptr %1429, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !24
  %1432 = load i32, ptr %1417, align 4
  %1433 = load i32, ptr %1430, align 4
  %1434 = add i32 %1432, -4097
  %1435 = sub i32 %1434, %1433
  %1436 = icmp ult i32 %1435, -128
  br i1 %1436, label %1440, label %1437

1437:                                             ; preds = %1431
  %1438 = tail call i32 @tty_throttle_safe(ptr noundef %0) #11
  %1439 = icmp eq i32 %1438, 0
  br i1 %1439, label %1440, label %1431

1440:                                             ; preds = %1437, %1431, %1413
  %1441 = phi ptr [ %1414, %1413 ], [ %1429, %1437 ], [ %1429, %1431 ]
  store i32 0, ptr %1441, align 4
  br label %1442

1442:                                             ; preds = %1440, %1422, %1411
  tail call void @up_read(ptr noundef %8) #11
  ret i32 %1404
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @n_tty_receive_char_flagged(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #4 {
  switch i8 %2, label %86 [
    i8 1, label %4
    i8 3, label %31
    i8 2, label %31
    i8 4, label %64
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %91

11:                                               ; preds = %4
  %12 = and i32 %8, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call fastcc void @isig(i32 noundef 2, ptr noundef %0) #11
  br label %91

15:                                               ; preds = %11
  %16 = and i32 %8, 8
  %17 = icmp eq i32 %16, 0
  %18 = load i32, ptr %6, align 4
  br i1 %17, label %26, label %19

19:                                               ; preds = %15
  %20 = and i32 %18, 4095
  %21 = getelementptr %struct.n_tty_data, ptr %6, i32 0, i32 11, i32 %20
  store i8 -1, ptr %21, align 1
  %22 = add i32 %18, 1
  %23 = and i32 %22, 4095
  %24 = getelementptr %struct.n_tty_data, ptr %6, i32 0, i32 11, i32 %23
  store i8 0, ptr %24, align 1
  %25 = add i32 %18, 2
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi i32 [ %25, %19 ], [ %18, %15 ]
  %28 = and i32 %27, 4095
  %29 = getelementptr %struct.n_tty_data, ptr %6, i32 0, i32 11, i32 %28
  store i8 0, ptr %29, align 1
  %30 = add i32 %27, 1
  store i32 %30, ptr %6, align 4
  br label %91

31:                                               ; preds = %3, %3
  %32 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %31
  %39 = and i32 %35, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %91

41:                                               ; preds = %38
  %42 = and i32 %35, 8
  %43 = icmp eq i32 %42, 0
  %44 = load i32, ptr %33, align 4
  %45 = and i32 %44, 4095
  %46 = getelementptr %struct.n_tty_data, ptr %33, i32 0, i32 11, i32 %45
  br i1 %43, label %55, label %47

47:                                               ; preds = %41
  store i8 -1, ptr %46, align 1
  %48 = add i32 %44, 1
  %49 = and i32 %48, 4095
  %50 = getelementptr %struct.n_tty_data, ptr %33, i32 0, i32 11, i32 %49
  store i8 0, ptr %50, align 1
  %51 = add i32 %44, 2
  %52 = and i32 %51, 4095
  %53 = getelementptr %struct.n_tty_data, ptr %33, i32 0, i32 11, i32 %52
  store i8 %1, ptr %53, align 1
  %54 = add i32 %44, 3
  br label %62

55:                                               ; preds = %41
  store i8 0, ptr %46, align 1
  %56 = add i32 %44, 1
  br label %62

57:                                               ; preds = %31
  %58 = load i32, ptr %33, align 4
  %59 = and i32 %58, 4095
  %60 = getelementptr %struct.n_tty_data, ptr %33, i32 0, i32 11, i32 %59
  store i8 %1, ptr %60, align 1
  %61 = add i32 %58, 1
  br label %62

62:                                               ; preds = %57, %55, %47
  %63 = phi i32 [ %61, %57 ], [ %56, %55 ], [ %54, %47 ]
  store i32 %63, ptr %33, align 4
  br label %91

64:                                               ; preds = %3
  %65 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.n_tty_data, ptr %66, i32 0, i32 8
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 4
  %70 = getelementptr inbounds %struct.n_tty_data, ptr %66, i32 0, i32 7
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 100
  %73 = load volatile i32, ptr @jiffies, align 64
  %74 = sub i32 %72, %73
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %64
  %77 = load volatile i32, ptr @jiffies, align 64
  %78 = sub i32 %77, %71
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %76, %64
  %81 = tail call ptr @tty_driver_name(ptr noundef %0) #11
  %82 = tail call ptr @tty_name(ptr noundef %0) #11
  %83 = load i32, ptr %67, align 4
  %84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %81, ptr noundef %82, i32 noundef %83) #14
  %85 = load volatile i32, ptr @jiffies, align 64
  store i32 %85, ptr %70, align 4
  store i32 0, ptr %67, align 4
  br label %91

86:                                               ; preds = %3
  %87 = zext i8 %2 to i32
  %88 = tail call ptr @tty_driver_name(ptr noundef %0) #11
  %89 = tail call ptr @tty_name(ptr noundef %0) #11
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %88, ptr noundef %89, i32 noundef %87) #14
  br label %91

91:                                               ; preds = %86, %80, %76, %62, %38, %26, %14, %4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_driver_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @isig(i32 noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @tty_get_pgrp(ptr noundef %1) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %51, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @kill_pgrp(ptr noundef nonnull %8, i32 noundef %0, i32 noundef 1) #11
  tail call void @put_pid(ptr noundef nonnull %8) #11
  br label %51

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 29
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 11
  tail call void @up_read(ptr noundef %15) #11
  tail call void @down_write(ptr noundef %15) #11
  %16 = tail call ptr @tty_get_pgrp(ptr noundef %1) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call i32 @kill_pgrp(ptr noundef nonnull %16, i32 noundef %0, i32 noundef 1) #11
  tail call void @put_pid(ptr noundef nonnull %16) #11
  br label %20

20:                                               ; preds = %18, %12
  %21 = getelementptr inbounds %struct.n_tty_data, ptr %14, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %21) #11
  %22 = getelementptr inbounds %struct.n_tty_data, ptr %14, i32 0, i32 18
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.n_tty_data, ptr %14, i32 0, i32 3
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.n_tty_data, ptr %14, i32 0, i32 4
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.n_tty_data, ptr %14, i32 0, i32 5
  store i32 0, ptr %25, align 4
  tail call void @mutex_unlock(ptr noundef %21) #11
  tail call void @tty_driver_flush_buffer(ptr noundef %1) #11
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr inbounds %struct.n_tty_data, ptr %26, i32 0, i32 14
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.n_tty_data, ptr %26, i32 0, i32 2
  store i32 0, ptr %28, align 4
  store i32 0, ptr %26, align 4
  %29 = getelementptr inbounds %struct.n_tty_data, ptr %26, i32 0, i32 1
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.n_tty_data, ptr %26, i32 0, i32 15
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.n_tty_data, ptr %26, i32 0, i32 10
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr inbounds %struct.n_tty_data, ptr %26, i32 0, i32 12
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(512) %33, i8 0, i32 512, i1 false) #11
  %34 = and i8 %32, -35
  store i8 %34, ptr %31, align 1
  %35 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 24
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.tty_struct, ptr %36, i32 0, i32 20, i32 4
  %40 = load i8, ptr %39, align 1, !range !8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 20
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %43) #11
  %45 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 20, i32 3
  %46 = load i8, ptr %45, align 4
  %47 = or i8 %46, 1
  store i8 %47, ptr %45, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %43, i32 noundef %44) #11
  %48 = load ptr, ptr %35, align 4
  %49 = getelementptr inbounds %struct.tty_struct, ptr %48, i32 0, i32 27
  tail call void @__wake_up(ptr noundef %49, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %50

50:                                               ; preds = %42, %38, %20
  tail call void @up_write(ptr noundef %15) #11
  tail call void @down_read(ptr noundef %15) #11
  br label %51

51:                                               ; preds = %50, %10, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_flush_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_get_pgrp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pgrp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_tty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @n_tty_receive_char(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19, i32 1
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19, i32 2
  %10 = load i8, ptr %9, align 1, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 3072
  %16 = icmp eq i32 %15, 3072
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  tail call void @start_tty(ptr noundef %0) #11
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.n_tty_data, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.n_tty_data, ptr %18, i32 0, i32 18
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %37, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.n_tty_data, ptr %18, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %25) #11
  %26 = load i32, ptr %19, align 4
  %27 = getelementptr inbounds %struct.n_tty_data, ptr %18, i32 0, i32 4
  store i32 %26, ptr %27, align 4
  %28 = tail call fastcc i32 @__process_echoes(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %25) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.tty_operations, ptr %32, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call void %34(ptr noundef %0) #11
  br label %37

37:                                               ; preds = %36, %30, %24, %17, %12, %8, %2
  %38 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  %39 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %140, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 10
  %45 = load i8, ptr %44, align 1
  %46 = and i8 %45, 2
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 4095
  %52 = getelementptr %struct.n_tty_data, ptr %4, i32 0, i32 13, i32 %51
  store i8 47, ptr %52, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %53 = load i32, ptr %49, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %49, align 4
  %55 = load i8, ptr %44, align 1
  %56 = and i8 %55, -3
  store i8 %56, ptr %44, align 1
  br label %57

57:                                               ; preds = %48, %43
  %58 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = load i32, ptr %4, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.n_tty_data, ptr %4, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 4095
  %66 = getelementptr %struct.n_tty_data, ptr %4, i32 0, i32 13, i32 %65
  store i8 -1, ptr %66, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %67 = load i32, ptr %63, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %63, align 4
  %69 = and i32 %68, 4095
  %70 = getelementptr %struct.n_tty_data, ptr %4, i32 0, i32 13, i32 %69
  store i8 -127, ptr %70, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %71 = load i32, ptr %63, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %63, align 4
  br label %73

73:                                               ; preds = %62, %57
  %74 = load ptr, ptr %3, align 4
  %75 = zext i8 %1 to i32
  %76 = icmp eq i8 %1, -1
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.n_tty_data, ptr %74, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 4095
  %81 = getelementptr %struct.n_tty_data, ptr %74, i32 0, i32 13, i32 %80
  store i8 -1, ptr %81, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %82 = load i32, ptr %78, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %78, align 4
  %84 = and i32 %83, 4095
  %85 = getelementptr %struct.n_tty_data, ptr %74, i32 0, i32 13, i32 %84
  store i8 -1, ptr %85, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %109

86:                                               ; preds = %73
  %87 = load i32, ptr %39, align 4
  %88 = and i32 %87, 512
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %86
  %91 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %75
  %92 = load i8, ptr %91, align 1
  %93 = and i8 %92, 8
  %94 = icmp ne i8 %93, 0
  %95 = icmp ne i8 %1, 9
  %96 = and i1 %95, %94
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.n_tty_data, ptr %74, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, 4095
  %101 = getelementptr %struct.n_tty_data, ptr %74, i32 0, i32 13, i32 %100
  store i8 -1, ptr %101, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %102 = load i32, ptr %98, align 4
  %103 = add i32 %102, 1
  store i32 %103, ptr %98, align 4
  br label %104

104:                                              ; preds = %97, %90, %86
  %105 = getelementptr inbounds %struct.n_tty_data, ptr %74, i32 0, i32 3
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 4095
  %108 = getelementptr %struct.n_tty_data, ptr %74, i32 0, i32 13, i32 %107
  store i8 %1, ptr %108, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %109

109:                                              ; preds = %104, %77
  %110 = phi ptr [ %105, %104 ], [ %78, %77 ]
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, 1
  store i32 %112, ptr %110, align 4
  %113 = load ptr, ptr %3, align 4
  %114 = getelementptr inbounds %struct.n_tty_data, ptr %113, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %114) #11
  %115 = getelementptr inbounds %struct.n_tty_data, ptr %113, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr inbounds %struct.n_tty_data, ptr %113, i32 0, i32 5
  store i32 %116, ptr %117, align 4
  %118 = getelementptr inbounds %struct.n_tty_data, ptr %113, i32 0, i32 4
  %119 = getelementptr inbounds %struct.n_tty_data, ptr %113, i32 0, i32 18
  %120 = load i32, ptr %119, align 4
  %121 = sub i32 %116, %120
  %122 = icmp ult i32 %121, 256
  br i1 %122, label %129, label %123

123:                                              ; preds = %109
  %124 = load i32, ptr %118, align 4
  %125 = sub i32 %124, %120
  %126 = and i32 %121, 255
  %127 = and i32 %125, 255
  %128 = icmp ugt i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %123, %109
  tail call void @mutex_unlock(ptr noundef %114) #11
  br label %140

130:                                              ; preds = %123
  store i32 %116, ptr %118, align 4
  %131 = tail call fastcc i32 @__process_echoes(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %114) #11
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.tty_operations, ptr %135, i32 0, i32 9
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %133
  tail call void %137(ptr noundef %0) #11
  br label %140

140:                                              ; preds = %139, %133, %130, %129, %37
  %141 = icmp eq i8 %1, -1
  br i1 %141, label %142, label %151

142:                                              ; preds = %140
  %143 = load i32, ptr %38, align 4
  %144 = and i32 %143, 8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %142
  %147 = load i32, ptr %4, align 4
  %148 = and i32 %147, 4095
  %149 = getelementptr %struct.n_tty_data, ptr %4, i32 0, i32 11, i32 %148
  store i8 -1, ptr %149, align 1
  %150 = add i32 %147, 1
  store i32 %150, ptr %4, align 4
  br label %151

151:                                              ; preds = %146, %142, %140
  %152 = load i32, ptr %4, align 4
  %153 = and i32 %152, 4095
  %154 = getelementptr %struct.n_tty_data, ptr %4, i32 0, i32 11, i32 %153
  store i8 %1, ptr %154, align 1
  %155 = add i32 %152, 1
  store i32 %155, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @n_tty_receive_signal_char(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #4 {
  tail call fastcc void @isig(i32 noundef %1, ptr noundef %0)
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1024
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @start_tty(ptr noundef %0) #11
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 29
  %15 = load ptr, ptr %14, align 4
  br i1 %13, label %81, label %16

16:                                               ; preds = %9
  %17 = zext i8 %2 to i32
  %18 = icmp eq i8 %2, -1
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.n_tty_data, ptr %15, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 4095
  %23 = getelementptr %struct.n_tty_data, ptr %15, i32 0, i32 13, i32 %22
  store i8 -1, ptr %23, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %24 = load i32, ptr %20, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %20, align 4
  %26 = and i32 %25, 4095
  %27 = getelementptr %struct.n_tty_data, ptr %15, i32 0, i32 13, i32 %26
  store i8 -1, ptr %27, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %50

28:                                               ; preds = %16
  %29 = and i32 %11, 512
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %28
  %32 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %17
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, 8
  %35 = icmp ne i8 %34, 0
  %36 = icmp ne i8 %2, 9
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.n_tty_data, ptr %15, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 4095
  %42 = getelementptr %struct.n_tty_data, ptr %15, i32 0, i32 13, i32 %41
  store i8 -1, ptr %42, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  %43 = load i32, ptr %39, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %39, align 4
  br label %45

45:                                               ; preds = %38, %31, %28
  %46 = getelementptr inbounds %struct.n_tty_data, ptr %15, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 4095
  %49 = getelementptr %struct.n_tty_data, ptr %15, i32 0, i32 13, i32 %48
  store i8 %2, ptr %49, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !27
  br label %50

50:                                               ; preds = %45, %19
  %51 = phi ptr [ %46, %45 ], [ %20, %19 ]
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  %54 = load ptr, ptr %14, align 4
  %55 = getelementptr inbounds %struct.n_tty_data, ptr %54, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %55) #11
  %56 = getelementptr inbounds %struct.n_tty_data, ptr %54, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.n_tty_data, ptr %54, i32 0, i32 5
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.n_tty_data, ptr %54, i32 0, i32 4
  %60 = getelementptr inbounds %struct.n_tty_data, ptr %54, i32 0, i32 18
  %61 = load i32, ptr %60, align 4
  %62 = sub i32 %57, %61
  %63 = icmp ult i32 %62, 256
  br i1 %63, label %70, label %64

64:                                               ; preds = %50
  %65 = load i32, ptr %59, align 4
  %66 = sub i32 %65, %61
  %67 = and i32 %62, 255
  %68 = and i32 %66, 255
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64, %50
  tail call void @mutex_unlock(ptr noundef %55) #11
  br label %100

71:                                               ; preds = %64
  store i32 %57, ptr %59, align 4
  %72 = tail call fastcc i32 @__process_echoes(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %55) #11
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %100, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.tty_operations, ptr %76, i32 0, i32 9
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %100, label %80

80:                                               ; preds = %74
  tail call void %78(ptr noundef %0) #11
  br label %100

81:                                               ; preds = %9
  %82 = getelementptr inbounds %struct.n_tty_data, ptr %15, i32 0, i32 5
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.n_tty_data, ptr %15, i32 0, i32 18
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %100, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.n_tty_data, ptr %15, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %88) #11
  %89 = load i32, ptr %82, align 4
  %90 = getelementptr inbounds %struct.n_tty_data, ptr %15, i32 0, i32 4
  store i32 %89, ptr %90, align 4
  %91 = tail call fastcc i32 @__process_echoes(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %88) #11
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.tty_operations, ptr %95, i32 0, i32 9
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  tail call void %97(ptr noundef %0) #11
  br label %100

100:                                              ; preds = %99, %93, %87, %81, %80, %74, %71, %70
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_throttle_safe(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readonly }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 2153250645}
!10 = !{i64 2153255700}
!11 = !{i64 2149334760}
!12 = !{i64 2149330584}
!13 = !{i64 2149330659, i64 2149330686, i64 2149330733, i64 2149330755, i64 2149330783, i64 2149330803}
!14 = !{i64 598023}
!15 = !{i64 2149358904}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 4071420}
!18 = !{i64 4071617}
!19 = !{i64 2151556896}
!20 = !{i64 2153280510, i64 2153280790, i64 2153281124, i64 2153281458}
!21 = !{i64 2153288932, i64 2153289212, i64 2153289546, i64 2153289880}
!22 = !{i64 2153264080}
!23 = !{i64 2153271049}
!24 = !{i64 2153199987}
!25 = !{i64 2153201638}
!26 = !{i64 2153237075}
!27 = !{i64 2153208229}
!28 = !{i64 2153217052}
!29 = !{i64 2153228486}
