; ModuleID = '/llk/IR/drivers/bluetooth/hci_h4.c_pt.bc'
source_filename = "../drivers/bluetooth/hci_h4.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_h4_recv_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22h4_recv_buf\22\09\09\09\09\09"
module asm "__kstrtabns_h4_recv_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.hci_uart_proto = type { i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.h4_recv_pkt = type { i8, i8, i8, i8, i16, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.hci_uart = type { ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.work_struct, ptr, %struct.percpu_rw_semaphore, ptr, ptr, i32, i32, i32, i8, i8 }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
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
%struct.h4_struct = type { ptr, %struct.sk_buff_head }

@h4p = internal constant %struct.hci_uart_proto { i32 0, ptr @.str, i32 0, i32 0, i32 0, ptr @h4_open, ptr @h4_close, ptr @h4_flush, ptr null, ptr null, ptr @h4_recv, ptr @h4_enqueue, ptr @h4_dequeue }, align 4
@__kstrtab_h4_recv_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_h4_recv_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_h4_recv_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @h4_recv_buf to i32), ptr @__kstrtab_h4_recv_buf, ptr @__kstrtabns_h4_recv_buf }, section "___ksymtab_gpl+h4_recv_buf", align 4
@.str = private unnamed_addr constant [3 x i8] c"H4\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@h4_recv_pkts = internal constant [4 x %struct.h4_recv_pkt] [%struct.h4_recv_pkt { i8 2, i8 4, i8 2, i8 2, i16 1028, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 3, i8 3, i8 2, i8 1, i16 255, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 4, i8 2, i8 1, i8 1, i16 260, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 5, i8 4, i8 2, i8 2, i16 1028, ptr @hci_recv_frame }], align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: Frame reassembly failed (%d)\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_h4_recv_buf], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @h4_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @hci_uart_register_proto(ptr noundef nonnull @h4p) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_register_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @h4_deinit() local_unnamed_addr #0 section ".exit.text" {
  %1 = tail call i32 @hci_uart_unregister_proto(ptr noundef nonnull @h4p) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_unregister_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @h4_recv_buf(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) #2 {
  %7 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %8 = select i1 %7, ptr null, ptr %1
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %187, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.hci_uart, ptr %12, i32 0, i32 14
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i8 1, i8 %14
  %17 = getelementptr inbounds %struct.hci_uart, ptr %12, i32 0, i32 15
  %18 = icmp sgt i32 %5, 0
  %19 = zext i8 %16 to i32
  %20 = zext i8 %16 to i16
  br label %21

21:                                               ; preds = %182, %10
  %22 = phi ptr [ %8, %10 ], [ %183, %182 ]
  %23 = phi ptr [ %2, %10 ], [ %96, %182 ]
  %24 = phi i32 [ %3, %10 ], [ %95, %182 ]
  %25 = load i8, ptr %17, align 1
  %26 = icmp ne i8 %25, 0
  %27 = icmp sgt i32 %24, 0
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = add nsw i32 %24, -1
  %31 = add i8 %25, -1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i8 %31, 0
  %34 = call i32 @llvm.umin.i32(i32 %30, i32 %32)
  %35 = select i1 %33, i32 0, i32 %34
  %36 = getelementptr i8, ptr %23, i32 1
  %37 = getelementptr i8, ptr %36, i32 %35
  %38 = trunc i32 %35 to i8
  %39 = sub nsw i32 %30, %35
  %40 = sub i8 %31, %38
  store i8 %40, ptr %17, align 1
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %187, label %42

42:                                               ; preds = %29, %21
  %43 = phi ptr [ %37, %29 ], [ %23, %21 ]
  %44 = phi i32 [ %39, %29 ], [ %24, %21 ]
  %45 = icmp eq ptr %22, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 3, i32 2
  %48 = load i16, ptr %47, align 2
  br label %82

49:                                               ; preds = %42
  br i1 %18, label %50, label %187

50:                                               ; preds = %49
  %51 = load i8, ptr %43, align 1
  br label %52

52:                                               ; preds = %64, %50
  %53 = phi i32 [ 0, %50 ], [ %65, %64 ]
  %54 = getelementptr %struct.h4_recv_pkt, ptr %4, i32 %53
  %55 = load i8, ptr %54, align 4
  %56 = icmp eq i8 %51, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = getelementptr %struct.h4_recv_pkt, ptr %4, i32 %53, i32 4
  %59 = load i16, ptr %58, align 4
  %60 = zext i16 %59 to i32
  %61 = add nuw nsw i32 %60, 8
  %62 = tail call ptr @__alloc_skb(i32 noundef %61, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %63 = icmp eq ptr %62, null
  br i1 %63, label %187, label %67

64:                                               ; preds = %52
  %65 = add nuw nsw i32 %53, 1
  %66 = icmp eq i32 %65, %5
  br i1 %66, label %187, label %52

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 17
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 8
  store ptr %70, ptr %68, align 4
  %71 = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 14
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr i8, ptr %72, i32 8
  store ptr %73, ptr %71, align 8
  %74 = load i8, ptr %54, align 4
  %75 = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 3
  store i8 %74, ptr %75, align 8
  %76 = getelementptr %struct.h4_recv_pkt, ptr %4, i32 %53, i32 1
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i16
  %79 = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 3, i32 2
  store i16 %78, ptr %79, align 2
  %80 = add i32 %44, -1
  %81 = getelementptr i8, ptr %43, i32 1
  br label %82

82:                                               ; preds = %67, %46
  %83 = phi i16 [ %48, %46 ], [ %78, %67 ]
  %84 = phi i32 [ %44, %46 ], [ %80, %67 ]
  %85 = phi ptr [ %43, %46 ], [ %81, %67 ]
  %86 = phi ptr [ %22, %46 ], [ %62, %67 ]
  %87 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 3, i32 2
  %89 = zext i16 %83 to i32
  %90 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 5
  %91 = load i32, ptr %90, align 8
  %92 = sub i32 %89, %91
  %93 = tail call i32 @llvm.umin.i32(i32 %92, i32 %84)
  %94 = tail call ptr @skb_put(ptr noundef nonnull %86, i32 noundef %93) #6
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %94, ptr align 1 %85, i32 %93, i1 false) #6
  %95 = sub i32 %84, %93
  %96 = getelementptr i8, ptr %85, i32 %93
  %97 = load i32, ptr %90, align 8
  %98 = load i16, ptr %88, align 2
  %99 = zext i16 %98 to i32
  %100 = icmp ult i32 %97, %99
  br i1 %100, label %182, label %101

101:                                              ; preds = %82
  br i1 %18, label %102, label %185

102:                                              ; preds = %101
  %103 = load i8, ptr %87, align 8
  br label %104

104:                                              ; preds = %109, %102
  %105 = phi i32 [ 0, %102 ], [ %110, %109 ]
  %106 = getelementptr %struct.h4_recv_pkt, ptr %4, i32 %105
  %107 = load i8, ptr %106, align 4
  %108 = icmp eq i8 %103, %107
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = add nuw nsw i32 %105, 1
  %111 = icmp eq i32 %110, %5
  br i1 %111, label %185, label %104

112:                                              ; preds = %104
  %113 = getelementptr %struct.h4_recv_pkt, ptr %4, i32 %105, i32 1
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %97, %115
  br i1 %116, label %117, label %172

117:                                              ; preds = %112
  %118 = getelementptr %struct.h4_recv_pkt, ptr %4, i32 %105, i32 3
  %119 = load i8, ptr %118, align 1
  switch i8 %119, label %185 [
    i8 0, label %172
    i8 1, label %120
    i8 2, label %145
  ]

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 17
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr %struct.h4_recv_pkt, ptr %4, i32 %105, i32 2
  %124 = load i8, ptr %123, align 2
  %125 = zext i8 %124 to i32
  %126 = getelementptr i8, ptr %122, i32 %125
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i16
  %129 = zext i8 %127 to i32
  %130 = add i16 %98, %128
  store i16 %130, ptr %88, align 2
  %131 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 6
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %120
  %135 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 15
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 14
  %138 = load ptr, ptr %137, align 8
  %139 = ptrtoint ptr %136 to i32
  %140 = ptrtoint ptr %138 to i32
  %141 = sub i32 %139, %140
  br label %142

142:                                              ; preds = %134, %120
  %143 = phi i32 [ %141, %134 ], [ 0, %120 ]
  %144 = icmp slt i32 %143, %129
  br i1 %144, label %185, label %169

145:                                              ; preds = %117
  %146 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 17
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr %struct.h4_recv_pkt, ptr %4, i32 %105, i32 2
  %149 = load i8, ptr %148, align 2
  %150 = zext i8 %149 to i32
  %151 = getelementptr i8, ptr %147, i32 %150
  %152 = load i16, ptr %151, align 1
  %153 = zext i16 %152 to i32
  %154 = add i16 %152, %98
  store i16 %154, ptr %88, align 2
  %155 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 6
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %145
  %159 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 15
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 14
  %162 = load ptr, ptr %161, align 8
  %163 = ptrtoint ptr %160 to i32
  %164 = ptrtoint ptr %162 to i32
  %165 = sub i32 %163, %164
  br label %166

166:                                              ; preds = %158, %145
  %167 = phi i32 [ %165, %158 ], [ 0, %145 ]
  %168 = icmp slt i32 %167, %153
  br i1 %168, label %185, label %169

169:                                              ; preds = %166, %142
  %170 = phi i16 [ %152, %166 ], [ %128, %142 ]
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %169, %117, %112
  %173 = add i32 %97, 1
  %174 = urem i32 %173, %19
  %175 = sub nsw i32 %19, %174
  %176 = trunc i32 %175 to i16
  %177 = srem i16 %176, %20
  %178 = trunc i16 %177 to i8
  store i8 %178, ptr %17, align 1
  %179 = getelementptr %struct.h4_recv_pkt, ptr %4, i32 %105, i32 5
  %180 = load ptr, ptr %179, align 4
  %181 = tail call i32 %180(ptr noundef %0, ptr noundef nonnull %86) #6
  br label %182

182:                                              ; preds = %172, %169, %82
  %183 = phi ptr [ %86, %82 ], [ %86, %169 ], [ null, %172 ]
  %184 = icmp eq i32 %95, 0
  br i1 %184, label %187, label %21

185:                                              ; preds = %166, %142, %117, %109, %101
  %186 = phi ptr [ inttoptr (i32 -84 to ptr), %109 ], [ inttoptr (i32 -84 to ptr), %101 ], [ inttoptr (i32 -90 to ptr), %142 ], [ inttoptr (i32 -90 to ptr), %166 ], [ inttoptr (i32 -84 to ptr), %117 ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %86, i32 noundef 0) #6
  br label %187

187:                                              ; preds = %185, %182, %64, %57, %49, %29, %6
  %188 = phi ptr [ %8, %6 ], [ %186, %185 ], [ inttoptr (i32 -84 to ptr), %64 ], [ inttoptr (i32 -84 to ptr), %49 ], [ %183, %182 ], [ %22, %29 ], [ inttoptr (i32 -12 to ptr), %57 ]
  ret ptr %188
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @h4_open(ptr nocapture noundef writeonly %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 20) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.h4_struct, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.h4_struct, ptr %3, i32 0, i32 1, i32 2
  store i32 0, ptr %7, align 8
  store ptr %6, ptr %6, align 4
  %8 = getelementptr inbounds %struct.h4_struct, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds %struct.h4_struct, ptr %3, i32 0, i32 1, i32 1
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 9
  store ptr %3, ptr %10, align 4
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i32 [ 0, %5 ], [ -12, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @h4_close(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.h4_struct, ptr %3, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %4) #6
  %5 = load ptr, ptr %3, align 4
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #6
  store ptr null, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @h4_flush(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.h4_struct, ptr %3, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @h4_recv(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 3
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %5, align 4
  %14 = tail call ptr @h4_recv_buf(ptr noundef %12, ptr noundef %13, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @h4_recv_pkts, i32 noundef 4)
  store ptr %14, ptr %5, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = ptrtoint ptr %14 to i32
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr inbounds %struct.hci_dev, ptr %18, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1, ptr noundef %19, i32 noundef %17) #6
  store ptr null, ptr %5, align 4
  br label %20

20:                                               ; preds = %16, %10, %3
  %21 = phi i32 [ %17, %16 ], [ -49, %3 ], [ %2, %10 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @h4_enqueue(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @skb_push(ptr noundef %1, i32 noundef 1) #6
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %7 = load i8, ptr %6, align 8
  store i8 %7, ptr %5, align 1
  %8 = getelementptr inbounds %struct.h4_struct, ptr %4, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %8, ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @h4_dequeue(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.hci_uart, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.h4_struct, ptr %3, i32 0, i32 1
  %5 = tail call ptr @skb_dequeue(ptr noundef %4) #6
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
