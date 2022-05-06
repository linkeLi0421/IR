; ModuleID = '/llk/IR/drivers/mailbox/mailbox.c_pt.bc'
source_filename = "../drivers/mailbox/mailbox.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_chan_received_data:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_chan_received_data\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_chan_received_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_chan_txdone:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_chan_txdone\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_chan_txdone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_client_txdone:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_client_txdone\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_client_txdone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_client_peek_data:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_client_peek_data\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_client_peek_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_send_message:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_send_message\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_send_message:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_flush\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_request_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_request_channel\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_request_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_request_channel_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_request_channel_byname\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_request_channel_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_free_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_free_channel\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_free_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_controller_register:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_controller_register\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_controller_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_controller_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_controller_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_controller_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_mbox_controller_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_mbox_controller_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_mbox_controller_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_mbox_controller_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_mbox_controller_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devm_mbox_controller_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__kstrtab_mbox_chan_received_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_chan_received_data = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_chan_received_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_chan_received_data to i32), ptr @__kstrtab_mbox_chan_received_data, ptr @__kstrtabns_mbox_chan_received_data }, section "___ksymtab_gpl+mbox_chan_received_data", align 4
@.str = private unnamed_addr constant [36 x i8] c"Controller can't run the TX ticker\0A\00", align 1
@__kstrtab_mbox_chan_txdone = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_chan_txdone = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_chan_txdone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_chan_txdone to i32), ptr @__kstrtab_mbox_chan_txdone, ptr @__kstrtabns_mbox_chan_txdone }, section "___ksymtab_gpl+mbox_chan_txdone", align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Client can't run the TX ticker\0A\00", align 1
@__kstrtab_mbox_client_txdone = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_client_txdone = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_client_txdone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_client_txdone to i32), ptr @__kstrtab_mbox_client_txdone, ptr @__kstrtabns_mbox_client_txdone }, section "___ksymtab_gpl+mbox_client_txdone", align 4
@__kstrtab_mbox_client_peek_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_client_peek_data = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_client_peek_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_client_peek_data to i32), ptr @__kstrtab_mbox_client_peek_data, ptr @__kstrtabns_mbox_client_peek_data }, section "___ksymtab_gpl+mbox_client_peek_data", align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Try increasing MBOX_TX_QUEUE_LEN\0A\00", align 1
@__kstrtab_mbox_send_message = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_send_message = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_send_message = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_send_message to i32), ptr @__kstrtab_mbox_send_message, ptr @__kstrtabns_mbox_send_message }, section "___ksymtab_gpl+mbox_send_message", align 4
@__kstrtab_mbox_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_flush to i32), ptr @__kstrtab_mbox_flush, ptr @__kstrtabns_mbox_flush }, section "___ksymtab_gpl+mbox_flush", align 4
@con_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @con_mutex, i64 12), ptr getelementptr (i8, ptr @con_mutex, i64 12) } }, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"mboxes\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"#mbox-cells\00", align 1
@mbox_cons = internal global %struct.list_head { ptr @mbox_cons, ptr @mbox_cons }, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Unable to startup the chan (%d)\0A\00", align 1
@__kstrtab_mbox_request_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_request_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_request_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_request_channel to i32), ptr @__kstrtab_mbox_request_channel, ptr @__kstrtabns_mbox_request_channel }, section "___ksymtab_gpl+mbox_request_channel", align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"%s() currently only supports DT\0A\00", align 1
@__func__.mbox_request_channel_byname = private unnamed_addr constant [28 x i8] c"mbox_request_channel_byname\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"mbox-names\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"%s() requires an \22mbox-names\22 property\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"%s() could not locate channel named \22%s\22\0A\00", align 1
@__kstrtab_mbox_request_channel_byname = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_request_channel_byname = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_request_channel_byname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_request_channel_byname to i32), ptr @__kstrtab_mbox_request_channel_byname, ptr @__kstrtabns_mbox_request_channel_byname }, section "___ksymtab_gpl+mbox_request_channel_byname", align 4
@__kstrtab_mbox_free_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_free_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_free_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_free_channel to i32), ptr @__kstrtab_mbox_free_channel, ptr @__kstrtabns_mbox_free_channel }, section "___ksymtab_gpl+mbox_free_channel", align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"last_tx_done method is absent\0A\00", align 1
@__kstrtab_mbox_controller_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_controller_register = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_controller_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_controller_register to i32), ptr @__kstrtab_mbox_controller_register, ptr @__kstrtabns_mbox_controller_register }, section "___ksymtab_gpl+mbox_controller_register", align 4
@__kstrtab_mbox_controller_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_controller_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_controller_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_controller_unregister to i32), ptr @__kstrtab_mbox_controller_unregister, ptr @__kstrtabns_mbox_controller_unregister }, section "___ksymtab_gpl+mbox_controller_unregister", align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"__devm_mbox_controller_unregister\00", align 1
@__kstrtab_devm_mbox_controller_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_mbox_controller_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_mbox_controller_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_mbox_controller_register to i32), ptr @__kstrtab_devm_mbox_controller_register, ptr @__kstrtabns_devm_mbox_controller_register }, section "___ksymtab_gpl+devm_mbox_controller_register", align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"drivers/mailbox/mailbox.c\00", align 1
@__kstrtab_devm_mbox_controller_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_mbox_controller_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_mbox_controller_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_mbox_controller_unregister to i32), ptr @__kstrtab_devm_mbox_controller_unregister, ptr @__kstrtabns_devm_mbox_controller_unregister }, section "___ksymtab_gpl+devm_mbox_controller_unregister", align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_devm_mbox_controller_register, ptr @__ksymtab_devm_mbox_controller_unregister, ptr @__ksymtab_mbox_chan_received_data, ptr @__ksymtab_mbox_chan_txdone, ptr @__ksymtab_mbox_client_peek_data, ptr @__ksymtab_mbox_client_txdone, ptr @__ksymtab_mbox_controller_register, ptr @__ksymtab_mbox_controller_unregister, ptr @__ksymtab_mbox_flush, ptr @__ksymtab_mbox_free_channel, ptr @__ksymtab_mbox_request_channel, ptr @__ksymtab_mbox_request_channel_byname, ptr @__ksymtab_mbox_send_message], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mbox_chan_received_data(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mbox_client, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void %6(ptr noundef %4, ptr noundef %1) #7
  br label %9

9:                                                ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mbox_chan_txdone(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10, !prof !8

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  %9 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str) #8
  br label %32

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 8
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #7
  %13 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  store ptr null, ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #7
  tail call fastcc void @msg_submit(ptr noundef %0) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mbox_client, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  tail call void %20(ptr noundef %18, ptr noundef nonnull %14, i32 noundef %1) #7
  br label %23

23:                                               ; preds = %22, %16
  %24 = icmp eq i32 %1, -62
  br i1 %24, label %32, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %17, align 4
  %27 = getelementptr inbounds %struct.mbox_client, ptr %26, i32 0, i32 1
  %28 = load i8, ptr %27, align 4, !range !9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 3
  tail call void @complete(ptr noundef %31) #7
  br label %32

32:                                               ; preds = %30, %25, %23, %10, %7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mbox_client_txdone(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10, !prof !8

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  %9 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #8
  br label %32

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 8
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #7
  %13 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  store ptr null, ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #7
  tail call fastcc void @msg_submit(ptr noundef %0) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mbox_client, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  tail call void %20(ptr noundef %18, ptr noundef nonnull %14, i32 noundef %1) #7
  br label %23

23:                                               ; preds = %22, %16
  %24 = icmp eq i32 %1, -62
  br i1 %24, label %32, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %17, align 4
  %27 = getelementptr inbounds %struct.mbox_client, ptr %26, i32 0, i32 1
  %28 = load i8, ptr %27, align 4, !range !9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 3
  tail call void @complete(ptr noundef %31) #7
  br label %32

32:                                               ; preds = %30, %25, %23, %10, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @mbox_client_peek_data(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.mbox_controller, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mbox_chan_ops, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call zeroext i1 %6(ptr noundef %0) #7
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i1 [ %9, %8 ], [ false, %1 ]
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mbox_send_message(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %58, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %58, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 8
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %11 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 20
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #7
  br label %27

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.mbox_chan, ptr %0, i32 0, i32 7, i32 %17
  store ptr %1, ptr %18, align 4
  %19 = load i32, ptr %11, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %11, align 4
  %21 = icmp eq i32 %17, 19
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, ptr %16, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #7
  br label %31

23:                                               ; preds = %15
  %24 = load i32, ptr %16, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %16, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #7
  %26 = icmp slt i32 %17, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %14
  %28 = phi i32 [ -105, %14 ], [ %17, %23 ]
  %29 = load ptr, ptr %0, align 4
  %30 = load ptr, ptr %29, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.2) #8
  br label %58

31:                                               ; preds = %23, %22
  tail call fastcc void @msg_submit(ptr noundef nonnull %0)
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr inbounds %struct.mbox_client, ptr %32, i32 0, i32 1
  %34 = load i8, ptr %33, align 4, !range !9
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %58, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.mbox_client, ptr %32, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @__msecs_to_jiffies(i32 noundef %38) #7
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i32 [ 360000, %36 ], [ %41, %40 ]
  %44 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 3
  %45 = tail call i32 @wait_for_completion_timeout(ptr noundef %44, i32 noundef %43) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %49 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  store ptr null, ptr %49, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %48) #7
  tail call fastcc void @msg_submit(ptr noundef nonnull %0) #7
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %5, align 4
  %54 = getelementptr inbounds %struct.mbox_client, ptr %53, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  tail call void %55(ptr noundef %53, ptr noundef nonnull %50, i32 noundef -62) #7
  br label %58

58:                                               ; preds = %57, %52, %47, %42, %31, %27, %4, %2
  %59 = phi i32 [ %28, %27 ], [ -22, %4 ], [ -22, %2 ], [ %17, %31 ], [ %17, %42 ], [ -62, %52 ], [ -62, %57 ], [ -62, %47 ]
  ret i32 %59
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @msg_submit(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 8
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #7
  %4 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, %5
  %15 = select i1 %14, i32 20, i32 0
  %16 = sub i32 %13, %5
  %17 = add i32 %16, %15
  %18 = getelementptr %struct.mbox_chan, ptr %0, i32 0, i32 7, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mbox_client, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %11
  tail call void %23(ptr noundef %21, ptr noundef %19) #7
  br label %26

26:                                               ; preds = %25, %11
  %27 = load ptr, ptr %0, align 4
  %28 = getelementptr inbounds %struct.mbox_controller, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef %0, ptr noundef %19) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26, %7, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #7
  br label %48

34:                                               ; preds = %26
  store ptr %19, ptr %8, align 4
  %35 = load i32, ptr %4, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #7
  %37 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr inbounds %struct.mbox_controller, ptr %42, i32 0, i32 8
  %44 = tail call zeroext i1 @hrtimer_active(ptr noundef %43) #7
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %0, align 4
  %47 = getelementptr inbounds %struct.mbox_controller, ptr %46, i32 0, i32 8
  tail call void @hrtimer_start_range_ns(ptr noundef %47, i64 noundef 0, i64 noundef 0, i32 noundef 1) #7
  br label %48

48:                                               ; preds = %45, %41, %34, %33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mbox_flush(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.mbox_controller, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mbox_chan_ops, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %2
  %10 = tail call i32 %7(ptr noundef %0, i32 noundef %1) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 8
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #7
  %15 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  store ptr null, ptr %15, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #7
  tail call fastcc void @msg_submit(ptr noundef %0) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mbox_client, ptr %20, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void %22(ptr noundef %20, ptr noundef nonnull %16, i32 noundef %10) #7
  br label %25

25:                                               ; preds = %24, %18
  %26 = icmp eq i32 %10, -62
  br i1 %26, label %34, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %19, align 4
  %29 = getelementptr inbounds %struct.mbox_client, ptr %28, i32 0, i32 1
  %30 = load i8, ptr %29, align 4, !range !9
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 3
  tail call void @complete(ptr noundef %33) #7
  br label %34

34:                                               ; preds = %32, %27, %25, %12, %9, %2
  %35 = phi i32 [ -524, %2 ], [ %10, %9 ], [ %10, %12 ], [ -62, %25 ], [ %10, %27 ], [ %10, %32 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mbox_request_channel(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %86, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %86, label %10

10:                                               ; preds = %6
  tail call void @mutex_lock(ptr noundef nonnull @con_mutex) #7
  %11 = load ptr, ptr %7, align 8
  %12 = call i32 @__of_parse_phandle_with_args(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef -1, i32 noundef %1, ptr noundef nonnull %3) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %84

14:                                               ; preds = %10
  %15 = load ptr, ptr @mbox_cons, align 4
  %16 = icmp eq ptr %15, @mbox_cons
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %15, i32 -80
  br label %21

19:                                               ; preds = %14
  %20 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %20) #7
  br label %84

21:                                               ; preds = %35, %17
  %22 = phi ptr [ %38, %35 ], [ %18, %17 ]
  %23 = phi ptr [ %37, %35 ], [ %15, %17 ]
  %24 = phi ptr [ %36, %35 ], [ inttoptr (i32 -517 to ptr), %17 ]
  %25 = load ptr, ptr %22, align 8
  %26 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = load ptr, ptr %3, align 4
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = getelementptr i8, ptr %23, i32 -56
  %32 = load ptr, ptr %31, align 8
  %33 = call ptr %32(ptr noundef %22, ptr noundef nonnull %3) #7
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %40

35:                                               ; preds = %30, %21
  %36 = phi ptr [ %33, %30 ], [ %24, %21 ]
  %37 = load ptr, ptr %23, align 4
  %38 = getelementptr i8, ptr %37, i32 -80
  %39 = icmp eq ptr %37, @mbox_cons
  br i1 %39, label %40, label %21

40:                                               ; preds = %35, %30
  %41 = phi ptr [ %38, %35 ], [ %22, %30 ]
  %42 = phi ptr [ %36, %35 ], [ %33, %30 ]
  %43 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %43) #7
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %84, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.mbox_chan, ptr %42, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %84

49:                                               ; preds = %45
  %50 = load ptr, ptr %41, align 8
  %51 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 6
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.device_driver, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = call zeroext i1 @try_module_get(ptr noundef %54) #7
  br i1 %55, label %56, label %84

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.mbox_chan, ptr %42, i32 0, i32 8
  %58 = call i32 @_raw_spin_lock_irqsave(ptr noundef %57) #7
  %59 = getelementptr inbounds %struct.mbox_chan, ptr %42, i32 0, i32 6
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.mbox_chan, ptr %42, i32 0, i32 5
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.mbox_chan, ptr %42, i32 0, i32 4
  store ptr null, ptr %61, align 4
  store ptr %0, ptr %46, align 4
  %62 = getelementptr inbounds %struct.mbox_chan, ptr %42, i32 0, i32 3
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.mbox_chan, ptr %42, i32 0, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %63, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #7
  %64 = getelementptr inbounds %struct.mbox_chan, ptr %42, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %72

67:                                               ; preds = %56
  %68 = getelementptr inbounds %struct.mbox_client, ptr %0, i32 0, i32 3
  %69 = load i8, ptr %68, align 4, !range !9
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  store i32 4, ptr %64, align 4
  br label %72

72:                                               ; preds = %71, %67, %56
  call void @_raw_spin_unlock_irqrestore(ptr noundef %57, i32 noundef %58) #7
  %73 = load ptr, ptr %42, align 4
  %74 = getelementptr inbounds %struct.mbox_controller, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.mbox_chan_ops, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %72
  %80 = call i32 %77(ptr noundef %42) #7
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %4, ptr noundef nonnull @.str.5, i32 noundef %80) #8
  call void @mbox_free_channel(ptr noundef %42)
  %83 = inttoptr i32 %80 to ptr
  br label %84

84:                                               ; preds = %82, %79, %72, %49, %45, %40, %19, %10
  %85 = phi ptr [ inttoptr (i32 -19 to ptr), %10 ], [ inttoptr (i32 -517 to ptr), %19 ], [ %42, %40 ], [ inttoptr (i32 -16 to ptr), %49 ], [ inttoptr (i32 -16 to ptr), %45 ], [ %83, %82 ], [ %42, %79 ], [ %42, %72 ]
  call void @mutex_unlock(ptr noundef nonnull @con_mutex) #7
  br label %86

86:                                               ; preds = %84, %6, %2
  %87 = phi ptr [ inttoptr (i32 -19 to ptr), %6 ], [ inttoptr (i32 -19 to ptr), %2 ], [ %85, %84 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #7
  ret ptr %87
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mbox_free_channel(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.mbox_controller, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mbox_chan_ops, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void %12(ptr noundef nonnull %0) #7
  br label %15

15:                                               ; preds = %14, %7
  %16 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 8
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #7
  store ptr null, ptr %4, align 4
  %18 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 4
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mbox_chan, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 2, ptr %19, align 4
  br label %23

23:                                               ; preds = %22, %15
  %24 = load ptr, ptr %0, align 4
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 6
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.device_driver, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void @module_put(ptr noundef %29) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #7
  br label %30

30:                                               ; preds = %23, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mbox_request_channel_byname(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.mbox_request_channel_byname) #8
  br label %31

8:                                                ; preds = %2
  %9 = tail call ptr @of_get_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.7, ptr noundef null) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.mbox_request_channel_byname) #8
  br label %31

13:                                               ; preds = %8
  %14 = tail call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.7, ptr noundef null) #7
  %15 = tail call ptr @of_prop_next_string(ptr noundef %14, ptr noundef null) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %25, %13
  %18 = phi i32 [ %26, %25 ], [ 0, %13 ]
  %19 = phi ptr [ %27, %25 ], [ %15, %13 ]
  %20 = tail call i32 @strlen(ptr noundef %1)
  %21 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull %19, i32 noundef %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = tail call ptr @mbox_request_channel(ptr noundef %0, i32 noundef %18)
  br label %31

25:                                               ; preds = %17
  %26 = add i32 %18, 1
  %27 = tail call ptr @of_prop_next_string(ptr noundef %14, ptr noundef nonnull %19) #7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %17

29:                                               ; preds = %25, %13
  %30 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.mbox_request_channel_byname, ptr noundef %1) #8
  br label %31

31:                                               ; preds = %29, %23, %11, %7
  %32 = phi ptr [ %24, %23 ], [ inttoptr (i32 -22 to ptr), %29 ], [ inttoptr (i32 -22 to ptr), %11 ], [ inttoptr (i32 -22 to ptr), %7 ]
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mbox_controller_register(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %56, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %56, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %56, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %56, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 4
  %16 = load i8, ptr %15, align 8, !range !9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 5
  %20 = load i8, ptr %19, align 1, !range !9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mbox_chan_ops, ptr %8, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %4, ptr noundef nonnull @.str.10) #8
  br label %56

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 8
  tail call void @hrtimer_init(ptr noundef %28, i32 noundef 1, i32 noundef 1) #7
  %29 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 8, i32 2
  store ptr @txdone_hrtimer, ptr %29, align 8
  %30 = load i32, ptr %11, align 4
  br label %31

31:                                               ; preds = %27, %18, %14
  %32 = phi i32 [ %30, %27 ], [ %12, %18 ], [ %12, %14 ]
  %33 = phi i32 [ 2, %27 ], [ 4, %18 ], [ 1, %14 ]
  %34 = icmp sgt i32 %32, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 2
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi i32 [ 0, %35 ], [ %44, %37 ]
  %39 = load ptr, ptr %36, align 8
  %40 = getelementptr %struct.mbox_chan, ptr %39, i32 %38
  %41 = getelementptr %struct.mbox_chan, ptr %39, i32 %38, i32 2
  store ptr null, ptr %41, align 4
  store ptr %0, ptr %40, align 4
  %42 = getelementptr %struct.mbox_chan, ptr %39, i32 %38, i32 1
  store i32 %33, ptr %42, align 4
  %43 = getelementptr %struct.mbox_chan, ptr %39, i32 %38, i32 8
  store i32 0, ptr %43, align 4
  %44 = add nuw nsw i32 %38, 1
  %45 = load i32, ptr %11, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %37, label %47

47:                                               ; preds = %37, %31
  %48 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 7
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store ptr @of_mbox_index_xlate, ptr %48, align 8
  br label %52

52:                                               ; preds = %51, %47
  tail call void @mutex_lock(ptr noundef nonnull @con_mutex) #7
  %53 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 9
  %54 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mbox_cons, i32 0, i32 1), align 4
  store ptr %53, ptr getelementptr inbounds (%struct.list_head, ptr @mbox_cons, i32 0, i32 1), align 4
  store ptr @mbox_cons, ptr %53, align 4
  %55 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 9, i32 1
  store ptr %54, ptr %55, align 4
  store volatile ptr %53, ptr %54, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @con_mutex) #7
  br label %56

56:                                               ; preds = %52, %26, %10, %6, %3, %1
  %57 = phi i32 [ 0, %52 ], [ -22, %26 ], [ -22, %10 ], [ -22, %6 ], [ -22, %3 ], [ -22, %1 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @txdone_hrtimer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %62

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -24
  br label %7

7:                                                ; preds = %45, %5
  %8 = phi i32 [ 0, %5 ], [ %47, %45 ]
  %9 = phi i1 [ false, %5 ], [ %46, %45 ]
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr %struct.mbox_chan, ptr %10, i32 %8
  %12 = getelementptr %struct.mbox_chan, ptr %10, i32 %8, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %45, label %15

15:                                               ; preds = %7
  %16 = getelementptr %struct.mbox_chan, ptr %10, i32 %8, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %45, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %11, align 4
  %21 = getelementptr inbounds %struct.mbox_controller, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.mbox_chan_ops, ptr %22, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = tail call zeroext i1 %24(ptr noundef %11) #7
  br i1 %25, label %26, label %45

26:                                               ; preds = %19
  %27 = getelementptr %struct.mbox_chan, ptr %10, i32 %8, i32 8
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #7
  %29 = load ptr, ptr %12, align 4
  store ptr null, ptr %12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %28) #7
  tail call fastcc void @msg_submit(ptr noundef %11) #7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %16, align 4
  %33 = getelementptr inbounds %struct.mbox_client, ptr %32, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  tail call void %34(ptr noundef %32, ptr noundef nonnull %29, i32 noundef 0) #7
  %37 = load ptr, ptr %16, align 4
  br label %38

38:                                               ; preds = %36, %31
  %39 = phi ptr [ %37, %36 ], [ %32, %31 ]
  %40 = getelementptr inbounds %struct.mbox_client, ptr %39, i32 0, i32 1
  %41 = load i8, ptr %40, align 4, !range !9
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = getelementptr %struct.mbox_chan, ptr %10, i32 %8, i32 3
  tail call void @complete(ptr noundef %44) #7
  br label %45

45:                                               ; preds = %43, %38, %26, %19, %15, %7
  %46 = phi i1 [ true, %19 ], [ %9, %15 ], [ %9, %7 ], [ true, %26 ], [ true, %38 ], [ true, %43 ]
  %47 = add nuw nsw i32 %8, 1
  %48 = load i32, ptr %2, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %7, label %50

50:                                               ; preds = %45
  br i1 %46, label %51, label %62

51:                                               ; preds = %50
  %52 = getelementptr i8, ptr %0, i32 -12
  %53 = load i32, ptr %52, align 4
  %54 = zext i32 %53 to i64
  %55 = mul nuw nsw i64 %54, 1000000
  %56 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %57, i32 0, i32 6
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i64 %59() #7
  %61 = tail call i64 @hrtimer_forward(ptr noundef %0, i64 noundef %60, i64 noundef %55) #7
  br label %62

62:                                               ; preds = %51, %50, %1
  %63 = phi i32 [ 1, %51 ], [ 0, %50 ], [ 0, %1 ]
  ret i32 %63
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @of_mbox_index_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr %struct.mbox_chan, ptr %10, i32 %4
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi ptr [ %11, %8 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mbox_controller_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %60, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @con_mutex) #7
  %4 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 9
  %5 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 9, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  %9 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %52

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 2
  br label %14

14:                                               ; preds = %48, %12
  %15 = phi i32 [ %10, %12 ], [ %49, %48 ]
  %16 = phi i32 [ 0, %12 ], [ %50, %48 ]
  %17 = load ptr, ptr %13, align 8
  %18 = getelementptr %struct.mbox_chan, ptr %17, i32 %16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20

20:                                               ; preds = %14
  %21 = getelementptr %struct.mbox_chan, ptr %17, i32 %16, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %18, align 4
  %26 = getelementptr inbounds %struct.mbox_controller, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.mbox_chan_ops, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  tail call void %29(ptr noundef nonnull %18) #7
  br label %32

32:                                               ; preds = %31, %24
  %33 = getelementptr %struct.mbox_chan, ptr %17, i32 %16, i32 8
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #7
  store ptr null, ptr %21, align 4
  %35 = getelementptr %struct.mbox_chan, ptr %17, i32 %16, i32 4
  store ptr null, ptr %35, align 4
  %36 = getelementptr %struct.mbox_chan, ptr %17, i32 %16, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 2, ptr %36, align 4
  br label %40

40:                                               ; preds = %39, %32
  %41 = load ptr, ptr %18, align 4
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 6
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.device_driver, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  tail call void @module_put(ptr noundef %46) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #7
  %47 = load i32, ptr %9, align 4
  br label %48

48:                                               ; preds = %40, %20, %14
  %49 = phi i32 [ %15, %14 ], [ %15, %20 ], [ %47, %40 ]
  %50 = add nuw nsw i32 %16, 1
  %51 = icmp slt i32 %50, %49
  br i1 %51, label %14, label %52

52:                                               ; preds = %48, %3
  %53 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 5
  %54 = load i8, ptr %53, align 1, !range !9
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.mbox_controller, ptr %0, i32 0, i32 8
  %58 = tail call i32 @hrtimer_cancel(ptr noundef %57) #7
  br label %59

59:                                               ; preds = %56, %52
  tail call void @mutex_unlock(ptr noundef nonnull @con_mutex) #7
  br label %60

60:                                               ; preds = %59, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_mbox_controller_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @__devm_mbox_controller_unregister, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.11) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @mbox_controller_register(ptr noundef %1)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #7
  br label %10

9:                                                ; preds = %5
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #7
  store ptr %1, ptr %3, align 4
  br label %10

10:                                               ; preds = %9, %8, %2
  %11 = phi i32 [ %6, %8 ], [ 0, %9 ], [ -12, %2 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__devm_mbox_controller_unregister(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @mbox_controller_unregister(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_mbox_controller_unregister(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @__devm_mbox_controller_unregister, ptr noundef nonnull @devm_mbox_controller_match, ptr noundef %1) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !11

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 616, i32 noundef 9, ptr noundef null) #7
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devm_mbox_controller_match(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %5, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 561, i32 noundef 9, ptr noundef null) #7
  br label %12

9:                                                ; preds = %5
  %10 = icmp eq ptr %6, %2
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32 [ 0, %8 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
