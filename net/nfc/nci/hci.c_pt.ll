; ModuleID = '/llk/IR/net/nfc/nci/hci.c_pt.bc'
source_filename = "../net/nfc/nci/hci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_hci_send_event:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_hci_send_event\22\09\09\09\09\09"
module asm "__kstrtabns_nci_hci_send_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_hci_send_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_hci_send_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_nci_hci_send_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_hci_clear_all_pipes:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_hci_clear_all_pipes\22\09\09\09\09\09"
module asm "__kstrtabns_nci_hci_clear_all_pipes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_hci_open_pipe:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_hci_open_pipe\22\09\09\09\09\09"
module asm "__kstrtabns_nci_hci_open_pipe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_hci_set_param:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_hci_set_param\22\09\09\09\09\09"
module asm "__kstrtabns_nci_hci_set_param:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_hci_get_param:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_hci_get_param\22\09\09\09\09\09"
module asm "__kstrtabns_nci_hci_get_param:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_hci_connect_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_hci_connect_gate\22\09\09\09\09\09"
module asm "__kstrtabns_nci_hci_connect_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_hci_dev_session_init:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_hci_dev_session_init\22\09\09\09\09\09"
module asm "__kstrtabns_nci_hci_dev_session_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }
%struct.nci_hci_dev = type { i8, ptr, ptr, %struct.nci_hci_init_data, [128 x %struct.nci_hci_pipe], [256 x i8], i32, i32, %struct.sk_buff_head, %struct.work_struct, %struct.sk_buff_head }
%struct.nci_hci_init_data = type { i8, [50 x %struct.nci_hci_gate], [9 x i8] }
%struct.nci_hci_gate = type { i8, i8, i8 }
%struct.nci_hci_pipe = type { i8, i8 }
%struct.nci_conn_info = type { %struct.list_head, ptr, i8, i8, i8, %struct.atomic_t, i8, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nci_data = type <{ i8, i8, i8, ptr, i32 }>
%struct.nci_hcp_packet = type { i8, %struct.nci_hcp_message }
%struct.nci_hcp_message = type { i8, [0 x i8] }
%struct.nci_hci_create_pipe_resp = type { i8, i8, i8, i8, i8 }
%struct.nci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.nci_hci_create_pipe_params = type { i8, i8, i8 }

@__kstrtab_nci_hci_send_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_hci_send_event = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_hci_send_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_hci_send_event to i32), ptr @__kstrtab_nci_hci_send_event, ptr @__kstrtabns_nci_hci_send_event }, section "___ksymtab+nci_hci_send_event", align 4
@__kstrtab_nci_hci_send_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_hci_send_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_hci_send_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_hci_send_cmd to i32), ptr @__kstrtab_nci_hci_send_cmd, ptr @__kstrtabns_nci_hci_send_cmd }, section "___ksymtab+nci_hci_send_cmd", align 4
@__kstrtab_nci_hci_clear_all_pipes = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_hci_clear_all_pipes = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_hci_clear_all_pipes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_hci_clear_all_pipes to i32), ptr @__kstrtab_nci_hci_clear_all_pipes, ptr @__kstrtabns_nci_hci_clear_all_pipes }, section "___ksymtab+nci_hci_clear_all_pipes", align 4
@__kstrtab_nci_hci_open_pipe = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_hci_open_pipe = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_hci_open_pipe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_hci_open_pipe to i32), ptr @__kstrtab_nci_hci_open_pipe, ptr @__kstrtabns_nci_hci_open_pipe }, section "___ksymtab+nci_hci_open_pipe", align 4
@__kstrtab_nci_hci_set_param = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_hci_set_param = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_hci_set_param = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_hci_set_param to i32), ptr @__kstrtab_nci_hci_set_param, ptr @__kstrtabns_nci_hci_set_param }, section "___ksymtab+nci_hci_set_param", align 4
@__kstrtab_nci_hci_get_param = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_hci_get_param = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_hci_get_param = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_hci_get_param to i32), ptr @__kstrtab_nci_hci_get_param, ptr @__kstrtabns_nci_hci_get_param }, section "___ksymtab+nci_hci_get_param", align 4
@__kstrtab_nci_hci_connect_gate = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_hci_connect_gate = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_hci_connect_gate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_hci_connect_gate to i32), ptr @__kstrtab_nci_hci_connect_gate, ptr @__kstrtabns_nci_hci_connect_gate }, section "___ksymtab+nci_hci_connect_gate", align 4
@__kstrtab_nci_hci_dev_session_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_hci_dev_session_init = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_hci_dev_session_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_hci_dev_session_init to i32), ptr @__kstrtab_nci_hci_dev_session_init, ptr @__kstrtabns_nci_hci_dev_session_init }, section "___ksymtab+nci_hci_dev_session_init", align 4
@.str = private unnamed_addr constant [39 x i8] c"\013UNKNOWN MSG Type %d, instruction=%d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_nci_hci_clear_all_pipes, ptr @__ksymtab_nci_hci_connect_gate, ptr @__ksymtab_nci_hci_dev_session_init, ptr @__ksymtab_nci_hci_get_param, ptr @__ksymtab_nci_hci_open_pipe, ptr @__ksymtab_nci_hci_send_cmd, ptr @__ksymtab_nci_hci_send_event, ptr @__ksymtab_nci_hci_set_param], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_hci_send_event(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = zext i8 %1 to i32
  %9 = getelementptr %struct.nci_hci_dev, ptr %7, i32 0, i32 5, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, -128
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = and i8 %2, 63
  %14 = or i8 %13, 64
  %15 = tail call fastcc i32 @nci_hci_send_data(ptr noundef %0, i8 noundef zeroext %10, i8 noundef zeroext %14, ptr noundef %3, i32 noundef %4)
  br label %16

16:                                               ; preds = %12, %5
  %17 = phi i32 [ %15, %12 ], [ -99, %5 ]
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nci_hci_send_data(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nci_hci_dev, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %84, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.nci_conn_info, ptr %9, i32 0, i32 4
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = add nuw nsw i32 %14, 3
  %16 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %15, %17
  %19 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %18, %20
  %22 = tail call ptr @__alloc_skb(i32 noundef %21, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %84, label %24

24:                                               ; preds = %11
  %25 = load i32, ptr %16, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %25
  %29 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 14
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr i8, ptr %30, i32 %25
  %32 = getelementptr i8, ptr %28, i32 5
  store ptr %32, ptr %26, align 4
  %33 = getelementptr i8, ptr %31, i32 5
  store ptr %33, ptr %29, align 8
  %34 = tail call ptr @skb_push(ptr noundef nonnull %22, i32 noundef 1) #10
  store i8 %2, ptr %34, align 1
  %35 = getelementptr inbounds %struct.nci_conn_info, ptr %9, i32 0, i32 3
  br label %36

36:                                               ; preds = %74, %24
  %37 = phi ptr [ %22, %24 ], [ %72, %74 ]
  %38 = phi i32 [ 0, %24 ], [ %62, %74 ]
  %39 = phi i8 [ %1, %24 ], [ %51, %74 ]
  %40 = load i8, ptr %12, align 2
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 5
  %43 = load i32, ptr %42, align 8
  %44 = xor i32 %43, -1
  %45 = add i32 %44, %41
  %46 = add i32 %45, %38
  %47 = icmp ult i32 %46, %4
  %48 = or i8 %39, -128
  %49 = sub i32 %4, %38
  %50 = select i1 %47, i32 %45, i32 %49
  %51 = select i1 %47, i8 %39, i8 %48
  %52 = tail call ptr @skb_push(ptr noundef nonnull %37, i32 noundef 1) #10
  store i8 %51, ptr %52, align 1
  %53 = icmp sgt i32 %50, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %36
  %55 = getelementptr i8, ptr %3, i32 %38
  %56 = tail call ptr @skb_put(ptr noundef nonnull %37, i32 noundef %50) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %56, ptr align 1 %55, i32 %50, i1 false) #10
  br label %57

57:                                               ; preds = %54, %36
  %58 = load i8, ptr %35, align 1
  %59 = tail call i32 @nci_send_data(ptr noundef %0, i8 noundef zeroext %58, ptr noundef nonnull %37) #10
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %84, label %61

61:                                               ; preds = %57
  %62 = add i32 %50, %38
  %63 = icmp ult i32 %62, %4
  br i1 %63, label %64, label %84

64:                                               ; preds = %61
  %65 = load i8, ptr %12, align 2
  %66 = zext i8 %65 to i32
  %67 = add nuw nsw i32 %66, 3
  %68 = load i32, ptr %16, align 4
  %69 = add i32 %67, %68
  %70 = load i32, ptr %19, align 4
  %71 = add i32 %69, %70
  %72 = tail call ptr @__alloc_skb(i32 noundef %71, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %73 = icmp eq ptr %72, null
  br i1 %73, label %84, label %74

74:                                               ; preds = %64
  %75 = load i32, ptr %16, align 4
  %76 = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 17
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 4
  %79 = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 14
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr i8, ptr %80, i32 4
  %82 = getelementptr i8, ptr %78, i32 %75
  store ptr %82, ptr %76, align 4
  %83 = getelementptr i8, ptr %81, i32 %75
  store ptr %83, ptr %79, align 8
  br label %36

84:                                               ; preds = %64, %61, %57, %11, %5
  %85 = phi i32 [ -71, %5 ], [ -12, %11 ], [ -12, %64 ], [ %62, %61 ], [ %59, %57 ]
  ret i32 %85
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_hci_send_cmd(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, ptr noundef writeonly %5) #0 {
  %7 = alloca %struct.nci_data, align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %7) #10
  %8 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = zext i8 %1 to i32
  %11 = getelementptr %struct.nci_hci_dev, ptr %9, i32 0, i32 5, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, -128
  br i1 %13, label %45, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.nci_hci_dev, ptr %9, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %45, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.nci_conn_info, ptr %16, i32 0, i32 3
  %20 = load i8, ptr %19, align 1
  store i8 %20, ptr %7, align 1
  %21 = getelementptr inbounds %struct.nci_data, ptr %7, i32 0, i32 1
  store i8 %12, ptr %21, align 1
  %22 = and i8 %2, 63
  %23 = getelementptr inbounds %struct.nci_data, ptr %7, i32 0, i32 2
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.nci_data, ptr %7, i32 0, i32 3
  store ptr %3, ptr %24, align 1
  %25 = getelementptr inbounds %struct.nci_data, ptr %7, i32 0, i32 4
  store i32 %4, ptr %25, align 1
  %26 = call i32 @nci_request(ptr noundef %0, ptr noundef nonnull @nci_hci_send_data_req, ptr noundef nonnull %7, i32 noundef 70) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.nci_conn_info, ptr %16, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  %33 = load i8, ptr %32, align 1
  %34 = trunc i8 %33 to i6
  switch i6 %34, label %36 [
    i6 0, label %40
    i6 5, label %37
    i6 9, label %35
  ]

35:                                               ; preds = %28
  br label %37

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %35, %28
  %38 = phi i32 [ -1, %36 ], [ -62, %35 ], [ -95, %28 ]
  %39 = call ptr @skb_pull(ptr noundef %30, i32 noundef 1) #10
  br label %45

40:                                               ; preds = %28
  %41 = call ptr @skb_pull(ptr noundef %30, i32 noundef 1) #10
  %42 = icmp eq ptr %5, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %29, align 4
  store ptr %44, ptr %5, align 4
  br label %45

45:                                               ; preds = %43, %40, %37, %18, %14, %6
  %46 = phi i32 [ -99, %6 ], [ -71, %14 ], [ 0, %43 ], [ 0, %40 ], [ %26, %18 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %7) #10
  ret i32 %46
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nci_hci_send_data_req(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nci_data, ptr %1, i32 0, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr inbounds %struct.nci_data, ptr %1, i32 0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds %struct.nci_data, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 1
  %9 = getelementptr inbounds %struct.nci_data, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 1
  %11 = tail call fastcc i32 @nci_hci_send_data(ptr noundef %0, i8 noundef zeroext %4, i8 noundef zeroext %6, ptr noundef %8, i32 noundef %10)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_hci_clear_all_pipes(ptr noundef %0) #0 {
  %2 = alloca %struct.nci_data, align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %2) #10
  %3 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.nci_hci_dev, ptr %4, i32 0, i32 5, i32 0
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, -128
  br i1 %7, label %35, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nci_hci_dev, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nci_conn_info, ptr %10, i32 0, i32 3
  %14 = load i8, ptr %13, align 1
  store i8 %14, ptr %2, align 1
  %15 = getelementptr inbounds %struct.nci_data, ptr %2, i32 0, i32 1
  store i8 %6, ptr %15, align 1
  %16 = getelementptr inbounds %struct.nci_data, ptr %2, i32 0, i32 2
  store i8 20, ptr %16, align 1
  %17 = getelementptr inbounds %struct.nci_data, ptr %2, i32 0, i32 3
  store ptr null, ptr %17, align 1
  %18 = getelementptr inbounds %struct.nci_data, ptr %2, i32 0, i32 4
  store i32 0, ptr %18, align 1
  %19 = call i32 @nci_request(ptr noundef %0, ptr noundef nonnull @nci_hci_send_data_req, ptr noundef nonnull %2, i32 noundef 70) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.nci_conn_info, ptr %10, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = load i8, ptr %25, align 1
  %27 = trunc i8 %26 to i6
  switch i6 %27, label %29 [
    i6 0, label %33
    i6 5, label %30
    i6 9, label %28
  ]

28:                                               ; preds = %21
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %28, %21
  %31 = phi i32 [ -1, %29 ], [ -62, %28 ], [ -95, %21 ]
  %32 = call ptr @skb_pull(ptr noundef %23, i32 noundef 1) #10
  br label %35

33:                                               ; preds = %21
  %34 = call ptr @skb_pull(ptr noundef %23, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %2) #10
  br label %39

35:                                               ; preds = %30, %8, %1
  %36 = phi i32 [ %31, %30 ], [ -71, %8 ], [ -99, %1 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %2) #10
  br label %49

37:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %2) #10
  %38 = icmp slt i32 %19, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %37, %33
  %40 = load ptr, ptr %3, align 4
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ 0, %39 ], [ %45, %41 ]
  %43 = getelementptr %struct.nci_hci_dev, ptr %40, i32 0, i32 4, i32 %42
  store i8 -1, ptr %43, align 2
  %44 = getelementptr %struct.nci_hci_dev, ptr %40, i32 0, i32 4, i32 %42, i32 1
  store i8 -128, ptr %44, align 1
  %45 = add nuw nsw i32 %42, 1
  %46 = icmp eq i32 %45, 128
  br i1 %46, label %47, label %41

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.nci_hci_dev, ptr %40, i32 0, i32 5
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %48, i8 -128, i32 256, i1 false) #10
  br label %49

49:                                               ; preds = %47, %37, %35
  %50 = phi i32 [ %36, %35 ], [ %19, %37 ], [ %19, %47 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nci_hci_data_received_cb(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef %2) #10
  br label %84

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = load i8, ptr %8, align 1
  %10 = icmp sgt i8 %9, -1
  %11 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  br i1 %10, label %13, label %15

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.nci_hci_dev, ptr %12, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %14, ptr noundef %1) #10
  br label %84

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.nci_hci_dev, ptr %12, i32 0, i32 8, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %63, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nci_hci_dev, ptr %12, i32 0, i32 8
  %21 = and i8 %9, 127
  tail call void @skb_queue_tail(ptr noundef %20, ptr noundef %1) #10
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr inbounds %struct.nci_hci_dev, ptr %22, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %37, label %26

26:                                               ; preds = %26, %19
  %27 = phi ptr [ %33, %26 ], [ %24, %19 ]
  %28 = phi i32 [ %32, %26 ], [ 0, %19 ]
  %29 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 5
  %30 = load i32, ptr %29, align 8
  %31 = add i32 %28, -1
  %32 = add i32 %31, %30
  %33 = load ptr, ptr %27, align 4
  %34 = icmp eq ptr %33, %23
  br i1 %34, label %35, label %26

35:                                               ; preds = %26
  %36 = add i32 %28, %30
  br label %37

37:                                               ; preds = %35, %19
  %38 = phi i32 [ 1, %19 ], [ %36, %35 ]
  %39 = tail call ptr @nfc_alloc_recv_skb(i32 noundef %38, i32 noundef 3264) #10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef -12) #10
  br label %84

42:                                               ; preds = %37
  %43 = tail call ptr @skb_put(ptr noundef nonnull %39, i32 noundef 1) #10
  store i8 %21, ptr %43, align 1
  %44 = load ptr, ptr %11, align 4
  %45 = getelementptr inbounds %struct.nci_hci_dev, ptr %44, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %61, label %48

48:                                               ; preds = %48, %42
  %49 = phi ptr [ %57, %48 ], [ %46, %42 ]
  %50 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 5
  %51 = load i32, ptr %50, align 8
  %52 = add i32 %51, -1
  %53 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 17
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 1
  %56 = tail call ptr @skb_put(ptr noundef nonnull %39, i32 noundef %52) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %56, ptr align 1 %55, i32 %52, i1 false) #10
  %57 = load ptr, ptr %49, align 4
  %58 = load ptr, ptr %11, align 4
  %59 = getelementptr inbounds %struct.nci_hci_dev, ptr %58, i32 0, i32 8
  %60 = icmp eq ptr %57, %59
  br i1 %60, label %61, label %48

61:                                               ; preds = %48, %42
  %62 = phi ptr [ %45, %42 ], [ %57, %48 ]
  tail call void @skb_queue_purge(ptr noundef %62) #10
  br label %65

63:                                               ; preds = %15
  %64 = and i8 %9, 127
  store i8 %64, ptr %8, align 1
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi ptr [ %39, %61 ], [ %1, %63 ]
  %67 = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 17
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.nci_hcp_packet, ptr %68, i32 0, i32 1
  %70 = load i8, ptr %69, align 1
  %71 = and i8 %70, -64
  %72 = icmp eq i8 %71, -128
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i8, ptr %68, align 1
  %75 = and i8 %74, 127
  %76 = tail call ptr @skb_pull(ptr noundef %66, i32 noundef 1) #10
  tail call fastcc void @nci_hci_hcp_message_rx(ptr noundef %0, i8 noundef zeroext %75, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef %66)
  br label %84

77:                                               ; preds = %65
  %78 = load ptr, ptr %11, align 4
  %79 = getelementptr inbounds %struct.nci_hci_dev, ptr %78, i32 0, i32 10
  tail call void @skb_queue_tail(ptr noundef %79, ptr noundef %66) #10
  %80 = load ptr, ptr %11, align 4
  %81 = getelementptr inbounds %struct.nci_hci_dev, ptr %80, i32 0, i32 9
  %82 = load ptr, ptr @system_wq, align 4
  %83 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %82, ptr noundef %81) #10
  br label %84

84:                                               ; preds = %77, %73, %41, %13, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_req_complete(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_alloc_recv_skb(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nci_hci_hcp_message_rx(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 {
  switch i8 %2, label %100 [
    i8 2, label %6
    i8 0, label %15
    i8 1, label %93
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nci_hci_dev, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.nci_conn_info, ptr %10, i32 0, i32 9
  store ptr %4, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %6
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef 0) #10
  br label %104

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  switch i8 %3, label %83 [
    i8 18, label %18
    i8 3, label %39
    i8 19, label %44
    i8 21, label %60
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 5
  br i1 %21, label %22, label %90

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nci_hci_create_pipe_resp, ptr %24, i32 0, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = icmp slt i8 %26, 0
  br i1 %27, label %90, label %28

28:                                               ; preds = %22
  %29 = zext i8 %26 to i32
  %30 = getelementptr inbounds %struct.nci_hci_create_pipe_resp, ptr %24, i32 0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = getelementptr %struct.nci_hci_dev, ptr %17, i32 0, i32 5, i32 %32
  store i8 %26, ptr %33, align 1
  %34 = load ptr, ptr %16, align 4
  %35 = getelementptr %struct.nci_hci_dev, ptr %34, i32 0, i32 4, i32 %29
  store i8 %31, ptr %35, align 2
  %36 = load i8, ptr %24, align 1
  %37 = load ptr, ptr %16, align 4
  %38 = getelementptr %struct.nci_hci_dev, ptr %37, i32 0, i32 4, i32 %29, i32 1
  store i8 %36, ptr %38, align 1
  br label %83

39:                                               ; preds = %15
  %40 = zext i8 %1 to i32
  %41 = getelementptr %struct.nci_hci_dev, ptr %17, i32 0, i32 4, i32 %40
  %42 = load i8, ptr %41, align 2
  %43 = icmp eq i8 %42, -1
  br i1 %43, label %90, label %83

44:                                               ; preds = %15
  %45 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 5
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %90

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %50 = load ptr, ptr %49, align 4
  %51 = load i8, ptr %50, align 1
  %52 = icmp slt i8 %51, 0
  br i1 %52, label %90, label %53

53:                                               ; preds = %48
  %54 = zext i8 %51 to i32
  %55 = getelementptr %struct.nci_hci_dev, ptr %17, i32 0, i32 4, i32 %54
  store i8 -1, ptr %55, align 2
  %56 = load ptr, ptr %16, align 4
  %57 = load i8, ptr %50, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr %struct.nci_hci_dev, ptr %56, i32 0, i32 4, i32 %58, i32 1
  store i8 -128, ptr %59, align 1
  br label %83

60:                                               ; preds = %15
  %61 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 5
  %62 = load i32, ptr %61, align 8
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %90

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %66 = load ptr, ptr %65, align 4
  %67 = load i8, ptr %66, align 1
  br label %68

68:                                               ; preds = %81, %64
  %69 = phi ptr [ %17, %64 ], [ %82, %81 ]
  %70 = phi i32 [ 0, %64 ], [ %79, %81 ]
  %71 = getelementptr %struct.nci_hci_dev, ptr %69, i32 0, i32 4, i32 %70, i32 1
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, %67
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = getelementptr %struct.nci_hci_dev, ptr %69, i32 0, i32 4, i32 %70
  store i8 -1, ptr %75, align 2
  %76 = load ptr, ptr %16, align 4
  %77 = getelementptr %struct.nci_hci_dev, ptr %76, i32 0, i32 4, i32 %70, i32 1
  store i8 -128, ptr %77, align 1
  br label %78

78:                                               ; preds = %74, %68
  %79 = add nuw nsw i32 %70, 1
  %80 = icmp eq i32 %79, 128
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %16, align 4
  br label %68

83:                                               ; preds = %78, %53, %39, %28, %15
  %84 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.nci_ops, ptr %85, i32 0, i32 14
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  tail call void %87(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %3, ptr noundef %4) #10
  br label %90

90:                                               ; preds = %89, %83, %60, %48, %44, %39, %22, %18
  %91 = phi i8 [ -128, %89 ], [ -128, %83 ], [ 3, %18 ], [ 3, %22 ], [ 3, %39 ], [ 3, %44 ], [ 3, %48 ], [ 3, %60 ]
  %92 = tail call fastcc i32 @nci_hci_send_data(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %91, ptr noundef null, i32 noundef 0) #10
  tail call void @kfree_skb_reason(ptr noundef %4, i32 noundef 0) #10
  br label %104

93:                                               ; preds = %5
  %94 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nci_ops, ptr %95, i32 0, i32 13
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %93
  tail call void %97(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %3, ptr noundef %4) #10
  br label %104

100:                                              ; preds = %5
  %101 = zext i8 %2 to i32
  %102 = zext i8 %3 to i32
  %103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %101, i32 noundef %102) #11
  tail call void @kfree_skb_reason(ptr noundef %4, i32 noundef 0) #10
  br label %104

104:                                              ; preds = %100, %99, %93, %90, %14
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_hci_open_pipe(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca %struct.nci_data, align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nci_hci_dev, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nci_conn_info, ptr %7, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  store i8 %11, ptr %3, align 1
  %12 = getelementptr inbounds %struct.nci_data, ptr %3, i32 0, i32 1
  store i8 %1, ptr %12, align 1
  %13 = getelementptr inbounds %struct.nci_data, ptr %3, i32 0, i32 2
  store i8 3, ptr %13, align 1
  %14 = getelementptr inbounds %struct.nci_data, ptr %3, i32 0, i32 3
  store ptr null, ptr %14, align 1
  %15 = getelementptr inbounds %struct.nci_data, ptr %3, i32 0, i32 4
  store i32 0, ptr %15, align 1
  %16 = call i32 @nci_request(ptr noundef %0, ptr noundef nonnull @nci_hci_send_data_req, ptr noundef nonnull %3, i32 noundef 70) #10
  br label %17

17:                                               ; preds = %9, %2
  %18 = phi i32 [ %16, %9 ], [ -71, %2 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #10
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_hci_set_param(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = alloca %struct.nci_data, align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %6) #10
  %7 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = zext i8 %1 to i32
  %10 = getelementptr %struct.nci_hci_dev, ptr %8, i32 0, i32 5, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, -128
  br i1 %12, label %46, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nci_hci_dev, ptr %8, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %46, label %17

17:                                               ; preds = %13
  %18 = add i32 %4, 1
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef 3264) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %17
  store i8 %2, ptr %19, align 64
  %22 = getelementptr i8, ptr %19, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %22, ptr align 1 %3, i32 %4, i1 false)
  %23 = getelementptr inbounds %struct.nci_conn_info, ptr %15, i32 0, i32 3
  %24 = load i8, ptr %23, align 1
  store i8 %24, ptr %6, align 1
  %25 = getelementptr inbounds %struct.nci_data, ptr %6, i32 0, i32 1
  store i8 %11, ptr %25, align 1
  %26 = getelementptr inbounds %struct.nci_data, ptr %6, i32 0, i32 2
  store i8 1, ptr %26, align 1
  %27 = getelementptr inbounds %struct.nci_data, ptr %6, i32 0, i32 3
  store ptr %19, ptr %27, align 1
  %28 = getelementptr inbounds %struct.nci_data, ptr %6, i32 0, i32 4
  store i32 %18, ptr %28, align 1
  %29 = call i32 @nci_request(ptr noundef %0, ptr noundef nonnull @nci_hci_send_data_req, ptr noundef nonnull %6, i32 noundef 70) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.nci_conn_info, ptr %15, i32 0, i32 9
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 17
  %35 = load ptr, ptr %34, align 4
  %36 = load i8, ptr %35, align 1
  %37 = trunc i8 %36 to i6
  switch i6 %37, label %40 [
    i6 0, label %41
    i6 5, label %38
    i6 9, label %39
  ]

38:                                               ; preds = %31
  br label %41

39:                                               ; preds = %31
  br label %41

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %39, %38, %31
  %42 = phi i32 [ -1, %40 ], [ -62, %39 ], [ -95, %38 ], [ 0, %31 ]
  %43 = call ptr @skb_pull(ptr noundef %33, i32 noundef 1) #10
  br label %44

44:                                               ; preds = %41, %21
  %45 = phi i32 [ %42, %41 ], [ %29, %21 ]
  call void @kfree(ptr noundef nonnull %19) #10
  br label %46

46:                                               ; preds = %44, %17, %13, %5
  %47 = phi i32 [ %45, %44 ], [ -99, %5 ], [ -71, %13 ], [ -12, %17 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %6) #10
  ret i32 %47
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_hci_get_param(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef writeonly %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.nci_data, align 1
  store i8 %2, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %6) #10
  %7 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = zext i8 %1 to i32
  %10 = getelementptr %struct.nci_hci_dev, ptr %8, i32 0, i32 5, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, -128
  br i1 %12, label %43, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.nci_hci_dev, ptr %8, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nci_conn_info, ptr %15, i32 0, i32 3
  %19 = load i8, ptr %18, align 1
  store i8 %19, ptr %6, align 1
  %20 = getelementptr inbounds %struct.nci_data, ptr %6, i32 0, i32 1
  store i8 %11, ptr %20, align 1
  %21 = getelementptr inbounds %struct.nci_data, ptr %6, i32 0, i32 2
  store i8 2, ptr %21, align 1
  %22 = getelementptr inbounds %struct.nci_data, ptr %6, i32 0, i32 3
  store ptr %5, ptr %22, align 1
  %23 = getelementptr inbounds %struct.nci_data, ptr %6, i32 0, i32 4
  store i32 1, ptr %23, align 1
  %24 = call i32 @nci_request(ptr noundef %0, ptr noundef nonnull @nci_hci_send_data_req, ptr noundef nonnull %6, i32 noundef 70) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.nci_conn_info, ptr %15, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = load i8, ptr %30, align 1
  %32 = trunc i8 %31 to i6
  switch i6 %32, label %34 [
    i6 0, label %38
    i6 5, label %35
    i6 9, label %33
  ]

33:                                               ; preds = %26
  br label %35

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %33, %26
  %36 = phi i32 [ -1, %34 ], [ -62, %33 ], [ -95, %26 ]
  %37 = call ptr @skb_pull(ptr noundef %28, i32 noundef 1) #10
  br label %43

38:                                               ; preds = %26
  %39 = call ptr @skb_pull(ptr noundef %28, i32 noundef 1) #10
  %40 = icmp eq ptr %3, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %27, align 4
  store ptr %42, ptr %3, align 4
  br label %43

43:                                               ; preds = %41, %38, %35, %17, %13, %4
  %44 = phi i32 [ -99, %4 ], [ -71, %13 ], [ 0, %41 ], [ 0, %38 ], [ %24, %17 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %6) #10
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_hci_connect_gate(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = alloca %struct.nci_data, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.nci_data, align 1
  %8 = alloca %struct.nci_data, align 1
  %9 = alloca %struct.nci_hci_create_pipe_params, align 1
  %10 = icmp eq i8 %3, -127
  br i1 %10, label %121, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = zext i8 %2 to i32
  %15 = getelementptr %struct.nci_hci_dev, ptr %13, i32 0, i32 5, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, -128
  br i1 %17, label %18, label %121

18:                                               ; preds = %11
  %19 = icmp eq i8 %3, -128
  br i1 %19, label %20, label %71

20:                                               ; preds = %18
  switch i8 %2, label %22 [
    i8 6, label %71
    i8 0, label %21
  ]

21:                                               ; preds = %20
  br label %71

22:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #10
  %23 = getelementptr inbounds %struct.nci_hci_create_pipe_params, ptr %9, i32 0, i32 1
  store i8 0, ptr %9, align 1
  store i8 %1, ptr %23, align 1
  %24 = getelementptr inbounds %struct.nci_hci_create_pipe_params, ptr %9, i32 0, i32 2
  store i8 %2, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %8) #10
  %25 = getelementptr %struct.nci_hci_dev, ptr %13, i32 0, i32 5, i32 0
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, -128
  br i1 %27, label %56, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.nci_hci_dev, ptr %13, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %56, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.nci_conn_info, ptr %30, i32 0, i32 3
  %34 = load i8, ptr %33, align 1
  store i8 %34, ptr %8, align 1
  %35 = getelementptr inbounds %struct.nci_data, ptr %8, i32 0, i32 1
  store i8 %26, ptr %35, align 1
  %36 = getelementptr inbounds %struct.nci_data, ptr %8, i32 0, i32 2
  store i8 16, ptr %36, align 1
  %37 = getelementptr inbounds %struct.nci_data, ptr %8, i32 0, i32 3
  store ptr %9, ptr %37, align 1
  %38 = getelementptr inbounds %struct.nci_data, ptr %8, i32 0, i32 4
  store i32 3, ptr %38, align 1
  %39 = call i32 @nci_request(ptr noundef %0, ptr noundef nonnull @nci_hci_send_data_req, ptr noundef nonnull %8, i32 noundef 70) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.nci_conn_info, ptr %30, i32 0, i32 9
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 17
  %45 = load ptr, ptr %44, align 4
  %46 = load i8, ptr %45, align 1
  %47 = trunc i8 %46 to i6
  switch i6 %47, label %49 [
    i6 0, label %53
    i6 5, label %50
    i6 9, label %48
  ]

48:                                               ; preds = %41
  br label %50

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %48, %41
  %51 = phi i32 [ -1, %49 ], [ -62, %48 ], [ -95, %41 ]
  %52 = call ptr @skb_pull(ptr noundef %43, i32 noundef 1) #10
  br label %56

53:                                               ; preds = %41
  %54 = call ptr @skb_pull(ptr noundef %43, i32 noundef 1) #10
  %55 = load ptr, ptr %42, align 4
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %8) #10
  br label %62

56:                                               ; preds = %50, %28, %22
  %57 = phi i32 [ %51, %50 ], [ -71, %28 ], [ -99, %22 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %8) #10
  br label %60

58:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %8) #10
  %59 = icmp slt i32 %39, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %39, %58 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #10
  br label %121

62:                                               ; preds = %58, %53
  %63 = phi ptr [ %55, %53 ], [ null, %58 ]
  %64 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 17
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.nci_hci_create_pipe_resp, ptr %65, i32 0, i32 4
  %67 = load i8, ptr %66, align 1
  call void @kfree_skb_reason(ptr noundef %63, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #10
  %68 = icmp eq i8 %67, -128
  br i1 %68, label %121, label %69

69:                                               ; preds = %62
  %70 = load ptr, ptr %12, align 4
  br label %71

71:                                               ; preds = %69, %21, %20, %18
  %72 = phi ptr [ %13, %18 ], [ %13, %21 ], [ %13, %20 ], [ %70, %69 ]
  %73 = phi i8 [ %3, %18 ], [ 1, %21 ], [ 0, %20 ], [ %67, %69 ]
  %74 = phi i1 [ false, %18 ], [ false, %21 ], [ false, %20 ], [ true, %69 ]
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %7) #10
  %75 = getelementptr inbounds %struct.nci_hci_dev, ptr %72, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %7) #10
  br label %88

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.nci_conn_info, ptr %76, i32 0, i32 3
  %81 = load i8, ptr %80, align 1
  store i8 %81, ptr %7, align 1
  %82 = getelementptr inbounds %struct.nci_data, ptr %7, i32 0, i32 1
  store i8 %73, ptr %82, align 1
  %83 = getelementptr inbounds %struct.nci_data, ptr %7, i32 0, i32 2
  store i8 3, ptr %83, align 1
  %84 = getelementptr inbounds %struct.nci_data, ptr %7, i32 0, i32 3
  store ptr null, ptr %84, align 1
  %85 = getelementptr inbounds %struct.nci_data, ptr %7, i32 0, i32 4
  store i32 0, ptr %85, align 1
  %86 = call i32 @nci_request(ptr noundef %0, ptr noundef nonnull @nci_hci_send_data_req, ptr noundef nonnull %7, i32 noundef 70) #10
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %7) #10
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %113

88:                                               ; preds = %79, %78
  %89 = phi i32 [ -71, %78 ], [ %86, %79 ]
  br i1 %74, label %90, label %121

90:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 %73, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %5) #10
  %91 = load ptr, ptr %12, align 4
  %92 = getelementptr %struct.nci_hci_dev, ptr %91, i32 0, i32 5, i32 0
  %93 = load i8, ptr %92, align 1
  %94 = icmp eq i8 %93, -128
  br i1 %94, label %112, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.nci_hci_dev, ptr %91, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %112, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.nci_conn_info, ptr %97, i32 0, i32 3
  %101 = load i8, ptr %100, align 1
  store i8 %101, ptr %5, align 1
  %102 = getelementptr inbounds %struct.nci_data, ptr %5, i32 0, i32 1
  store i8 %93, ptr %102, align 1
  %103 = getelementptr inbounds %struct.nci_data, ptr %5, i32 0, i32 2
  store i8 17, ptr %103, align 1
  %104 = getelementptr inbounds %struct.nci_data, ptr %5, i32 0, i32 3
  store ptr %6, ptr %104, align 1
  %105 = getelementptr inbounds %struct.nci_data, ptr %5, i32 0, i32 4
  store i32 1, ptr %105, align 1
  %106 = call i32 @nci_request(ptr noundef %0, ptr noundef nonnull @nci_hci_send_data_req, ptr noundef nonnull %5, i32 noundef 70) #10
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.nci_conn_info, ptr %97, i32 0, i32 9
  %110 = load ptr, ptr %109, align 4
  %111 = call ptr @skb_pull(ptr noundef %110, i32 noundef 1) #10
  br label %112

112:                                              ; preds = %108, %99, %95, %90
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  br label %121

113:                                              ; preds = %79
  %114 = load ptr, ptr %12, align 4
  %115 = zext i8 %73 to i32
  %116 = getelementptr %struct.nci_hci_dev, ptr %114, i32 0, i32 4, i32 %115
  store i8 %2, ptr %116, align 2
  %117 = load ptr, ptr %12, align 4
  %118 = getelementptr %struct.nci_hci_dev, ptr %117, i32 0, i32 4, i32 %115, i32 1
  store i8 %1, ptr %118, align 1
  %119 = load ptr, ptr %12, align 4
  %120 = getelementptr %struct.nci_hci_dev, ptr %119, i32 0, i32 5, i32 %14
  store i8 %73, ptr %120, align 1
  br label %121

121:                                              ; preds = %113, %112, %88, %62, %60, %11, %4
  %122 = phi i32 [ 0, %113 ], [ 0, %4 ], [ -98, %11 ], [ %61, %60 ], [ %39, %62 ], [ %89, %112 ], [ %89, %88 ]
  ret i32 %122
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_hci_dev_session_init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nci_hci_dev, ptr %4, i32 0, i32 7
  store i32 0, ptr %5, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.nci_hci_dev, ptr %6, i32 0, i32 6
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.nci_hci_dev, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %95, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.nci_conn_info, ptr %10, i32 0, i32 7
  store ptr @nci_hci_data_received_cb, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nci_conn_info, ptr %10, i32 0, i32 8
  store ptr %0, ptr %14, align 4
  %15 = load ptr, ptr %3, align 4
  br label %16

16:                                               ; preds = %16, %12
  %17 = phi i32 [ 0, %12 ], [ %20, %16 ]
  %18 = getelementptr %struct.nci_hci_dev, ptr %15, i32 0, i32 4, i32 %17
  store i8 -1, ptr %18, align 2
  %19 = getelementptr %struct.nci_hci_dev, ptr %15, i32 0, i32 4, i32 %17, i32 1
  store i8 -128, ptr %19, align 1
  %20 = add nuw nsw i32 %17, 1
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %22, label %16

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.nci_hci_dev, ptr %15, i32 0, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %23, i8 -128, i32 256, i1 false) #10
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr inbounds %struct.nci_hci_dev, ptr %24, i32 0, i32 3, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %95

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.nci_hci_dev, ptr %24, i32 0, i32 3, i32 1, i32 0, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr inbounds %struct.nci_hci_dev, ptr %24, i32 0, i32 3, i32 1, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = tail call i32 @nci_hci_connect_gate(ptr noundef %0, i8 noundef zeroext %30, i8 noundef zeroext 0, i8 noundef zeroext %32)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %95, label %35

35:                                               ; preds = %28
  %36 = call i32 @nci_hci_get_param(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %2)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %95, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 5
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr inbounds %struct.nci_hci_dev, ptr %44, i32 0, i32 3, i32 2
  %46 = call i32 @strlen(ptr noundef %45)
  %47 = icmp eq i32 %41, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 17
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 @bcmp(ptr %45, ptr %50, i32 %41)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nci_ops, ptr %55, i32 0, i32 12
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = call i32 %57(ptr noundef %0) #10
  br label %92

61:                                               ; preds = %53, %48, %43, %38
  %62 = call i32 @nci_hci_clear_all_pipes(ptr noundef %0)
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %92, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %3, align 4
  %66 = getelementptr inbounds %struct.nci_hci_dev, ptr %65, i32 0, i32 3
  %67 = load i8, ptr %66, align 4
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.nci_hci_dev, ptr %65, i32 0, i32 3, i32 1
  br label %75

71:                                               ; preds = %75
  %72 = getelementptr %struct.nci_hci_gate, ptr %77, i32 1
  %73 = add i8 %76, -1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %71, %69
  %76 = phi i8 [ %73, %71 ], [ %67, %69 ]
  %77 = phi ptr [ %72, %71 ], [ %70, %69 ]
  %78 = getelementptr inbounds %struct.nci_hci_gate, ptr %77, i32 0, i32 2
  %79 = load i8, ptr %78, align 1
  %80 = load i8, ptr %77, align 1
  %81 = getelementptr inbounds %struct.nci_hci_gate, ptr %77, i32 0, i32 1
  %82 = load i8, ptr %81, align 1
  %83 = call i32 @nci_hci_connect_gate(ptr noundef %0, i8 noundef zeroext %79, i8 noundef zeroext %80, i8 noundef zeroext %82) #10
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %92, label %71

85:                                               ; preds = %71
  %86 = load ptr, ptr %3, align 4
  br label %87

87:                                               ; preds = %85, %64
  %88 = phi ptr [ %86, %85 ], [ %65, %64 ]
  %89 = getelementptr inbounds %struct.nci_hci_dev, ptr %88, i32 0, i32 3, i32 2
  %90 = call i32 @strlen(ptr noundef %89)
  %91 = call i32 @nci_hci_set_param(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef %89, i32 noundef %90)
  br label %92

92:                                               ; preds = %87, %75, %61, %59
  %93 = phi i32 [ %62, %61 ], [ %91, %87 ], [ %60, %59 ], [ %83, %75 ]
  %94 = load ptr, ptr %2, align 4
  call void @kfree_skb_reason(ptr noundef %94, i32 noundef 0) #10
  br label %95

95:                                               ; preds = %92, %35, %28, %22, %1
  %96 = phi i32 [ %93, %92 ], [ -71, %1 ], [ -71, %22 ], [ %33, %28 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %96
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nci_hci_allocate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 740) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nci_hci_dev, ptr %3, i32 0, i32 8
  %7 = getelementptr inbounds %struct.nci_hci_dev, ptr %3, i32 0, i32 8, i32 2
  store i32 0, ptr %7, align 8
  store ptr %6, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nci_hci_dev, ptr %3, i32 0, i32 8, i32 0, i32 0, i32 1
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds %struct.nci_hci_dev, ptr %3, i32 0, i32 8, i32 1
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nci_hci_dev, ptr %3, i32 0, i32 9
  store i32 -32, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nci_hci_dev, ptr %3, i32 0, i32 9, i32 1
  store volatile ptr %11, ptr %11, align 8
  %12 = getelementptr inbounds %struct.nci_hci_dev, ptr %3, i32 0, i32 9, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nci_hci_dev, ptr %3, i32 0, i32 9, i32 2
  store ptr @nci_hci_msg_rx_work, ptr %13, align 8
  %14 = getelementptr inbounds %struct.nci_hci_dev, ptr %3, i32 0, i32 10
  %15 = getelementptr inbounds %struct.nci_hci_dev, ptr %3, i32 0, i32 10, i32 2
  store i32 0, ptr %15, align 8
  store ptr %14, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nci_hci_dev, ptr %3, i32 0, i32 10, i32 0, i32 0, i32 1
  store ptr %14, ptr %16, align 8
  %17 = getelementptr inbounds %struct.nci_hci_dev, ptr %3, i32 0, i32 10, i32 1
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nci_hci_dev, ptr %3, i32 0, i32 1
  store ptr %0, ptr %18, align 4
  br label %19

19:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nci_hci_msg_rx_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 16
  %3 = tail call ptr @skb_dequeue(ptr noundef %2) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -704
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %3, %5 ], [ %20, %7 ]
  %9 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 127
  %13 = tail call ptr @skb_pull(ptr noundef nonnull %8, i32 noundef 1) #10
  %14 = load ptr, ptr %9, align 4
  %15 = load i8, ptr %14, align 1
  %16 = lshr i8 %15, 6
  %17 = and i8 %15, 63
  %18 = tail call ptr @skb_pull(ptr noundef nonnull %8, i32 noundef 1) #10
  %19 = load ptr, ptr %6, align 4
  tail call fastcc void @nci_hci_hcp_message_rx(ptr noundef %19, i8 noundef zeroext %12, i8 noundef zeroext %16, i8 noundef zeroext %17, ptr noundef nonnull %8)
  %20 = tail call ptr @skb_dequeue(ptr noundef %2) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7

22:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nci_hci_deallocate(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_send_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

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
