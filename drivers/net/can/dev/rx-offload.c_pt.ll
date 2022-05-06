; ModuleID = '/llk/IR/drivers/net/can/dev/rx-offload.c_pt.bc'
source_filename = "../drivers/net/can/dev/rx-offload.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_rx_offload_irq_offload_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22can_rx_offload_irq_offload_timestamp\22\09\09\09\09\09"
module asm "__kstrtabns_can_rx_offload_irq_offload_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_rx_offload_irq_offload_fifo:\09\09\09\09\09"
module asm "\09.asciz \09\22can_rx_offload_irq_offload_fifo\22\09\09\09\09\09"
module asm "__kstrtabns_can_rx_offload_irq_offload_fifo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_rx_offload_queue_sorted:\09\09\09\09\09"
module asm "\09.asciz \09\22can_rx_offload_queue_sorted\22\09\09\09\09\09"
module asm "__kstrtabns_can_rx_offload_queue_sorted:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_rx_offload_get_echo_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22can_rx_offload_get_echo_skb\22\09\09\09\09\09"
module asm "__kstrtabns_can_rx_offload_get_echo_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_rx_offload_queue_tail:\09\09\09\09\09"
module asm "\09.asciz \09\22can_rx_offload_queue_tail\22\09\09\09\09\09"
module asm "__kstrtabns_can_rx_offload_queue_tail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_rx_offload_irq_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22can_rx_offload_irq_finish\22\09\09\09\09\09"
module asm "__kstrtabns_can_rx_offload_irq_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_rx_offload_threaded_irq_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22can_rx_offload_threaded_irq_finish\22\09\09\09\09\09"
module asm "__kstrtabns_can_rx_offload_threaded_irq_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_rx_offload_add_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22can_rx_offload_add_timestamp\22\09\09\09\09\09"
module asm "__kstrtabns_can_rx_offload_add_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_rx_offload_add_fifo:\09\09\09\09\09"
module asm "\09.asciz \09\22can_rx_offload_add_fifo\22\09\09\09\09\09"
module asm "__kstrtabns_can_rx_offload_add_fifo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_rx_offload_add_manual:\09\09\09\09\09"
module asm "\09.asciz \09\22can_rx_offload_add_manual\22\09\09\09\09\09"
module asm "__kstrtabns_can_rx_offload_add_manual:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_rx_offload_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22can_rx_offload_enable\22\09\09\09\09\09"
module asm "__kstrtabns_can_rx_offload_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_rx_offload_del:\09\09\09\09\09"
module asm "\09.asciz \09\22can_rx_offload_del\22\09\09\09\09\09"
module asm "__kstrtabns_can_rx_offload_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.can_rx_offload = type { ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, i32, i32, i32, %struct.napi_struct, i8 }
%struct.sk_buff_head = type { %union.anon.50, i32, %struct.spinlock }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.130, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.130 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.101, [48 x i8], %union.anon.102, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.104, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, ptr }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.106, i32, i32, i32, i16, i16, %union.anon.108, %union.anon.109, %union.anon.110, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.106 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i16 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.can_frame = type { i32, %union.anon.135, i8, i8, i8, [8 x i8] }
%union.anon.135 = type { i8 }

@__kstrtab_can_rx_offload_irq_offload_timestamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_rx_offload_irq_offload_timestamp = external dso_local constant [0 x i8], align 1
@__ksymtab_can_rx_offload_irq_offload_timestamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_rx_offload_irq_offload_timestamp to i32), ptr @__kstrtab_can_rx_offload_irq_offload_timestamp, ptr @__kstrtabns_can_rx_offload_irq_offload_timestamp }, section "___ksymtab_gpl+can_rx_offload_irq_offload_timestamp", align 4
@__kstrtab_can_rx_offload_irq_offload_fifo = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_rx_offload_irq_offload_fifo = external dso_local constant [0 x i8], align 1
@__ksymtab_can_rx_offload_irq_offload_fifo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_rx_offload_irq_offload_fifo to i32), ptr @__kstrtab_can_rx_offload_irq_offload_fifo, ptr @__kstrtabns_can_rx_offload_irq_offload_fifo }, section "___ksymtab_gpl+can_rx_offload_irq_offload_fifo", align 4
@__kstrtab_can_rx_offload_queue_sorted = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_rx_offload_queue_sorted = external dso_local constant [0 x i8], align 1
@__ksymtab_can_rx_offload_queue_sorted = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_rx_offload_queue_sorted to i32), ptr @__kstrtab_can_rx_offload_queue_sorted, ptr @__kstrtabns_can_rx_offload_queue_sorted }, section "___ksymtab_gpl+can_rx_offload_queue_sorted", align 4
@__kstrtab_can_rx_offload_get_echo_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_rx_offload_get_echo_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_can_rx_offload_get_echo_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_rx_offload_get_echo_skb to i32), ptr @__kstrtab_can_rx_offload_get_echo_skb, ptr @__kstrtabns_can_rx_offload_get_echo_skb }, section "___ksymtab_gpl+can_rx_offload_get_echo_skb", align 4
@__kstrtab_can_rx_offload_queue_tail = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_rx_offload_queue_tail = external dso_local constant [0 x i8], align 1
@__ksymtab_can_rx_offload_queue_tail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_rx_offload_queue_tail to i32), ptr @__kstrtab_can_rx_offload_queue_tail, ptr @__kstrtabns_can_rx_offload_queue_tail }, section "___ksymtab_gpl+can_rx_offload_queue_tail", align 4
@__kstrtab_can_rx_offload_irq_finish = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_rx_offload_irq_finish = external dso_local constant [0 x i8], align 1
@__ksymtab_can_rx_offload_irq_finish = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_rx_offload_irq_finish to i32), ptr @__kstrtab_can_rx_offload_irq_finish, ptr @__kstrtabns_can_rx_offload_irq_finish }, section "___ksymtab_gpl+can_rx_offload_irq_finish", align 4
@__kstrtab_can_rx_offload_threaded_irq_finish = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_rx_offload_threaded_irq_finish = external dso_local constant [0 x i8], align 1
@__ksymtab_can_rx_offload_threaded_irq_finish = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_rx_offload_threaded_irq_finish to i32), ptr @__kstrtab_can_rx_offload_threaded_irq_finish, ptr @__kstrtabns_can_rx_offload_threaded_irq_finish }, section "___ksymtab_gpl+can_rx_offload_threaded_irq_finish", align 4
@__kstrtab_can_rx_offload_add_timestamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_rx_offload_add_timestamp = external dso_local constant [0 x i8], align 1
@__ksymtab_can_rx_offload_add_timestamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_rx_offload_add_timestamp to i32), ptr @__kstrtab_can_rx_offload_add_timestamp, ptr @__kstrtabns_can_rx_offload_add_timestamp }, section "___ksymtab_gpl+can_rx_offload_add_timestamp", align 4
@__kstrtab_can_rx_offload_add_fifo = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_rx_offload_add_fifo = external dso_local constant [0 x i8], align 1
@__ksymtab_can_rx_offload_add_fifo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_rx_offload_add_fifo to i32), ptr @__kstrtab_can_rx_offload_add_fifo, ptr @__kstrtabns_can_rx_offload_add_fifo }, section "___ksymtab_gpl+can_rx_offload_add_fifo", align 4
@__kstrtab_can_rx_offload_add_manual = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_rx_offload_add_manual = external dso_local constant [0 x i8], align 1
@__ksymtab_can_rx_offload_add_manual = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_rx_offload_add_manual to i32), ptr @__kstrtab_can_rx_offload_add_manual, ptr @__kstrtabns_can_rx_offload_add_manual }, section "___ksymtab_gpl+can_rx_offload_add_manual", align 4
@__kstrtab_can_rx_offload_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_rx_offload_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_can_rx_offload_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_rx_offload_enable to i32), ptr @__kstrtab_can_rx_offload_enable, ptr @__kstrtabns_can_rx_offload_enable }, section "___ksymtab_gpl+can_rx_offload_enable", align 4
@__kstrtab_can_rx_offload_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_rx_offload_del = external dso_local constant [0 x i8], align 1
@__ksymtab_can_rx_offload_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_rx_offload_del to i32), ptr @__kstrtab_can_rx_offload_del, ptr @__kstrtabns_can_rx_offload_del }, section "___ksymtab_gpl+can_rx_offload_del", align 4
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_can_rx_offload_add_fifo, ptr @__ksymtab_can_rx_offload_add_manual, ptr @__ksymtab_can_rx_offload_add_timestamp, ptr @__ksymtab_can_rx_offload_del, ptr @__ksymtab_can_rx_offload_enable, ptr @__ksymtab_can_rx_offload_get_echo_skb, ptr @__ksymtab_can_rx_offload_irq_finish, ptr @__ksymtab_can_rx_offload_irq_offload_fifo, ptr @__ksymtab_can_rx_offload_irq_offload_timestamp, ptr @__ksymtab_can_rx_offload_queue_sorted, ptr @__ksymtab_can_rx_offload_queue_tail, ptr @__ksymtab_can_rx_offload_threaded_irq_finish], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @can_rx_offload_irq_offload_timestamp(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %6, align 8
  %9 = load i8, ptr %7, align 8, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = icmp ule i32 %5, %8
  %12 = icmp uge i32 %5, %8
  %13 = select i1 %10, i1 %12, i1 %11
  br i1 %13, label %14, label %86

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 2, i32 1
  %16 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 4
  %17 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3
  %19 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 1
  %20 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3, i32 1
  br label %21

21:                                               ; preds = %76, %14
  %22 = phi i32 [ 0, %14 ], [ %77, %76 ]
  %23 = phi i32 [ %5, %14 ], [ %81, %76 ]
  %24 = zext i32 %23 to i64
  %25 = shl nuw i64 1, %24
  %26 = and i64 %25, %1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %76, label %28

28:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %29 = load i32, ptr %15, align 4
  %30 = load i32, ptr %16, align 8
  %31 = icmp ugt i32 %29, %30
  %32 = load ptr, ptr %17, align 4
  %33 = call ptr %32(ptr noundef %0, i32 noundef %23, ptr noundef nonnull %3, i1 noundef zeroext %31) #6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !10

35:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %76

36:                                               ; preds = %28
  %37 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %47

38:                                               ; preds = %36
  %39 = load ptr, ptr %0, align 8
  %40 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 36, i32 6
  %41 = load i32, ptr %40, align 8
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 8
  %43 = load ptr, ptr %0, align 8
  %44 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 36, i32 14
  %45 = load i32, ptr %44, align 8
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %76

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 3
  %49 = load i32, ptr %3, align 4
  store i32 %49, ptr %48, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %50 = load ptr, ptr %19, align 4
  %51 = icmp eq ptr %50, %18
  br i1 %51, label %68, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  br label %55

55:                                               ; preds = %61, %52
  %56 = phi ptr [ %50, %52 ], [ %63, %61 ]
  %57 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = sub i32 %54, %58
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.anon.0, ptr %56, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %18
  br i1 %64, label %68, label %55

65:                                               ; preds = %55
  %66 = icmp eq ptr %56, null
  %67 = select i1 %66, ptr %18, ptr %56
  br label %68

68:                                               ; preds = %65, %61, %47
  %69 = phi ptr [ %18, %47 ], [ %67, %65 ], [ %18, %61 ]
  %70 = load ptr, ptr %69, align 4
  store volatile ptr %70, ptr %33, align 8
  %71 = getelementptr inbounds %struct.anon.0, ptr %33, i32 0, i32 1
  store volatile ptr %69, ptr %71, align 4
  %72 = getelementptr inbounds %struct.sk_buff_list, ptr %70, i32 0, i32 1
  store volatile ptr %33, ptr %72, align 4
  store volatile ptr %33, ptr %69, align 4
  %73 = load i32, ptr %20, align 4
  %74 = add i32 %73, 1
  store volatile i32 %74, ptr %20, align 4
  %75 = add i32 %22, 1
  br label %76

76:                                               ; preds = %68, %38, %35, %21
  %77 = phi i32 [ %75, %68 ], [ %22, %21 ], [ %22, %35 ], [ %22, %38 ]
  %78 = load i8, ptr %7, align 8, !range !8
  %79 = icmp eq i8 %78, 0
  %80 = select i1 %79, i32 -1, i32 1
  %81 = add i32 %80, %23
  %82 = load i32, ptr %6, align 8
  %83 = icmp ule i32 %81, %82
  %84 = icmp uge i32 %81, %82
  %85 = select i1 %79, i1 %84, i1 %83
  br i1 %85, label %21, label %86

86:                                               ; preds = %76, %2
  %87 = phi i32 [ 0, %2 ], [ %77, %76 ]
  ret i32 %87
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @can_rx_offload_irq_offload_fifo(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 2, i32 1
  %4 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !9
  %9 = load i32, ptr %3, align 4
  %10 = load i32, ptr %4, align 8
  %11 = icmp ugt i32 %9, %10
  %12 = load ptr, ptr %5, align 4
  %13 = call ptr %12(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i1 noundef zeroext %11) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15, !prof !10

15:                                               ; preds = %36, %1
  %16 = phi ptr [ %48, %36 ], [ %13, %1 ]
  %17 = phi i32 [ %43, %36 ], [ 0, %1 ]
  br label %18

18:                                               ; preds = %21, %15
  %19 = phi ptr [ %16, %15 ], [ %34, %21 ]
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 36, i32 6
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 8
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 36, i32 14
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !9
  %30 = load i32, ptr %3, align 4
  %31 = load i32, ptr %4, align 8
  %32 = icmp ugt i32 %30, %31
  %33 = load ptr, ptr %5, align 4
  %34 = call ptr %33(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i1 noundef zeroext %32) #6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %50, label %18, !prof !10

36:                                               ; preds = %18
  %37 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3
  %38 = load i32, ptr %2, align 4
  store i32 %38, ptr %37, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %39 = load ptr, ptr %7, align 4
  store volatile ptr %6, ptr %19, align 8
  %40 = getelementptr inbounds %struct.anon.0, ptr %19, i32 0, i32 1
  store volatile ptr %39, ptr %40, align 4
  store volatile ptr %19, ptr %7, align 4
  store volatile ptr %19, ptr %39, align 4
  %41 = load i32, ptr %8, align 4
  %42 = add i32 %41, 1
  store volatile i32 %42, ptr %8, align 4
  %43 = add i32 %17, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !9
  %44 = load i32, ptr %3, align 4
  %45 = load i32, ptr %4, align 8
  %46 = icmp ugt i32 %44, %45
  %47 = load ptr, ptr %5, align 4
  %48 = call ptr %47(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i1 noundef zeroext %46) #6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %15, !prof !10

50:                                               ; preds = %36, %21, %1
  %51 = phi i32 [ 0, %1 ], [ %17, %21 ], [ %43, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @can_rx_offload_queue_sorted(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 2, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #6
  br label %37

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  store i32 %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3
  %13 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %12
  br i1 %15, label %29, label %16

16:                                               ; preds = %22, %10
  %17 = phi ptr [ %24, %22 ], [ %14, %10 ]
  %18 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %2, %19
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.anon.0, ptr %17, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %12
  br i1 %25, label %29, label %16

26:                                               ; preds = %16
  %27 = icmp eq ptr %17, null
  %28 = select i1 %27, ptr %12, ptr %17
  br label %29

29:                                               ; preds = %26, %22, %10
  %30 = phi ptr [ %12, %10 ], [ %28, %26 ], [ %12, %22 ]
  %31 = load ptr, ptr %30, align 4
  store volatile ptr %31, ptr %1, align 8
  %32 = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 1
  store volatile ptr %30, ptr %32, align 4
  %33 = getelementptr inbounds %struct.sk_buff_list, ptr %31, i32 0, i32 1
  store volatile ptr %1, ptr %33, align 4
  store volatile ptr %1, ptr %30, align 4
  %34 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store volatile i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %29, %9
  %38 = phi i32 [ -105, %9 ], [ 0, %29 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @can_rx_offload_get_echo_skb(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 0, ptr %5, align 1, !annotation !9
  %7 = call ptr @__can_get_echo_skb(ptr noundef %6, i32 noundef %1, ptr noundef nonnull %5, ptr noundef %3) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 2, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %42, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3
  store i32 %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3
  %18 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %17
  br i1 %20, label %34, label %21

21:                                               ; preds = %27, %15
  %22 = phi ptr [ %29, %27 ], [ %19, %15 ]
  %23 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %2, %24
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.anon.0, ptr %22, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %17
  br i1 %30, label %34, label %21

31:                                               ; preds = %21
  %32 = icmp eq ptr %22, null
  %33 = select i1 %32, ptr %17, ptr %22
  br label %34

34:                                               ; preds = %31, %27, %15
  %35 = phi ptr [ %17, %15 ], [ %33, %31 ], [ %17, %27 ]
  %36 = load ptr, ptr %35, align 4
  store volatile ptr %36, ptr %7, align 8
  %37 = getelementptr inbounds %struct.anon.0, ptr %7, i32 0, i32 1
  store volatile ptr %35, ptr %37, align 4
  %38 = getelementptr inbounds %struct.sk_buff_list, ptr %36, i32 0, i32 1
  store volatile ptr %7, ptr %38, align 4
  store volatile ptr %7, ptr %35, align 4
  %39 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1
  store volatile i32 %41, ptr %39, align 4
  br label %49

42:                                               ; preds = %9
  call void @__dev_kfree_skb_any(ptr noundef nonnull %7, i32 noundef 1) #6
  %43 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4
  %46 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 18
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %42, %34
  %50 = load i8, ptr %5, align 1
  %51 = zext i8 %50 to i32
  br label %52

52:                                               ; preds = %49, %4
  %53 = phi i32 [ %51, %49 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @can_rx_offload_queue_tail(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 2, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = icmp ugt i32 %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #6
  br label %17

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3
  %11 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  store volatile ptr %10, ptr %1, align 8
  %13 = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 1
  store volatile ptr %12, ptr %13, align 4
  store volatile ptr %1, ptr %11, align 4
  store volatile ptr %1, ptr %12, align 4
  %14 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store volatile i32 %16, ptr %14, align 4
  br label %17

17:                                               ; preds = %9, %8
  %18 = phi i32 [ -105, %8 ], [ 0, %9 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @can_rx_offload_irq_finish(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 2, i32 2
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #6
  %8 = load ptr, ptr %2, align 4
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 2, i32 0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.anon.0, ptr %8, i32 0, i32 1
  store volatile ptr %13, ptr %16, align 4
  store volatile ptr %8, ptr %13, align 8
  store volatile ptr %11, ptr %15, align 8
  store volatile ptr %15, ptr %12, align 4
  %17 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 2, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  store i32 %21, ptr %19, align 4
  store ptr %2, ptr %2, align 4
  store ptr %2, ptr %14, align 4
  store i32 0, ptr %17, align 4
  br label %22

22:                                               ; preds = %10, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #6
  %23 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 7
  %24 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %23) #6
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @__napi_schedule(ptr noundef %23) #6
  br label %26

26:                                               ; preds = %25, %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @can_rx_offload_threaded_irq_finish(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 2, i32 2
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #6
  %8 = load ptr, ptr %2, align 4
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 2, i32 0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.anon.0, ptr %8, i32 0, i32 1
  store volatile ptr %13, ptr %16, align 4
  store volatile ptr %8, ptr %13, align 8
  store volatile ptr %11, ptr %15, align 8
  store volatile ptr %15, ptr %12, align 4
  %17 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 2, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  store i32 %21, ptr %19, align 4
  store ptr %2, ptr %2, align 4
  store ptr %2, ptr %14, align 4
  store i32 0, ptr %17, align 4
  br label %22

22:                                               ; preds = %10, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #6
  %23 = tail call ptr @llvm.thread.pointer() #6
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %25 = load volatile i32, ptr %24, align 4
  %26 = add i32 %25, 512
  store volatile i32 %26, ptr %24, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %27 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 7
  %28 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %27) #6
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  tail call void @__napi_schedule(ptr noundef %27) #6
  br label %30

30:                                               ; preds = %29, %22
  tail call fastcc void @local_bh_enable()
  br label %31

31:                                               ; preds = %30, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @can_rx_offload_add_timestamp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 64
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = icmp ugt i32 %8, 64
  br i1 %9, label %35, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %10
  %15 = icmp ult i32 %4, %8
  %16 = sub nsw i32 %8, %4
  %17 = sub nsw i32 %4, %8
  %18 = zext i1 %15 to i8
  %19 = select i1 %15, i32 %16, i32 %17
  %20 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 8
  store i8 %18, ptr %20, align 8
  store ptr %0, ptr %1, align 8
  %21 = icmp eq i32 %19, 0
  %22 = tail call i32 @llvm.ctlz.i32(i32 %19, i1 false) #6, !range !12
  %23 = sub nuw nsw i32 32, %22
  %24 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 4
  %25 = shl i32 8, %23
  %26 = select i1 %21, i32 8, i32 %25
  store i32 %26, ptr %24, align 8
  %27 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 2
  %28 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 2, i32 2
  store i32 0, ptr %28, align 4
  store ptr %27, ptr %27, align 4
  %29 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  %30 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 2, i32 1
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 3
  store ptr %31, ptr %31, align 4
  %32 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 3, i32 1
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 7
  tail call void @netif_napi_add(ptr noundef %0, ptr noundef %34, ptr noundef nonnull @can_rx_offload_napi_poll, i32 noundef %19) #6
  br label %35

35:                                               ; preds = %14, %10, %6, %2
  %36 = phi i32 [ 0, %14 ], [ -22, %10 ], [ -22, %6 ], [ -22, %2 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @can_rx_offload_add_fifo(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  store ptr %0, ptr %1, align 8
  %8 = icmp eq i32 %2, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %2, i1 false) #6, !range !12
  %10 = sub nuw nsw i32 32, %9
  %11 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 4
  %12 = shl i32 8, %10
  %13 = select i1 %8, i32 8, i32 %12
  store i32 %13, ptr %11, align 8
  %14 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 2
  %15 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 2, i32 2
  store i32 0, ptr %15, align 4
  store ptr %14, ptr %14, align 4
  %16 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  %17 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 2, i32 1
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 3
  store ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 3, i32 1
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 7
  tail call void @netif_napi_add(ptr noundef %0, ptr noundef %21, ptr noundef nonnull @can_rx_offload_napi_poll, i32 noundef %2) #6
  br label %22

22:                                               ; preds = %7, %3
  %23 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @can_rx_offload_add_manual(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  store ptr %0, ptr %1, align 8
  %8 = icmp eq i32 %2, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %2, i1 false) #6, !range !12
  %10 = sub nuw nsw i32 32, %9
  %11 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 4
  %12 = shl i32 8, %10
  %13 = select i1 %8, i32 8, i32 %12
  store i32 %13, ptr %11, align 8
  %14 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 2
  %15 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 2, i32 2
  store i32 0, ptr %15, align 4
  store ptr %14, ptr %14, align 4
  %16 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  %17 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 2, i32 1
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 3
  store ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 3, i32 1
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.can_rx_offload, ptr %1, i32 0, i32 7
  tail call void @netif_napi_add(ptr noundef %0, ptr noundef %21, ptr noundef nonnull @can_rx_offload_napi_poll, i32 noundef %2) #6
  br label %22

22:                                               ; preds = %7, %3
  %23 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @can_rx_offload_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 7
  tail call void @napi_enable(ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @can_rx_offload_del(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 7
  tail call void @__netif_napi_del(ptr noundef %2) #6
  tail call void @synchronize_net() #6
  %3 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  %7 = icmp eq ptr %5, null
  %8 = or i1 %6, %7
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.can_rx_offload, ptr %0, i32 0, i32 3, i32 1
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi ptr [ %5, %9 ], [ %19, %11 ]
  %13 = load i32, ptr %10, align 4
  %14 = add i32 %13, -1
  store volatile i32 %14, ptr %10, align 4
  %15 = load ptr, ptr %12, align 8
  %16 = getelementptr inbounds %struct.anon.0, ptr %12, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  store ptr null, ptr %16, align 4
  store ptr null, ptr %12, align 8
  %18 = getelementptr inbounds %struct.anon.0, ptr %15, i32 0, i32 1
  store volatile ptr %17, ptr %18, align 4
  store volatile ptr %15, ptr %17, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %12, i32 noundef 0) #6
  %19 = load ptr, ptr %4, align 4
  %20 = icmp eq ptr %19, %4
  %21 = icmp eq ptr %19, null
  %22 = or i1 %20, %21
  br i1 %22, label %23, label %11

23:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @can_rx_offload_napi_poll(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -56
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %43

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 -48
  %9 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 2
  br label %10

10:                                               ; preds = %33, %7
  %11 = phi i32 [ 0, %7 ], [ %17, %33 ]
  %12 = tail call ptr @skb_dequeue(ptr noundef %8) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = add nuw nsw i32 %11, 1
  %18 = load i32, ptr %16, align 8
  %19 = and i32 %18, 536870912
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load i32, ptr %5, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %5, align 4
  %24 = load i32, ptr %16, align 8
  %25 = and i32 %24, 1073741824
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.can_frame, ptr %16, i32 0, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i32
  %31 = load i32, ptr %9, align 4
  %32 = add i32 %31, %30
  store i32 %32, ptr %9, align 4
  br label %33

33:                                               ; preds = %27, %21, %14
  %34 = tail call i32 @netif_receive_skb(ptr noundef nonnull %12) #6
  %35 = icmp eq i32 %17, %1
  br i1 %35, label %43, label %10

36:                                               ; preds = %10
  %37 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %11) #6
  %38 = load ptr, ptr %8, align 4
  %39 = icmp eq ptr %38, %8
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %0) #6
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  tail call void @__napi_schedule(ptr noundef %0) #6
  br label %43

43:                                               ; preds = %42, %40, %36, %33, %2
  %44 = phi i32 [ %11, %42 ], [ %11, %40 ], [ %11, %36 ], [ 0, %2 ], [ %1, %33 ]
  ret i32 %44
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2148847420}
!12 = !{i32 0, i32 33}
