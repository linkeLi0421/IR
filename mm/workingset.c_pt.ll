; ModuleID = '/llk/IR/mm/workingset.c_pt.bc'
source_filename = "../mm/workingset.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_lru = type { ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.lock_class_key = type {}
%struct.page = type { i32, %union.anon.1, %union.anon.66, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.73, [64 x ptr], %union.anon.74 }
%union.anon.73 = type { %struct.list_head }
%union.anon.74 = type { [3 x [2 x i32]] }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }

@shadow_nodes = internal global %struct.list_lru zeroinitializer, align 4
@__initcall__kmod_workingset__250_638_workingset_init6 = internal global ptr @workingset_init, section ".initcall6.init", align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@bucket_order = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str = private unnamed_addr constant [23 x i8] c"include/linux/xarray.h\00", align 1
@vm_node_stat = external dso_local global [40 x %struct.atomic_t], align 4
@nr_swap_pages = external dso_local global %struct.atomic_t, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"\016workingset: timestamp_bits=%d max_order=%d bucket_order=%u\0A\00", align 1
@workingset_shadow_shrinker = internal global %struct.shrinker { ptr @count_shadow_nodes, ptr @scan_shadow_nodes, i32 0, i32 0, i32 6, %struct.list_head zeroinitializer, ptr null }, align 4
@shadow_nodes_key = internal global %struct.lock_class_key zeroinitializer, align 1
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@shadow_lru_isolate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"mm/workingset.c\00", align 1
@shadow_lru_isolate.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_workingset__250_638_workingset_init6], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @workingset_age_nonresident(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lruvec, ptr %0, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #5, !srcloc !8
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 %1, ptr elementtype(i32) %3) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @workingset_eviction(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 4), align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 4)) #5, !srcloc !8
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 4), ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 4), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 4)) #5, !srcloc !9
  %5 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !10

9:                                                ; preds = %2
  %10 = add i32 %6, -1
  br label %13

11:                                               ; preds = %2
  %12 = ptrtoint ptr %0 to i32
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = inttoptr i32 %14 to ptr
  %16 = load volatile i32, ptr %15, align 4
  %17 = load i32, ptr @bucket_order, align 4
  %18 = lshr i32 %3, %17
  %19 = and i32 %18, 1073741823
  %20 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 7), align 4
  %21 = or i32 %19, %20
  %22 = shl i32 %21, 1
  %23 = lshr i32 %16, 6
  %24 = and i32 %23, 1
  %25 = or i32 %22, %24
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28, !prof !11

27:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef null) #5
  br label %28

28:                                               ; preds = %27, %13
  %29 = shl i32 %25, 1
  %30 = or i32 %29, 1
  %31 = inttoptr i32 %30 to ptr
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @workingset_refault(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load volatile i32, ptr %0, align 4
  %4 = and i32 %3, 524288
  %5 = icmp eq i32 %4, 0
  %6 = ptrtoint ptr %1 to i32
  %7 = lshr i32 %6, 2
  %8 = load i32, ptr @bucket_order, align 4
  %9 = shl i32 %7, %8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 4), align 4
  %11 = sub i32 %10, %9
  %12 = and i32 %11, 1073741823
  %13 = load volatile i32, ptr %0, align 4
  %14 = and i32 %13, 65536
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi i32 [ %18, %16 ], [ 1, %2 ]
  %21 = select i1 %5, i32 11, i32 10
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef %21, i32 noundef %20) #5
  %22 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0) #5
  br i1 %5, label %30, label %24

24:                                               ; preds = %19
  %25 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 0) #5
  %27 = add nuw i32 %26, %23
  %28 = load volatile i32, ptr @nr_swap_pages, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %33, label %46

30:                                               ; preds = %19
  %31 = load volatile i32, ptr @nr_swap_pages, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %36, label %46

33:                                               ; preds = %24
  %34 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), align 4
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 0) #5
  br label %42

36:                                               ; preds = %30
  %37 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), align 4
  %38 = tail call i32 @llvm.smax.i32(i32 %37, i32 0) #5
  %39 = add nuw i32 %38, %23
  %40 = load volatile i32, ptr @vm_node_stat, align 4
  %41 = tail call i32 @llvm.smax.i32(i32 %40, i32 0) #5
  br label %42

42:                                               ; preds = %36, %33
  %43 = phi i32 [ %27, %33 ], [ %41, %36 ]
  %44 = phi i32 [ %35, %33 ], [ %39, %36 ]
  %45 = add i32 %44, %43
  br label %46

46:                                               ; preds = %42, %30, %24
  %47 = phi i32 [ %27, %24 ], [ %23, %30 ], [ %45, %42 ]
  %48 = icmp ugt i32 %12, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  tail call void @_set_bit(i32 noundef 5, ptr noundef %0) #5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 4)) #5, !srcloc !8
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 4), ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 4), i32 %20, ptr elementtype(i32) getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 4)) #5, !srcloc !9
  %51 = select i1 %5, i32 13, i32 12
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef %51, i32 noundef %20) #5
  %52 = and i32 %6, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  tail call void @_set_bit(i32 noundef 6, ptr noundef %0) #5
  tail call void @lru_note_cost_folio(ptr noundef %0) #5
  %55 = select i1 %5, i32 15, i32 14
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef %55, i32 noundef %20) #5
  br label %56

56:                                               ; preds = %54, %49, %46
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_note_cost_folio(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @workingset_activation(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 65536
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ 1, %1 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 4)) #5, !srcloc !8
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 4), ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 4), i32 %9, ptr elementtype(i32) getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 4)) #5, !srcloc !9
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @workingset_update_node(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.xa_node, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 2
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.xa_node, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %3, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.xa_node, ptr %0, i32 0, i32 6
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = tail call zeroext i1 @list_lru_add(ptr noundef nonnull @shadow_nodes, ptr noundef %10) #5
  br label %21

15:                                               ; preds = %5, %1
  %16 = getelementptr inbounds %struct.xa_node, ptr %0, i32 0, i32 6
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %29, label %19

19:                                               ; preds = %15
  %20 = tail call zeroext i1 @list_lru_del(ptr noundef nonnull @shadow_nodes, ptr noundef %16) #5
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi i32 [ -1, %19 ], [ 1, %13 ]
  %23 = load ptr, ptr @mem_map, align 4
  %24 = ptrtoint ptr %0 to i32
  %25 = add i32 %24, 1073741824
  %26 = lshr i32 %25, 12
  %27 = getelementptr %struct.page, ptr %23, i32 %26, i32 1
  %28 = load volatile i32, ptr %27, align 4
  tail call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 9, i32 noundef %22) #5
  br label %29

29:                                               ; preds = %21, %15, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @workingset_init() #2 section ".init.text" {
  %1 = load volatile i32, ptr @_totalram_pages, align 4
  %2 = add i32 %1, -1
  %3 = icmp eq i32 %2, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %2, i1 false) #5, !range !14
  %5 = sub nuw nsw i32 32, %4
  %6 = select i1 %3, i32 0, i32 %5
  %7 = icmp ugt i32 %6, 30
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = load i32, ptr @bucket_order, align 4
  br label %12

10:                                               ; preds = %0
  %11 = add nsw i32 %6, -30
  store i32 %11, ptr @bucket_order, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 30, i32 noundef %6, i32 noundef %13) #6
  %15 = tail call i32 @prealloc_shrinker(ptr noundef nonnull @workingset_shadow_shrinker) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = tail call i32 @__list_lru_init(ptr noundef nonnull @shadow_nodes, i1 noundef zeroext true, ptr noundef nonnull @shadow_nodes_key, ptr noundef nonnull @workingset_shadow_shrinker) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void @register_shrinker_prepared(ptr noundef nonnull @workingset_shadow_shrinker) #5
  br label %22

21:                                               ; preds = %17
  tail call void @free_prealloced_shrinker(ptr noundef nonnull @workingset_shadow_shrinker) #5
  br label %22

22:                                               ; preds = %21, %20, %12
  %23 = phi i32 [ 0, %20 ], [ %15, %12 ], [ %18, %21 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prealloc_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__list_lru_init(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_shrinker_prepared(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_prealloced_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @count_shadow_nodes(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @list_lru_count_one(ptr noundef nonnull @shadow_nodes, i32 noundef %4, ptr noundef %6) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 5), align 4
  %11 = lshr i32 %10, 3
  %12 = tail call i32 @llvm.usub.sat.i32(i32 %7, i32 %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i32 [ -2, %2 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scan_shadow_nodes(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 2
  %8 = tail call i32 @list_lru_walk_one_irq(ptr noundef nonnull @shadow_nodes, i32 noundef %4, ptr noundef %6, ptr noundef nonnull @shadow_lru_isolate, ptr noundef null, ptr noundef %7) #5
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_count_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shadow_lru_isolate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -12
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -4
  %9 = tail call i32 @_raw_spin_trylock(ptr noundef %7) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  %12 = load i16, ptr %2, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !19
  br label %63

14:                                               ; preds = %4
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 17
  %17 = tail call i32 @_raw_spin_trylock(ptr noundef %16) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  %20 = load i16, ptr %7, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  %22 = load i16, ptr %2, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !19
  br label %63

24:                                               ; preds = %14
  tail call void @list_lru_isolate(ptr noundef %1, ptr noundef %0) #5
  %25 = load ptr, ptr @mem_map, align 4
  %26 = ptrtoint ptr %5 to i32
  %27 = add i32 %26, 1073741824
  %28 = lshr i32 %27, 12
  %29 = getelementptr %struct.page, ptr %25, i32 %28, i32 1
  %30 = load volatile i32, ptr %29, align 4
  tail call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 9, i32 noundef -1) #5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  %31 = load i16, ptr %2, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !20
  %33 = getelementptr i8, ptr %0, i32 -9
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  %36 = load i1, ptr @shadow_lru_isolate.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !11

39:                                               ; preds = %24
  store i1 true, ptr @shadow_lru_isolate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 563, i32 noundef 9, ptr noundef null) #5
  br label %40

40:                                               ; preds = %39, %24
  br i1 %35, label %55, label %41

41:                                               ; preds = %40
  %42 = getelementptr i8, ptr %0, i32 -10
  %43 = load i8, ptr %42, align 2
  %44 = load i8, ptr %33, align 1
  %45 = icmp ne i8 %43, %44
  %46 = load i1, ptr @shadow_lru_isolate.__already_done.4, align 1
  %47 = xor i1 %46, true
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %50, !prof !11

49:                                               ; preds = %41
  store i1 true, ptr @shadow_lru_isolate.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 565, i32 noundef 9, ptr noundef null) #5
  br label %50

50:                                               ; preds = %49, %41
  br i1 %45, label %55, label %51

51:                                               ; preds = %50
  tail call void @xa_delete_node(ptr noundef %5, ptr noundef nonnull @workingset_update_node) #5
  %52 = load ptr, ptr @mem_map, align 4
  %53 = getelementptr %struct.page, ptr %52, i32 %28, i32 1
  %54 = load volatile i32, ptr %53, align 4
  tail call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 16, i32 noundef 1) #5
  br label %55

55:                                               ; preds = %51, %50, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  %56 = load i16, ptr %7, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !19
  %58 = load ptr, ptr %8, align 4
  tail call void @inode_add_lru(ptr noundef %58) #5
  %59 = load ptr, ptr %8, align 4
  %60 = getelementptr inbounds %struct.inode, ptr %59, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  %61 = load i16, ptr %60, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %60, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !20
  br label %63

63:                                               ; preds = %55, %19, %11
  %64 = phi i32 [ 1, %55 ], [ 4, %19 ], [ 4, %11 ]
  %65 = tail call i32 @__cond_resched() #5
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #5
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_walk_one_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_isolate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_delete_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_lru(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 610180, i64 2148111746, i64 2148111772, i64 2148111819, i64 2148111841, i64 2148111869, i64 2148111889}
!9 = !{i64 2148175008, i64 2148175034, i64 2148175063, i64 2148175097, i64 2148175128, i64 2148175151}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2149032194}
!13 = !{i64 2149032411}
!14 = !{i32 0, i32 33}
!15 = !{i64 2149258393}
!16 = !{i64 2149254217}
!17 = !{i64 2149254292, i64 2149254319, i64 2149254366, i64 2149254388, i64 2149254416, i64 2149254436}
!18 = !{i64 639172}
!19 = !{i64 2149282537}
!20 = !{i64 2149281396}
