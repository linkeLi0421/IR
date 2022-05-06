; ModuleID = '/llk/IR/net/nfc/hci/command.c_pt.bc'
source_filename = "../net/nfc/hci/command.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_send_event:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_send_event\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_send_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_send_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_send_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_send_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_send_cmd_async:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_send_cmd_async\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_send_cmd_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_set_param:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_set_param\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_set_param:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_get_param:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_get_param\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_get_param:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_disconnect_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_disconnect_gate\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_disconnect_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_disconnect_all_gates:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_disconnect_all_gates\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_disconnect_all_gates:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_connect_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_connect_gate\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_connect_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nfc_hci_dev = type { ptr, i32, i8, %struct.mutex, %struct.list_head, %struct.work_struct, %struct.timer_list, ptr, %struct.sk_buff_head, %struct.work_struct, %struct.sk_buff_head, ptr, ptr, %struct.nfc_hci_init_data, ptr, [256 x i8], [128 x %struct.nfc_hci_pipe], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, ptr, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.84, i32, %struct.spinlock }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.nfc_hci_init_data = type { i8, [50 x %struct.nfc_hci_gate], [9 x i8] }
%struct.nfc_hci_gate = type { i8, i8 }
%struct.nfc_hci_pipe = type { i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hcp_exec_waiter = type { ptr, i8, i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.hci_create_pipe_params = type { i8, i8, i8 }
%struct.sk_buff = type { %union.anon.64, %union.anon.67, %union.anon.68, [48 x i8], %union.anon.69, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.71, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr, %union.anon.66 }
%union.anon.66 = type { ptr }
%union.anon.67 = type { ptr }
%union.anon.68 = type { i64 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { i32, ptr }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.73, i32, i32, i32, i16, i16, %union.anon.75, %union.anon.76, %union.anon.77, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.73 = type { i32 }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%union.anon.77 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hci_create_pipe_resp = type { i8, i8, i8, i8, i8 }

@__kstrtab_nfc_hci_send_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_send_event = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_send_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_send_event to i32), ptr @__kstrtab_nfc_hci_send_event, ptr @__kstrtabns_nfc_hci_send_event }, section "___ksymtab+nfc_hci_send_event", align 4
@__kstrtab_nfc_hci_send_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_send_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_send_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_send_cmd to i32), ptr @__kstrtab_nfc_hci_send_cmd, ptr @__kstrtabns_nfc_hci_send_cmd }, section "___ksymtab+nfc_hci_send_cmd", align 4
@__kstrtab_nfc_hci_send_cmd_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_send_cmd_async = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_send_cmd_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_send_cmd_async to i32), ptr @__kstrtab_nfc_hci_send_cmd_async, ptr @__kstrtabns_nfc_hci_send_cmd_async }, section "___ksymtab+nfc_hci_send_cmd_async", align 4
@__kstrtab_nfc_hci_set_param = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_set_param = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_set_param = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_set_param to i32), ptr @__kstrtab_nfc_hci_set_param, ptr @__kstrtabns_nfc_hci_set_param }, section "___ksymtab+nfc_hci_set_param", align 4
@__kstrtab_nfc_hci_get_param = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_get_param = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_get_param = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_get_param to i32), ptr @__kstrtab_nfc_hci_get_param, ptr @__kstrtabns_nfc_hci_get_param }, section "___ksymtab+nfc_hci_get_param", align 4
@__kstrtab_nfc_hci_disconnect_gate = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_disconnect_gate = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_disconnect_gate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_disconnect_gate to i32), ptr @__kstrtab_nfc_hci_disconnect_gate, ptr @__kstrtabns_nfc_hci_disconnect_gate }, section "___ksymtab+nfc_hci_disconnect_gate", align 4
@__kstrtab_nfc_hci_disconnect_all_gates = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_disconnect_all_gates = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_disconnect_all_gates = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_disconnect_all_gates to i32), ptr @__kstrtab_nfc_hci_disconnect_all_gates, ptr @__kstrtabns_nfc_hci_disconnect_all_gates }, section "___ksymtab+nfc_hci_disconnect_all_gates", align 4
@__kstrtab_nfc_hci_connect_gate = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_connect_gate = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_connect_gate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_connect_gate to i32), ptr @__kstrtab_nfc_hci_connect_gate, ptr @__kstrtabns_nfc_hci_connect_gate }, section "___ksymtab+nfc_hci_connect_gate", align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_nfc_hci_connect_gate, ptr @__ksymtab_nfc_hci_disconnect_all_gates, ptr @__ksymtab_nfc_hci_disconnect_gate, ptr @__ksymtab_nfc_hci_get_param, ptr @__ksymtab_nfc_hci_send_cmd, ptr @__ksymtab_nfc_hci_send_cmd_async, ptr @__ksymtab_nfc_hci_send_event, ptr @__ksymtab_nfc_hci_set_param], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_hci_send_event(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = zext i8 %1 to i32
  %7 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 15, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, -128
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @nfc_hci_hcp_message_tx(ptr noundef %0, i8 noundef zeroext %8, i8 noundef zeroext 1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, ptr noundef null, ptr noundef null, i32 noundef 0) #6
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi i32 [ %11, %10 ], [ -99, %5 ]
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_hcp_message_tx(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_hci_send_cmd(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = zext i8 %1 to i32
  %8 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 15, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, -128
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call fastcc i32 @nfc_hci_execute_cmd(ptr noundef %0, i8 noundef zeroext %9, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi i32 [ %12, %11 ], [ -99, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfc_hci_execute_cmd(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, ptr noundef writeonly %5) unnamed_addr #0 {
  %7 = alloca %struct.wait_queue_head, align 4
  %8 = alloca %struct.hcp_exec_waiter, align 4
  %9 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #6
  %10 = getelementptr inbounds %struct.wait_queue_head, ptr %7, i32 0, i32 1
  store i32 0, ptr %7, align 4
  store ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.wait_queue_head, ptr %7, i32 0, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  %12 = getelementptr inbounds i8, ptr %8, i32 4
  store i64 0, ptr %12, align 4, !annotation !8
  store ptr %7, ptr %8, align 4
  %13 = getelementptr inbounds %struct.hcp_exec_waiter, ptr %8, i32 0, i32 1
  %14 = getelementptr inbounds %struct.hcp_exec_waiter, ptr %8, i32 0, i32 3
  store ptr null, ptr %14, align 4
  %15 = call i32 @nfc_hci_hcp_message_tx(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext 0, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull @nfc_hci_execute_cb, ptr noundef nonnull %8, i32 noundef 4949) #6
  %16 = getelementptr inbounds %struct.hcp_exec_waiter, ptr %8, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  %17 = icmp slt i32 %15, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %6
  %19 = load i8, ptr %13, align 4, !range !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %9, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %9, i32 noundef 0) #6
  %22 = call i32 @prepare_to_wait_event(ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef 2) #6
  %23 = load i8, ptr %13, align 4, !range !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %25, %21
  call void @schedule() #6
  %26 = call i32 @prepare_to_wait_event(ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef 2) #6
  %27 = load i8, ptr %13, align 4, !range !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %25, label %29

29:                                               ; preds = %25, %21
  call void @finish_wait(ptr noundef nonnull %7, ptr noundef nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #6
  %30 = load i32, ptr %16, align 4
  br label %31

31:                                               ; preds = %29, %18
  %32 = phi i32 [ %15, %18 ], [ %30, %29 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = icmp eq ptr %5, null
  %36 = load ptr, ptr %14, align 4
  br i1 %35, label %38, label %37

37:                                               ; preds = %34
  store ptr %36, ptr %5, align 4
  br label %40

38:                                               ; preds = %34
  call void @kfree_skb_reason(ptr noundef %36, i32 noundef 0) #6
  %39 = load i32, ptr %16, align 4
  br label %40

40:                                               ; preds = %38, %37, %31, %6
  %41 = phi i32 [ %15, %6 ], [ 0, %37 ], [ %39, %38 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #6
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_hci_send_cmd_async(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = zext i8 %1 to i32
  %9 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 15, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, -128
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @nfc_hci_hcp_message_tx(ptr noundef %0, i8 noundef zeroext %10, i8 noundef zeroext 0, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef 4949) #6
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi i32 [ %13, %12 ], [ -99, %7 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_hci_set_param(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = add i32 %4, 1
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  store i8 %2, ptr %7, align 64
  %10 = getelementptr i8, ptr %7, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %10, ptr align 1 %3, i32 %4, i1 false)
  %11 = zext i8 %1 to i32
  %12 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 15, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, -128
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = tail call fastcc i32 @nfc_hci_execute_cmd(ptr noundef %0, i8 noundef zeroext %13, i8 noundef zeroext 1, ptr noundef nonnull %7, i32 noundef %6, ptr noundef null) #6
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi i32 [ %16, %15 ], [ -99, %9 ]
  tail call void @kfree(ptr noundef nonnull %7) #6
  br label %19

19:                                               ; preds = %17, %5
  %20 = phi i32 [ %18, %17 ], [ -12, %5 ]
  ret i32 %20
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_hci_get_param(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = alloca i8, align 1
  store i8 %2, ptr %5, align 1
  %6 = zext i8 %1 to i32
  %7 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 15, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, -128
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = call fastcc i32 @nfc_hci_execute_cmd(ptr noundef %0, i8 noundef zeroext %8, i8 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 1, ptr noundef %3) #6
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ -99, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_hci_disconnect_gate(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = zext i8 %1 to i32
  %5 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 15, i32 %4
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, -128
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @nfc_hci_execute_cmd(ptr noundef %0, i8 noundef zeroext %6, i8 noundef zeroext 4, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = icmp ugt i8 %6, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %6, ptr %3, align 1
  %14 = call fastcc i32 @nfc_hci_execute_cmd(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 17, ptr noundef nonnull %3, i32 noundef 1, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %11
  store i8 -128, ptr %5, align 1
  br label %17

17:                                               ; preds = %16, %13, %8, %2
  %18 = phi i32 [ 0, %16 ], [ -99, %2 ], [ %9, %8 ], [ %14, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_hci_disconnect_all_gates(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 31
  %4 = load volatile i32, ptr %3, align 4
  %5 = shl i32 %4, 1
  %6 = and i32 %5, 2
  %7 = xor i32 %6, 2
  %8 = call fastcc i32 @nfc_hci_execute_cmd(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 20, ptr noundef nonnull %2, i32 noundef %7, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  call void @nfc_hci_reset_pipes(ptr noundef %0) #6
  br label %11

11:                                               ; preds = %10, %1
  %12 = phi i32 [ 0, %10 ], [ %8, %1 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_hci_reset_pipes(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_hci_connect_gate(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.hci_create_pipe_params, align 1
  %9 = icmp eq i8 %3, -127
  br i1 %9, label %48, label %10

10:                                               ; preds = %4
  %11 = zext i8 %2 to i32
  %12 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 15, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, -128
  br i1 %14, label %15, label %48

15:                                               ; preds = %10
  %16 = icmp eq i8 %3, -128
  br i1 %16, label %17, label %32

17:                                               ; preds = %15
  switch i8 %2, label %19 [
    i8 6, label %32
    i8 0, label %18
  ]

18:                                               ; preds = %17
  br label %32

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store ptr null, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #6
  %20 = getelementptr inbounds %struct.hci_create_pipe_params, ptr %8, i32 0, i32 1
  store i8 0, ptr %8, align 1
  store i8 %1, ptr %20, align 1
  %21 = getelementptr inbounds %struct.hci_create_pipe_params, ptr %8, i32 0, i32 2
  store i8 %2, ptr %21, align 1
  %22 = call fastcc i32 @nfc_hci_execute_cmd(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 16, ptr noundef nonnull %8, i32 noundef 3, ptr noundef nonnull %7) #6
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  br label %48

25:                                               ; preds = %19
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.hci_create_pipe_resp, ptr %28, i32 0, i32 4
  %30 = load i8, ptr %29, align 1
  call void @kfree_skb_reason(ptr noundef %26, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  %31 = icmp eq i8 %30, -128
  br i1 %31, label %48, label %32

32:                                               ; preds = %25, %18, %17, %15
  %33 = phi i8 [ %3, %15 ], [ 1, %18 ], [ 0, %17 ], [ %30, %25 ]
  %34 = phi i1 [ false, %15 ], [ false, %18 ], [ false, %17 ], [ true, %25 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store ptr null, ptr %6, align 4, !annotation !8
  %35 = call fastcc i32 @nfc_hci_execute_cmd(ptr noundef %0, i8 noundef zeroext %33, i8 noundef zeroext 3, ptr noundef null, i32 noundef 0, ptr noundef nonnull %6) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load ptr, ptr %6, align 4
  call void @kfree_skb_reason(ptr noundef %38, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %44

39:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  %40 = icmp slt i32 %35, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  br i1 %34, label %42, label %48

42:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 %33, ptr %5, align 1
  %43 = call fastcc i32 @nfc_hci_execute_cmd(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 17, ptr noundef nonnull %5, i32 noundef 1, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br label %48

44:                                               ; preds = %39, %37
  %45 = zext i8 %33 to i32
  %46 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 16, i32 %45
  store i8 %2, ptr %46, align 2
  %47 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 16, i32 %45, i32 1
  store i8 %1, ptr %47, align 1
  store i8 %33, ptr %12, align 1
  br label %48

48:                                               ; preds = %44, %42, %41, %25, %24, %10, %4
  %49 = phi i32 [ 0, %44 ], [ 0, %4 ], [ -98, %10 ], [ %22, %24 ], [ %22, %25 ], [ %35, %42 ], [ %35, %41 ]
  ret i32 %49
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfc_hci_execute_cb(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.hcp_exec_waiter, ptr %0, i32 0, i32 2
  store i32 %2, ptr %4, align 4
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hcp_exec_waiter, ptr %0, i32 0, i32 3
  store ptr %1, ptr %7, align 4
  br label %9

8:                                                ; preds = %3
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #6
  br label %9

9:                                                ; preds = %8, %6
  %10 = getelementptr inbounds %struct.hcp_exec_waiter, ptr %0, i32 0, i32 1
  store i8 1, ptr %10, align 4
  %11 = load ptr, ptr %0, align 4
  tail call void @__wake_up(ptr noundef %11, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!9 = !{i8 0, i8 2}
