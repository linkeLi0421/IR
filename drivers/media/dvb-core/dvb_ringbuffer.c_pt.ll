; ModuleID = '/llk/IR/drivers/media/dvb-core/dvb_ringbuffer.c_pt.bc'
source_filename = "../drivers/media/dvb-core/dvb_ringbuffer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ringbuffer_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ringbuffer_flush\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ringbuffer_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ringbuffer_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ringbuffer_init\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ringbuffer_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ringbuffer_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ringbuffer_empty\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ringbuffer_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ringbuffer_free:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ringbuffer_free\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ringbuffer_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ringbuffer_avail:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ringbuffer_avail\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ringbuffer_avail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ringbuffer_flush_spinlock_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ringbuffer_flush_spinlock_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ringbuffer_flush_spinlock_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ringbuffer_read_user:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ringbuffer_read_user\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ringbuffer_read_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ringbuffer_read:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ringbuffer_read\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ringbuffer_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ringbuffer_write:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ringbuffer_write\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ringbuffer_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_ringbuffer_write_user:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_ringbuffer_write_user\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_ringbuffer_write_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@dvb_ringbuffer_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [13 x i8] c"&rbuf->queue\00", align 1
@__kstrtab_dvb_ringbuffer_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ringbuffer_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ringbuffer_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ringbuffer_flush to i32), ptr @__kstrtab_dvb_ringbuffer_flush, ptr @__kstrtabns_dvb_ringbuffer_flush }, section "___ksymtab+dvb_ringbuffer_flush", align 4
@__kstrtab_dvb_ringbuffer_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ringbuffer_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ringbuffer_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ringbuffer_init to i32), ptr @__kstrtab_dvb_ringbuffer_init, ptr @__kstrtabns_dvb_ringbuffer_init }, section "___ksymtab+dvb_ringbuffer_init", align 4
@__kstrtab_dvb_ringbuffer_empty = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ringbuffer_empty = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ringbuffer_empty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ringbuffer_empty to i32), ptr @__kstrtab_dvb_ringbuffer_empty, ptr @__kstrtabns_dvb_ringbuffer_empty }, section "___ksymtab+dvb_ringbuffer_empty", align 4
@__kstrtab_dvb_ringbuffer_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ringbuffer_free = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ringbuffer_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ringbuffer_free to i32), ptr @__kstrtab_dvb_ringbuffer_free, ptr @__kstrtabns_dvb_ringbuffer_free }, section "___ksymtab+dvb_ringbuffer_free", align 4
@__kstrtab_dvb_ringbuffer_avail = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ringbuffer_avail = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ringbuffer_avail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ringbuffer_avail to i32), ptr @__kstrtab_dvb_ringbuffer_avail, ptr @__kstrtabns_dvb_ringbuffer_avail }, section "___ksymtab+dvb_ringbuffer_avail", align 4
@__kstrtab_dvb_ringbuffer_flush_spinlock_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ringbuffer_flush_spinlock_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ringbuffer_flush_spinlock_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ringbuffer_flush_spinlock_wakeup to i32), ptr @__kstrtab_dvb_ringbuffer_flush_spinlock_wakeup, ptr @__kstrtabns_dvb_ringbuffer_flush_spinlock_wakeup }, section "___ksymtab+dvb_ringbuffer_flush_spinlock_wakeup", align 4
@__kstrtab_dvb_ringbuffer_read_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ringbuffer_read_user = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ringbuffer_read_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ringbuffer_read_user to i32), ptr @__kstrtab_dvb_ringbuffer_read_user, ptr @__kstrtabns_dvb_ringbuffer_read_user }, section "___ksymtab+dvb_ringbuffer_read_user", align 4
@__kstrtab_dvb_ringbuffer_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ringbuffer_read = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ringbuffer_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ringbuffer_read to i32), ptr @__kstrtab_dvb_ringbuffer_read, ptr @__kstrtabns_dvb_ringbuffer_read }, section "___ksymtab+dvb_ringbuffer_read", align 4
@__kstrtab_dvb_ringbuffer_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ringbuffer_write = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ringbuffer_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ringbuffer_write to i32), ptr @__kstrtab_dvb_ringbuffer_write, ptr @__kstrtabns_dvb_ringbuffer_write }, section "___ksymtab+dvb_ringbuffer_write", align 4
@__kstrtab_dvb_ringbuffer_write_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_ringbuffer_write_user = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_ringbuffer_write_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_ringbuffer_write_user to i32), ptr @__kstrtab_dvb_ringbuffer_write_user, ptr @__kstrtabns_dvb_ringbuffer_write_user }, section "___ksymtab+dvb_ringbuffer_write_user", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_dvb_ringbuffer_avail, ptr @__ksymtab_dvb_ringbuffer_empty, ptr @__ksymtab_dvb_ringbuffer_flush, ptr @__ksymtab_dvb_ringbuffer_flush_spinlock_wakeup, ptr @__ksymtab_dvb_ringbuffer_free, ptr @__ksymtab_dvb_ringbuffer_init, ptr @__ksymtab_dvb_ringbuffer_read, ptr @__ksymtab_dvb_ringbuffer_read_user, ptr @__ksymtab_dvb_ringbuffer_write, ptr @__ksymtab_dvb_ringbuffer_write_user], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_ringbuffer_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 3
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 2
  store i32 0, ptr %5, align 4
  store ptr %1, ptr %0, align 4
  %6 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 1
  store i32 %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 4
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @dvb_ringbuffer_init.__key) #7
  %9 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 6
  store i32 0, ptr %9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_ringbuffer_empty(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 3
  %5 = load volatile i32, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  %6 = icmp eq i32 %3, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @dvb_ringbuffer_free(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 2
  %3 = load volatile i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 %3, %5
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %6
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i32 [ %11, %8 ], [ %6, %1 ]
  %14 = add i32 %13, -1
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_ringbuffer_avail(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 3
  %3 = load volatile i32, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %4 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 %3, %5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %6
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i32 [ %11, %8 ], [ %6, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_ringbuffer_flush(ptr noundef %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %2 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 3
  %3 = load volatile i32, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %4 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 2
  store volatile i32 %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 4
  store i32 0, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_ringbuffer_reset(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  %2 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 2
  store volatile i32 0, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %3 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 3
  store volatile i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 4
  store i32 0, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_ringbuffer_flush_spinlock_wakeup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 6
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %4 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 3
  %5 = load volatile i32, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %6 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 2
  store volatile i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 4
  store i32 0, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #7
  %8 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %8, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_ringbuffer_read_user(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %2
  %7 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ule i32 %6, %8
  %10 = sub i32 %8, %5
  %11 = icmp eq i32 %8, %5
  %12 = or i1 %9, %11
  br i1 %12, label %37, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr i8, ptr %14, i32 %5
  %16 = icmp slt i32 %10, 0
  %17 = load i1, ptr @check_copy_size.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !14

20:                                               ; preds = %13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %21

21:                                               ; preds = %20, %13
  br i1 %16, label %68, label %22, !prof !14

22:                                               ; preds = %21
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %10, i32 -1090519040) #8, !srcloc !15
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %22
  %27 = tail call ptr @llvm.thread.pointer() #7
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %28) #9, !srcloc !16
  %30 = and i32 %29, -13
  %31 = or i32 %30, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #7, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !18
  %32 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %15, i32 noundef %10) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #7, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !18
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %68

34:                                               ; preds = %26
  %35 = getelementptr i8, ptr %1, i32 %10
  %36 = sub i32 %2, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  store volatile i32 0, ptr %4, align 4
  br label %37

37:                                               ; preds = %34, %3
  %38 = phi i32 [ 0, %34 ], [ %5, %3 ]
  %39 = phi ptr [ %35, %34 ], [ %1, %3 ]
  %40 = phi i32 [ %36, %34 ], [ %2, %3 ]
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr i8, ptr %41, i32 %38
  %43 = icmp slt i32 %40, 0
  %44 = load i1, ptr @check_copy_size.__already_done, align 1
  %45 = xor i1 %44, true
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %48, !prof !14

47:                                               ; preds = %37
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %48

48:                                               ; preds = %47, %37
  br i1 %43, label %68, label %49, !prof !14

49:                                               ; preds = %48
  %50 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %39, i32 %40, i32 -1090519040) #8, !srcloc !15
  %51 = extractvalue { i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = tail call ptr @llvm.thread.pointer() #7
  %55 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %56 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %55) #9, !srcloc !16
  %57 = and i32 %56, -13
  %58 = or i32 %57, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #7, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !18
  %59 = tail call i32 @arm_copy_to_user(ptr noundef %39, ptr noundef %42, i32 noundef %40) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #7, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !18
  br label %60

60:                                               ; preds = %53, %49
  %61 = phi i32 [ %59, %53 ], [ %40, %49 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  %64 = load i32, ptr %4, align 4
  %65 = add i32 %64, %40
  %66 = load i32, ptr %7, align 4
  %67 = urem i32 %65, %66
  store volatile i32 %67, ptr %4, align 4
  br label %68

68:                                               ; preds = %63, %60, %48, %26, %22, %21
  %69 = phi i32 [ %2, %63 ], [ -14, %26 ], [ -14, %60 ], [ -14, %21 ], [ -14, %22 ], [ -14, %48 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_ringbuffer_read(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %2
  %7 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ule i32 %6, %8
  %10 = icmp eq i32 %8, %5
  %11 = or i1 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = sub i32 %8, %5
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr i8, ptr %14, i32 %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %15, i32 %13, i1 false)
  %16 = getelementptr i8, ptr %1, i32 %13
  %17 = sub i32 %2, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !21
  store volatile i32 0, ptr %4, align 4
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i32 [ 0, %12 ], [ %5, %3 ]
  %20 = phi ptr [ %16, %12 ], [ %1, %3 ]
  %21 = phi i32 [ %17, %12 ], [ %2, %3 ]
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr i8, ptr %22, i32 %19
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %20, ptr align 1 %23, i32 %21, i1 false)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %24 = load i32, ptr %4, align 4
  %25 = add i32 %24, %21
  %26 = load i32, ptr %7, align 4
  %27 = urem i32 %25, %26
  store volatile i32 %27, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_ringbuffer_write(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef returned %2) #0 {
  %4 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %2
  %7 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ule i32 %6, %8
  %10 = icmp eq i32 %8, %5
  %11 = or i1 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = sub i32 %8, %5
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr i8, ptr %14, i32 %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %15, ptr align 1 %1, i32 %13, i1 false)
  %16 = getelementptr i8, ptr %1, i32 %13
  %17 = sub i32 %2, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !23
  store volatile i32 0, ptr %4, align 4
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i32 [ 0, %12 ], [ %5, %3 ]
  %20 = phi ptr [ %16, %12 ], [ %1, %3 ]
  %21 = phi i32 [ %17, %12 ], [ %2, %3 ]
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr i8, ptr %22, i32 %19
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %23, ptr align 1 %20, i32 %21, i1 false)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  %24 = load i32, ptr %4, align 4
  %25 = add i32 %24, %21
  %26 = load i32, ptr %7, align 4
  %27 = urem i32 %25, %26
  store volatile i32 %27, ptr %4, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_ringbuffer_write_user(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %2
  %7 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ule i32 %6, %8
  %10 = sub i32 %8, %5
  %11 = icmp eq i32 %10, 0
  %12 = or i1 %9, %11
  br i1 %12, label %41, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr i8, ptr %14, i32 %5
  %16 = icmp slt i32 %10, 0
  %17 = load i1, ptr @check_copy_size.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !14

20:                                               ; preds = %13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %21

21:                                               ; preds = %20, %13
  br i1 %16, label %77, label %22, !prof !14

22:                                               ; preds = %21
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %10, i32 -1090519040) #8, !srcloc !25
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34, !prof !26

26:                                               ; preds = %22
  %27 = tail call ptr @llvm.thread.pointer() #7
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %28) #9, !srcloc !16
  %30 = and i32 %29, -13
  %31 = or i32 %30, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #7, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !18
  %32 = tail call i32 @arm_copy_from_user(ptr noundef %15, ptr noundef %1, i32 noundef %10) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #7, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !18
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34, !prof !26

34:                                               ; preds = %26, %22
  %35 = phi i32 [ %32, %26 ], [ %10, %22 ]
  %36 = sub i32 %10, %35
  %37 = getelementptr i8, ptr %15, i32 %36
  tail call void @llvm.memset.p0.i32(ptr align 1 %37, i8 0, i32 %35, i1 false) #7
  br label %77

38:                                               ; preds = %26
  %39 = getelementptr i8, ptr %1, i32 %10
  %40 = sub i32 %2, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !27
  store volatile i32 0, ptr %4, align 4
  br label %41

41:                                               ; preds = %38, %3
  %42 = phi i32 [ 0, %38 ], [ %5, %3 ]
  %43 = phi ptr [ %39, %38 ], [ %1, %3 ]
  %44 = phi i32 [ %40, %38 ], [ %2, %3 ]
  %45 = load ptr, ptr %0, align 4
  %46 = getelementptr i8, ptr %45, i32 %42
  %47 = icmp slt i32 %44, 0
  %48 = load i1, ptr @check_copy_size.__already_done, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %52, !prof !14

51:                                               ; preds = %41
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %52

52:                                               ; preds = %51, %41
  br i1 %47, label %70, label %53, !prof !14

53:                                               ; preds = %52
  %54 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %43, i32 %44, i32 -1090519040) #8, !srcloc !25
  %55 = extractvalue { i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64, !prof !26

57:                                               ; preds = %53
  %58 = tail call ptr @llvm.thread.pointer() #7
  %59 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %60 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %59) #9, !srcloc !16
  %61 = and i32 %60, -13
  %62 = or i32 %61, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #7, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !18
  %63 = tail call i32 @arm_copy_from_user(ptr noundef %46, ptr noundef %43, i32 noundef %44) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %60) #7, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !18
  br label %64

64:                                               ; preds = %57, %53
  %65 = phi i32 [ %63, %57 ], [ %44, %53 ]
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67, !prof !26

67:                                               ; preds = %64
  %68 = sub i32 %44, %65
  %69 = getelementptr i8, ptr %46, i32 %68
  tail call void @llvm.memset.p0.i32(ptr align 1 %69, i8 0, i32 %65, i1 false) #7
  br label %70

70:                                               ; preds = %67, %52
  %71 = sub i32 %2, %44
  br label %77

72:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !28
  %73 = load i32, ptr %4, align 4
  %74 = add i32 %73, %44
  %75 = load i32, ptr %7, align 4
  %76 = urem i32 %74, %75
  store volatile i32 %76, ptr %4, align 4
  br label %77

77:                                               ; preds = %72, %70, %34, %21
  %78 = phi i32 [ %71, %70 ], [ %2, %72 ], [ 0, %21 ], [ 0, %34 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_ringbuffer_pkt_write(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %2, 8
  %7 = trunc i32 %6 to i8
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr i8, ptr %8, i32 %5
  store i8 %7, ptr %9, align 1
  %10 = load i32, ptr %4, align 4
  %11 = add i32 %10, 1
  %12 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = srem i32 %11, %13
  store i32 %14, ptr %4, align 4
  %15 = trunc i32 %2 to i8
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr i8, ptr %16, i32 %14
  store i8 %15, ptr %17, align 1
  %18 = load i32, ptr %4, align 4
  %19 = add i32 %18, 1
  %20 = load i32, ptr %12, align 4
  %21 = srem i32 %19, %20
  store i32 %21, ptr %4, align 4
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr i8, ptr %22, i32 %21
  store i8 0, ptr %23, align 1
  %24 = load i32, ptr %4, align 4
  %25 = add i32 %24, 1
  %26 = load i32, ptr %12, align 4
  %27 = srem i32 %25, %26
  store i32 %27, ptr %4, align 4
  %28 = add i32 %27, %2
  %29 = icmp ugt i32 %28, %26
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = sub i32 %26, %27
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr i8, ptr %32, i32 %27
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %33, ptr align 1 %1, i32 %31, i1 false) #7
  %34 = getelementptr i8, ptr %1, i32 %31
  %35 = sub i32 %2, %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !23
  store volatile i32 0, ptr %4, align 4
  br label %36

36:                                               ; preds = %30, %3
  %37 = phi i32 [ 0, %30 ], [ %27, %3 ]
  %38 = phi ptr [ %34, %30 ], [ %1, %3 ]
  %39 = phi i32 [ %35, %30 ], [ %2, %3 ]
  %40 = load ptr, ptr %0, align 4
  %41 = getelementptr i8, ptr %40, i32 %37
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %41, ptr align 1 %38, i32 %39, i1 false) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  %42 = load i32, ptr %4, align 4
  %43 = add i32 %42, %39
  %44 = load i32, ptr %12, align 4
  %45 = urem i32 %43, %44
  store volatile i32 %45, ptr %4, align 4
  %46 = icmp slt i32 %2, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 %5, ptr %4, align 4
  br label %48

48:                                               ; preds = %47, %36
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_ringbuffer_pkt_read_user(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr i8, ptr %6, i32 %1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = add i32 %1, 1
  %12 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = urem i32 %11, %13
  %15 = getelementptr i8, ptr %6, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %10, %17
  %19 = icmp ult i32 %18, %2
  br i1 %19, label %82, label %20

20:                                               ; preds = %5
  %21 = add i32 %4, %2
  %22 = icmp ugt i32 %21, %18
  %23 = sub i32 %18, %2
  %24 = select i1 %22, i32 %23, i32 %4
  %25 = add i32 %1, 3
  %26 = add i32 %25, %2
  %27 = urem i32 %26, %13
  %28 = add i32 %27, %24
  %29 = icmp ugt i32 %28, %13
  %30 = sub i32 %13, %27
  br i1 %29, label %31, label %55

31:                                               ; preds = %20
  %32 = getelementptr i8, ptr %6, i32 %27
  %33 = icmp slt i32 %30, 0
  %34 = load i1, ptr @check_copy_size.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !14

37:                                               ; preds = %31
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %38

38:                                               ; preds = %37, %31
  br i1 %33, label %82, label %39, !prof !14

39:                                               ; preds = %38
  %40 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %30, i32 -1090519040) #8, !srcloc !15
  %41 = extractvalue { i32, i32 } %40, 0
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %39
  %44 = tail call ptr @llvm.thread.pointer() #7
  %45 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 3
  %46 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %45) #9, !srcloc !16
  %47 = and i32 %46, -13
  %48 = or i32 %47, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #7, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !18
  %49 = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %32, i32 noundef %30) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #7, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !18
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %82

51:                                               ; preds = %43
  %52 = getelementptr i8, ptr %3, i32 %30
  %53 = sub i32 %24, %30
  %54 = load ptr, ptr %0, align 4
  br label %55

55:                                               ; preds = %51, %20
  %56 = phi ptr [ %54, %51 ], [ %6, %20 ]
  %57 = phi i32 [ 0, %51 ], [ %27, %20 ]
  %58 = phi ptr [ %52, %51 ], [ %3, %20 ]
  %59 = phi i32 [ %53, %51 ], [ %24, %20 ]
  %60 = getelementptr i8, ptr %56, i32 %57
  %61 = icmp slt i32 %59, 0
  %62 = load i1, ptr @check_copy_size.__already_done, align 1
  %63 = xor i1 %62, true
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %66, !prof !14

65:                                               ; preds = %55
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %66

66:                                               ; preds = %65, %55
  br i1 %61, label %82, label %67, !prof !14

67:                                               ; preds = %66
  %68 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %58, i32 %59, i32 -1090519040) #8, !srcloc !15
  %69 = extractvalue { i32, i32 } %68, 0
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = tail call ptr @llvm.thread.pointer() #7
  %73 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 3
  %74 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %73) #9, !srcloc !16
  %75 = and i32 %74, -13
  %76 = or i32 %75, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %76) #7, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !18
  %77 = tail call i32 @arm_copy_to_user(ptr noundef %58, ptr noundef %60, i32 noundef %59) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %74) #7, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !18
  br label %78

78:                                               ; preds = %71, %67
  %79 = phi i32 [ %77, %71 ], [ %59, %67 ]
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 %24, i32 -14
  br label %82

82:                                               ; preds = %78, %66, %43, %39, %38, %5
  %83 = phi i32 [ -22, %5 ], [ -14, %43 ], [ -14, %38 ], [ -14, %39 ], [ -14, %66 ], [ %81, %78 ]
  ret i32 %83
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @dvb_ringbuffer_pkt_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr i8, ptr %6, i32 %1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = add i32 %1, 1
  %12 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = urem i32 %11, %13
  %15 = getelementptr i8, ptr %6, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %10, %17
  %19 = icmp ult i32 %18, %2
  br i1 %19, label %42, label %20

20:                                               ; preds = %5
  %21 = add i32 %4, %2
  %22 = icmp ugt i32 %21, %18
  %23 = sub i32 %18, %2
  %24 = select i1 %22, i32 %23, i32 %4
  %25 = add i32 %1, 3
  %26 = add i32 %25, %2
  %27 = urem i32 %26, %13
  %28 = add i32 %27, %24
  %29 = icmp ugt i32 %28, %13
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = sub i32 %13, %27
  %32 = getelementptr i8, ptr %6, i32 %27
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %32, i32 %31, i1 false)
  %33 = getelementptr i8, ptr %3, i32 %31
  %34 = sub i32 %24, %31
  %35 = load ptr, ptr %0, align 4
  br label %36

36:                                               ; preds = %30, %20
  %37 = phi ptr [ %35, %30 ], [ %6, %20 ]
  %38 = phi i32 [ 0, %30 ], [ %27, %20 ]
  %39 = phi ptr [ %33, %30 ], [ %3, %20 ]
  %40 = phi i32 [ %34, %30 ], [ %24, %20 ]
  %41 = getelementptr i8, ptr %37, i32 %38
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %39, ptr align 1 %41, i32 %40, i1 false)
  br label %42

42:                                               ; preds = %36, %5
  %43 = phi i32 [ %24, %36 ], [ -22, %5 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_ringbuffer_pkt_dispose(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = add i32 %1, 2
  %5 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = urem i32 %4, %6
  %8 = getelementptr i8, ptr %3, i32 %7
  store i8 1, ptr %8, align 1
  %9 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 2
  br label %11

11:                                               ; preds = %30, %2
  %12 = load volatile i32, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %13 = load i32, ptr %10, align 4
  %14 = sub i32 %12, %13
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, ptr %5, align 4
  %18 = add i32 %17, %14
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %18, %16 ], [ %14, %11 ]
  %21 = icmp sgt i32 %20, 3
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = load ptr, ptr %0, align 4
  %24 = add i32 %13, 2
  %25 = load i32, ptr %5, align 4
  %26 = srem i32 %24, %25
  %27 = getelementptr i8, ptr %23, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 1
  br i1 %29, label %30, label %45

30:                                               ; preds = %22
  %31 = srem i32 %13, %25
  %32 = getelementptr i8, ptr %23, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = add i32 %13, 1
  %37 = srem i32 %36, %25
  %38 = getelementptr i8, ptr %23, i32 %37
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %35, %40
  %42 = add i32 %13, 3
  %43 = add i32 %42, %41
  %44 = urem i32 %43, %25
  store i32 %44, ptr %10, align 4
  br label %11

45:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_ringbuffer_pkt_next(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, -1
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  br label %29

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr i8, ptr %11, i32 %1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = add nuw i32 %1, 1
  %17 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = urem i32 %16, %18
  %20 = getelementptr i8, ptr %11, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %15, %22
  %24 = add i32 %1, 3
  %25 = add i32 %24, %23
  %26 = urem i32 %25, %18
  %27 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %10, %5
  %30 = phi i32 [ %9, %5 ], [ %18, %10 ]
  %31 = phi i32 [ %7, %5 ], [ %28, %10 ]
  %32 = phi i32 [ %7, %5 ], [ %26, %10 ]
  %33 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 2
  %34 = sub i32 %32, %31
  %35 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 1
  %36 = urem i32 %34, %30
  %37 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %0, i32 0, i32 3
  br label %38

38:                                               ; preds = %71, %29
  %39 = phi i32 [ %32, %29 ], [ %75, %71 ]
  %40 = phi i32 [ %36, %29 ], [ %73, %71 ]
  %41 = load volatile i32, ptr %37, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %42 = load i32, ptr %33, align 4
  %43 = sub i32 %41, %42
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, ptr %35, align 4
  %47 = add i32 %46, %43
  br label %48

48:                                               ; preds = %45, %38
  %49 = phi i32 [ %47, %45 ], [ %43, %38 ]
  %50 = sub i32 %49, %40
  %51 = icmp sgt i32 %50, 3
  br i1 %51, label %52, label %76

52:                                               ; preds = %48
  %53 = load ptr, ptr %0, align 4
  %54 = getelementptr i8, ptr %53, i32 %39
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 8
  %58 = add i32 %39, 1
  %59 = load i32, ptr %35, align 4
  %60 = urem i32 %58, %59
  %61 = getelementptr i8, ptr %53, i32 %60
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %57, %63
  %65 = add i32 %39, 2
  %66 = urem i32 %65, %59
  %67 = getelementptr i8, ptr %53, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %52
  store i32 %64, ptr %2, align 4
  br label %76

71:                                               ; preds = %52
  %72 = add nuw nsw i32 %64, 3
  %73 = add i32 %72, %40
  %74 = add i32 %72, %39
  %75 = urem i32 %74, %59
  br label %38

76:                                               ; preds = %70, %48
  %77 = phi i32 [ %39, %70 ], [ -1, %48 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

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
!8 = !{i64 2150929068}
!9 = !{i64 2150937604}
!10 = !{i64 2150949444}
!11 = !{i64 2150955608}
!12 = !{i64 2150958992}
!13 = !{i64 2150963177}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2150908378, i64 2150908403}
!16 = !{i64 3403912}
!17 = !{i64 3404109}
!18 = !{i64 2150889388}
!19 = !{i64 2150967842}
!20 = !{i64 2150972074}
!21 = !{i64 2150976303}
!22 = !{i64 2150980532}
!23 = !{i64 2150984781}
!24 = !{i64 2150989057}
!25 = !{i64 2150907800, i64 2150907825}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2150993333}
!28 = !{i64 2150997609}
