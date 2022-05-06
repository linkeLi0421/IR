; ModuleID = '/llk/IR/net/nfc/digital_core.c_pt.bc'
source_filename = "../net/nfc/digital_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_digital_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_digital_allocate_device\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_digital_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_digital_free_device:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_digital_free_device\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_digital_free_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_digital_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_digital_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_digital_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_digital_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_digital_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_digital_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.nfc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nfc_digital_dev = type { ptr, ptr, i32, i32, i32, i32, ptr, [6 x %struct.digital_poll_tech], i8, i8, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.delayed_work, i8, i8, i8, i8, i16, i8, i8, ptr, ptr, i32, i32, ptr, i16, ptr, ptr }
%struct.digital_poll_tech = type { i8, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.19 }
%union.anon.19 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.1, %union.anon.2, [48 x i8], %union.anon.3, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.5, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { i64 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i32, ptr }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.7, i32, i32, i32, i16, i16, %union.anon.9, %union.anon.10, %union.anon.11, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.7 = type { i32 }
%union.anon.9 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.digital_cmd = type { %struct.list_head, i8, i8, i16, ptr, ptr, ptr, ptr, ptr }
%struct.nfc_digital_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.18 }
%union.anon.18 = type { %struct.raw_spinlock }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.digital_data_exch = type { ptr, ptr }
%struct.digital_tg_mdaa_params = type { i16, [3 x i8], i8, [8 x i8], i16 }

@.str = private unnamed_addr constant [43 x i8] c"\013digital: %s: in_configure_hw failed: %d\0A\00", align 1
@__func__.digital_in_configure_hw = private unnamed_addr constant [24 x i8] c"digital_in_configure_hw\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"\013digital: %s: tg_configure_hw failed: %d\0A\00", align 1
@__func__.digital_tg_configure_hw = private unnamed_addr constant [24 x i8] c"digital_tg_configure_hw\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\013digital: %s: Invalid protocol %d\0A\00", align 1
@__func__.digital_target_found = private unnamed_addr constant [21 x i8] c"digital_target_found\00", align 1
@nfc_digital_allocate_device.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"&ddev->cmd_lock\00", align 1
@nfc_digital_allocate_device.__key.4 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"&ddev->poll_lock\00", align 1
@digital_nfc_ops = internal constant %struct.nfc_ops { ptr @digital_dev_up, ptr @digital_dev_down, ptr @digital_start_poll, ptr @digital_stop_poll, ptr @digital_dep_link_up, ptr @digital_dep_link_down, ptr @digital_activate_target, ptr @digital_deactivate_target, ptr @digital_in_send, ptr @digital_tg_send, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"\013digital: %s: nfc_allocate_device failed\0A\00", align 1
@__func__.nfc_digital_allocate_device = private unnamed_addr constant [28 x i8] c"nfc_digital_allocate_device\00", align 1
@__kstrtab_nfc_digital_allocate_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_digital_allocate_device = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_digital_allocate_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_digital_allocate_device to i32), ptr @__kstrtab_nfc_digital_allocate_device, ptr @__kstrtabns_nfc_digital_allocate_device }, section "___ksymtab+nfc_digital_allocate_device", align 4
@__kstrtab_nfc_digital_free_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_digital_free_device = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_digital_free_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_digital_free_device to i32), ptr @__kstrtab_nfc_digital_free_device, ptr @__kstrtabns_nfc_digital_free_device }, section "___ksymtab+nfc_digital_free_device", align 4
@__kstrtab_nfc_digital_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_digital_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_digital_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_digital_register_device to i32), ptr @__kstrtab_nfc_digital_register_device, ptr @__kstrtabns_nfc_digital_register_device }, section "___ksymtab+nfc_digital_register_device", align 4
@__kstrtab_nfc_digital_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_digital_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_digital_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_digital_unregister_device to i32), ptr @__kstrtab_nfc_digital_unregister_device, ptr @__kstrtabns_nfc_digital_unregister_device }, section "___ksymtab+nfc_digital_unregister_device", align 4
@__UNIQUE_ID_license265 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"\013digital: %s: Unknown cmd type %d\0A\00", align 1
@__func__.digital_wq_cmd = private unnamed_addr constant [15 x i8] c"digital_wq_cmd\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"\013digital: %s: in_send_command returned err %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"\013digital: %s: Unknown protocol\0A\00", align 1
@__func__.digital_start_poll = private unnamed_addr constant [19 x i8] c"digital_start_poll\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"\013digital: %s: Already polling\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"\013digital: %s: A target is already active\0A\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"\013digital: %s: Unsupported protocols: im=0x%x, tm=0x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"\013digital: %s: Polling operation was not running\0A\00", align 1
@__func__.digital_stop_poll = private unnamed_addr constant [18 x i8] c"digital_stop_poll\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"\013digital: %s: Can't activate a target while polling\0A\00", align 1
@__func__.digital_activate_target = private unnamed_addr constant [24 x i8] c"digital_activate_target\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"\013digital: %s: No active target\0A\00", align 1
@__func__.digital_deactivate_target = private unnamed_addr constant [26 x i8] c"digital_deactivate_target\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_license265, ptr @__ksymtab_nfc_digital_allocate_device, ptr @__ksymtab_nfc_digital_free_device, ptr @__ksymtab_nfc_digital_register_device, ptr @__ksymtab_nfc_digital_unregister_device], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @digital_skb_alloc(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %5, %7
  %9 = tail call ptr @__alloc_skb(i32 noundef %8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %12
  store ptr %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 14
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr i8, ptr %17, i32 %12
  store ptr %18, ptr %16, align 8
  br label %19

19:                                               ; preds = %11, %2
  ret ptr %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @digital_skb_add_crc(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = tail call zeroext i16 %1(i16 noundef zeroext %2, ptr noundef %7, i32 noundef %9) #8
  %11 = icmp ne i8 %3, 0
  %12 = sext i1 %11 to i16
  %13 = xor i16 %10, %12
  %14 = icmp eq i8 %4, 0
  %15 = trunc i16 %13 to i8
  %16 = lshr i16 %13, 8
  %17 = trunc i16 %16 to i8
  br i1 %14, label %24, label %18

18:                                               ; preds = %5
  %19 = zext i16 %13 to i32
  %20 = tail call i32 asm "rev16 $0, $1", "=r,r"(i32 %19) #9, !srcloc !8
  %21 = trunc i32 %20 to i8
  %22 = lshr i32 %20, 8
  %23 = trunc i32 %22 to i8
  br label %24

24:                                               ; preds = %18, %5
  %25 = phi i8 [ %21, %18 ], [ %15, %5 ]
  %26 = phi i8 [ %23, %18 ], [ %17, %5 ]
  %27 = tail call ptr @skb_put(ptr noundef %0, i32 noundef 1) #8
  store i8 %25, ptr %27, align 1
  %28 = tail call ptr @skb_put(ptr noundef %0, i32 noundef 1) #8
  store i8 %26, ptr %28, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @digital_skb_check_crc(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %37, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = add i32 %7, -2
  %13 = tail call zeroext i16 %1(i16 noundef zeroext %2, ptr noundef %11, i32 noundef %12) #8
  %14 = icmp ne i8 %3, 0
  %15 = sext i1 %14 to i16
  %16 = xor i16 %13, %15
  %17 = icmp eq i8 %4, 0
  %18 = tail call i16 @llvm.bswap.i16(i16 %16)
  %19 = select i1 %17, i16 %16, i16 %18
  %20 = load ptr, ptr %10, align 4
  %21 = load i32, ptr %6, align 8
  %22 = add i32 %21, -2
  %23 = getelementptr i8, ptr %20, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = zext i16 %19 to i32
  %27 = and i32 %26, 255
  %28 = sub nsw i32 %25, %27
  %29 = add i32 %21, -1
  %30 = getelementptr i8, ptr %20, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = lshr i32 %26, 8
  %34 = sub nsw i32 %33, %32
  %35 = icmp eq i32 %28, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %9
  tail call void @skb_trim(ptr noundef %0, i32 noundef %22) #8
  br label %37

37:                                               ; preds = %36, %9, %5
  %38 = phi i32 [ 0, %36 ], [ -5, %5 ], [ -5, %9 ]
  ret i32 %38
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @digital_send_cmd(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, i16 noundef zeroext %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 32) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.digital_cmd, ptr %9, i32 0, i32 1
  store i8 %1, ptr %12, align 8
  %13 = getelementptr inbounds %struct.digital_cmd, ptr %9, i32 0, i32 3
  store i16 %4, ptr %13, align 2
  %14 = getelementptr inbounds %struct.digital_cmd, ptr %9, i32 0, i32 4
  store ptr %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.digital_cmd, ptr %9, i32 0, i32 6
  store ptr %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.digital_cmd, ptr %9, i32 0, i32 7
  store ptr %5, ptr %16, align 8
  %17 = getelementptr inbounds %struct.digital_cmd, ptr %9, i32 0, i32 8
  store ptr %6, ptr %17, align 4
  store volatile ptr %9, ptr %9, align 8
  %18 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %9, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %19) #8
  %20 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 13
  %21 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 13, i32 1
  %22 = load ptr, ptr %21, align 4
  store ptr %9, ptr %21, align 4
  store ptr %20, ptr %9, align 8
  store ptr %22, ptr %18, align 4
  store volatile ptr %9, ptr %22, align 4
  tail call void @mutex_unlock(ptr noundef %19) #8
  %23 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 11
  %24 = load ptr, ptr @system_wq, align 4
  %25 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %24, ptr noundef %23) #8
  br label %26

26:                                               ; preds = %11, %7
  %27 = phi i32 [ 0, %11 ], [ -12, %7 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @digital_in_configure_hw(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, i32 noundef %1, i32 noundef %2) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_in_configure_hw, i32 noundef %7) #11
  br label %11

11:                                               ; preds = %9, %3
  ret i32 %7
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @digital_tg_configure_hw(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfc_digital_ops, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef %1, i32 noundef %2) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.digital_tg_configure_hw, i32 noundef %8) #11
  br label %12

12:                                               ; preds = %10, %3
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @digital_target_found(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 9
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr %struct.nfc_digital_dev, ptr %0, i32 0, i32 7, i32 %6
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %2 to i32
  switch i8 %2, label %20 [
    i8 1, label %22
    i8 2, label %10
    i8 3, label %11
    i8 5, label %12
    i8 7, label %17
    i8 4, label %18
    i8 6, label %19
  ]

10:                                               ; preds = %3
  br label %22

11:                                               ; preds = %3
  br label %22

12:                                               ; preds = %3
  %13 = icmp eq i8 %8, 0
  %14 = select i1 %13, i32 7, i32 10
  %15 = select i1 %13, ptr @digital_skb_check_crc_a, ptr @digital_skb_check_crc_f
  %16 = select i1 %13, ptr @digital_skb_add_crc_a, ptr @digital_skb_add_crc_f
  br label %22

17:                                               ; preds = %3
  br label %22

18:                                               ; preds = %3
  br label %22

19:                                               ; preds = %3
  br label %22

20:                                               ; preds = %3
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.digital_target_found, i32 noundef %9) #11
  br label %51

22:                                               ; preds = %19, %18, %17, %12, %11, %10, %3
  %23 = phi i32 [ 15, %19 ], [ 6, %18 ], [ 13, %17 ], [ 9, %11 ], [ 5, %10 ], [ 4, %3 ], [ %14, %12 ]
  %24 = phi ptr [ @digital_skb_check_crc_b, %19 ], [ @digital_skb_check_crc_a, %18 ], [ @digital_skb_check_crc_b, %17 ], [ @digital_skb_check_crc_f, %11 ], [ @digital_skb_check_crc_a, %10 ], [ @digital_skb_check_crc_b, %3 ], [ %15, %12 ]
  %25 = phi ptr [ @digital_skb_add_crc_b, %19 ], [ @digital_skb_add_crc_a, %18 ], [ @digital_skb_add_crc_b, %17 ], [ @digital_skb_add_crc_f, %11 ], [ @digital_skb_add_crc_a, %10 ], [ @digital_skb_add_crc_b, %3 ], [ %16, %12 ]
  %26 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 17
  store i8 %8, ptr %26, align 1
  %27 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, ptr %25, ptr @digital_skb_add_crc_none
  %32 = select i1 %30, ptr %24, ptr @digital_skb_check_crc_none
  %33 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 30
  store ptr %31, ptr %33, align 4
  %34 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 29
  store ptr %32, ptr %34, align 4
  %35 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %0, i32 noundef 1, i32 noundef %23) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %22
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.digital_in_configure_hw, i32 noundef %38) #11
  br label %51

42:                                               ; preds = %22
  %43 = shl nuw nsw i32 1, %9
  %44 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 1
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 8
  %46 = load i8, ptr %45, align 4
  store i8 0, ptr %45, align 4
  %47 = load ptr, ptr %0, align 4
  %48 = tail call i32 @nfc_targets_found(ptr noundef %47, ptr noundef %1, i32 noundef 1) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  store i8 %46, ptr %45, align 4
  br label %51

51:                                               ; preds = %50, %42, %40, %20
  %52 = phi i32 [ -22, %20 ], [ %48, %50 ], [ %38, %40 ], [ 0, %42 ]
  ret i32 %52
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digital_skb_check_crc_b(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 8
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = add i32 %3, -2
  %9 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %7, i32 noundef %8) #8
  %10 = xor i16 %9, -1
  %11 = load ptr, ptr %6, align 4
  %12 = load i32, ptr %2, align 8
  %13 = add i32 %12, -2
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = zext i16 %10 to i32
  %18 = and i32 %17, 255
  %19 = sub nsw i32 %16, %18
  %20 = add i32 %12, -1
  %21 = getelementptr i8, ptr %11, i32 %20
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = lshr i32 %17, 8
  %25 = sub nsw i32 %24, %23
  %26 = icmp eq i32 %19, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  tail call void @skb_trim(ptr noundef %0, i32 noundef %13) #8
  br label %28

28:                                               ; preds = %27, %5, %1
  %29 = phi i32 [ 0, %27 ], [ -5, %1 ], [ -5, %5 ]
  ret i32 %29
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_skb_add_crc_b(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %3, i32 noundef %5) #8
  %7 = xor i16 %6, -1
  %8 = trunc i16 %7 to i8
  %9 = lshr i16 %7, 8
  %10 = trunc i16 %9 to i8
  %11 = tail call ptr @skb_put(ptr noundef %0, i32 noundef 1) #8
  store i8 %8, ptr %11, align 1
  %12 = tail call ptr @skb_put(ptr noundef %0, i32 noundef 1) #8
  store i8 %10, ptr %12, align 1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digital_skb_check_crc_a(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 8
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = add i32 %3, -2
  %9 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext 25443, ptr noundef %7, i32 noundef %8) #8
  %10 = load ptr, ptr %6, align 4
  %11 = load i32, ptr %2, align 8
  %12 = add i32 %11, -2
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = zext i16 %9 to i32
  %17 = and i32 %16, 255
  %18 = sub nsw i32 %15, %17
  %19 = add i32 %11, -1
  %20 = getelementptr i8, ptr %10, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = lshr i32 %16, 8
  %24 = sub nsw i32 %23, %22
  %25 = icmp eq i32 %18, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  tail call void @skb_trim(ptr noundef %0, i32 noundef %12) #8
  br label %27

27:                                               ; preds = %26, %5, %1
  %28 = phi i32 [ 0, %26 ], [ -5, %1 ], [ -5, %5 ]
  ret i32 %28
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_skb_add_crc_a(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext 25443, ptr noundef %3, i32 noundef %5) #8
  %7 = trunc i16 %6 to i8
  %8 = lshr i16 %6, 8
  %9 = trunc i16 %8 to i8
  %10 = tail call ptr @skb_put(ptr noundef %0, i32 noundef 1) #8
  store i8 %7, ptr %10, align 1
  %11 = tail call ptr @skb_put(ptr noundef %0, i32 noundef 1) #8
  store i8 %9, ptr %11, align 1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digital_skb_check_crc_f(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 8
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = add i32 %3, -2
  %9 = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %7, i32 noundef %8) #8
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #8
  %11 = load ptr, ptr %6, align 4
  %12 = load i32, ptr %2, align 8
  %13 = add i32 %12, -2
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = zext i16 %10 to i32
  %18 = and i32 %17, 255
  %19 = sub nsw i32 %16, %18
  %20 = add i32 %12, -1
  %21 = getelementptr i8, ptr %11, i32 %20
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = lshr i32 %17, 8
  %25 = sub nsw i32 %24, %23
  %26 = icmp eq i32 %19, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  tail call void @skb_trim(ptr noundef %0, i32 noundef %13) #8
  br label %28

28:                                               ; preds = %27, %5, %1
  %29 = phi i32 [ 0, %27 ], [ -5, %1 ], [ -5, %5 ]
  ret i32 %29
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_skb_add_crc_f(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %3, i32 noundef %5) #8
  %7 = zext i16 %6 to i32
  %8 = tail call i32 asm "rev16 $0, $1", "=r,r"(i32 %7) #9, !srcloc !8
  %9 = trunc i32 %8 to i8
  %10 = lshr i32 %8, 8
  %11 = trunc i32 %10 to i8
  %12 = tail call ptr @skb_put(ptr noundef %0, i32 noundef 1) #8
  store i8 %9, ptr %12, align 1
  %13 = tail call ptr @skb_put(ptr noundef %0, i32 noundef 1) #8
  store i8 %11, ptr %13, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @digital_skb_add_crc_none(ptr nocapture noundef %0) #6 {
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @digital_skb_check_crc_none(ptr nocapture noundef readnone %0) #6 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_targets_found(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @digital_poll_next_tech(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfc_digital_ops, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, i1 noundef zeroext false) #8
  %8 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 8
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  tail call void @mutex_unlock(ptr noundef %8) #8
  br label %21

13:                                               ; preds = %1
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 1) #8
  %14 = load i8, ptr %2, align 1
  %15 = load i8, ptr %9, align 4
  %16 = urem i8 %14, %15
  %17 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 9
  store i8 %16, ptr %17, align 1
  call void @mutex_unlock(ptr noundef %8) #8
  %18 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 15
  %19 = load ptr, ptr @system_wq, align 4
  %20 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %18, i32 noundef 1) #8
  br label %21

21:                                               ; preds = %13, %12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfc_digital_allocate_device(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %124, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.nfc_digital_ops, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %124, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nfc_digital_ops, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %124, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nfc_digital_ops, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %124, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nfc_digital_ops, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %124, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nfc_digital_ops, ptr %0, i32 0, i32 9
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %124, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nfc_digital_ops, ptr %0, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %124, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.nfc_digital_ops, ptr %0, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.nfc_digital_ops, ptr %0, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %124, label %40

40:                                               ; preds = %36, %32
  %41 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %42 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 244) #10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %124, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 5
  store i32 %2, ptr %45, align 4
  %46 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 1
  store ptr %0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %47, ptr noundef nonnull @.str.3, ptr noundef nonnull @nfc_digital_allocate_device.__key) #8
  %48 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 13
  store volatile ptr %48, ptr %48, align 4
  %49 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 13, i32 1
  store ptr %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 11
  store i32 -32, ptr %50, align 4
  %51 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 11, i32 1
  store volatile ptr %51, ptr %51, align 8
  %52 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 11, i32 1, i32 1
  store ptr %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 11, i32 2
  store ptr @digital_wq_cmd, ptr %53, align 8
  %54 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 12
  store i32 -32, ptr %54, align 4
  %55 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 12, i32 1
  store volatile ptr %55, ptr %55, align 8
  %56 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 12, i32 1, i32 1
  store ptr %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 12, i32 2
  store ptr @digital_wq_cmd_complete, ptr %57, align 8
  %58 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %58, ptr noundef nonnull @.str.5, ptr noundef nonnull @nfc_digital_allocate_device.__key.4) #8
  %59 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 15
  store i32 -32, ptr %59, align 8
  %60 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 15, i32 0, i32 1
  store volatile ptr %60, ptr %60, align 4
  %61 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 15, i32 0, i32 1, i32 1
  store ptr %60, ptr %61, align 8
  %62 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 15, i32 0, i32 2
  store ptr @digital_wq_poll, ptr %62, align 4
  %63 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 15, i32 1
  tail call void @init_timer_key(ptr noundef %63, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #8
  %64 = and i32 %1, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %44
  %67 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = or i32 %68, 2
  store i32 %69, ptr %67, align 8
  br label %70

70:                                               ; preds = %66, %44
  %71 = and i32 %1, 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 2
  %75 = load i32, ptr %74, align 8
  %76 = or i32 %75, 4
  store i32 %76, ptr %74, align 8
  br label %77

77:                                               ; preds = %73, %70
  %78 = and i32 %1, 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 2
  %82 = load i32, ptr %81, align 8
  %83 = or i32 %82, 8
  store i32 %83, ptr %81, align 8
  br label %84

84:                                               ; preds = %80, %77
  %85 = and i32 %1, 32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 2
  %89 = load i32, ptr %88, align 8
  %90 = or i32 %89, 32
  store i32 %90, ptr %88, align 8
  br label %91

91:                                               ; preds = %87, %84
  %92 = and i32 %1, 128
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 2
  %96 = load i32, ptr %95, align 8
  %97 = or i32 %96, 128
  store i32 %97, ptr %95, align 8
  br label %98

98:                                               ; preds = %94, %91
  %99 = and i32 %1, 16
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 2
  %103 = load i32, ptr %102, align 8
  %104 = or i32 %103, 16
  store i32 %104, ptr %102, align 8
  br label %105

105:                                              ; preds = %101, %98
  %106 = and i32 %1, 64
  %107 = icmp eq i32 %106, 0
  %108 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 2
  %109 = load i32, ptr %108, align 8
  br i1 %107, label %112, label %110

110:                                              ; preds = %105
  %111 = or i32 %109, 64
  store i32 %111, ptr %108, align 8
  br label %112

112:                                              ; preds = %110, %105
  %113 = phi i32 [ %111, %110 ], [ %109, %105 ]
  %114 = add i32 %3, 7
  %115 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 3
  store i32 %114, ptr %115, align 4
  %116 = add i32 %4, 2
  %117 = getelementptr inbounds %struct.nfc_digital_dev, ptr %42, i32 0, i32 4
  store i32 %116, ptr %117, align 8
  %118 = tail call ptr @nfc_allocate_device(ptr noundef nonnull @digital_nfc_ops, i32 noundef %113, i32 noundef %114, i32 noundef %116) #8
  store ptr %118, ptr %42, align 8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.nfc_digital_allocate_device) #11
  tail call void @kfree(ptr noundef nonnull %42) #8
  br label %124

122:                                              ; preds = %112
  %123 = getelementptr inbounds %struct.nfc_dev, ptr %118, i32 0, i32 5, i32 8
  store ptr %42, ptr %123, align 8
  br label %124

124:                                              ; preds = %122, %120, %40, %36, %28, %24, %20, %16, %12, %8, %5
  %125 = phi ptr [ %42, %122 ], [ null, %120 ], [ null, %36 ], [ null, %28 ], [ null, %24 ], [ null, %20 ], [ null, %16 ], [ null, %12 ], [ null, %8 ], [ null, %5 ], [ null, %40 ]
  ret ptr %125
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_wq_cmd(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -100
  %3 = getelementptr i8, ptr %0, i32 40
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr i8, ptr %0, i32 32
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  %7 = icmp eq ptr %5, null
  %8 = or i1 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.digital_cmd, ptr %5, i32 0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %1
  tail call void @mutex_unlock(ptr noundef %3) #8
  br label %78

14:                                               ; preds = %9
  store i8 1, ptr %10, align 1
  tail call void @mutex_unlock(ptr noundef %3) #8
  %15 = getelementptr inbounds %struct.digital_cmd, ptr %5, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.digital_cmd, ptr %5, i32 0, i32 1
  %18 = load i8, ptr %17, align 4
  switch i8 %18, label %61 [
    i8 0, label %19
    i8 1, label %27
    i8 2, label %35
    i8 3, label %43
    i8 4, label %53
  ]

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %0, i32 -96
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nfc_digital_ops, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.digital_cmd, ptr %5, i32 0, i32 3
  %25 = load i16, ptr %24, align 2
  %26 = tail call i32 %23(ptr noundef %2, ptr noundef %16, i16 noundef zeroext %25, ptr noundef nonnull @digital_send_cmd_complete, ptr noundef nonnull %5) #8
  br label %64

27:                                               ; preds = %14
  %28 = getelementptr i8, ptr %0, i32 -96
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nfc_digital_ops, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.digital_cmd, ptr %5, i32 0, i32 3
  %33 = load i16, ptr %32, align 2
  %34 = tail call i32 %31(ptr noundef %2, ptr noundef %16, i16 noundef zeroext %33, ptr noundef nonnull @digital_send_cmd_complete, ptr noundef nonnull %5) #8
  br label %64

35:                                               ; preds = %14
  %36 = getelementptr i8, ptr %0, i32 -96
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nfc_digital_ops, ptr %37, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.digital_cmd, ptr %5, i32 0, i32 3
  %41 = load i16, ptr %40, align 2
  %42 = tail call i32 %39(ptr noundef %2, i16 noundef zeroext %41, ptr noundef nonnull @digital_send_cmd_complete, ptr noundef nonnull %5) #8
  br label %64

43:                                               ; preds = %14
  %44 = getelementptr inbounds %struct.digital_cmd, ptr %5, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %0, i32 -96
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nfc_digital_ops, ptr %47, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.digital_cmd, ptr %5, i32 0, i32 3
  %51 = load i16, ptr %50, align 2
  %52 = tail call i32 %49(ptr noundef %2, ptr noundef %45, i16 noundef zeroext %51, ptr noundef nonnull @digital_send_cmd_complete, ptr noundef nonnull %5) #8
  br label %64

53:                                               ; preds = %14
  %54 = getelementptr i8, ptr %0, i32 -96
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nfc_digital_ops, ptr %55, i32 0, i32 6
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.digital_cmd, ptr %5, i32 0, i32 3
  %59 = load i16, ptr %58, align 2
  %60 = tail call i32 %57(ptr noundef %2, i16 noundef zeroext %59, ptr noundef nonnull @digital_send_cmd_complete, ptr noundef nonnull %5) #8
  br label %64

61:                                               ; preds = %14
  %62 = zext i8 %18 to i32
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.digital_wq_cmd, i32 noundef %62) #11
  br label %78

64:                                               ; preds = %53, %43, %35, %27, %19
  %65 = phi i32 [ %60, %53 ], [ %52, %43 ], [ %42, %35 ], [ %34, %27 ], [ %26, %19 ]
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %64
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.digital_wq_cmd, i32 noundef %65) #11
  tail call void @mutex_lock(ptr noundef %3) #8
  %69 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %5, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %70, ptr %72, align 4
  store volatile ptr %71, ptr %70, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %69, align 4
  tail call void @mutex_unlock(ptr noundef %3) #8
  %73 = load ptr, ptr %15, align 4
  tail call void @kfree_skb_reason(ptr noundef %73, i32 noundef 0) #8
  %74 = getelementptr inbounds %struct.digital_cmd, ptr %5, i32 0, i32 6
  %75 = load ptr, ptr %74, align 4
  tail call void @kfree(ptr noundef %75) #8
  tail call void @kfree(ptr noundef nonnull %5) #8
  %76 = load ptr, ptr @system_wq, align 4
  %77 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %76, ptr noundef %0) #8
  br label %78

78:                                               ; preds = %67, %64, %61, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_wq_cmd_complete(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 24
  tail call void @mutex_lock(ptr noundef %2) #8
  %3 = getelementptr i8, ptr %0, i32 16
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  %6 = icmp eq ptr %4, null
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %2) #8
  br label %26

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -116
  %11 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef %2) #8
  %15 = getelementptr inbounds %struct.digital_cmd, ptr %4, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.digital_cmd, ptr %4, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.digital_cmd, ptr %4, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  tail call void %18(ptr noundef %10, ptr noundef %20, ptr noundef %16) #8
  %21 = getelementptr inbounds %struct.digital_cmd, ptr %4, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #8
  tail call void @kfree(ptr noundef nonnull %4) #8
  %23 = getelementptr i8, ptr %0, i32 -16
  %24 = load ptr, ptr @system_wq, align 4
  %25 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %24, ptr noundef %23) #8
  br label %26

26:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_wq_poll(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -160
  %3 = getelementptr i8, ptr %0, i32 -80
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr i8, ptr %0, i32 -84
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %3) #8
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -132
  %10 = getelementptr i8, ptr %0, i32 -83
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr [6 x %struct.digital_poll_tech], ptr %9, i32 0, i32 %12
  tail call void @mutex_unlock(ptr noundef %3) #8
  %14 = getelementptr inbounds %struct.digital_poll_tech, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i8, ptr %13, align 4
  %17 = tail call i32 %15(ptr noundef %2, i8 noundef zeroext %16) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %8
  tail call void @digital_poll_next_tech(ptr noundef %2)
  br label %20

20:                                               ; preds = %19, %8, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_allocate_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_digital_free_device(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %2, i32 0, i32 5
  tail call void @put_device(ptr noundef %3) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_digital_register_device(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 @nfc_register_device(ptr noundef %2) #8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_digital_unregister_device(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  tail call void @nfc_unregister_device(ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 8
  store i8 0, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 15
  %6 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 11
  %8 = tail call zeroext i1 @cancel_work_sync(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 12
  %10 = tail call zeroext i1 @cancel_work_sync(ptr noundef %9) #8
  %11 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %30, label %14

14:                                               ; preds = %26, %1
  %15 = phi ptr [ %16, %26 ], [ %12, %1 ]
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %16, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  %20 = getelementptr inbounds %struct.digital_cmd, ptr %15, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.digital_cmd, ptr %15, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  tail call void %21(ptr noundef %0, ptr noundef %25, ptr noundef nonnull inttoptr (i32 -19 to ptr)) #8
  br label %26

26:                                               ; preds = %23, %14
  %27 = getelementptr inbounds %struct.digital_cmd, ptr %15, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  tail call void @kfree(ptr noundef %28) #8
  tail call void @kfree(ptr noundef %15) #8
  %29 = icmp eq ptr %16, %11
  br i1 %29, label %30, label %14

30:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_send_cmd_complete(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.digital_cmd, ptr %1, i32 0, i32 5
  store ptr %2, ptr %4, align 4
  %5 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr @system_wq, align 4
  %7 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %6, ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digital_dev_up(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nfc_digital_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfc_digital_ops, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %3, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digital_dev_down(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nfc_digital_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfc_digital_ops, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %3, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digital_start_poll(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nfc_digital_dev, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, %1
  %9 = and i32 %7, %2
  %10 = or i32 %2, %1
  %11 = and i32 %7, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.digital_start_poll) #11
  br label %121

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.nfc_digital_dev, ptr %5, i32 0, i32 8
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.digital_start_poll) #11
  br label %121

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.nfc_digital_dev, ptr %5, i32 0, i32 16
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.digital_start_poll) #11
  br label %121

27:                                               ; preds = %21
  store i8 0, ptr %16, align 4
  %28 = getelementptr inbounds %struct.nfc_digital_dev, ptr %5, i32 0, i32 9
  store i8 0, ptr %28, align 1
  %29 = and i32 %8, 54
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  store i8 1, ptr %16, align 4
  %32 = getelementptr %struct.nfc_digital_dev, ptr %5, i32 0, i32 7, i32 0
  store i8 0, ptr %32, align 4
  %33 = getelementptr %struct.nfc_digital_dev, ptr %5, i32 0, i32 7, i32 0, i32 1
  store ptr @digital_in_send_sens_req, ptr %33, align 4
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i8 [ 1, %31 ], [ 0, %27 ]
  %36 = and i32 %8, 64
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = zext i8 %35 to i32
  %40 = add nuw nsw i8 %35, 1
  store i8 %40, ptr %16, align 4
  %41 = getelementptr %struct.nfc_digital_dev, ptr %5, i32 0, i32 7, i32 %39
  store i8 4, ptr %41, align 4
  %42 = getelementptr %struct.nfc_digital_dev, ptr %5, i32 0, i32 7, i32 %39, i32 1
  store ptr @digital_in_send_sensb_req, ptr %42, align 4
  br label %43

43:                                               ; preds = %38, %34
  %44 = phi i8 [ %40, %38 ], [ %35, %34 ]
  %45 = and i32 %8, 40
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %43
  %48 = zext i8 %44 to i32
  %49 = add nuw nsw i8 %44, 1
  store i8 %49, ptr %16, align 4
  %50 = getelementptr %struct.nfc_digital_dev, ptr %5, i32 0, i32 7, i32 %48
  store i8 1, ptr %50, align 4
  %51 = getelementptr %struct.nfc_digital_dev, ptr %5, i32 0, i32 7, i32 %48, i32 1
  store ptr @digital_in_send_sensf_req, ptr %51, align 4
  %52 = load i8, ptr %16, align 4
  %53 = icmp ugt i8 %52, 5
  br i1 %53, label %59, label %54

54:                                               ; preds = %47
  %55 = zext i8 %52 to i32
  %56 = add nuw nsw i8 %52, 1
  store i8 %56, ptr %16, align 4
  %57 = getelementptr %struct.nfc_digital_dev, ptr %5, i32 0, i32 7, i32 %55
  store i8 2, ptr %57, align 4
  %58 = getelementptr %struct.nfc_digital_dev, ptr %5, i32 0, i32 7, i32 %55, i32 1
  store ptr @digital_in_send_sensf_req, ptr %58, align 4
  br label %59

59:                                               ; preds = %54, %47, %43
  %60 = and i32 %8, 128
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  %63 = load i8, ptr %16, align 4
  %64 = icmp ugt i8 %63, 5
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = zext i8 %63 to i32
  %67 = add nuw nsw i8 %63, 1
  store i8 %67, ptr %16, align 4
  %68 = getelementptr %struct.nfc_digital_dev, ptr %5, i32 0, i32 7, i32 %66
  store i8 3, ptr %68, align 4
  %69 = getelementptr %struct.nfc_digital_dev, ptr %5, i32 0, i32 7, i32 %66, i32 1
  store ptr @digital_in_send_iso15693_inv_req, ptr %69, align 4
  br label %70

70:                                               ; preds = %65, %62, %59
  %71 = and i32 %9, 32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %112, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.nfc_digital_dev, ptr %5, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nfc_digital_ops, ptr %75, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i8, ptr %16, align 4
  %81 = icmp ugt i8 %80, 5
  br i1 %81, label %117, label %104

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.nfc_digital_ops, ptr %75, i32 0, i32 6
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  %86 = load i8, ptr %16, align 4
  %87 = icmp ugt i8 %86, 5
  br i1 %85, label %89, label %88

88:                                               ; preds = %82
  br i1 %87, label %117, label %104

89:                                               ; preds = %82
  br i1 %87, label %117, label %90

90:                                               ; preds = %89
  %91 = zext i8 %86 to i32
  %92 = add nuw nsw i8 %86, 1
  store i8 %92, ptr %16, align 4
  %93 = getelementptr %struct.nfc_digital_dev, ptr %5, i32 0, i32 7, i32 %91
  store i8 0, ptr %93, align 4
  %94 = getelementptr %struct.nfc_digital_dev, ptr %5, i32 0, i32 7, i32 %91, i32 1
  store ptr @digital_tg_listen_nfca, ptr %94, align 4
  %95 = load i8, ptr %16, align 4
  %96 = icmp ugt i8 %95, 5
  br i1 %96, label %117, label %97

97:                                               ; preds = %90
  %98 = zext i8 %95 to i32
  %99 = add nuw nsw i8 %95, 1
  store i8 %99, ptr %16, align 4
  %100 = getelementptr %struct.nfc_digital_dev, ptr %5, i32 0, i32 7, i32 %98
  store i8 1, ptr %100, align 4
  %101 = getelementptr %struct.nfc_digital_dev, ptr %5, i32 0, i32 7, i32 %98, i32 1
  store ptr @digital_tg_listen_nfcf, ptr %101, align 4
  %102 = load i8, ptr %16, align 4
  %103 = icmp ugt i8 %102, 5
  br i1 %103, label %117, label %104

104:                                              ; preds = %97, %88, %79
  %105 = phi i8 [ %80, %79 ], [ %86, %88 ], [ %102, %97 ]
  %106 = phi i8 [ 0, %79 ], [ 0, %88 ], [ 2, %97 ]
  %107 = phi ptr [ @digital_tg_listen_mdaa, %79 ], [ @digital_tg_listen_md, %88 ], [ @digital_tg_listen_nfcf, %97 ]
  %108 = zext i8 %105 to i32
  %109 = add nuw nsw i8 %105, 1
  store i8 %109, ptr %16, align 4
  %110 = getelementptr %struct.nfc_digital_dev, ptr %5, i32 0, i32 7, i32 %108
  store i8 %106, ptr %110, align 4
  %111 = getelementptr %struct.nfc_digital_dev, ptr %5, i32 0, i32 7, i32 %108, i32 1
  store ptr %107, ptr %111, align 4
  br label %112

112:                                              ; preds = %104, %70
  %113 = load i8, ptr %16, align 4
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.digital_start_poll, i32 noundef %8, i32 noundef %9) #11
  br label %121

117:                                              ; preds = %112, %97, %90, %89, %88, %79
  %118 = getelementptr inbounds %struct.nfc_digital_dev, ptr %5, i32 0, i32 15
  %119 = load ptr, ptr @system_wq, align 4
  %120 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %119, ptr noundef %118, i32 noundef 0) #8
  br label %121

121:                                              ; preds = %117, %115, %25, %19, %13
  %122 = phi i32 [ -16, %19 ], [ -16, %25 ], [ 0, %117 ], [ -22, %115 ], [ -22, %13 ]
  ret i32 %122
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_stop_poll(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nfc_digital_dev, ptr %3, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.nfc_digital_dev, ptr %3, i32 0, i32 8
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.digital_stop_poll) #11
  tail call void @mutex_unlock(ptr noundef %4) #8
  br label %17

10:                                               ; preds = %1
  store i8 0, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #8
  %11 = getelementptr inbounds %struct.nfc_digital_dev, ptr %3, i32 0, i32 15
  %12 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %11) #8
  %13 = getelementptr inbounds %struct.nfc_digital_dev, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nfc_digital_ops, ptr %14, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %3) #8
  br label %17

17:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digital_dep_link_up(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @digital_in_send_atr_req(ptr noundef %7, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.nfc_digital_dev, ptr %7, i32 0, i32 16
  store i8 5, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digital_dep_link_down(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nfc_digital_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfc_digital_ops, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %3) #8
  %8 = getelementptr inbounds %struct.nfc_digital_dev, ptr %3, i32 0, i32 16
  store i8 0, ptr %8, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digital_activate_target(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nfc_digital_dev, ptr %5, i32 0, i32 8
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.digital_activate_target) #11
  br label %19

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.nfc_digital_dev, ptr %5, i32 0, i32 16
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.digital_activate_target) #11
  br label %19

17:                                               ; preds = %11
  %18 = trunc i32 %2 to i8
  store i8 %18, ptr %12, align 4
  br label %19

19:                                               ; preds = %17, %15, %9
  %20 = phi i32 [ -16, %9 ], [ -16, %15 ], [ 0, %17 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_deactivate_target(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nfc_digital_dev, ptr %5, i32 0, i32 16
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.digital_deactivate_target) #11
  br label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.nfc_digital_dev, ptr %5, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nfc_digital_ops, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %5) #8
  store i8 0, ptr %6, align 4
  br label %16

16:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digital_in_send(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 8) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11

11:                                               ; preds = %5
  store ptr %3, ptr %9, align 8
  %12 = getelementptr inbounds %struct.digital_data_exch, ptr %9, i32 0, i32 1
  store ptr %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nfc_digital_dev, ptr %7, i32 0, i32 16
  %14 = load i8, ptr %13, align 4
  switch i8 %14, label %18 [
    i8 5, label %39
    i8 4, label %15
    i8 6, label %15
  ]

15:                                               ; preds = %11, %11
  %16 = tail call i32 @digital_in_iso_dep_push_sod(ptr noundef %7, ptr noundef %2) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %15, %11
  %19 = getelementptr inbounds %struct.nfc_digital_dev, ptr %7, i32 0, i32 30
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef %2) #8
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 32) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.digital_cmd, ptr %22, i32 0, i32 1
  store i8 0, ptr %25, align 8
  %26 = getelementptr inbounds %struct.digital_cmd, ptr %22, i32 0, i32 3
  store i16 500, ptr %26, align 2
  %27 = getelementptr inbounds %struct.digital_cmd, ptr %22, i32 0, i32 4
  store ptr %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.digital_cmd, ptr %22, i32 0, i32 6
  store ptr null, ptr %28, align 4
  %29 = getelementptr inbounds %struct.digital_cmd, ptr %22, i32 0, i32 7
  store ptr @digital_in_send_complete, ptr %29, align 8
  %30 = getelementptr inbounds %struct.digital_cmd, ptr %22, i32 0, i32 8
  store ptr %9, ptr %30, align 4
  store volatile ptr %22, ptr %22, align 8
  %31 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %22, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nfc_digital_dev, ptr %7, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %32) #8
  %33 = getelementptr inbounds %struct.nfc_digital_dev, ptr %7, i32 0, i32 13
  %34 = getelementptr inbounds %struct.nfc_digital_dev, ptr %7, i32 0, i32 13, i32 1
  %35 = load ptr, ptr %34, align 4
  store ptr %22, ptr %34, align 4
  store ptr %33, ptr %22, align 8
  store ptr %35, ptr %31, align 4
  store volatile ptr %22, ptr %35, align 4
  tail call void @mutex_unlock(ptr noundef %32) #8
  %36 = getelementptr inbounds %struct.nfc_digital_dev, ptr %7, i32 0, i32 11
  %37 = load ptr, ptr @system_wq, align 4
  %38 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %37, ptr noundef %36) #8
  br label %44

39:                                               ; preds = %11
  %40 = tail call i32 @digital_in_send_dep_req(ptr noundef %7, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9) #8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39, %18, %15
  %43 = phi i32 [ %40, %39 ], [ -12, %18 ], [ %16, %15 ]
  tail call void @kfree(ptr noundef nonnull %9) #8
  br label %44

44:                                               ; preds = %42, %39, %24, %5
  %45 = phi i32 [ -12, %5 ], [ %43, %42 ], [ 0, %39 ], [ 0, %24 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digital_tg_send(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @digital_tg_send_dep_res(ptr noundef %4, ptr noundef %1) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_send_sens_req(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_send_sensb_req(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_send_sensf_req(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_send_iso15693_inv_req(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digital_tg_listen_mdaa(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %2
  store i16 256, ptr %4, align 8
  %7 = getelementptr inbounds %struct.digital_tg_mdaa_params, ptr %4, i32 0, i32 1
  tail call void @get_random_bytes(ptr noundef %7, i32 noundef 3) #8
  %8 = getelementptr inbounds %struct.digital_tg_mdaa_params, ptr %4, i32 0, i32 2
  store i8 64, ptr %8, align 1
  %9 = getelementptr inbounds %struct.digital_tg_mdaa_params, ptr %4, i32 0, i32 3
  store i8 1, ptr %9, align 2
  %10 = getelementptr %struct.digital_tg_mdaa_params, ptr %4, i32 0, i32 3, i32 1
  store i8 -2, ptr %10, align 1
  %11 = getelementptr %struct.digital_tg_mdaa_params, ptr %4, i32 0, i32 3, i32 2
  tail call void @get_random_bytes(ptr noundef %11, i32 noundef 6) #8
  %12 = getelementptr inbounds %struct.digital_tg_mdaa_params, ptr %4, i32 0, i32 4
  store i16 -1, ptr %12, align 2
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 32) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.digital_cmd, ptr %14, i32 0, i32 1
  store i8 3, ptr %17, align 8
  %18 = getelementptr inbounds %struct.digital_cmd, ptr %14, i32 0, i32 3
  store i16 500, ptr %18, align 2
  %19 = getelementptr inbounds %struct.digital_cmd, ptr %14, i32 0, i32 4
  store ptr null, ptr %19, align 4
  %20 = getelementptr inbounds %struct.digital_cmd, ptr %14, i32 0, i32 6
  store ptr %4, ptr %20, align 4
  %21 = getelementptr inbounds %struct.digital_cmd, ptr %14, i32 0, i32 7
  store ptr @digital_tg_recv_atr_req, ptr %21, align 8
  %22 = getelementptr inbounds %struct.digital_cmd, ptr %14, i32 0, i32 8
  store ptr null, ptr %22, align 4
  store volatile ptr %14, ptr %14, align 8
  %23 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %14, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %24) #8
  %25 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 13
  %26 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 13, i32 1
  %27 = load ptr, ptr %26, align 4
  store ptr %14, ptr %26, align 4
  store ptr %25, ptr %14, align 8
  store ptr %27, ptr %23, align 4
  store volatile ptr %14, ptr %27, align 4
  tail call void @mutex_unlock(ptr noundef %24) #8
  %28 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 11
  %29 = load ptr, ptr @system_wq, align 4
  %30 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %29, ptr noundef %28) #8
  br label %32

31:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #8
  br label %32

32:                                               ; preds = %31, %16, %2
  %33 = phi i32 [ -12, %2 ], [ -12, %31 ], [ 0, %16 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digital_tg_listen_md(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 32) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.digital_cmd, ptr %4, i32 0, i32 1
  store i8 4, ptr %7, align 8
  %8 = getelementptr inbounds %struct.digital_cmd, ptr %4, i32 0, i32 3
  store i16 500, ptr %8, align 2
  %9 = getelementptr inbounds %struct.digital_cmd, ptr %4, i32 0, i32 4
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.digital_cmd, ptr %4, i32 0, i32 6
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.digital_cmd, ptr %4, i32 0, i32 7
  store ptr @digital_tg_recv_md_req, ptr %11, align 8
  %12 = getelementptr inbounds %struct.digital_cmd, ptr %4, i32 0, i32 8
  store ptr null, ptr %12, align 4
  store volatile ptr %4, ptr %4, align 8
  %13 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %14) #8
  %15 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 13
  %16 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 13, i32 1
  %17 = load ptr, ptr %16, align 4
  store ptr %4, ptr %16, align 4
  store ptr %15, ptr %4, align 8
  store ptr %17, ptr %13, align 4
  store volatile ptr %4, ptr %17, align 4
  tail call void @mutex_unlock(ptr noundef %14) #8
  %18 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 11
  %19 = load ptr, ptr @system_wq, align 4
  %20 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %18) #8
  br label %21

21:                                               ; preds = %6, %2
  %22 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_tg_listen_nfca(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_tg_listen_nfcf(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @digital_tg_recv_atr_req(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @digital_tg_recv_md_req(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_send_atr_req(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_send_dep_req(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_iso_dep_push_sod(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digital_in_send_complete(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = ptrtoint ptr %2 to i32
  br label %19

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 16
  %9 = load i8, ptr %8, align 4
  switch i8 %9, label %15 [
    i8 2, label %10
    i8 4, label %12
    i8 6, label %12
  ]

10:                                               ; preds = %7
  %11 = tail call i32 @digital_in_recv_mifare_res(ptr noundef %2) #8
  br label %19

12:                                               ; preds = %7, %7
  %13 = tail call i32 @digital_in_iso_dep_pull_sod(ptr noundef %0, ptr noundef %2) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12, %7
  %16 = getelementptr inbounds %struct.nfc_digital_dev, ptr %0, i32 0, i32 29
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %2) #8
  br label %19

19:                                               ; preds = %15, %10, %5
  %20 = phi ptr [ null, %5 ], [ %2, %10 ], [ %2, %15 ]
  %21 = phi i32 [ %6, %5 ], [ %11, %10 ], [ %18, %15 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19, %12
  %24 = phi i32 [ %21, %19 ], [ %13, %12 ]
  %25 = phi ptr [ %20, %19 ], [ %2, %12 ]
  tail call void @kfree_skb_reason(ptr noundef %25, i32 noundef 0) #8
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i32 [ %24, %23 ], [ 0, %19 ]
  %28 = phi ptr [ null, %23 ], [ %20, %19 ]
  %29 = load ptr, ptr %1, align 4
  %30 = getelementptr inbounds %struct.digital_data_exch, ptr %1, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void %29(ptr noundef %31, ptr noundef %28, i32 noundef %27) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_recv_mifare_res(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_in_iso_dep_pull_sod(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @digital_tg_send_dep_res(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind allocsize(2) }
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
!8 = !{i64 937764}
!9 = !{!"auto-init"}
