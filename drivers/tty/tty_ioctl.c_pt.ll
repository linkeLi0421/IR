; ModuleID = '/llk/IR/drivers/tty/tty_ioctl.c_pt.bc'
source_filename = "../drivers/tty/tty_ioctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_chars_in_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_chars_in_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_tty_chars_in_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_write_room:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_write_room\22\09\09\09\09\09"
module asm "__kstrtabns_tty_write_room:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_driver_flush_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_driver_flush_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_tty_driver_flush_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_unthrottle:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_unthrottle\22\09\09\09\09\09"
module asm "__kstrtabns_tty_unthrottle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_wait_until_sent:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_wait_until_sent\22\09\09\09\09\09"
module asm "__kstrtabns_tty_wait_until_sent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_termios_copy_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_termios_copy_hw\22\09\09\09\09\09"
module asm "__kstrtabns_tty_termios_copy_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_termios_hw_change:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_termios_hw_change\22\09\09\09\09\09"
module asm "__kstrtabns_tty_termios_hw_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_get_char_size:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_get_char_size\22\09\09\09\09\09"
module asm "__kstrtabns_tty_get_char_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_get_frame_size:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_get_frame_size\22\09\09\09\09\09"
module asm "__kstrtabns_tty_get_frame_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_set_termios:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_set_termios\22\09\09\09\09\09"
module asm "__kstrtabns_tty_set_termios:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_mode_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_mode_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_tty_mode_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_perform_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_perform_flush\22\09\09\09\09\09"
module asm "__kstrtabns_tty_perform_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_n_tty_ioctl_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22n_tty_ioctl_helper\22\09\09\09\09\09"
module asm "__kstrtabns_n_tty_ioctl_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.65, %struct.anon.66, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.65 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.66 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.termio = type { i16, i16, i16, i16, i8, [8 x i8] }

@__kstrtab_tty_chars_in_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_chars_in_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_chars_in_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_chars_in_buffer to i32), ptr @__kstrtab_tty_chars_in_buffer, ptr @__kstrtabns_tty_chars_in_buffer }, section "___ksymtab+tty_chars_in_buffer", align 4
@__kstrtab_tty_write_room = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_write_room = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_write_room = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_write_room to i32), ptr @__kstrtab_tty_write_room, ptr @__kstrtabns_tty_write_room }, section "___ksymtab+tty_write_room", align 4
@__kstrtab_tty_driver_flush_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_driver_flush_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_driver_flush_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_driver_flush_buffer to i32), ptr @__kstrtab_tty_driver_flush_buffer, ptr @__kstrtabns_tty_driver_flush_buffer }, section "___ksymtab+tty_driver_flush_buffer", align 4
@__kstrtab_tty_unthrottle = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_unthrottle = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_unthrottle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_unthrottle to i32), ptr @__kstrtab_tty_unthrottle, ptr @__kstrtabns_tty_unthrottle }, section "___ksymtab+tty_unthrottle", align 4
@__kstrtab_tty_wait_until_sent = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_wait_until_sent = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_wait_until_sent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_wait_until_sent to i32), ptr @__kstrtab_tty_wait_until_sent, ptr @__kstrtabns_tty_wait_until_sent }, section "___ksymtab+tty_wait_until_sent", align 4
@__kstrtab_tty_termios_copy_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_termios_copy_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_termios_copy_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_termios_copy_hw to i32), ptr @__kstrtab_tty_termios_copy_hw, ptr @__kstrtabns_tty_termios_copy_hw }, section "___ksymtab+tty_termios_copy_hw", align 4
@__kstrtab_tty_termios_hw_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_termios_hw_change = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_termios_hw_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_termios_hw_change to i32), ptr @__kstrtab_tty_termios_hw_change, ptr @__kstrtabns_tty_termios_hw_change }, section "___ksymtab+tty_termios_hw_change", align 4
@__kstrtab_tty_get_char_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_get_char_size = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_get_char_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_get_char_size to i32), ptr @__kstrtab_tty_get_char_size, ptr @__kstrtabns_tty_get_char_size }, section "___ksymtab_gpl+tty_get_char_size", align 4
@__kstrtab_tty_get_frame_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_get_frame_size = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_get_frame_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_get_frame_size to i32), ptr @__kstrtab_tty_get_frame_size, ptr @__kstrtabns_tty_get_frame_size }, section "___ksymtab_gpl+tty_get_frame_size", align 4
@.str = private unnamed_addr constant [24 x i8] c"drivers/tty/tty_ioctl.c\00", align 1
@__kstrtab_tty_set_termios = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_set_termios = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_set_termios = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_set_termios to i32), ptr @__kstrtab_tty_set_termios, ptr @__kstrtabns_tty_set_termios }, section "___ksymtab_gpl+tty_set_termios", align 4
@__kstrtab_tty_mode_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_mode_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_mode_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_mode_ioctl to i32), ptr @__kstrtab_tty_mode_ioctl, ptr @__kstrtabns_tty_mode_ioctl }, section "___ksymtab_gpl+tty_mode_ioctl", align 4
@__kstrtab_tty_perform_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_perform_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_perform_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_perform_flush to i32), ptr @__kstrtab_tty_perform_flush, ptr @__kstrtabns_tty_perform_flush }, section "___ksymtab_gpl+tty_perform_flush", align 4
@__kstrtab_n_tty_ioctl_helper = external dso_local constant [0 x i8], align 1
@__kstrtabns_n_tty_ioctl_helper = external dso_local constant [0 x i8], align 1
@__ksymtab_n_tty_ioctl_helper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @n_tty_ioctl_helper to i32), ptr @__kstrtab_n_tty_ioctl_helper, ptr @__kstrtabns_n_tty_ioctl_helper }, section "___ksymtab+n_tty_ioctl_helper", align 4
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_n_tty_ioctl_helper, ptr @__ksymtab_tty_chars_in_buffer, ptr @__ksymtab_tty_driver_flush_buffer, ptr @__ksymtab_tty_get_char_size, ptr @__ksymtab_tty_get_frame_size, ptr @__ksymtab_tty_mode_ioctl, ptr @__ksymtab_tty_perform_flush, ptr @__ksymtab_tty_set_termios, ptr @__ksymtab_tty_termios_copy_hw, ptr @__ksymtab_tty_termios_hw_change, ptr @__ksymtab_tty_unthrottle, ptr @__ksymtab_tty_wait_until_sent, ptr @__ksymtab_tty_write_room], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_chars_in_buffer(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_operations, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0) #9
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_write_room(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_operations, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0) #9
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 2048, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_driver_flush_buffer(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_operations, ptr %3, i32 0, i32 21
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #9
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_unthrottle(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  tail call void @down_write(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %4 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tty_operations, ptr %8, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void %10(ptr noundef %0) #9
  br label %13

13:                                               ; preds = %12, %6, %1
  %14 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 23
  store i32 0, ptr %14, align 4
  tail call void @up_write(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_throttle_safe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 23
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %3) #9
  %12 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tty_operations, ptr %13, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void %15(ptr noundef %0) #9
  br label %18

18:                                               ; preds = %17, %11, %7, %1
  %19 = phi i32 [ 0, %1 ], [ 0, %17 ], [ 0, %11 ], [ 1, %7 ]
  tail call void @mutex_unlock(ptr noundef %2) #9
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_unthrottle_safe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 23
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %3) #9
  %12 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tty_operations, ptr %13, i32 0, i32 16
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void %15(ptr noundef %0) #9
  br label %18

18:                                               ; preds = %17, %11, %7, %1
  %19 = phi i32 [ 0, %17 ], [ 0, %11 ], [ 0, %1 ], [ 1, %7 ]
  tail call void @mutex_unlock(ptr noundef %2) #9
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_wait_until_sent(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = icmp eq i32 %1, 0
  %5 = select i1 %4, i32 2147483647, i32 %1
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tty_operations, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %41, label %11

11:                                               ; preds = %2
  %12 = tail call i32 %9(ptr noundef %0) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #9
  %15 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 26
  br label %16

16:                                               ; preds = %36, %14
  %17 = phi i32 [ %5, %14 ], [ %37, %36 ]
  %18 = call i32 @prepare_to_wait_event(ptr noundef %15, ptr noundef nonnull %3, i32 noundef 1) #9
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds %struct.tty_operations, ptr %19, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = call i32 %21(ptr noundef %0) #9
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i32 [ %24, %23 ], [ 0, %16 ]
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = icmp ne i32 %17, 0
  %30 = select i1 %27, i1 true, i1 %29
  %31 = select i1 %30, i32 %17, i32 1
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %28, i1 true, i1 %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = icmp eq i32 %18, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = call i32 @schedule_timeout(i32 noundef %31) #9
  br label %16

38:                                               ; preds = %25
  call void @finish_wait(ptr noundef %15, ptr noundef nonnull %3) #9
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i32 [ %31, %38 ], [ %18, %34 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  br label %41

41:                                               ; preds = %39, %11, %2
  %42 = phi i32 [ %5, %11 ], [ %40, %39 ], [ %5, %2 ]
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %6, align 4
  %46 = getelementptr inbounds %struct.tty_operations, ptr %45, i32 0, i32 23
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = icmp eq i32 %42, 2147483647
  %51 = select i1 %50, i32 0, i32 %42
  call void %47(ptr noundef %0, i32 noundef %51) #9
  br label %52

52:                                               ; preds = %49, %44, %41
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @tty_termios_copy_hw(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.ktermios, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 3200
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, -3201
  %9 = or i32 %8, %5
  store i32 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ktermios, ptr %0, i32 0, i32 6
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ktermios, ptr %0, i32 0, i32 7
  store i32 %14, ptr %15, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @tty_termios_hw_change(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.ktermios, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ktermios, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ktermios, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = xor i32 %18, %16
  %20 = and i32 %19, -3201
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %14, %8, %2
  %24 = phi i32 [ 1, %8 ], [ 1, %2 ], [ %22, %14 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @tty_get_char_size(i32 noundef %0) #6 {
  %2 = trunc i32 %0 to i8
  %3 = lshr i8 %2, 4
  %4 = and i8 %3, 3
  %5 = add nuw nsw i8 %4, 5
  ret i8 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @tty_get_frame_size(i32 noundef %0) #6 {
  %2 = trunc i32 %0 to i8
  %3 = lshr i8 %2, 4
  %4 = and i8 %3, 3
  %5 = add nuw nsw i8 %4, 5
  %6 = and i32 %0, 64
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i8 2, i8 3
  %9 = lshr i32 %0, 8
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = add nuw nsw i8 %11, %8
  %13 = add nuw nsw i8 %12, %5
  ret i8 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_set_termios(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ktermios, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 10
  %7 = load i16, ptr %6, align 4
  %8 = icmp eq i16 %7, 4
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 11
  %11 = load i16, ptr %10, align 2
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 344, i32 noundef 9, ptr noundef null) #9
  br label %14

14:                                               ; preds = %13, %9, %2
  %15 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  tail call void @down_write(ptr noundef %15) #9
  %16 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, ptr noundef align 4 dereferenceable(44) %16, i32 44, i1 false)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %16, ptr noundef align 4 dereferenceable(44) %1, i32 44, i1 false)
  %17 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 14
  %18 = load i32, ptr %16, align 4
  %19 = load i32, ptr %17, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = load i32, ptr %3, align 4
  %23 = and i32 %22, %19
  %24 = or i32 %23, %21
  store i32 %24, ptr %16, align 4
  %25 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 14, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %26, %29
  %31 = getelementptr inbounds %struct.ktermios, ptr %3, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, %28
  %34 = or i32 %33, %30
  store i32 %34, ptr %25, align 4
  %35 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 14, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %36, %39
  %41 = getelementptr inbounds %struct.ktermios, ptr %3, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, %38
  %44 = or i32 %43, %40
  store i32 %44, ptr %35, align 4
  %45 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 14, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %46, %49
  %51 = getelementptr inbounds %struct.ktermios, ptr %3, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, %48
  %54 = or i32 %53, %50
  store i32 %54, ptr %45, align 4
  %55 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 14, i32 4
  %56 = load i8, ptr %55, align 4
  %57 = icmp eq i8 %56, 0
  %58 = getelementptr inbounds %struct.ktermios, ptr %3, i32 0, i32 4
  %59 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 4
  %60 = select i1 %57, ptr %59, ptr %58
  %61 = load i8, ptr %60, align 4
  store i8 %61, ptr %59, align 4
  br label %62

62:                                               ; preds = %62, %14
  %63 = phi i32 [ 0, %14 ], [ %71, %62 ]
  %64 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 14, i32 5, i32 %63
  %65 = load i8, ptr %64, align 1
  %66 = icmp eq i8 %65, 0
  %67 = getelementptr %struct.ktermios, ptr %3, i32 0, i32 5, i32 %63
  %68 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 %63
  %69 = select i1 %66, ptr %68, ptr %67
  %70 = load i8, ptr %69, align 1
  store i8 %70, ptr %68, align 1
  %71 = add nuw nsw i32 %63, 1
  %72 = icmp eq i32 %71, 19
  br i1 %72, label %73, label %62

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.tty_operations, ptr %75, i32 0, i32 14
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  call void %77(ptr noundef %0, ptr noundef nonnull %3) #9
  br label %90

80:                                               ; preds = %73
  %81 = and i32 %44, 3200
  %82 = and i32 %42, -3201
  %83 = or i32 %81, %82
  store i32 %83, ptr %35, align 4
  %84 = getelementptr inbounds %struct.ktermios, ptr %3, i32 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 6
  store i32 %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.ktermios, ptr %3, i32 0, i32 7
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 7
  store i32 %88, ptr %89, align 4
  br label %90

90:                                               ; preds = %80, %79
  %91 = call ptr @tty_ldisc_ref(ptr noundef %0) #9
  %92 = icmp eq ptr %91, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %91, align 4
  %95 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %94, i32 0, i32 9
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  call void %96(ptr noundef %0, ptr noundef nonnull %3) #9
  br label %99

99:                                               ; preds = %98, %93
  call void @tty_ldisc_deref(ptr noundef nonnull %91) #9
  br label %100

100:                                              ; preds = %99, %90
  call void @up_write(ptr noundef %15) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_ldisc_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_deref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_mode_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ktermios, align 4
  %5 = alloca %struct.ktermios, align 4
  %6 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i32 44, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tty_driver, ptr %8, i32 0, i32 10
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, 4
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.tty_driver, ptr %8, i32 0, i32 11
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %12, %3
  %20 = phi ptr [ %18, %16 ], [ %0, %12 ], [ %0, %3 ]
  switch i32 %1, label %196 [
    i32 21508, label %21
    i32 21507, label %23
    i32 21506, label %25
    i32 21505, label %27
    i32 -2144578518, label %42
    i32 1076646957, label %57
    i32 1076646956, label %59
    i32 1076646955, label %61
    i32 21509, label %63
    i32 21512, label %129
    i32 21511, label %131
    i32 21510, label %133
    i32 21590, label %135
    i32 21591, label %150
    i32 21554, label %197
    i32 21555, label %197
    i32 21557, label %197
    i32 21556, label %197
    i32 21529, label %171
    i32 21530, label %184
  ]

21:                                               ; preds = %19
  %22 = tail call fastcc i32 @set_termios(ptr noundef %20, ptr noundef %6, i32 noundef 11)
  br label %197

23:                                               ; preds = %19
  %24 = tail call fastcc i32 @set_termios(ptr noundef %20, ptr noundef %6, i32 noundef 10)
  br label %197

25:                                               ; preds = %19
  %26 = tail call fastcc i32 @set_termios(ptr noundef %20, ptr noundef %6, i32 noundef 8)
  br label %197

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 11
  tail call void @down_read(ptr noundef %28) #9
  %29 = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, ptr noundef align 4 dereferenceable(44) %29, i32 44, i1 false) #9
  tail call void @up_read(ptr noundef %28) #9
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 36, i32 -1090519040) #10, !srcloc !10
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %197

33:                                               ; preds = %27
  %34 = tail call ptr @llvm.thread.pointer() #9
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %35) #11, !srcloc !11
  %37 = and i32 %36, -13
  %38 = or i32 %37, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %39 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %5, i32 noundef 36) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #9, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 0, i32 -14
  br label %197

42:                                               ; preds = %19
  %43 = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 11
  tail call void @down_read(ptr noundef %43) #9
  %44 = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, ptr noundef align 4 dereferenceable(44) %44, i32 44, i1 false) #9
  tail call void @up_read(ptr noundef %43) #9
  %45 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 44, i32 -1090519040) #10, !srcloc !10
  %46 = extractvalue { i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %197

48:                                               ; preds = %42
  %49 = tail call ptr @llvm.thread.pointer() #9
  %50 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 3
  %51 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %50) #11, !srcloc !11
  %52 = and i32 %51, -13
  %53 = or i32 %52, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %54 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %5, i32 noundef 44) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #9, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 0, i32 -14
  br label %197

57:                                               ; preds = %19
  %58 = tail call fastcc i32 @set_termios(ptr noundef %20, ptr noundef %6, i32 noundef 3)
  br label %197

59:                                               ; preds = %19
  %60 = tail call fastcc i32 @set_termios(ptr noundef %20, ptr noundef %6, i32 noundef 2)
  br label %197

61:                                               ; preds = %19
  %62 = tail call fastcc i32 @set_termios(ptr noundef %20, ptr noundef %6, i32 noundef 0)
  br label %197

63:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #9
  %64 = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 11
  tail call void @down_read(ptr noundef %64) #9
  %65 = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, ptr noundef align 4 dereferenceable(44) %65, i32 44, i1 false) #9
  tail call void @up_read(ptr noundef %64) #9
  %66 = load i32, ptr %4, align 4
  %67 = trunc i32 %66 to i16
  %68 = tail call ptr @llvm.thread.pointer() #9
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 3
  %70 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %69) #11, !srcloc !11
  %71 = and i32 %70, -13
  %72 = or i32 %71, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %73 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i16 %67, i32 -1090519041) #9, !srcloc !14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %126, label %75

75:                                               ; preds = %63
  %76 = getelementptr inbounds %struct.termio, ptr %6, i32 0, i32 1
  %77 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = trunc i32 %78 to i16
  %80 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %69) #11, !srcloc !11
  %81 = and i32 %80, -13
  %82 = or i32 %81, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %83 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %76, i16 %79, i32 -1090519041) #9, !srcloc !15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %126, label %85

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.termio, ptr %6, i32 0, i32 2
  %87 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = trunc i32 %88 to i16
  %90 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %69) #11, !srcloc !11
  %91 = and i32 %90, -13
  %92 = or i32 %91, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %92) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %93 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %86, i16 %89, i32 -1090519041) #9, !srcloc !16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %126, label %95

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.termio, ptr %6, i32 0, i32 3
  %97 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 3
  %98 = load i32, ptr %97, align 4
  %99 = trunc i32 %98 to i16
  %100 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %69) #11, !srcloc !11
  %101 = and i32 %100, -13
  %102 = or i32 %101, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %102) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %103 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %96, i16 %99, i32 -1090519041) #9, !srcloc !17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %126, label %105

105:                                              ; preds = %95
  %106 = getelementptr inbounds %struct.termio, ptr %6, i32 0, i32 4
  %107 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 4
  %108 = load i8, ptr %107, align 4
  %109 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %69) #11, !srcloc !11
  %110 = and i32 %109, -13
  %111 = or i32 %110, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %111) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %112 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %106, i8 %108, i32 -1090519041) #9, !srcloc !18
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %109) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.termio, ptr %6, i32 0, i32 5
  %116 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %115, i32 8, i32 -1090519040) #10, !srcloc !10
  %117 = extractvalue { i32, i32 } %116, 0
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 5
  %121 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %69) #11, !srcloc !11
  %122 = and i32 %121, -13
  %123 = or i32 %122, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %123) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %124 = call i32 @arm_copy_to_user(ptr noundef %115, ptr noundef %120, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %121) #9, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %119, %114, %105, %95, %85, %75, %63
  br label %127

127:                                              ; preds = %126, %119
  %128 = phi i32 [ -14, %126 ], [ 0, %119 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #9
  br label %197

129:                                              ; preds = %19
  %130 = tail call fastcc i32 @set_termios(ptr noundef %20, ptr noundef %6, i32 noundef 7)
  br label %197

131:                                              ; preds = %19
  %132 = tail call fastcc i32 @set_termios(ptr noundef %20, ptr noundef %6, i32 noundef 6)
  br label %197

133:                                              ; preds = %19
  %134 = tail call fastcc i32 @set_termios(ptr noundef %20, ptr noundef %6, i32 noundef 4)
  br label %197

135:                                              ; preds = %19
  %136 = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 11
  tail call void @down_read(ptr noundef %136) #9
  %137 = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, ptr noundef align 4 dereferenceable(44) %137, i32 44, i1 false) #9
  tail call void @up_read(ptr noundef %136) #9
  %138 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 36, i32 -1090519040) #10, !srcloc !10
  %139 = extractvalue { i32, i32 } %138, 0
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %197

141:                                              ; preds = %135
  %142 = tail call ptr @llvm.thread.pointer() #9
  %143 = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 3
  %144 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %143) #11, !srcloc !11
  %145 = and i32 %144, -13
  %146 = or i32 %145, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %146) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %147 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %5, i32 noundef 36) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %144) #9, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %148 = icmp eq i32 %147, 0
  %149 = select i1 %148, i32 0, i32 -14
  br label %197

150:                                              ; preds = %19
  %151 = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %151, label %152, label %197

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 11
  tail call void @down_read(ptr noundef %153) #9
  %154 = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, ptr noundef align 4 dereferenceable(44) %154, i32 44, i1 false) #9
  tail call void @up_read(ptr noundef %153) #9
  %155 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 36, i32 -1090519040) #10, !srcloc !19
  %156 = extractvalue { i32, i32 } %155, 0
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %166, !prof !20

158:                                              ; preds = %152
  %159 = tail call ptr @llvm.thread.pointer() #9
  %160 = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 3
  %161 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %160) #11, !srcloc !11
  %162 = and i32 %161, -13
  %163 = or i32 %162, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %163) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %164 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %6, i32 noundef 36) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %161) #9, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %170, label %166, !prof !20

166:                                              ; preds = %158, %152
  %167 = phi i32 [ %164, %158 ], [ 36, %152 ]
  %168 = sub i32 36, %167
  %169 = getelementptr i8, ptr %5, i32 %168
  call void @llvm.memset.p0.i32(ptr align 1 %169, i8 0, i32 %167, i1 false) #9
  br label %197

170:                                              ; preds = %158
  call void @down_write(ptr noundef %153) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %154, ptr noundef nonnull align 4 dereferenceable(44) %5, i32 44, i1 false)
  call void @up_write(ptr noundef %153) #9
  br label %197

171:                                              ; preds = %19
  %172 = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 11
  tail call void @down_read(ptr noundef %172) #9
  %173 = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, ptr noundef align 4 dereferenceable(44) %173, i32 44, i1 false) #9
  tail call void @up_read(ptr noundef %172) #9
  %174 = getelementptr inbounds %struct.ktermios, ptr %5, i32 0, i32 2
  %175 = load i32, ptr %174, align 4
  %176 = lshr i32 %175, 11
  %177 = and i32 %176, 1
  %178 = tail call ptr @llvm.thread.pointer() #9
  %179 = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 3
  %180 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %179) #11, !srcloc !11
  %181 = and i32 %180, -13
  %182 = or i32 %181, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %182) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %183 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i32 %177, i32 -1090519041) #9, !srcloc !21
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %180) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  br label %197

184:                                              ; preds = %19
  %185 = tail call ptr @llvm.thread.pointer() #9
  %186 = getelementptr inbounds %struct.thread_info, ptr %185, i32 0, i32 3
  %187 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %186) #11, !srcloc !11
  %188 = and i32 %187, -13
  %189 = or i32 %188, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %189) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %190 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1090519041) #9, !srcloc !22
  %191 = extractvalue { i32, i32 } %190, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %187) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %184
  %194 = extractvalue { i32, i32 } %190, 1
  %195 = tail call fastcc i32 @tty_change_softcar(ptr noundef %20, i32 noundef %194)
  br label %197

196:                                              ; preds = %19
  br label %197

197:                                              ; preds = %196, %193, %184, %171, %170, %166, %150, %141, %135, %133, %131, %129, %127, %61, %59, %57, %48, %42, %33, %27, %25, %23, %21, %19, %19, %19, %19
  %198 = phi i32 [ -515, %196 ], [ %195, %193 ], [ %183, %171 ], [ 0, %170 ], [ %134, %133 ], [ %132, %131 ], [ %130, %129 ], [ %128, %127 ], [ %62, %61 ], [ %60, %59 ], [ %58, %57 ], [ %26, %25 ], [ %24, %23 ], [ %22, %21 ], [ -1, %150 ], [ -25, %19 ], [ -25, %19 ], [ -25, %19 ], [ -25, %19 ], [ -14, %184 ], [ -14, %27 ], [ -14, %42 ], [ -14, %135 ], [ -14, %166 ], [ %41, %33 ], [ %56, %48 ], [ %149, %141 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #9
  ret i32 %198
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_termios(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ktermios, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #9
  %5 = tail call i32 @tty_check_change(ptr noundef %0) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %161

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  tail call void @down_read(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, ptr noundef align 4 dereferenceable(44) %9, i32 44, i1 false)
  tail call void @up_read(ptr noundef %8) #9
  %10 = and i32 %2, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %95, label %12

12:                                               ; preds = %7
  %13 = tail call ptr @llvm.thread.pointer() #9
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #11, !srcloc !11
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %18 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1090519041) #9, !srcloc !23
  %19 = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %161, label %21

21:                                               ; preds = %12
  %22 = extractvalue { i32, i32 } %18, 1
  %23 = load i32, ptr %4, align 4
  %24 = and i32 %23, -65536
  %25 = and i32 %22, 65535
  %26 = or i32 %24, %25
  store i32 %26, ptr %4, align 4
  %27 = getelementptr inbounds %struct.termio, ptr %1, i32 0, i32 1
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #11, !srcloc !11
  %29 = and i32 %28, -13
  %30 = or i32 %29, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %31 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %27, i32 -1090519041) #9, !srcloc !24
  %32 = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %161, label %34

34:                                               ; preds = %21
  %35 = extractvalue { i32, i32 } %31, 1
  %36 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, -65536
  %39 = and i32 %35, 65535
  %40 = or i32 %38, %39
  store i32 %40, ptr %36, align 4
  %41 = getelementptr inbounds %struct.termio, ptr %1, i32 0, i32 2
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #11, !srcloc !11
  %43 = and i32 %42, -13
  %44 = or i32 %43, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %45 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %41, i32 -1090519041) #9, !srcloc !25
  %46 = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %161, label %48

48:                                               ; preds = %34
  %49 = extractvalue { i32, i32 } %45, 1
  %50 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, -65536
  %53 = and i32 %49, 65535
  %54 = or i32 %52, %53
  store i32 %54, ptr %50, align 4
  %55 = getelementptr inbounds %struct.termio, ptr %1, i32 0, i32 3
  %56 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #11, !srcloc !11
  %57 = and i32 %56, -13
  %58 = or i32 %57, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %59 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %55, i32 -1090519041) #9, !srcloc !26
  %60 = extractvalue { i32, i32 } %59, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %161, label %62

62:                                               ; preds = %48
  %63 = extractvalue { i32, i32 } %59, 1
  %64 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, -65536
  %67 = and i32 %63, 65535
  %68 = or i32 %66, %67
  store i32 %68, ptr %64, align 4
  %69 = getelementptr inbounds %struct.termio, ptr %1, i32 0, i32 4
  %70 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #11, !srcloc !11
  %71 = and i32 %70, -13
  %72 = or i32 %71, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %73 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %69, i32 -1090519041) #9, !srcloc !27
  %74 = extractvalue { i32, i32 } %73, 0
  %75 = extractvalue { i32, i32 } %73, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 4
  store i8 %76, ptr %77, align 4
  %78 = icmp slt i32 %74, 0
  br i1 %78, label %161, label %79

79:                                               ; preds = %62
  %80 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 5
  %81 = getelementptr inbounds %struct.termio, ptr %1, i32 0, i32 5
  %82 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %81, i32 8, i32 -1090519040) #10, !srcloc !19
  %83 = extractvalue { i32, i32 } %82, 0
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %91, !prof !20

85:                                               ; preds = %79
  %86 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #11, !srcloc !11
  %87 = and i32 %86, -13
  %88 = or i32 %87, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %88) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %89 = call i32 @arm_copy_from_user(ptr noundef %80, ptr noundef %81, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %86) #9, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %130, label %91, !prof !20

91:                                               ; preds = %85, %79
  %92 = phi i32 [ %89, %85 ], [ 8, %79 ]
  %93 = sub i32 8, %92
  %94 = getelementptr i8, ptr %80, i32 %93
  call void @llvm.memset.p0.i32(ptr align 1 %94, i8 0, i32 %92, i1 false) #9
  br label %161

95:                                               ; preds = %7
  %96 = and i32 %2, 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %95
  %99 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 36, i32 -1090519040) #10, !srcloc !19
  %100 = extractvalue { i32, i32 } %99, 0
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %110, !prof !20

102:                                              ; preds = %98
  %103 = tail call ptr @llvm.thread.pointer() #9
  %104 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 3
  %105 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %104) #11, !srcloc !11
  %106 = and i32 %105, -13
  %107 = or i32 %106, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %107) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %108 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 36) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %105) #9, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %130, label %110, !prof !20

110:                                              ; preds = %102, %98
  %111 = phi i32 [ %108, %102 ], [ 36, %98 ]
  %112 = sub i32 36, %111
  %113 = getelementptr i8, ptr %4, i32 %112
  call void @llvm.memset.p0.i32(ptr align 1 %113, i8 0, i32 %111, i1 false) #9
  br label %161

114:                                              ; preds = %95
  %115 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 44, i32 -1090519040) #10, !srcloc !19
  %116 = extractvalue { i32, i32 } %115, 0
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %126, !prof !20

118:                                              ; preds = %114
  %119 = tail call ptr @llvm.thread.pointer() #9
  %120 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 3
  %121 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %120) #11, !srcloc !11
  %122 = and i32 %121, -13
  %123 = or i32 %122, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %123) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %124 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 44) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %121) #9, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126, !prof !20

126:                                              ; preds = %118, %114
  %127 = phi i32 [ %124, %118 ], [ 44, %114 ]
  %128 = sub i32 44, %127
  %129 = getelementptr i8, ptr %4, i32 %128
  call void @llvm.memset.p0.i32(ptr align 1 %129, i8 0, i32 %127, i1 false) #9
  br label %161

130:                                              ; preds = %118, %102, %85
  %131 = call i32 @tty_termios_input_baud_rate(ptr noundef nonnull %4) #9
  %132 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 6
  store i32 %131, ptr %132, align 4
  %133 = call i32 @tty_termios_baud_rate(ptr noundef nonnull %4) #9
  %134 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 7
  store i32 %133, ptr %134, align 4
  %135 = call ptr @tty_ldisc_ref(ptr noundef %0) #9
  %136 = icmp eq ptr %135, null
  br i1 %136, label %147, label %137

137:                                              ; preds = %130
  %138 = and i32 %2, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %135, align 4
  %142 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %141, i32 0, i32 4
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %140
  call void %143(ptr noundef %0) #9
  br label %146

146:                                              ; preds = %145, %140, %137
  call void @tty_ldisc_deref(ptr noundef nonnull %135) #9
  br label %147

147:                                              ; preds = %146, %130
  %148 = and i32 %2, 2
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %159, label %150

150:                                              ; preds = %147
  call void @tty_wait_until_sent(ptr noundef %0, i32 noundef 0)
  %151 = tail call ptr @llvm.thread.pointer() #9
  %152 = load volatile i32, ptr %151, align 4
  %153 = and i32 %152, 256
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %161, !prof !20

155:                                              ; preds = %150
  %156 = load volatile i32, ptr %151, align 4
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %155, %147
  %160 = call i32 @tty_set_termios(ptr noundef %0, ptr noundef nonnull %4)
  br label %161

161:                                              ; preds = %159, %155, %150, %126, %110, %91, %62, %48, %34, %21, %12, %3
  %162 = phi i32 [ 0, %159 ], [ %5, %3 ], [ -512, %155 ], [ -14, %62 ], [ -14, %48 ], [ -14, %34 ], [ -14, %21 ], [ -14, %12 ], [ -14, %91 ], [ -14, %110 ], [ -14, %126 ], [ -512, %150 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #9
  ret i32 %162
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tty_change_softcar(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ktermios, align 4
  %4 = icmp eq i32 %1, 0
  %5 = select i1 %4, i32 0, i32 2048
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #9
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  tail call void @down_write(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, ptr noundef align 4 dereferenceable(44) %7, i32 44, i1 false)
  %8 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -2049
  %11 = or i32 %10, %5
  store i32 %11, ptr %8, align 4
  %12 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tty_operations, ptr %13, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  call void %15(ptr noundef %0, ptr noundef nonnull %3) #9
  %18 = load i32, ptr %8, align 4
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ %18, %17 ], [ %11, %2 ]
  %21 = and i32 %20, 2048
  %22 = icmp eq i32 %21, %5
  %23 = select i1 %22, i32 0, i32 -22
  call void @up_write(ptr noundef %6) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #9
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_perform_flush(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @tty_check_change(ptr noundef %0) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call ptr @tty_ldisc_ref_wait(ptr noundef %0) #9
  %7 = tail call fastcc i32 @__tty_perform_flush(ptr noundef %0, i32 noundef %1)
  %8 = icmp eq ptr %6, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @tty_ldisc_deref(ptr noundef nonnull %6) #9
  br label %10

10:                                               ; preds = %9, %5, %2
  %11 = phi i32 [ %3, %2 ], [ %7, %9 ], [ %7, %5 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_check_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_ldisc_ref_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__tty_perform_flush(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  switch i32 %1, label %54 [
    i32 0, label %5
    i32 2, label %26
    i32 1, label %47
  ]

5:                                                ; preds = %2
  %6 = icmp eq ptr %4, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %54, label %12

12:                                               ; preds = %7
  tail call void %10(ptr noundef %0) #9
  %13 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  tail call void @down_write(ptr noundef %13) #9
  %14 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %15 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %14) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.tty_operations, ptr %19, i32 0, i32 16
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call void %21(ptr noundef %0) #9
  br label %24

24:                                               ; preds = %23, %17, %12
  %25 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 23
  store i32 0, ptr %25, align 4
  tail call void @up_write(ptr noundef %13) #9
  br label %54

26:                                               ; preds = %2
  %27 = icmp eq ptr %4, null
  br i1 %27, label %47, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %29, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %47, label %33

33:                                               ; preds = %28
  tail call void %31(ptr noundef %0) #9
  %34 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  tail call void @down_write(ptr noundef %34) #9
  %35 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %36 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %35) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.tty_operations, ptr %40, i32 0, i32 16
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  tail call void %42(ptr noundef %0) #9
  br label %45

45:                                               ; preds = %44, %38, %33
  %46 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 23
  store i32 0, ptr %46, align 4
  tail call void @up_write(ptr noundef %34) #9
  br label %47

47:                                               ; preds = %45, %28, %26, %2
  %48 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.tty_operations, ptr %49, i32 0, i32 21
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  tail call void %51(ptr noundef %0) #9
  br label %54

54:                                               ; preds = %53, %47, %24, %7, %5, %2
  %55 = phi i32 [ -22, %2 ], [ 0, %5 ], [ 0, %7 ], [ 0, %24 ], [ 0, %47 ], [ 0, %53 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @n_tty_ioctl_helper(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  switch i32 %1, label %43 [
    i32 21514, label %4
    i32 21515, label %38
  ]

4:                                                ; preds = %3
  %5 = tail call i32 @tty_check_change(ptr noundef %0) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %45

7:                                                ; preds = %4
  switch i32 %2, label %45 [
    i32 0, label %8
    i32 1, label %17
    i32 2, label %26
    i32 3, label %32
  ]

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19, i32 2
  %11 = load i8, ptr %10, align 1, !range !28
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i8 1, ptr %10, align 1
  tail call void @__stop_tty(ptr noundef %0) #9
  br label %14

14:                                               ; preds = %13, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %15 = load i16, ptr %9, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !31
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !33
  br label %45

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %18) #9
  %19 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19, i32 2
  %20 = load i8, ptr %19, align 1, !range !28
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i8 0, ptr %19, align 1
  tail call void @__start_tty(ptr noundef %0) #9
  br label %23

23:                                               ; preds = %22, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %24 = load i16, ptr %18, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !31
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !33
  br label %45

26:                                               ; preds = %7
  %27 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 9
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @tty_send_xchar(ptr noundef %0, i8 noundef zeroext %28) #9
  br label %45

32:                                               ; preds = %7
  %33 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 8
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = tail call i32 @tty_send_xchar(ptr noundef %0, i8 noundef zeroext %34) #9
  br label %45

38:                                               ; preds = %3
  %39 = tail call i32 @tty_check_change(ptr noundef %0) #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = tail call fastcc i32 @__tty_perform_flush(ptr noundef %0, i32 noundef %2)
  br label %45

43:                                               ; preds = %3
  %44 = tail call i32 @tty_mode_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %45

45:                                               ; preds = %43, %41, %38, %36, %32, %30, %26, %23, %14, %7, %4
  %46 = phi i32 [ %44, %43 ], [ %42, %41 ], [ %5, %4 ], [ -22, %7 ], [ %37, %36 ], [ 0, %32 ], [ %31, %30 ], [ 0, %26 ], [ 0, %23 ], [ 0, %14 ], [ %39, %38 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__stop_tty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__start_tty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_send_xchar(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_input_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2149929936, i64 2149929961}
!11 = !{i64 2425470}
!12 = !{i64 2425667}
!13 = !{i64 2149910946}
!14 = !{i64 2150018253, i64 2150018533, i64 2150018867, i64 2150019201}
!15 = !{i64 2150026459, i64 2150026739, i64 2150027073, i64 2150027407}
!16 = !{i64 2150034665, i64 2150034945, i64 2150035279, i64 2150035613}
!17 = !{i64 2150042871, i64 2150043151, i64 2150043485, i64 2150043819}
!18 = !{i64 2150049256, i64 2150049536, i64 2150049870, i64 2150050204}
!19 = !{i64 2149929358, i64 2149929383}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2152849538, i64 2152849818, i64 2152850152, i64 2152850486}
!22 = !{i64 2152860779, i64 2152861059, i64 2152861393, i64 2152861727}
!23 = !{i64 2149956343, i64 2149956623, i64 2149956957, i64 2149957291}
!24 = !{i64 2149968307, i64 2149968587, i64 2149968921, i64 2149969255}
!25 = !{i64 2149980271, i64 2149980551, i64 2149980885, i64 2149981219}
!26 = !{i64 2149992235, i64 2149992515, i64 2149992849, i64 2149993183}
!27 = !{i64 2150001730, i64 2150002010, i64 2150002344, i64 2150002678}
!28 = !{i8 0, i8 2}
!29 = !{i64 2149203200}
!30 = !{i64 2149199024}
!31 = !{i64 2149199099, i64 2149199126, i64 2149199173, i64 2149199195, i64 2149199223, i64 2149199243}
!32 = !{i64 594069}
!33 = !{i64 2149227344}
