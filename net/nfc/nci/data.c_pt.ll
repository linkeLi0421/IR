; ModuleID = '/llk/IR/net/nfc/nci/data.c_pt.bc'
source_filename = "../net/nfc/nci/data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_conn_max_data_pkt_payload_size:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_conn_max_data_pkt_payload_size\22\09\09\09\09\09"
module asm "__kstrtabns_nci_conn_max_data_pkt_payload_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_send_data:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_send_data\22\09\09\09\09\09"
module asm "__kstrtabns_nci_send_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nci_conn_info = type { %struct.list_head, ptr, i8, i8, i8, %struct.atomic_t, i8, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
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
%struct.nci_data_hdr = type { i8, i8, i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nfc_genl_data = type { i32, %struct.mutex }

@.str = private unnamed_addr constant [48 x i8] c"\013nci: %s: no rx callback, dropping rx data...\0A\00", align 1
@__func__.nci_data_exchange_complete = private unnamed_addr constant [27 x i8] c"nci_data_exchange_complete\00", align 1
@__kstrtab_nci_conn_max_data_pkt_payload_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_conn_max_data_pkt_payload_size = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_conn_max_data_pkt_payload_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_conn_max_data_pkt_payload_size to i32), ptr @__kstrtab_nci_conn_max_data_pkt_payload_size, ptr @__kstrtabns_nci_conn_max_data_pkt_payload_size }, section "___ksymtab+nci_conn_max_data_pkt_payload_size", align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"\013nci: %s: failed to fragment tx data packet\0A\00", align 1
@__func__.nci_send_data = private unnamed_addr constant [14 x i8] c"nci_send_data\00", align 1
@__kstrtab_nci_send_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_send_data = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_send_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_send_data to i32), ptr @__kstrtab_nci_send_data, ptr @__kstrtabns_nci_send_data }, section "___ksymtab+nci_send_data", align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"\013nci: %s: error adding room for accumulated rx data\0A\00", align 1
@__func__.nci_add_rx_data_frag = private unnamed_addr constant [21 x i8] c"nci_add_rx_data_frag\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\013nci: %s: unable to handle received data\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_nci_conn_max_data_pkt_payload_size, ptr @__ksymtab_nci_send_data], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nci_data_exchange_complete(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = zext i8 %2 to i32
  %6 = tail call ptr @nci_get_conn_info_by_conn_id(ptr noundef %0, i32 noundef %5) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #6
  br label %23

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.nci_conn_info, ptr %6, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nci_conn_info, ptr %6, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 12
  %15 = tail call i32 @del_timer_sync(ptr noundef %14) #6
  %16 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %16) #6
  %17 = icmp eq ptr %11, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  tail call void %11(ptr noundef %13, ptr noundef %1, i32 noundef %3) #6
  br label %23

19:                                               ; preds = %9
  %20 = icmp eq ptr %1, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nci_data_exchange_complete) #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %1, i32 noundef 0) #6
  br label %23

23:                                               ; preds = %21, %19, %18, %8
  %24 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %24) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nci_get_conn_info_by_conn_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_conn_max_data_pkt_payload_size(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = zext i8 %1 to i32
  %4 = tail call ptr @nci_get_conn_info_by_conn_id(ptr noundef %0, i32 noundef %3) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nci_conn_info, ptr %4, i32 0, i32 4
  %8 = load i8, ptr %7, align 2
  %9 = zext i8 %8 to i32
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ -71, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_send_data(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #0 {
  %4 = alloca %struct.sk_buff_head, align 4
  %5 = zext i8 %1 to i32
  %6 = tail call ptr @nci_get_conn_info_by_conn_id(ptr noundef %0, i32 noundef %5) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %126, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nci_conn_info, ptr %6, i32 0, i32 4
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = icmp ugt i32 %10, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %8
  %16 = tail call ptr @skb_push(ptr noundef %2, i32 noundef 3) #6
  %17 = getelementptr inbounds %struct.nci_data_hdr, ptr %16, i32 0, i32 1
  store i8 0, ptr %17, align 1
  %18 = trunc i32 %10 to i8
  %19 = getelementptr inbounds %struct.nci_data_hdr, ptr %16, i32 0, i32 2
  store i8 %18, ptr %19, align 1
  store i8 %1, ptr %16, align 1
  %20 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 21
  tail call void @skb_queue_tail(ptr noundef %20, ptr noundef %2) #6
  br label %120

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %24 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 0, ptr %24, align 4, !annotation !8
  %25 = tail call ptr @nci_get_conn_info_by_conn_id(ptr noundef %0, i32 noundef %5) #6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %117, label %27

27:                                               ; preds = %21
  store ptr %4, ptr %4, align 4
  %28 = getelementptr inbounds %struct.anon.77, ptr %4, i32 0, i32 1
  store ptr %4, ptr %28, align 4
  %29 = getelementptr inbounds %struct.sk_buff_head, ptr %4, i32 0, i32 1
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nci_conn_info, ptr %25, i32 0, i32 4
  %31 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 3
  %32 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 4
  br label %33

33:                                               ; preds = %51, %27
  %34 = phi i32 [ %10, %27 ], [ %76, %51 ]
  %35 = phi ptr [ %23, %27 ], [ %75, %51 ]
  %36 = load i8, ptr %30, align 2
  %37 = zext i8 %36 to i32
  %38 = call i32 @llvm.smin.i32(i32 %34, i32 %37) #6
  %39 = load i32, ptr %31, align 4
  %40 = load i32, ptr %32, align 4
  %41 = add i32 %39, 3
  %42 = add i32 %41, %38
  %43 = add i32 %42, %40
  %44 = call ptr @__alloc_skb(i32 noundef %43, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load ptr, ptr %4, align 4
  %48 = icmp eq ptr %47, %4
  %49 = icmp eq ptr %47, null
  %50 = or i1 %48, %49
  br i1 %50, label %117, label %104

51:                                               ; preds = %33
  %52 = load i32, ptr %31, align 4
  %53 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 17
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 3
  %56 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 14
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr i8, ptr %57, i32 3
  %59 = getelementptr i8, ptr %55, i32 %52
  store ptr %59, ptr %53, align 4
  %60 = getelementptr i8, ptr %58, i32 %52
  store ptr %60, ptr %56, align 8
  %61 = call ptr @skb_put(ptr noundef nonnull %44, i32 noundef %38) #6
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %61, ptr align 1 %35, i32 %38, i1 false) #6
  %62 = icmp sgt i32 %34, %37
  %63 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 5
  %64 = load i32, ptr %63, align 8
  %65 = call ptr @skb_push(ptr noundef nonnull %44, i32 noundef 3) #6
  %66 = getelementptr inbounds %struct.nci_data_hdr, ptr %65, i32 0, i32 1
  store i8 0, ptr %66, align 1
  %67 = trunc i32 %64 to i8
  %68 = getelementptr inbounds %struct.nci_data_hdr, ptr %65, i32 0, i32 2
  store i8 %67, ptr %68, align 1
  %69 = select i1 %62, i8 16, i8 0
  %70 = or i8 %69, %1
  store i8 %70, ptr %65, align 1
  %71 = load ptr, ptr %28, align 4
  store volatile ptr %4, ptr %44, align 8
  %72 = getelementptr inbounds %struct.anon.49, ptr %44, i32 0, i32 1
  store volatile ptr %71, ptr %72, align 4
  store volatile ptr %44, ptr %28, align 4
  store volatile ptr %44, ptr %71, align 4
  %73 = load i32, ptr %29, align 4
  %74 = add i32 %73, 1
  store volatile i32 %74, ptr %29, align 4
  %75 = getelementptr i8, ptr %35, i32 %38
  %76 = sub i32 %34, %38
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %33

78:                                               ; preds = %51
  %79 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 21
  %80 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 21, i32 2
  %81 = call i32 @_raw_spin_lock_irqsave(ptr noundef %80) #6
  %82 = load ptr, ptr %4, align 4
  %83 = icmp eq ptr %82, %4
  %84 = icmp eq ptr %82, null
  %85 = or i1 %83, %84
  br i1 %85, label %116, label %86

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 21, i32 0, i32 0, i32 1
  %88 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 21, i32 1
  br label %89

89:                                               ; preds = %89, %86
  %90 = phi ptr [ %82, %86 ], [ %100, %89 ]
  %91 = load i32, ptr %29, align 4
  %92 = add i32 %91, -1
  store volatile i32 %92, ptr %29, align 4
  %93 = load ptr, ptr %90, align 8
  %94 = getelementptr inbounds %struct.anon.49, ptr %90, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  store ptr null, ptr %94, align 4
  store ptr null, ptr %90, align 8
  %96 = getelementptr inbounds %struct.anon.49, ptr %93, i32 0, i32 1
  store volatile ptr %95, ptr %96, align 4
  store volatile ptr %93, ptr %95, align 8
  %97 = load ptr, ptr %87, align 4
  store volatile ptr %79, ptr %90, align 8
  store volatile ptr %97, ptr %94, align 4
  store volatile ptr %90, ptr %87, align 4
  store volatile ptr %90, ptr %97, align 4
  %98 = load i32, ptr %88, align 4
  %99 = add i32 %98, 1
  store volatile i32 %99, ptr %88, align 4
  %100 = load ptr, ptr %4, align 4
  %101 = icmp eq ptr %100, %4
  %102 = icmp eq ptr %100, null
  %103 = or i1 %101, %102
  br i1 %103, label %116, label %89

104:                                              ; preds = %104, %46
  %105 = phi ptr [ %112, %104 ], [ %47, %46 ]
  %106 = load i32, ptr %29, align 4
  %107 = add i32 %106, -1
  store volatile i32 %107, ptr %29, align 4
  %108 = load ptr, ptr %105, align 8
  %109 = getelementptr inbounds %struct.anon.49, ptr %105, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  store ptr null, ptr %109, align 4
  store ptr null, ptr %105, align 8
  %111 = getelementptr inbounds %struct.anon.49, ptr %108, i32 0, i32 1
  store volatile ptr %110, ptr %111, align 4
  store volatile ptr %108, ptr %110, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %105, i32 noundef 0) #6
  %112 = load ptr, ptr %4, align 4
  %113 = icmp eq ptr %112, %4
  %114 = icmp eq ptr %112, null
  %115 = or i1 %113, %114
  br i1 %115, label %117, label %104

116:                                              ; preds = %89, %78
  call void @_raw_spin_unlock_irqrestore(ptr noundef %80, i32 noundef %81) #6
  call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  br label %120

117:                                              ; preds = %104, %46, %21
  %118 = phi i32 [ -12, %46 ], [ -71, %21 ], [ -12, %104 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nci_send_data) #7
  br label %126

120:                                              ; preds = %116, %15
  %121 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 8
  store i8 %1, ptr %121, align 4
  %122 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 17
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 18
  %125 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %123, ptr noundef %124) #6
  br label %128

126:                                              ; preds = %117, %3
  %127 = phi i32 [ %118, %117 ], [ -71, %3 ]
  call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #6
  br label %128

128:                                              ; preds = %126, %120
  %129 = phi i32 [ 0, %120 ], [ %127, %126 ]
  ret i32 %129
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nci_rx_data_packet(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 15
  %7 = zext i8 %6 to i32
  %8 = tail call ptr @nci_get_conn_info_by_conn_id(ptr noundef %0, i32 noundef %7) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %91, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 3) #6
  %12 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 28
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %21 [
    i32 2, label %14
    i32 1, label %14
    i32 3, label %14
    i32 7, label %14
  ]

14:                                               ; preds = %10, %10, %10, %10
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %17, -1
  %19 = getelementptr i8, ptr %15, i32 %18
  %20 = load i8, ptr %19, align 1
  tail call void @skb_trim(ptr noundef %1, i32 noundef %18) #6
  br label %21

21:                                               ; preds = %14, %10
  %22 = phi i8 [ %20, %14 ], [ 0, %10 ]
  %23 = tail call i32 @nci_to_errno(i8 noundef zeroext %22) #6
  %24 = trunc i32 %23 to i8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = and i32 %23, 255
  br label %78

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 43
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %74, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 5
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %36 = load i8, ptr %35, align 2
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.skb_shared_info, ptr %41, i32 0, i32 10
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 65535
  %45 = ashr i32 %43, 16
  %46 = sub nsw i32 %44, %45
  %47 = icmp ne i32 %46, 1
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %39, %32
  %50 = phi i32 [ %48, %39 ], [ 0, %32 ]
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %53 = load ptr, ptr %52, align 8
  %54 = ptrtoint ptr %51 to i32
  %55 = ptrtoint ptr %53 to i32
  %56 = sub i32 %54, %55
  %57 = tail call i32 @llvm.usub.sat.i32(i32 %34, i32 %56) #6
  %58 = or i32 %57, %50
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %49
  %61 = add i32 %57, 63
  %62 = and i32 %61, -64
  %63 = tail call i32 @pskb_expand_head(ptr noundef %1, i32 noundef %62, i32 noundef 0, i32 noundef 2592) #6
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.nci_add_rx_data_frag) #7
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #6
  %67 = load ptr, ptr %29, align 4
  tail call void @kfree_skb_reason(ptr noundef %67, i32 noundef 0) #6
  store ptr null, ptr %29, align 4
  br label %78

68:                                               ; preds = %60, %49
  %69 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %34) #6
  %70 = load ptr, ptr %29, align 4
  %71 = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 17
  %72 = load ptr, ptr %71, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %69, ptr align 1 %72, i32 %34, i1 false) #6
  %73 = load ptr, ptr %29, align 4
  tail call void @kfree_skb_reason(ptr noundef %73, i32 noundef 0) #6
  store ptr null, ptr %29, align 4
  br label %74

74:                                               ; preds = %68, %28
  %75 = and i8 %5, 16
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store ptr %1, ptr %29, align 4
  br label %91

78:                                               ; preds = %74, %65, %26
  %79 = phi i32 [ %27, %26 ], [ -12, %65 ], [ 0, %74 ]
  %80 = phi ptr [ %1, %26 ], [ null, %65 ], [ %1, %74 ]
  %81 = load ptr, ptr %0, align 4
  %82 = getelementptr inbounds %struct.nfc_dev, ptr %81, i32 0, i32 8
  %83 = load i8, ptr %82, align 2
  %84 = icmp eq i8 %83, 1
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = tail call i32 @nfc_tm_data_received(ptr noundef %81, ptr noundef %80) #6
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nci_add_rx_data_frag) #7
  br label %91

90:                                               ; preds = %78
  tail call void @nci_data_exchange_complete(ptr noundef %0, ptr noundef %80, i8 noundef zeroext %6, i32 noundef %79) #6
  br label %91

91:                                               ; preds = %90, %88, %85, %77, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_to_errno(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_tm_data_received(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
