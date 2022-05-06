; ModuleID = '/llk/IR/drivers/firmware/efi/runtime-wrappers.c_pt.bc'
source_filename = "../drivers/firmware/efi/runtime-wrappers.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.efi = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i32 }
%struct.efi_memory_map = type { i32, ptr, ptr, i32, i32, i32, i32 }
%struct.efi_runtime_work = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.work_struct, i32, %struct.completion }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.lock_class_key = type {}
%struct.anon = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }

@efi_call_virt_check_flags.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [40 x i8] c"drivers/firmware/efi/runtime-wrappers.c\00", align 1
@efi_call_virt_check_flags._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.efi_call_virt_check_flags = private unnamed_addr constant [26 x i8] c"efi_call_virt_check_flags\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"\013efi: [Firmware Bug]: IRQ flags corrupted (0x%08lx=>0x%08lx) by EFI %s\0A\00", align 1
@efi = external dso_local global %struct.efi, align 4
@efi_rts_work = dso_local global %struct.efi_runtime_work zeroinitializer, align 4
@efi_runtime_lock = internal global %struct.semaphore { %struct.raw_spinlock zeroinitializer, i32 1, %struct.list_head { ptr getelementptr (i8, ptr @efi_runtime_lock, i64 8), ptr getelementptr (i8, ptr @efi_runtime_lock, i64 8) } }, align 4
@virt_efi_get_time.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\014efi: EFI Runtime Services are disabled!\0A\00", align 1
@efi_rts_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"\013efi: Failed to queue work to efi_rts_wq.\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"get_time\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"set_time\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"get_wakeup_time\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"set_wakeup_time\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"get_variable\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"get_next_variable\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"set_variable\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"query_variable_info\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"get_next_high_mono_count\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"update_capsule\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"query_capsule_caps\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"\013efi: Requested executing invalid EFI Runtime Service.\0A\00", align 1
@virt_efi_set_time.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@virt_efi_get_wakeup_time.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@virt_efi_set_wakeup_time.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@virt_efi_get_variable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@virt_efi_get_next_variable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@virt_efi_set_variable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@virt_efi_get_next_high_mono_count.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [108 x i8] c"\014efi: failed to invoke the reset_system() runtime service:\0Acould not get exclusive access to the firmware\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"reset_system\00", align 1
@virt_efi_query_variable_info.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@virt_efi_update_capsule.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@virt_efi_query_capsule_caps.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efi_call_virt_save_flags() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @efi_call_virt_check_flags(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %4 = xor i32 %3, %0
  %5 = and i32 %4, 16778239
  %6 = icmp ne i32 %5, 0
  %7 = load i1, ptr @efi_call_virt_check_flags.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %2
  store i1 true, ptr @efi_call_virt_check_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #5
  br label %11

11:                                               ; preds = %10, %2
  br i1 %6, label %12, label %18

12:                                               ; preds = %11
  tail call void @add_taint(i32 noundef 11, i32 noundef 1) #5
  %13 = tail call i32 @___ratelimit(ptr noundef nonnull @efi_call_virt_check_flags._rs, ptr noundef nonnull @__func__.efi_call_virt_check_flags) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %0, i32 noundef %3, ptr noundef %1) #6
  br label %17

17:                                               ; preds = %15, %12
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #5, !srcloc !10
  br label %18

18:                                               ; preds = %17, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @efi_native_runtime_setup() local_unnamed_addr #3 {
  store ptr @virt_efi_get_time, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 11), align 4
  store ptr @virt_efi_set_time, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 12), align 4
  store ptr @virt_efi_get_wakeup_time, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 13), align 4
  store ptr @virt_efi_set_wakeup_time, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 14), align 4
  store ptr @virt_efi_get_variable, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 15), align 4
  store ptr @virt_efi_get_next_variable, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 16), align 4
  store ptr @virt_efi_set_variable, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 17), align 4
  store ptr @virt_efi_set_variable_nonblocking, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 18), align 4
  store ptr @virt_efi_get_next_high_mono_count, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 23), align 4
  store ptr @virt_efi_reset_system, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 24), align 4
  store ptr @virt_efi_query_variable_info, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 19), align 4
  store ptr @virt_efi_query_variable_info_nonblocking, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 20), align 4
  store ptr @virt_efi_update_capsule, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 21), align 4
  store ptr @virt_efi_query_capsule_caps, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 22), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virt_efi_get_time(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @down_interruptible(ptr noundef nonnull @efi_runtime_lock) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %2
  store i32 -2147483627, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i1, ptr @virt_efi_get_time.__already_done, align 1
  br i1 %10, label %19, label %11, !prof !11

11:                                               ; preds = %9
  store i1 true, ptr @virt_efi_get_time.__already_done, align 1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %19

13:                                               ; preds = %5
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8), align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8, i32 1), ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #5
  store i32 -32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6), align 4
  store volatile ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), align 4
  store ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1, i32 1), align 4
  store ptr @efi_call_rts, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 2), align 4
  store ptr %0, ptr @efi_rts_work, align 4
  store ptr %1, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 2), align 4
  store ptr null, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 3), align 4
  store ptr null, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 4), align 4
  store i32 1, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %14 = load ptr, ptr @efi_rts_wq, align 4
  %15 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %14, ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6)) #5
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8)) #5
  br label %19

17:                                               ; preds = %13
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  br label %19

19:                                               ; preds = %17, %16, %11, %9
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %20 = load i32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  tail call void @up(ptr noundef nonnull @efi_runtime_lock) #5
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi i32 [ %20, %19 ], [ -2147483627, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virt_efi_set_time(ptr noundef %0) #0 {
  %2 = tail call i32 @down_interruptible(ptr noundef nonnull @efi_runtime_lock) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  store i32 -2147483627, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load i1, ptr @virt_efi_set_time.__already_done, align 1
  br i1 %9, label %18, label %10, !prof !11

10:                                               ; preds = %8
  store i1 true, ptr @virt_efi_set_time.__already_done, align 1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %18

12:                                               ; preds = %4
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8), align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8, i32 1), ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #5
  store i32 -32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6), align 4
  store volatile ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), align 4
  store ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1, i32 1), align 4
  store ptr @efi_call_rts, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 2), align 4
  store ptr %0, ptr @efi_rts_work, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 1), i8 0, i64 16, i1 false)
  store i32 2, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %13 = load ptr, ptr @efi_rts_wq, align 4
  %14 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %13, ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6)) #5
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8)) #5
  br label %18

16:                                               ; preds = %12
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  br label %18

18:                                               ; preds = %16, %15, %10, %8
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  tail call void @up(ptr noundef nonnull @efi_runtime_lock) #5
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i32 [ %19, %18 ], [ -2147483627, %1 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virt_efi_get_wakeup_time(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @down_interruptible(ptr noundef nonnull @efi_runtime_lock) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  store i32 -2147483627, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i1, ptr @virt_efi_get_wakeup_time.__already_done, align 1
  br i1 %11, label %20, label %12, !prof !11

12:                                               ; preds = %10
  store i1 true, ptr @virt_efi_get_wakeup_time.__already_done, align 1
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %20

14:                                               ; preds = %6
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8), align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8, i32 1), ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #5
  store i32 -32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6), align 4
  store volatile ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), align 4
  store ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1, i32 1), align 4
  store ptr @efi_call_rts, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 2), align 4
  store ptr %0, ptr @efi_rts_work, align 4
  store ptr %1, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 1), align 4
  store ptr %2, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 2), align 4
  store ptr null, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 3), align 4
  store ptr null, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 4), align 4
  store i32 3, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %15 = load ptr, ptr @efi_rts_wq, align 4
  %16 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %15, ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6)) #5
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8)) #5
  br label %20

18:                                               ; preds = %14
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  br label %20

20:                                               ; preds = %18, %17, %12, %10
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %21 = load i32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  tail call void @up(ptr noundef nonnull @efi_runtime_lock) #5
  br label %22

22:                                               ; preds = %20, %3
  %23 = phi i32 [ %21, %20 ], [ -2147483627, %3 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virt_efi_set_wakeup_time(i8 noundef zeroext %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  %4 = tail call i32 @down_interruptible(ptr noundef nonnull @efi_runtime_lock) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  store i32 -2147483627, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i1, ptr @virt_efi_set_wakeup_time.__already_done, align 1
  br i1 %11, label %20, label %12, !prof !11

12:                                               ; preds = %10
  store i1 true, ptr @virt_efi_set_wakeup_time.__already_done, align 1
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %20

14:                                               ; preds = %6
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8), align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8, i32 1), ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #5
  store i32 -32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6), align 4
  store volatile ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), align 4
  store ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1, i32 1), align 4
  store ptr @efi_call_rts, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 2), align 4
  store ptr %3, ptr @efi_rts_work, align 4
  store ptr %1, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 2), align 4
  store ptr null, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 3), align 4
  store ptr null, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 4), align 4
  store i32 4, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %15 = load ptr, ptr @efi_rts_wq, align 4
  %16 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %15, ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6)) #5
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8)) #5
  br label %20

18:                                               ; preds = %14
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  br label %20

20:                                               ; preds = %18, %17, %12, %10
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %21 = load i32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  call void @up(ptr noundef nonnull @efi_runtime_lock) #5
  br label %22

22:                                               ; preds = %20, %2
  %23 = phi i32 [ %21, %20 ], [ -2147483627, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virt_efi_get_variable(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call i32 @down_interruptible(ptr noundef nonnull @efi_runtime_lock) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %5
  store i32 -2147483627, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i1, ptr @virt_efi_get_variable.__already_done, align 1
  br i1 %13, label %22, label %14, !prof !11

14:                                               ; preds = %12
  store i1 true, ptr @virt_efi_get_variable.__already_done, align 1
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %22

16:                                               ; preds = %8
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8), align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8, i32 1), ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #5
  store i32 -32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6), align 4
  store volatile ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), align 4
  store ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1, i32 1), align 4
  store ptr @efi_call_rts, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 2), align 4
  store ptr %0, ptr @efi_rts_work, align 4
  store ptr %1, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 1), align 4
  store ptr %2, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 2), align 4
  store ptr %3, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 3), align 4
  store ptr %4, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 4), align 4
  store i32 5, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %17 = load ptr, ptr @efi_rts_wq, align 4
  %18 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %17, ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6)) #5
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8)) #5
  br label %22

20:                                               ; preds = %16
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  br label %22

22:                                               ; preds = %20, %19, %14, %12
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %23 = load i32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  tail call void @up(ptr noundef nonnull @efi_runtime_lock) #5
  br label %24

24:                                               ; preds = %22, %5
  %25 = phi i32 [ %23, %22 ], [ -2147483627, %5 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virt_efi_get_next_variable(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @down_interruptible(ptr noundef nonnull @efi_runtime_lock) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  store i32 -2147483627, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i1, ptr @virt_efi_get_next_variable.__already_done, align 1
  br i1 %11, label %20, label %12, !prof !11

12:                                               ; preds = %10
  store i1 true, ptr @virt_efi_get_next_variable.__already_done, align 1
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %20

14:                                               ; preds = %6
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8), align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8, i32 1), ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #5
  store i32 -32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6), align 4
  store volatile ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), align 4
  store ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1, i32 1), align 4
  store ptr @efi_call_rts, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 2), align 4
  store ptr %0, ptr @efi_rts_work, align 4
  store ptr %1, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 1), align 4
  store ptr %2, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 2), align 4
  store ptr null, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 3), align 4
  store ptr null, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 4), align 4
  store i32 6, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %15 = load ptr, ptr @efi_rts_wq, align 4
  %16 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %15, ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6)) #5
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8)) #5
  br label %20

18:                                               ; preds = %14
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  br label %20

20:                                               ; preds = %18, %17, %12, %10
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %21 = load i32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  tail call void @up(ptr noundef nonnull @efi_runtime_lock) #5
  br label %22

22:                                               ; preds = %20, %3
  %23 = phi i32 [ %21, %20 ], [ -2147483627, %3 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virt_efi_set_variable(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %2, ptr %6, align 4
  store i32 %3, ptr %7, align 4
  %8 = tail call i32 @down_interruptible(ptr noundef nonnull @efi_runtime_lock) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %5
  store i32 -2147483627, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i1, ptr @virt_efi_set_variable.__already_done, align 1
  br i1 %15, label %24, label %16, !prof !11

16:                                               ; preds = %14
  store i1 true, ptr @virt_efi_set_variable.__already_done, align 1
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %24

18:                                               ; preds = %10
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8), align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8, i32 1), ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #5
  store i32 -32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6), align 4
  store volatile ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), align 4
  store ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1, i32 1), align 4
  store ptr @efi_call_rts, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 2), align 4
  store ptr %0, ptr @efi_rts_work, align 4
  store ptr %1, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 1), align 4
  store ptr %6, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 2), align 4
  store ptr %7, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 3), align 4
  store ptr %4, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 4), align 4
  store i32 7, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %19 = load ptr, ptr @efi_rts_wq, align 4
  %20 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %19, ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6)) #5
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8)) #5
  br label %24

22:                                               ; preds = %18
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  br label %24

24:                                               ; preds = %22, %21, %16, %14
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %25 = load i32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  call void @up(ptr noundef nonnull @efi_runtime_lock) #5
  br label %26

26:                                               ; preds = %24, %5
  %27 = phi i32 [ %25, %24 ], [ -2147483627, %5 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virt_efi_set_variable_nonblocking(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = tail call i32 @down_trylock(ptr noundef nonnull @efi_runtime_lock) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %5
  tail call void @efi_virtmap_load() #5
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %10 = load ptr, ptr @efi, align 4
  %11 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 9
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 %12(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #5
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %15 = xor i32 %14, %9
  %16 = and i32 %15, 16778239
  %17 = icmp ne i32 %16, 0
  %18 = load i1, ptr @efi_call_virt_check_flags.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %8
  store i1 true, ptr @efi_call_virt_check_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #5
  br label %22

22:                                               ; preds = %21, %8
  br i1 %17, label %23, label %29

23:                                               ; preds = %22
  tail call void @add_taint(i32 noundef 11, i32 noundef 1) #5
  %24 = tail call i32 @___ratelimit(ptr noundef nonnull @efi_call_virt_check_flags._rs, ptr noundef nonnull @__func__.efi_call_virt_check_flags) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %9, i32 noundef %14, ptr noundef nonnull @.str.11) #6
  br label %28

28:                                               ; preds = %26, %23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #5, !srcloc !10
  br label %29

29:                                               ; preds = %28, %22
  tail call void @efi_virtmap_unload() #5
  tail call void @up(ptr noundef nonnull @efi_runtime_lock) #5
  br label %30

30:                                               ; preds = %29, %5
  %31 = phi i32 [ %13, %29 ], [ -2147483642, %5 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virt_efi_get_next_high_mono_count(ptr noundef %0) #0 {
  %2 = tail call i32 @down_interruptible(ptr noundef nonnull @efi_runtime_lock) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  store i32 -2147483627, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load i1, ptr @virt_efi_get_next_high_mono_count.__already_done, align 1
  br i1 %9, label %18, label %10, !prof !11

10:                                               ; preds = %8
  store i1 true, ptr @virt_efi_get_next_high_mono_count.__already_done, align 1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %18

12:                                               ; preds = %4
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8), align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8, i32 1), ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #5
  store i32 -32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6), align 4
  store volatile ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), align 4
  store ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1, i32 1), align 4
  store ptr @efi_call_rts, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 2), align 4
  store ptr %0, ptr @efi_rts_work, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 1), i8 0, i64 16, i1 false)
  store i32 9, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %13 = load ptr, ptr @efi_rts_wq, align 4
  %14 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %13, ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6)) #5
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8)) #5
  br label %18

16:                                               ; preds = %12
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  br label %18

18:                                               ; preds = %16, %15, %10, %8
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  tail call void @up(ptr noundef nonnull @efi_runtime_lock) #5
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i32 [ %19, %18 ], [ -2147483627, %1 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virt_efi_reset_system(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call i32 @down_trylock(ptr noundef nonnull @efi_runtime_lock) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #6
  br label %30

9:                                                ; preds = %4
  store i32 10, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  tail call void @efi_virtmap_load() #5
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %11 = load ptr, ptr @efi, align 4
  %12 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 11
  %13 = load ptr, ptr %12, align 8
  tail call void %13(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #5
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %15 = xor i32 %14, %10
  %16 = and i32 %15, 16778239
  %17 = icmp ne i32 %16, 0
  %18 = load i1, ptr @efi_call_virt_check_flags.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %9
  store i1 true, ptr @efi_call_virt_check_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #5
  br label %22

22:                                               ; preds = %21, %9
  br i1 %17, label %23, label %29

23:                                               ; preds = %22
  tail call void @add_taint(i32 noundef 11, i32 noundef 1) #5
  %24 = tail call i32 @___ratelimit(ptr noundef nonnull @efi_call_virt_check_flags._rs, ptr noundef nonnull @__func__.efi_call_virt_check_flags) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %10, i32 noundef %14, ptr noundef nonnull @.str.18) #6
  br label %28

28:                                               ; preds = %26, %23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #5, !srcloc !10
  br label %29

29:                                               ; preds = %28, %22
  tail call void @efi_virtmap_unload() #5
  tail call void @up(ptr noundef nonnull @efi_runtime_lock) #5
  br label %30

30:                                               ; preds = %29, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virt_efi_query_variable_info(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 1), align 4
  %7 = icmp ult i32 %6, 131072
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @down_interruptible(ptr noundef nonnull @efi_runtime_lock) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  store i32 -2147483627, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i1, ptr @virt_efi_query_variable_info.__already_done, align 1
  br i1 %16, label %25, label %17, !prof !11

17:                                               ; preds = %15
  store i1 true, ptr @virt_efi_query_variable_info.__already_done, align 1
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %25

19:                                               ; preds = %11
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8), align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8, i32 1), ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #5
  store i32 -32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6), align 4
  store volatile ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), align 4
  store ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1, i32 1), align 4
  store ptr @efi_call_rts, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 2), align 4
  store ptr %5, ptr @efi_rts_work, align 4
  store ptr %1, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 1), align 4
  store ptr %2, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 2), align 4
  store ptr %3, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 3), align 4
  store ptr null, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 4), align 4
  store i32 8, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %20 = load ptr, ptr @efi_rts_wq, align 4
  %21 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %20, ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6)) #5
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8)) #5
  br label %25

23:                                               ; preds = %19
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  br label %25

25:                                               ; preds = %23, %22, %17, %15
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %26 = load i32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  call void @up(ptr noundef nonnull @efi_runtime_lock) #5
  br label %27

27:                                               ; preds = %25, %8, %4
  %28 = phi i32 [ %26, %25 ], [ -2147483645, %4 ], [ -2147483627, %8 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virt_efi_query_variable_info_nonblocking(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 1), align 4
  %6 = icmp ult i32 %5, 131072
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @down_trylock(ptr noundef nonnull @efi_runtime_lock) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  tail call void @efi_virtmap_load() #5
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %12 = load ptr, ptr @efi, align 4
  %13 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 14
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %17 = xor i32 %16, %11
  %18 = and i32 %17, 16778239
  %19 = icmp ne i32 %18, 0
  %20 = load i1, ptr @efi_call_virt_check_flags.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %10
  store i1 true, ptr @efi_call_virt_check_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #5
  br label %24

24:                                               ; preds = %23, %10
  br i1 %19, label %25, label %31

25:                                               ; preds = %24
  tail call void @add_taint(i32 noundef 11, i32 noundef 1) #5
  %26 = tail call i32 @___ratelimit(ptr noundef nonnull @efi_call_virt_check_flags._rs, ptr noundef nonnull @__func__.efi_call_virt_check_flags) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %11, i32 noundef %16, ptr noundef nonnull @.str.12) #6
  br label %30

30:                                               ; preds = %28, %25
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #5, !srcloc !10
  br label %31

31:                                               ; preds = %30, %24
  tail call void @efi_virtmap_unload() #5
  tail call void @up(ptr noundef nonnull @efi_runtime_lock) #5
  br label %32

32:                                               ; preds = %31, %7, %4
  %33 = phi i32 [ %15, %31 ], [ -2147483645, %4 ], [ -2147483642, %7 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virt_efi_update_capsule(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %1, ptr %4, align 4
  store i32 %2, ptr %5, align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 1), align 4
  %7 = icmp ult i32 %6, 131072
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @down_interruptible(ptr noundef nonnull @efi_runtime_lock) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  store i32 -2147483627, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i1, ptr @virt_efi_update_capsule.__already_done, align 1
  br i1 %16, label %25, label %17, !prof !11

17:                                               ; preds = %15
  store i1 true, ptr @virt_efi_update_capsule.__already_done, align 1
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %25

19:                                               ; preds = %11
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8), align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8, i32 1), ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #5
  store i32 -32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6), align 4
  store volatile ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), align 4
  store ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1, i32 1), align 4
  store ptr @efi_call_rts, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 2), align 4
  store ptr %0, ptr @efi_rts_work, align 4
  store ptr %4, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 1), align 4
  store ptr %5, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 2), align 4
  store ptr null, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 3), align 4
  store ptr null, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 4), align 4
  store i32 11, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %20 = load ptr, ptr @efi_rts_wq, align 4
  %21 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %20, ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6)) #5
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8)) #5
  br label %25

23:                                               ; preds = %19
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  br label %25

25:                                               ; preds = %23, %22, %17, %15
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %26 = load i32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  call void @up(ptr noundef nonnull @efi_runtime_lock) #5
  br label %27

27:                                               ; preds = %25, %8, %3
  %28 = phi i32 [ %26, %25 ], [ -2147483645, %3 ], [ -2147483627, %8 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virt_efi_query_capsule_caps(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  store i32 %1, ptr %5, align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 1), align 4
  %7 = icmp ult i32 %6, 131072
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @down_interruptible(ptr noundef nonnull @efi_runtime_lock) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  store i32 -2147483627, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i1, ptr @virt_efi_query_capsule_caps.__already_done, align 1
  br i1 %16, label %25, label %17, !prof !11

17:                                               ; preds = %15
  store i1 true, ptr @virt_efi_query_capsule_caps.__already_done, align 1
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %25

19:                                               ; preds = %11
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8), align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8, i32 1), ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #5
  store i32 -32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6), align 4
  store volatile ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), align 4
  store ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1), ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 1, i32 1), align 4
  store ptr @efi_call_rts, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6, i32 2), align 4
  store ptr %0, ptr @efi_rts_work, align 4
  store ptr %5, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 1), align 4
  store ptr %2, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 2), align 4
  store ptr %3, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 3), align 4
  store ptr null, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 4), align 4
  store i32 12, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %20 = load ptr, ptr @efi_rts_wq, align 4
  %21 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %20, ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 6)) #5
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8)) #5
  br label %25

23:                                               ; preds = %19
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  br label %25

25:                                               ; preds = %23, %22, %17, %15
  store i32 0, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  %26 = load i32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  call void @up(ptr noundef nonnull @efi_runtime_lock) #5
  br label %27

27:                                               ; preds = %25, %8, %4
  %28 = phi i32 [ %26, %25 ], [ -2147483645, %4 ], [ -2147483627, %8 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @efi_call_rts(ptr nocapture noundef readnone %0) #0 {
  %2 = load ptr, ptr @efi_rts_work, align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 1), align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 2), align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 3), align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 4), align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 7), align 4
  switch i32 %7, label %257 [
    i32 1, label %8
    i32 2, label %30
    i32 3, label %52
    i32 4, label %74
    i32 5, label %97
    i32 6, label %119
    i32 7, label %141
    i32 8, label %165
    i32 9, label %188
    i32 11, label %210
    i32 12, label %234
  ]

8:                                                ; preds = %1
  tail call void @efi_virtmap_load() #5
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %10 = load ptr, ptr @efi, align 4
  %11 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 %12(ptr noundef %2, ptr noundef %3) #5
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %15 = xor i32 %14, %9
  %16 = and i32 %15, 16778239
  %17 = icmp ne i32 %16, 0
  %18 = load i1, ptr @efi_call_virt_check_flags.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %8
  store i1 true, ptr @efi_call_virt_check_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #5
  br label %22

22:                                               ; preds = %21, %8
  br i1 %17, label %23, label %29

23:                                               ; preds = %22
  tail call void @add_taint(i32 noundef 11, i32 noundef 1) #5
  %24 = tail call i32 @___ratelimit(ptr noundef nonnull @efi_call_virt_check_flags._rs, ptr noundef nonnull @__func__.efi_call_virt_check_flags) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %9, i32 noundef %14, ptr noundef nonnull @.str.5) #6
  br label %28

28:                                               ; preds = %26, %23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #5, !srcloc !10
  br label %29

29:                                               ; preds = %28, %22
  tail call void @efi_virtmap_unload() #5
  br label %259

30:                                               ; preds = %1
  tail call void @efi_virtmap_load() #5
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %32 = load ptr, ptr @efi, align 4
  %33 = getelementptr inbounds %struct.anon, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %2) #5
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %37 = xor i32 %36, %31
  %38 = and i32 %37, 16778239
  %39 = icmp ne i32 %38, 0
  %40 = load i1, ptr @efi_call_virt_check_flags.__already_done, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %44, !prof !9

43:                                               ; preds = %30
  store i1 true, ptr @efi_call_virt_check_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #5
  br label %44

44:                                               ; preds = %43, %30
  br i1 %39, label %45, label %51

45:                                               ; preds = %44
  tail call void @add_taint(i32 noundef 11, i32 noundef 1) #5
  %46 = tail call i32 @___ratelimit(ptr noundef nonnull @efi_call_virt_check_flags._rs, ptr noundef nonnull @__func__.efi_call_virt_check_flags) #5
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %31, i32 noundef %36, ptr noundef nonnull @.str.6) #6
  br label %50

50:                                               ; preds = %48, %45
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #5, !srcloc !10
  br label %51

51:                                               ; preds = %50, %44
  tail call void @efi_virtmap_unload() #5
  br label %259

52:                                               ; preds = %1
  tail call void @efi_virtmap_load() #5
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %54 = load ptr, ptr @efi, align 4
  %55 = getelementptr inbounds %struct.anon, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  %57 = tail call i32 %56(ptr noundef %2, ptr noundef %3, ptr noundef %4) #5
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %59 = xor i32 %58, %53
  %60 = and i32 %59, 16778239
  %61 = icmp ne i32 %60, 0
  %62 = load i1, ptr @efi_call_virt_check_flags.__already_done, align 1
  %63 = xor i1 %62, true
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %66, !prof !9

65:                                               ; preds = %52
  store i1 true, ptr @efi_call_virt_check_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #5
  br label %66

66:                                               ; preds = %65, %52
  br i1 %61, label %67, label %73

67:                                               ; preds = %66
  tail call void @add_taint(i32 noundef 11, i32 noundef 1) #5
  %68 = tail call i32 @___ratelimit(ptr noundef nonnull @efi_call_virt_check_flags._rs, ptr noundef nonnull @__func__.efi_call_virt_check_flags) #5
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %53, i32 noundef %58, ptr noundef nonnull @.str.7) #6
  br label %72

72:                                               ; preds = %70, %67
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %53) #5, !srcloc !10
  br label %73

73:                                               ; preds = %72, %66
  tail call void @efi_virtmap_unload() #5
  br label %259

74:                                               ; preds = %1
  tail call void @efi_virtmap_load() #5
  %75 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %76 = load ptr, ptr @efi, align 4
  %77 = getelementptr inbounds %struct.anon, ptr %76, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = load i8, ptr %2, align 1
  %80 = tail call i32 %78(i8 noundef zeroext %79, ptr noundef %3) #5
  %81 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %82 = xor i32 %81, %75
  %83 = and i32 %82, 16778239
  %84 = icmp ne i32 %83, 0
  %85 = load i1, ptr @efi_call_virt_check_flags.__already_done, align 1
  %86 = xor i1 %85, true
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %89, !prof !9

88:                                               ; preds = %74
  store i1 true, ptr @efi_call_virt_check_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #5
  br label %89

89:                                               ; preds = %88, %74
  br i1 %84, label %90, label %96

90:                                               ; preds = %89
  tail call void @add_taint(i32 noundef 11, i32 noundef 1) #5
  %91 = tail call i32 @___ratelimit(ptr noundef nonnull @efi_call_virt_check_flags._rs, ptr noundef nonnull @__func__.efi_call_virt_check_flags) #5
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %75, i32 noundef %81, ptr noundef nonnull @.str.8) #6
  br label %95

95:                                               ; preds = %93, %90
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %75) #5, !srcloc !10
  br label %96

96:                                               ; preds = %95, %89
  tail call void @efi_virtmap_unload() #5
  br label %259

97:                                               ; preds = %1
  tail call void @efi_virtmap_load() #5
  %98 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %99 = load ptr, ptr @efi, align 4
  %100 = getelementptr inbounds %struct.anon, ptr %99, i32 0, i32 7
  %101 = load ptr, ptr %100, align 8
  %102 = tail call i32 %101(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #5
  %103 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %104 = xor i32 %103, %98
  %105 = and i32 %104, 16778239
  %106 = icmp ne i32 %105, 0
  %107 = load i1, ptr @efi_call_virt_check_flags.__already_done, align 1
  %108 = xor i1 %107, true
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %110, label %111, !prof !9

110:                                              ; preds = %97
  store i1 true, ptr @efi_call_virt_check_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #5
  br label %111

111:                                              ; preds = %110, %97
  br i1 %106, label %112, label %118

112:                                              ; preds = %111
  tail call void @add_taint(i32 noundef 11, i32 noundef 1) #5
  %113 = tail call i32 @___ratelimit(ptr noundef nonnull @efi_call_virt_check_flags._rs, ptr noundef nonnull @__func__.efi_call_virt_check_flags) #5
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %98, i32 noundef %103, ptr noundef nonnull @.str.9) #6
  br label %117

117:                                              ; preds = %115, %112
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %98) #5, !srcloc !10
  br label %118

118:                                              ; preds = %117, %111
  tail call void @efi_virtmap_unload() #5
  br label %259

119:                                              ; preds = %1
  tail call void @efi_virtmap_load() #5
  %120 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %121 = load ptr, ptr @efi, align 4
  %122 = getelementptr inbounds %struct.anon, ptr %121, i32 0, i32 8
  %123 = load ptr, ptr %122, align 4
  %124 = tail call i32 %123(ptr noundef %2, ptr noundef %3, ptr noundef %4) #5
  %125 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %126 = xor i32 %125, %120
  %127 = and i32 %126, 16778239
  %128 = icmp ne i32 %127, 0
  %129 = load i1, ptr @efi_call_virt_check_flags.__already_done, align 1
  %130 = xor i1 %129, true
  %131 = select i1 %128, i1 %130, i1 false
  br i1 %131, label %132, label %133, !prof !9

132:                                              ; preds = %119
  store i1 true, ptr @efi_call_virt_check_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #5
  br label %133

133:                                              ; preds = %132, %119
  br i1 %128, label %134, label %140

134:                                              ; preds = %133
  tail call void @add_taint(i32 noundef 11, i32 noundef 1) #5
  %135 = tail call i32 @___ratelimit(ptr noundef nonnull @efi_call_virt_check_flags._rs, ptr noundef nonnull @__func__.efi_call_virt_check_flags) #5
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %120, i32 noundef %125, ptr noundef nonnull @.str.10) #6
  br label %139

139:                                              ; preds = %137, %134
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %120) #5, !srcloc !10
  br label %140

140:                                              ; preds = %139, %133
  tail call void @efi_virtmap_unload() #5
  br label %259

141:                                              ; preds = %1
  tail call void @efi_virtmap_load() #5
  %142 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %143 = load ptr, ptr @efi, align 4
  %144 = getelementptr inbounds %struct.anon, ptr %143, i32 0, i32 9
  %145 = load ptr, ptr %144, align 8
  %146 = load i32, ptr %4, align 4
  %147 = load i32, ptr %5, align 4
  %148 = tail call i32 %145(ptr noundef %2, ptr noundef %3, i32 noundef %146, i32 noundef %147, ptr noundef %6) #5
  %149 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %150 = xor i32 %149, %142
  %151 = and i32 %150, 16778239
  %152 = icmp ne i32 %151, 0
  %153 = load i1, ptr @efi_call_virt_check_flags.__already_done, align 1
  %154 = xor i1 %153, true
  %155 = select i1 %152, i1 %154, i1 false
  br i1 %155, label %156, label %157, !prof !9

156:                                              ; preds = %141
  store i1 true, ptr @efi_call_virt_check_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #5
  br label %157

157:                                              ; preds = %156, %141
  br i1 %152, label %158, label %164

158:                                              ; preds = %157
  tail call void @add_taint(i32 noundef 11, i32 noundef 1) #5
  %159 = tail call i32 @___ratelimit(ptr noundef nonnull @efi_call_virt_check_flags._rs, ptr noundef nonnull @__func__.efi_call_virt_check_flags) #5
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  %162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %142, i32 noundef %149, ptr noundef nonnull @.str.11) #6
  br label %163

163:                                              ; preds = %161, %158
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %142) #5, !srcloc !10
  br label %164

164:                                              ; preds = %163, %157
  tail call void @efi_virtmap_unload() #5
  br label %259

165:                                              ; preds = %1
  tail call void @efi_virtmap_load() #5
  %166 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %167 = load ptr, ptr @efi, align 4
  %168 = getelementptr inbounds %struct.anon, ptr %167, i32 0, i32 14
  %169 = load ptr, ptr %168, align 4
  %170 = load i32, ptr %2, align 4
  %171 = tail call i32 %169(i32 noundef %170, ptr noundef %3, ptr noundef %4, ptr noundef %5) #5
  %172 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %173 = xor i32 %172, %166
  %174 = and i32 %173, 16778239
  %175 = icmp ne i32 %174, 0
  %176 = load i1, ptr @efi_call_virt_check_flags.__already_done, align 1
  %177 = xor i1 %176, true
  %178 = select i1 %175, i1 %177, i1 false
  br i1 %178, label %179, label %180, !prof !9

179:                                              ; preds = %165
  store i1 true, ptr @efi_call_virt_check_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #5
  br label %180

180:                                              ; preds = %179, %165
  br i1 %175, label %181, label %187

181:                                              ; preds = %180
  tail call void @add_taint(i32 noundef 11, i32 noundef 1) #5
  %182 = tail call i32 @___ratelimit(ptr noundef nonnull @efi_call_virt_check_flags._rs, ptr noundef nonnull @__func__.efi_call_virt_check_flags) #5
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %181
  %185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %166, i32 noundef %172, ptr noundef nonnull @.str.12) #6
  br label %186

186:                                              ; preds = %184, %181
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %166) #5, !srcloc !10
  br label %187

187:                                              ; preds = %186, %180
  tail call void @efi_virtmap_unload() #5
  br label %259

188:                                              ; preds = %1
  tail call void @efi_virtmap_load() #5
  %189 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %190 = load ptr, ptr @efi, align 4
  %191 = getelementptr inbounds %struct.anon, ptr %190, i32 0, i32 10
  %192 = load ptr, ptr %191, align 4
  %193 = tail call i32 %192(ptr noundef %2) #5
  %194 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %195 = xor i32 %194, %189
  %196 = and i32 %195, 16778239
  %197 = icmp ne i32 %196, 0
  %198 = load i1, ptr @efi_call_virt_check_flags.__already_done, align 1
  %199 = xor i1 %198, true
  %200 = select i1 %197, i1 %199, i1 false
  br i1 %200, label %201, label %202, !prof !9

201:                                              ; preds = %188
  store i1 true, ptr @efi_call_virt_check_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #5
  br label %202

202:                                              ; preds = %201, %188
  br i1 %197, label %203, label %209

203:                                              ; preds = %202
  tail call void @add_taint(i32 noundef 11, i32 noundef 1) #5
  %204 = tail call i32 @___ratelimit(ptr noundef nonnull @efi_call_virt_check_flags._rs, ptr noundef nonnull @__func__.efi_call_virt_check_flags) #5
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %203
  %207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %189, i32 noundef %194, ptr noundef nonnull @.str.13) #6
  br label %208

208:                                              ; preds = %206, %203
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %189) #5, !srcloc !10
  br label %209

209:                                              ; preds = %208, %202
  tail call void @efi_virtmap_unload() #5
  br label %259

210:                                              ; preds = %1
  tail call void @efi_virtmap_load() #5
  %211 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %212 = load ptr, ptr @efi, align 4
  %213 = getelementptr inbounds %struct.anon, ptr %212, i32 0, i32 12
  %214 = load ptr, ptr %213, align 4
  %215 = load i32, ptr %3, align 4
  %216 = load i32, ptr %4, align 4
  %217 = tail call i32 %214(ptr noundef %2, i32 noundef %215, i32 noundef %216) #5
  %218 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %219 = xor i32 %218, %211
  %220 = and i32 %219, 16778239
  %221 = icmp ne i32 %220, 0
  %222 = load i1, ptr @efi_call_virt_check_flags.__already_done, align 1
  %223 = xor i1 %222, true
  %224 = select i1 %221, i1 %223, i1 false
  br i1 %224, label %225, label %226, !prof !9

225:                                              ; preds = %210
  store i1 true, ptr @efi_call_virt_check_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #5
  br label %226

226:                                              ; preds = %225, %210
  br i1 %221, label %227, label %233

227:                                              ; preds = %226
  tail call void @add_taint(i32 noundef 11, i32 noundef 1) #5
  %228 = tail call i32 @___ratelimit(ptr noundef nonnull @efi_call_virt_check_flags._rs, ptr noundef nonnull @__func__.efi_call_virt_check_flags) #5
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %227
  %231 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %211, i32 noundef %218, ptr noundef nonnull @.str.14) #6
  br label %232

232:                                              ; preds = %230, %227
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %211) #5, !srcloc !10
  br label %233

233:                                              ; preds = %232, %226
  tail call void @efi_virtmap_unload() #5
  br label %259

234:                                              ; preds = %1
  tail call void @efi_virtmap_load() #5
  %235 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %236 = load ptr, ptr @efi, align 4
  %237 = getelementptr inbounds %struct.anon, ptr %236, i32 0, i32 13
  %238 = load ptr, ptr %237, align 8
  %239 = load i32, ptr %3, align 4
  %240 = tail call i32 %238(ptr noundef %2, i32 noundef %239, ptr noundef %4, ptr noundef %5) #5
  %241 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !8
  %242 = xor i32 %241, %235
  %243 = and i32 %242, 16778239
  %244 = icmp ne i32 %243, 0
  %245 = load i1, ptr @efi_call_virt_check_flags.__already_done, align 1
  %246 = xor i1 %245, true
  %247 = select i1 %244, i1 %246, i1 false
  br i1 %247, label %248, label %249, !prof !9

248:                                              ; preds = %234
  store i1 true, ptr @efi_call_virt_check_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #5
  br label %249

249:                                              ; preds = %248, %234
  br i1 %244, label %250, label %256

250:                                              ; preds = %249
  tail call void @add_taint(i32 noundef 11, i32 noundef 1) #5
  %251 = tail call i32 @___ratelimit(ptr noundef nonnull @efi_call_virt_check_flags._rs, ptr noundef nonnull @__func__.efi_call_virt_check_flags) #5
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %255, label %253

253:                                              ; preds = %250
  %254 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %235, i32 noundef %241, ptr noundef nonnull @.str.15) #6
  br label %255

255:                                              ; preds = %253, %250
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %235) #5, !srcloc !10
  br label %256

256:                                              ; preds = %255, %249
  tail call void @efi_virtmap_unload() #5
  br label %259

257:                                              ; preds = %1
  %258 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #6
  br label %259

259:                                              ; preds = %257, %256, %233, %209, %187, %164, %140, %118, %96, %73, %51, %29
  %260 = phi i32 [ -2147483634, %257 ], [ %240, %256 ], [ %217, %233 ], [ %193, %209 ], [ %171, %187 ], [ %148, %164 ], [ %124, %140 ], [ %102, %118 ], [ %80, %96 ], [ %57, %73 ], [ %35, %51 ], [ %13, %29 ]
  store i32 %260, ptr getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 5), align 4
  tail call void @complete(ptr noundef getelementptr inbounds (%struct.efi_runtime_work, ptr @efi_rts_work, i32 0, i32 8)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efi_virtmap_load() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efi_virtmap_unload() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 482943}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 483228}
!11 = !{!"branch_weights", i32 2000, i32 1}
