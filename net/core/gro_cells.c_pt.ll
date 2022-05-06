; ModuleID = '/llk/IR/net/core/gro_cells.c_pt.bc'
source_filename = "../net/core/gro_cells.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gro_cells_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22gro_cells_receive\22\09\09\09\09\09"
module asm "__kstrtabns_gro_cells_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gro_cells_init:\09\09\09\09\09"
module asm "\09.asciz \09\22gro_cells_init\22\09\09\09\09\09"
module asm "__kstrtabns_gro_cells_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gro_cells_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22gro_cells_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_gro_cells_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.90, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.90 = type { ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.sk_buff = type { %union.anon.0, %union.anon.91, %union.anon.92, [48 x i8], %union.anon.93, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.95, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%union.anon.91 = type { ptr }
%union.anon.92 = type { i64 }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { i32, ptr }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.97, i32, i32, i32, i16, i16, %union.anon.99, %union.anon.100, %union.anon.101, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.97 = type { i32 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon, i32, %struct.spinlock }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.sk_buff_list = type { ptr, ptr }
%struct.gro_cell = type { %struct.sk_buff_head, %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }

@netdev_max_backlog = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_gro_cells_receive = external dso_local constant [0 x i8], align 1
@__kstrtabns_gro_cells_receive = external dso_local constant [0 x i8], align 1
@__ksymtab_gro_cells_receive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gro_cells_receive to i32), ptr @__kstrtab_gro_cells_receive, ptr @__kstrtabns_gro_cells_receive }, section "___ksymtab+gro_cells_receive", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab_gro_cells_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_gro_cells_init = external dso_local constant [0 x i8], align 1
@__ksymtab_gro_cells_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gro_cells_init to i32), ptr @__kstrtab_gro_cells_init, ptr @__kstrtabns_gro_cells_init }, section "___ksymtab+gro_cells_init", align 4
@__kstrtab_gro_cells_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_gro_cells_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_gro_cells_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gro_cells_destroy to i32), ptr @__kstrtab_gro_cells_destroy, ptr @__kstrtabns_gro_cells_destroy }, section "___ksymtab+gro_cells_destroy", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_gro_cells_destroy, ptr @__ksymtab_gro_cells_init, ptr @__ksymtab_gro_cells_receive], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gro_cells_receive(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !9
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9, !prof !10

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %14 = load i8, ptr %13, align 2
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 10
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %33

24:                                               ; preds = %17, %12
  %25 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 23
  %26 = load i64, ptr %25, align 16
  %27 = and i64 %26, 16384
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 76
  %31 = load ptr, ptr %30, align 16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29, %24, %17, %9
  %34 = tail call i32 @netif_rx(ptr noundef %1) #5
  br label %60

35:                                               ; preds = %29
  %36 = ptrtoint ptr %10 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #4, !srcloc !11
  %40 = add i32 %39, %36
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr inbounds %struct.sk_buff_head, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = load i32, ptr @netdev_max_backlog, align 4
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %35, %2
  %47 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #5, !srcloc !12
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #5, !srcloc !13
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #5
  br label %60

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.sk_buff_list, ptr %41, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  store volatile ptr %41, ptr %1, align 8
  %52 = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 1
  store volatile ptr %51, ptr %52, align 4
  store volatile ptr %1, ptr %50, align 4
  store volatile ptr %1, ptr %51, align 4
  %53 = load i32, ptr %42, align 4
  %54 = add i32 %53, 1
  store volatile i32 %54, ptr %42, align 4
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.gro_cell, ptr %41, i32 0, i32 1
  %58 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %57) #5
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  tail call void @__napi_schedule(ptr noundef %57) #5
  br label %60

60:                                               ; preds = %59, %56, %49, %46, %33
  %61 = phi i32 [ 1, %46 ], [ %34, %33 ], [ 0, %49 ], [ 0, %56 ], [ 0, %59 ]
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gro_cells_init(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__alloc_percpu(i32 noundef 232, i32 noundef 8) #6
  store ptr %3, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %24, %5
  %10 = phi ptr [ %25, %24 ], [ %3, %5 ]
  %11 = phi i32 [ %21, %24 ], [ %6, %5 ]
  %12 = ptrtoint ptr %10 to i32
  %13 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  %16 = inttoptr i32 %15 to ptr
  store ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.sk_buff_head, ptr %16, i32 0, i32 1
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.gro_cell, ptr %16, i32 0, i32 1
  %20 = getelementptr inbounds %struct.gro_cell, ptr %16, i32 0, i32 1, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %20) #5
  tail call void @netif_napi_add(ptr noundef %1, ptr noundef %19, ptr noundef nonnull @gro_cell_poll, i32 noundef 64) #5
  tail call void @napi_enable(ptr noundef %19) #5
  %21 = tail call i32 @cpumask_next(i32 noundef %11, ptr noundef nonnull @__cpu_possible_mask) #7
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %9
  %25 = load ptr, ptr %0, align 4
  br label %9

26:                                               ; preds = %9, %5, %2
  %27 = phi i32 [ -12, %2 ], [ 0, %5 ], [ 0, %9 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gro_cell_poll(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 -8
  br label %7

7:                                                ; preds = %13, %5
  %8 = phi i32 [ 0, %5 ], [ %21, %13 ]
  %9 = load ptr, ptr %3, align 4
  %10 = icmp eq ptr %9, %3
  %11 = icmp eq ptr %9, null
  %12 = or i1 %10, %11
  br i1 %12, label %23, label %13

13:                                               ; preds = %7
  %14 = load i32, ptr %6, align 4
  %15 = add i32 %14, -1
  store volatile i32 %15, ptr %6, align 4
  %16 = load ptr, ptr %9, align 8
  %17 = getelementptr inbounds %struct.anon.1, ptr %9, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  store ptr null, ptr %17, align 4
  store ptr null, ptr %9, align 8
  %19 = getelementptr inbounds %struct.anon.1, ptr %16, i32 0, i32 1
  store volatile ptr %18, ptr %19, align 4
  store volatile ptr %16, ptr %18, align 8
  %20 = tail call i32 @napi_gro_receive(ptr noundef %0, ptr noundef nonnull %9) #5
  %21 = add nuw nsw i32 %8, 1
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %25, label %7

23:                                               ; preds = %7
  %24 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %8) #5
  br label %25

25:                                               ; preds = %23, %13, %2
  %26 = phi i32 [ %8, %23 ], [ 0, %2 ], [ %1, %13 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gro_cells_destroy(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %41

8:                                                ; preds = %39, %4
  %9 = phi ptr [ %40, %39 ], [ %2, %4 ]
  %10 = phi i32 [ %36, %39 ], [ %5, %4 ]
  %11 = ptrtoint ptr %9 to i32
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.gro_cell, ptr %15, i32 0, i32 1
  tail call void @napi_disable(ptr noundef %16) #5
  tail call void @__netif_napi_del(ptr noundef %16) #5
  %17 = load ptr, ptr %15, align 4
  %18 = icmp eq ptr %17, %15
  %19 = icmp eq ptr %17, null
  %20 = or i1 %18, %19
  br i1 %20, label %35, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.sk_buff_head, ptr %15, i32 0, i32 1
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi ptr [ %17, %21 ], [ %31, %23 ]
  %25 = load i32, ptr %22, align 4
  %26 = add i32 %25, -1
  store volatile i32 %26, ptr %22, align 4
  %27 = load ptr, ptr %24, align 8
  %28 = getelementptr inbounds %struct.anon.1, ptr %24, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  store ptr null, ptr %28, align 4
  store ptr null, ptr %24, align 8
  %30 = getelementptr inbounds %struct.anon.1, ptr %27, i32 0, i32 1
  store volatile ptr %29, ptr %30, align 4
  store volatile ptr %27, ptr %29, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %24, i32 noundef 0) #5
  %31 = load ptr, ptr %15, align 4
  %32 = icmp eq ptr %31, %15
  %33 = icmp eq ptr %31, null
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %23

35:                                               ; preds = %23, %8
  %36 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_possible_mask) #7
  %37 = load i32, ptr @nr_cpu_ids, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load ptr, ptr %0, align 4
  br label %8

41:                                               ; preds = %35, %4
  tail call void @synchronize_net() #5
  %42 = load ptr, ptr %0, align 4
  tail call void @free_percpu(ptr noundef %42) #5
  store ptr null, ptr %0, align 4
  br label %43

43:                                               ; preds = %41, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind readonly willreturn }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 2149329812}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 463697}
!12 = !{i64 549758, i64 2148039729, i64 2148039755, i64 2148039802, i64 2148039824, i64 2148039852, i64 2148039872}
!13 = !{i64 2148051941, i64 2148051967, i64 2148051996, i64 2148052030, i64 2148052061, i64 2148052084}
!14 = !{i64 2149330029}
