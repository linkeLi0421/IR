; ModuleID = '/llk/IR/drivers/tty/tty_buffer.c_pt.bc'
source_filename = "../drivers/tty/tty_buffer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_buffer_lock_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_buffer_lock_exclusive\22\09\09\09\09\09"
module asm "__kstrtabns_tty_buffer_lock_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_buffer_unlock_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_buffer_unlock_exclusive\22\09\09\09\09\09"
module asm "__kstrtabns_tty_buffer_unlock_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_buffer_space_avail:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_buffer_space_avail\22\09\09\09\09\09"
module asm "__kstrtabns_tty_buffer_space_avail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_buffer_request_room:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_buffer_request_room\22\09\09\09\09\09"
module asm "__kstrtabns_tty_buffer_request_room:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_insert_flip_string_fixed_flag:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_insert_flip_string_fixed_flag\22\09\09\09\09\09"
module asm "__kstrtabns_tty_insert_flip_string_fixed_flag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_insert_flip_string_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_insert_flip_string_flags\22\09\09\09\09\09"
module asm "__kstrtabns_tty_insert_flip_string_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tty_insert_flip_char:\09\09\09\09\09"
module asm "\09.asciz \09\22__tty_insert_flip_char\22\09\09\09\09\09"
module asm "__kstrtabns___tty_insert_flip_char:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_prepare_flip_string:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_prepare_flip_string\22\09\09\09\09\09"
module asm "__kstrtabns_tty_prepare_flip_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_ldisc_receive_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_ldisc_receive_buf\22\09\09\09\09\09"
module asm "__kstrtabns_tty_ldisc_receive_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_flip_buffer_push:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_flip_buffer_push\22\09\09\09\09\09"
module asm "__kstrtabns_tty_flip_buffer_push:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_buffer_set_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_buffer_set_limit\22\09\09\09\09\09"
module asm "__kstrtabns_tty_buffer_set_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon = type { ptr }
%struct.llist_head = type { ptr }
%struct.atomic_t = type { i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.59, %struct.anon.60, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.59 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.60 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_ldisc = type { ptr, ptr }

@__kstrtab_tty_buffer_lock_exclusive = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_buffer_lock_exclusive = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_buffer_lock_exclusive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_buffer_lock_exclusive to i32), ptr @__kstrtab_tty_buffer_lock_exclusive, ptr @__kstrtabns_tty_buffer_lock_exclusive }, section "___ksymtab_gpl+tty_buffer_lock_exclusive", align 4
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_tty_buffer_unlock_exclusive = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_buffer_unlock_exclusive = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_buffer_unlock_exclusive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_buffer_unlock_exclusive to i32), ptr @__kstrtab_tty_buffer_unlock_exclusive, ptr @__kstrtabns_tty_buffer_unlock_exclusive }, section "___ksymtab_gpl+tty_buffer_unlock_exclusive", align 4
@__kstrtab_tty_buffer_space_avail = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_buffer_space_avail = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_buffer_space_avail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_buffer_space_avail to i32), ptr @__kstrtab_tty_buffer_space_avail, ptr @__kstrtabns_tty_buffer_space_avail }, section "___ksymtab_gpl+tty_buffer_space_avail", align 4
@.str = private unnamed_addr constant [25 x i8] c"drivers/tty/tty_buffer.c\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"we still have not freed %d bytes!\00", align 1
@__kstrtab_tty_buffer_request_room = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_buffer_request_room = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_buffer_request_room = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_buffer_request_room to i32), ptr @__kstrtab_tty_buffer_request_room, ptr @__kstrtabns_tty_buffer_request_room }, section "___ksymtab_gpl+tty_buffer_request_room", align 4
@__kstrtab_tty_insert_flip_string_fixed_flag = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_insert_flip_string_fixed_flag = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_insert_flip_string_fixed_flag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_insert_flip_string_fixed_flag to i32), ptr @__kstrtab_tty_insert_flip_string_fixed_flag, ptr @__kstrtabns_tty_insert_flip_string_fixed_flag }, section "___ksymtab+tty_insert_flip_string_fixed_flag", align 4
@__kstrtab_tty_insert_flip_string_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_insert_flip_string_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_insert_flip_string_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_insert_flip_string_flags to i32), ptr @__kstrtab_tty_insert_flip_string_flags, ptr @__kstrtabns_tty_insert_flip_string_flags }, section "___ksymtab+tty_insert_flip_string_flags", align 4
@__kstrtab___tty_insert_flip_char = external dso_local constant [0 x i8], align 1
@__kstrtabns___tty_insert_flip_char = external dso_local constant [0 x i8], align 1
@__ksymtab___tty_insert_flip_char = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tty_insert_flip_char to i32), ptr @__kstrtab___tty_insert_flip_char, ptr @__kstrtabns___tty_insert_flip_char }, section "___ksymtab+__tty_insert_flip_char", align 4
@__kstrtab_tty_prepare_flip_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_prepare_flip_string = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_prepare_flip_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_prepare_flip_string to i32), ptr @__kstrtab_tty_prepare_flip_string, ptr @__kstrtabns_tty_prepare_flip_string }, section "___ksymtab_gpl+tty_prepare_flip_string", align 4
@__kstrtab_tty_ldisc_receive_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_ldisc_receive_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_ldisc_receive_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_ldisc_receive_buf to i32), ptr @__kstrtab_tty_ldisc_receive_buf, ptr @__kstrtabns_tty_ldisc_receive_buf }, section "___ksymtab_gpl+tty_ldisc_receive_buf", align 4
@__kstrtab_tty_flip_buffer_push = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_flip_buffer_push = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_flip_buffer_push = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_flip_buffer_push to i32), ptr @__kstrtab_tty_flip_buffer_push, ptr @__kstrtabns_tty_flip_buffer_push }, section "___ksymtab+tty_flip_buffer_push", align 4
@tty_buffer_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"&buf->lock\00", align 1
@__kstrtab_tty_buffer_set_limit = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_buffer_set_limit = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_buffer_set_limit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_buffer_set_limit to i32), ptr @__kstrtab_tty_buffer_set_limit, ptr @__kstrtabns_tty_buffer_set_limit }, section "___ksymtab_gpl+tty_buffer_set_limit", align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab___tty_insert_flip_char, ptr @__ksymtab_tty_buffer_lock_exclusive, ptr @__ksymtab_tty_buffer_request_room, ptr @__ksymtab_tty_buffer_set_limit, ptr @__ksymtab_tty_buffer_space_avail, ptr @__ksymtab_tty_buffer_unlock_exclusive, ptr @__ksymtab_tty_flip_buffer_push, ptr @__ksymtab_tty_insert_flip_string_fixed_flag, ptr @__ksymtab_tty_insert_flip_string_flags, ptr @__ksymtab_tty_ldisc_receive_buf, ptr @__ksymtab_tty_prepare_flip_string], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_buffer_lock_exclusive(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #10, !srcloc !8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #10, !srcloc !9
  %4 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_buffer_unlock_exclusive(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.tty_buffer, ptr %2, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tty_buffer, ptr %2, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, %6
  %8 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #10, !srcloc !8
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #10, !srcloc !10
  %10 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %10) #10
  br i1 %7, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr @system_unbound_wq, align 4
  %13 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 1
  %14 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %12, ptr noundef %13) #10
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @tty_buffer_space_avail(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = sub i32 %3, %5
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 0)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_buffer_free_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %14, %1
  %5 = phi ptr [ %15, %14 ], [ %2, %1 ]
  %6 = phi i32 [ %10, %14 ], [ 0, %1 ]
  %7 = load ptr, ptr %5, align 4
  store ptr %7, ptr %0, align 4
  %8 = getelementptr inbounds %struct.tty_buffer, ptr %5, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %6
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  tail call void @kfree(ptr noundef nonnull %5) #10
  %13 = load ptr, ptr %0, align 4
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi ptr [ %13, %12 ], [ %7, %4 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %4

17:                                               ; preds = %14, %1
  %18 = phi i32 [ 0, %1 ], [ %10, %14 ]
  %19 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #10, !srcloc !8
  %20 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %19) #10, !srcloc !12
  %21 = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = inttoptr i32 %21 to ptr
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi ptr [ %27, %25 ], [ %24, %23 ]
  %27 = load ptr, ptr %26, align 4
  tail call void @kfree(ptr noundef nonnull %26) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %25

29:                                               ; preds = %25, %17
  %30 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  store ptr %30, ptr %0, align 4
  %31 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #10, !srcloc !8
  %33 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %32) #10, !srcloc !12
  %34 = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %35 = icmp eq i32 %34, %18
  br i1 %35, label %38, label %36, !prof !16

36:                                               ; preds = %29
  %37 = sub i32 %34, %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %37) #10
  br label %38

38:                                               ; preds = %36, %29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_buffer_flush(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 37
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tty_bufhead, ptr %4, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #10, !srcloc !8
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #10, !srcloc !9
  %7 = getelementptr inbounds %struct.tty_bufhead, ptr %4, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = load ptr, ptr %4, align 4
  %9 = load volatile ptr, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tty_bufhead, ptr %4, i32 0, i32 6
  %13 = getelementptr inbounds %struct.tty_bufhead, ptr %4, i32 0, i32 5
  br label %14

14:                                               ; preds = %31, %11
  %15 = phi ptr [ %9, %11 ], [ %32, %31 ]
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.tty_buffer, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #10, !srcloc !8
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 %18, ptr elementtype(i32) %12) #10, !srcloc !19
  %20 = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23, !prof !21

22:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 201, i32 noundef 9, ptr noundef null) #10
  br label %23

23:                                               ; preds = %22, %14
  %24 = load i32, ptr %17, align 4
  %25 = icmp sgt i32 %24, 256
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @kfree(ptr noundef %16) #10
  br label %31

27:                                               ; preds = %23
  %28 = icmp sgt i32 %24, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = tail call zeroext i1 @llist_add_batch(ptr noundef %16, ptr noundef %16, ptr noundef %13) #10
  br label %31

31:                                               ; preds = %29, %27, %26
  store ptr %15, ptr %4, align 4
  %32 = load volatile ptr, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %14

34:                                               ; preds = %31, %2
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr inbounds %struct.tty_buffer, ptr %35, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.tty_buffer, ptr %35, i32 0, i32 4
  store i32 %37, ptr %38, align 4
  %39 = icmp eq ptr %1, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %1, align 4
  %42 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %41, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  tail call void %43(ptr noundef %0) #10
  br label %46

46:                                               ; preds = %45, %40, %34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #10, !srcloc !8
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #10, !srcloc !10
  tail call void @mutex_unlock(ptr noundef %7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_buffer_request_room(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @__tty_buffer_request_room(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__tty_buffer_request_room(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tty_buffer, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = getelementptr inbounds %struct.tty_buffer, ptr %5, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, %8
  %12 = getelementptr inbounds %struct.tty_buffer, ptr %5, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %11, %13
  %15 = icmp ne i32 %8, 0
  %16 = and i32 %2, 1
  %17 = icmp eq i32 %16, 0
  %18 = and i1 %17, %15
  %19 = icmp ult i32 %14, %1
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %3
  %22 = add i32 %1, 255
  %23 = and i32 %22, -256
  %24 = icmp ult i32 %23, 257
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 5
  %27 = tail call ptr @llist_del_first(ptr noundef %26) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 6
  %31 = load volatile i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %52, label %35

35:                                               ; preds = %29
  %36 = shl i32 %23, 1
  %37 = or i32 %36, 24
  %38 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %37, i32 noundef 2592) #11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %35, %25
  %41 = phi ptr [ %38, %35 ], [ %27, %25 ]
  %42 = getelementptr inbounds %struct.tty_buffer, ptr %41, i32 0, i32 1
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.tty_buffer, ptr %41, i32 0, i32 2
  store i32 %23, ptr %43, align 4
  store ptr null, ptr %41, align 4
  %44 = getelementptr inbounds %struct.tty_buffer, ptr %41, i32 0, i32 3
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.tty_buffer, ptr %41, i32 0, i32 4
  store i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.tty_buffer, ptr %41, i32 0, i32 5
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #10, !srcloc !8
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 %23, ptr elementtype(i32) %47) #10, !srcloc !9
  store i32 %2, ptr %46, align 4
  store ptr %41, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !22
  %49 = getelementptr inbounds %struct.tty_buffer, ptr %5, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.tty_buffer, ptr %5, i32 0, i32 3
  store volatile i32 %50, ptr %51, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !23
  store volatile ptr %41, ptr %5, align 4
  br label %54

52:                                               ; preds = %35, %29
  %53 = select i1 %18, i32 0, i32 %14
  br label %54

54:                                               ; preds = %52, %40, %3
  %55 = phi i32 [ %1, %40 ], [ %1, %3 ], [ %53, %52 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = icmp eq i8 %2, 0
  %6 = zext i1 %5 to i32
  %7 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  br label %8

8:                                                ; preds = %31, %4
  %9 = phi i32 [ 0, %4 ], [ %34, %31 ]
  %10 = phi ptr [ %1, %4 ], [ %35, %31 ]
  %11 = sub i32 %3, %9
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 1792)
  %13 = tail call fastcc i32 @__tty_buffer_request_room(ptr noundef %0, i32 noundef %12, i32 noundef %6)
  %14 = load ptr, ptr %7, align 4
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %37, label %16, !prof !21

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.tty_buffer, ptr %14, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.tty_buffer, ptr %14, i32 0, i32 6
  %20 = getelementptr i8, ptr %19, i32 %18
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %20, ptr align 1 %10, i32 %13, i1 false)
  %21 = getelementptr inbounds %struct.tty_buffer, ptr %14, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load i32, ptr %17, align 4
  %27 = getelementptr i8, ptr %19, i32 %26
  %28 = getelementptr inbounds %struct.tty_buffer, ptr %14, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i8, ptr %27, i32 %29
  tail call void @llvm.memset.p0.i32(ptr align 1 %30, i8 %2, i32 %13, i1 false)
  br label %31

31:                                               ; preds = %25, %16
  %32 = load i32, ptr %17, align 4
  %33 = add i32 %32, %13
  store i32 %33, ptr %17, align 4
  %34 = add i32 %13, %9
  %35 = getelementptr i8, ptr %10, i32 %13
  %36 = icmp ult i32 %34, %3
  br i1 %36, label %8, label %37, !prof !24

37:                                               ; preds = %31, %8
  %38 = phi i32 [ %34, %31 ], [ %9, %8 ]
  ret i32 %38
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_insert_flip_string_flags(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  br label %6

6:                                                ; preds = %14, %4
  %7 = phi i32 [ 0, %4 ], [ %27, %14 ]
  %8 = phi ptr [ %2, %4 ], [ %29, %14 ]
  %9 = phi ptr [ %1, %4 ], [ %28, %14 ]
  %10 = sub i32 %3, %7
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 1792)
  %12 = tail call fastcc i32 @__tty_buffer_request_room(ptr noundef %0, i32 noundef %11, i32 noundef 0) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %31, label %14, !prof !21

14:                                               ; preds = %6
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.tty_buffer, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tty_buffer, ptr %15, i32 0, i32 6
  %19 = getelementptr i8, ptr %18, i32 %17
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %19, ptr align 1 %9, i32 %12, i1 false)
  %20 = load i32, ptr %16, align 4
  %21 = getelementptr i8, ptr %18, i32 %20
  %22 = getelementptr inbounds %struct.tty_buffer, ptr %15, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %21, i32 %23
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %24, ptr align 1 %8, i32 %12, i1 false)
  %25 = load i32, ptr %16, align 4
  %26 = add i32 %25, %12
  store i32 %26, ptr %16, align 4
  %27 = add i32 %12, %7
  %28 = getelementptr i8, ptr %9, i32 %12
  %29 = getelementptr i8, ptr %8, i32 %12
  %30 = icmp ult i32 %27, %3
  br i1 %30, label %6, label %31, !prof !24

31:                                               ; preds = %14, %6
  %32 = phi i32 [ %27, %14 ], [ %7, %6 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__tty_insert_flip_char(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = icmp eq i8 %2, 0
  %5 = zext i1 %4 to i32
  %6 = tail call fastcc i32 @__tty_buffer_request_room(ptr noundef %0, i32 noundef 1, i32 noundef %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tty_buffer, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.tty_buffer, ptr %10, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tty_buffer, ptr %10, i32 0, i32 6
  %19 = getelementptr i8, ptr %18, i32 %17
  %20 = getelementptr inbounds %struct.tty_buffer, ptr %10, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %19, i32 %21
  store i8 %2, ptr %22, align 1
  br label %23

23:                                               ; preds = %15, %8
  %24 = getelementptr inbounds %struct.tty_buffer, ptr %10, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.tty_buffer, ptr %10, i32 0, i32 6
  %28 = getelementptr i8, ptr %27, i32 %25
  store i8 %1, ptr %28, align 1
  br label %29

29:                                               ; preds = %23, %3
  %30 = phi i32 [ 1, %23 ], [ 0, %3 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_prepare_flip_string(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = tail call fastcc i32 @__tty_buffer_request_room(ptr noundef %0, i32 noundef %2, i32 noundef 1)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6, !prof !21

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tty_buffer, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tty_buffer, ptr %8, i32 0, i32 6
  %12 = getelementptr i8, ptr %11, i32 %10
  store ptr %12, ptr %1, align 4
  %13 = getelementptr inbounds %struct.tty_buffer, ptr %8, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %6
  %18 = load i32, ptr %9, align 4
  %19 = getelementptr i8, ptr %11, i32 %18
  %20 = getelementptr inbounds %struct.tty_buffer, ptr %8, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %19, i32 %21
  tail call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %4, i1 false)
  br label %23

23:                                               ; preds = %17, %6
  %24 = load i32, ptr %9, align 4
  %25 = add i32 %24, %4
  store i32 %25, ptr %9, align 4
  br label %26

26:                                               ; preds = %23, %3
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_ldisc_receive_buf(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.tty_ldisc, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  br i1 %8, label %13, label %11

11:                                               ; preds = %4
  %12 = tail call i32 %7(ptr noundef %10, ptr noundef %1, ptr noundef %2, i32 noundef %3) #10
  br label %23

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 22
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 %3)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %5, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void %20(ptr noundef %10, ptr noundef %1, ptr noundef %2, i32 noundef %16) #10
  br label %23

23:                                               ; preds = %22, %18, %13, %11
  %24 = phi i32 [ %12, %11 ], [ %16, %22 ], [ %16, %18 ], [ 0, %13 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_flip_buffer_push(ptr noundef %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !25
  %2 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_buffer, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tty_buffer, ptr %3, i32 0, i32 3
  store volatile i32 %5, ptr %6, align 4
  %7 = load ptr, ptr @system_unbound_wq, align 4
  %8 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 1
  %9 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %7, ptr noundef %8) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_buffer_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @tty_buffer_init.__key) #10
  %3 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store ptr %3, ptr %0, align 4
  %4 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 8
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 5
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 6
  store volatile i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 3
  store volatile i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 1
  store i32 -32, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 1, i32 1
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 1, i32 1, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 1, i32 2
  store ptr @flush_to_ldisc, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 7
  store i32 655360, ptr %12, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @flush_to_ldisc(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 16
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr i8, ptr %0, i32 36
  %5 = load ptr, ptr %2, align 4
  %6 = load volatile i32, ptr %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %71

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 92
  %10 = getelementptr i8, ptr %0, i32 68
  %11 = getelementptr i8, ptr %0, i32 64
  br label %12

12:                                               ; preds = %67, %8
  %13 = phi ptr [ %5, %8 ], [ %68, %67 ]
  %14 = load volatile ptr, ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !26
  %15 = getelementptr inbounds %struct.tty_buffer, ptr %13, i32 0, i32 3
  %16 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  %17 = getelementptr inbounds %struct.tty_buffer, ptr %13, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %12
  %21 = icmp eq ptr %14, null
  br i1 %21, label %71, label %22

22:                                               ; preds = %20
  store ptr %14, ptr %2, align 4
  %23 = getelementptr inbounds %struct.tty_buffer, ptr %13, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #10, !srcloc !8
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 %24, ptr elementtype(i32) %10) #10, !srcloc !19
  %26 = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29, !prof !21

28:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 201, i32 noundef 9, ptr noundef null) #10
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, ptr %23, align 4
  %31 = icmp sgt i32 %30, 256
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call void @kfree(ptr noundef %13) #10
  br label %67

33:                                               ; preds = %29
  %34 = icmp sgt i32 %30, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %33
  %36 = tail call zeroext i1 @llist_add_batch(ptr noundef %13, ptr noundef %13, ptr noundef %11) #10
  br label %67

37:                                               ; preds = %12
  %38 = sub i32 %16, %18
  %39 = getelementptr inbounds %struct.tty_buffer, ptr %13, i32 0, i32 6
  %40 = getelementptr i8, ptr %39, i32 %18
  %41 = getelementptr inbounds %struct.tty_buffer, ptr %13, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.tty_buffer, ptr %13, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr i8, ptr %40, i32 %47
  br label %49

49:                                               ; preds = %45, %37
  %50 = phi ptr [ %48, %45 ], [ null, %37 ]
  %51 = load ptr, ptr %9, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 %52(ptr noundef %2, ptr noundef %40, ptr noundef %50, i32 noundef %38) #10
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  tail call void @llvm.memset.p0.i32(ptr align 1 %40, i8 0, i32 %53, i1 false) #10
  br label %58

56:                                               ; preds = %49
  %57 = icmp eq i32 %53, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %56, %55
  %59 = load i32, ptr %17, align 4
  %60 = add i32 %59, %53
  store i32 %60, ptr %17, align 4
  %61 = tail call ptr @llvm.thread.pointer() #10
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %62, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %58
  %66 = tail call i32 @__cond_resched() #10
  br label %67

67:                                               ; preds = %65, %58, %35, %33, %32
  %68 = load ptr, ptr %2, align 4
  %69 = load volatile i32, ptr %4, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %12, label %71

71:                                               ; preds = %67, %56, %20, %1
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @tty_buffer_set_limit(ptr nocapture noundef writeonly %0, i32 noundef %1) #5 {
  %3 = icmp slt i32 %1, 256
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 7
  store i32 %1, ptr %5, align 4
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @tty_buffer_set_lock_subclass(ptr nocapture noundef %0) local_unnamed_addr #6 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @tty_buffer_restart_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @system_unbound_wq, align 4
  %3 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 1
  %4 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %2, ptr noundef %3) #10
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @tty_buffer_cancel_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 1
  %3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %2) #10
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_buffer_flush_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tty_bufhead, ptr %0, i32 0, i32 1
  %3 = tail call zeroext i1 @flush_work(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llist_del_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

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
!8 = !{i64 861804, i64 2148351775, i64 2148351801, i64 2148351848, i64 2148351870, i64 2148351898, i64 2148351918}
!9 = !{i64 2148363190, i64 2148363216, i64 2148363245, i64 2148363279, i64 2148363310, i64 2148363333}
!10 = !{i64 2148365547, i64 2148365573, i64 2148365602, i64 2148365636, i64 2148365667, i64 2148365690}
!11 = !{i64 2149006715}
!12 = !{i64 870454, i64 870471, i64 870495, i64 870521, i64 870539}
!13 = !{i64 2149007042}
!14 = !{i64 2148651325}
!15 = !{i64 2148651669}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2152161607}
!18 = !{i64 2148463869}
!19 = !{i64 2148366231, i64 2148366263, i64 2148366292, i64 2148366326, i64 2148366357, i64 2148366380}
!20 = !{i64 2148464072}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2152163636}
!23 = !{i64 2152167683}
!24 = !{!"branch_weights", i32 1, i32 4001}
!25 = !{i64 2152204567}
!26 = !{i64 2152196533}
!27 = !{i64 2152202274}
