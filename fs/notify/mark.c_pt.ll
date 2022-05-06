; ModuleID = '/llk/IR/fs/notify/mark.c_pt.bc'
source_filename = "../fs/notify/mark.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_put_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_put_mark\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_put_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_destroy_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_destroy_mark\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_destroy_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_add_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_add_mark\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_add_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_find_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_find_mark\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_find_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_init_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_init_mark\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_init_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_wait_marks_destroyed:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_wait_marks_destroyed\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_wait_marks_destroyed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.lockdep_map = type {}
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fsnotify_mark = type { i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.spinlock, %struct.hlist_node, ptr, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fsnotify_mark_connector = type { %struct.spinlock, i16, i16, %struct.__kernel_fsid_t, %union.anon.63, %struct.hlist_head }
%struct.__kernel_fsid_t = type { [2 x i32] }
%union.anon.63 = type { ptr }
%struct.hlist_head = type { ptr }
%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.67 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.69 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.70 }
%union.anon.70 = type { %struct.inotify_group_private_data }
%struct.inotify_group_private_data = type { %struct.spinlock, %struct.idr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.fsnotify_iter_info = type { [5 x ptr], i32, i32 }

@fsnotify_get_mark.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [17 x i8] c"fs/notify/mark.c\00", align 1
@destroy_lock = internal global %struct.spinlock zeroinitializer, align 4
@connector_destroy_list = internal unnamed_addr global ptr null, align 4
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@connector_reaper_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @connector_reaper_work, i64 4), ptr getelementptr (i8, ptr @connector_reaper_work, i64 4) }, ptr @fsnotify_connector_destroy_workfn }, align 4
@destroy_list = internal global %struct.list_head { ptr @destroy_list, ptr @destroy_list }, align 4
@reaper_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @reaper_work, i64 4), ptr getelementptr (i8, ptr @reaper_work, i64 4) }, ptr @fsnotify_mark_destroy_workfn }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 4
@__kstrtab_fsnotify_put_mark = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_put_mark = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_put_mark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_put_mark to i32), ptr @__kstrtab_fsnotify_put_mark, ptr @__kstrtabns_fsnotify_put_mark }, section "___ksymtab_gpl+fsnotify_put_mark", align 4
@fsnotify_mark_srcu = dso_local global %struct.srcu_struct zeroinitializer, align 4
@fsnotify_detach_mark.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_fsnotify_destroy_mark = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_destroy_mark = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_destroy_mark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_destroy_mark to i32), ptr @__kstrtab_fsnotify_destroy_mark, ptr @__kstrtabns_fsnotify_destroy_mark }, section "___ksymtab_gpl+fsnotify_destroy_mark", align 4
@__kstrtab_fsnotify_add_mark = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_add_mark = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_add_mark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_add_mark to i32), ptr @__kstrtab_fsnotify_add_mark, ptr @__kstrtabns_fsnotify_add_mark }, section "___ksymtab_gpl+fsnotify_add_mark", align 4
@__kstrtab_fsnotify_find_mark = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_find_mark = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_find_mark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_find_mark to i32), ptr @__kstrtab_fsnotify_find_mark, ptr @__kstrtabns_fsnotify_find_mark }, section "___ksymtab_gpl+fsnotify_find_mark", align 4
@__kstrtab_fsnotify_init_mark = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_init_mark = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_init_mark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_init_mark to i32), ptr @__kstrtab_fsnotify_init_mark, ptr @__kstrtabns_fsnotify_init_mark }, section "___ksymtab_gpl+fsnotify_init_mark", align 4
@__kstrtab_fsnotify_wait_marks_destroyed = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_wait_marks_destroyed = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_wait_marks_destroyed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_wait_marks_destroyed to i32), ptr @__kstrtab_fsnotify_wait_marks_destroyed, ptr @__kstrtabns_fsnotify_wait_marks_destroyed }, section "___ksymtab_gpl+fsnotify_wait_marks_destroyed", align 4
@fsnotify_mark_connector_cachep = dso_local local_unnamed_addr global ptr null, align 4
@fsnotify_final_mark_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fsnotify_drop_object.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/srcu.h\00", align 1
@fsnotify_add_mark_list.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fsnotify_add_mark_list._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.fsnotify_add_mark_list = private unnamed_addr constant [23 x i8] c"fsnotify_add_mark_list\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"\014%s: fsid mismatch on object of type %u: %x.%x != %x.%x\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_fsnotify_add_mark, ptr @__ksymtab_fsnotify_destroy_mark, ptr @__ksymtab_fsnotify_find_mark, ptr @__ksymtab_fsnotify_init_mark, ptr @__ksymtab_fsnotify_put_mark, ptr @__ksymtab_fsnotify_wait_marks_destroyed], section "llvm.metadata"
@switch.table.fsnotify_put_mark = private unnamed_addr constant [3 x i32] [i32 -4, i32 4, i32 -4], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsnotify_get_mark(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @fsnotify_get_mark.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  store i1 true, ptr @fsnotify_get_mark.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef null) #6
  br label %9

9:                                                ; preds = %8, %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #6, !srcloc !9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #6, !srcloc !10
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !8

13:                                               ; preds = %9
  %14 = add i32 %11, 1
  %15 = or i32 %14, %11
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %19, label %17, !prof !11

17:                                               ; preds = %13, %9
  %18 = phi i32 [ 2, %9 ], [ 1, %13 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %18) #6
  br label %19

19:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsnotify_conn_mask(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %0, i32 0, i32 1
  %3 = load i16, ptr %2, align 4
  %4 = icmp ult i16 %3, 3
  br i1 %4, label %6, label %5, !prof !11

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 9, ptr noundef null) #6
  br label %14

6:                                                ; preds = %1
  %7 = sext i16 %3 to i32
  %8 = getelementptr inbounds [3 x i32], ptr @switch.table.fsnotify_put_mark, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %6, %5
  %15 = phi i32 [ 0, %5 ], [ %13, %6 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsnotify_recalc_mask(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %60, label %4

4:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull %0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %5 = load volatile i32, ptr %0, align 4
  store volatile i32 %5, ptr %2, align 4
  %6 = lshr i32 %5, 16
  %7 = and i32 %5, 65535
  %8 = icmp eq i32 %7, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/mark.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #6, !srcloc !12
  unreachable

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %0, i32 0, i32 1
  %12 = load i16, ptr %11, align 4
  %13 = icmp ult i16 %12, 3
  br i1 %13, label %14, label %51

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  %18 = getelementptr i8, ptr %16, i32 -24
  %19 = icmp eq ptr %18, null
  %20 = or i1 %17, %19
  br i1 %20, label %39, label %21

21:                                               ; preds = %31, %14
  %22 = phi i32 [ %32, %31 ], [ 0, %14 ]
  %23 = phi ptr [ %36, %31 ], [ %18, %14 ]
  %24 = getelementptr inbounds %struct.fsnotify_mark, ptr %23, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, ptr %23, align 4
  %30 = or i32 %29, %22
  br label %31

31:                                               ; preds = %28, %21
  %32 = phi i32 [ %30, %28 ], [ %22, %21 ]
  %33 = getelementptr inbounds %struct.fsnotify_mark, ptr %23, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  %36 = getelementptr i8, ptr %34, i32 -24
  %37 = icmp eq ptr %36, null
  %38 = or i1 %35, %37
  br i1 %38, label %39, label %21

39:                                               ; preds = %31, %14
  %40 = phi i32 [ 0, %14 ], [ %32, %31 ]
  %41 = icmp ult i16 %12, 3
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = sext i16 %12 to i32
  %44 = getelementptr inbounds [3 x i32], ptr @switch.table.fsnotify_put_mark, i32 0, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %0, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 %45
  br label %49

49:                                               ; preds = %42, %39
  %50 = phi ptr [ null, %39 ], [ %48, %42 ]
  store i32 %40, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %52 = load i16, ptr %0, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %54 = load i16, ptr %11, align 4
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %0, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 -384
  tail call void @__fsnotify_update_child_dentry_flags(ptr noundef %59) #6
  br label %60

60:                                               ; preds = %56, %51, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fsnotify_update_child_dentry_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsnotify_put_mark(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 6
  %5 = load volatile ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 3, ptr %3, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 1
  br i1 %6, label %8, label %28

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #6, !srcloc !9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #6, !srcloc !18
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %128, label %14, !prof !11

14:                                               ; preds = %12
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef 3) #6
  br label %128

15:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  %16 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = load i1, ptr @fsnotify_final_mark_destroy.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %15
  store i1 true, ptr @fsnotify_final_mark_destroy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef null) #6
  br label %23

23:                                               ; preds = %22, %15
  br i1 %18, label %128, label %24

24:                                               ; preds = %23
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr inbounds %struct.fsnotify_ops, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %0) #6
  tail call void @fsnotify_put_group(ptr noundef nonnull %17) #6
  br label %128

28:                                               ; preds = %1
  %29 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %7, ptr noundef nonnull %5) #6
  br i1 %29, label %30, label %128

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 5, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  store volatile ptr %36, ptr %32, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.hlist_node, ptr %36, i32 0, i32 1
  store volatile ptr %32, ptr %39, align 4
  br label %40

40:                                               ; preds = %38, %34
  store volatile ptr null, ptr %31, align 4
  br label %41

41:                                               ; preds = %40, %30
  %42 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %5, i32 0, i32 5
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %73

45:                                               ; preds = %41
  %46 = call fastcc ptr @fsnotify_detach_connector_from_object(ptr noundef nonnull %5, ptr noundef nonnull %3)
  store volatile ptr null, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %47 = load i16, ptr %5, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %49 = icmp eq ptr %46, null
  br i1 %49, label %66, label %50

50:                                               ; preds = %45
  %51 = load i32, ptr %3, align 4
  %52 = icmp ne i32 %51, 0
  %53 = load i1, ptr @fsnotify_drop_object.__already_done, align 1
  %54 = xor i1 %53, true
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %57, !prof !8

56:                                               ; preds = %50
  store i1 true, ptr @fsnotify_drop_object.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef null) #6
  br label %57

57:                                               ; preds = %56, %50
  br i1 %52, label %66, label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.inode, ptr %46, i32 0, i32 8
  %60 = load ptr, ptr %59, align 4
  tail call void @iput(ptr noundef nonnull %46) #6
  %61 = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #6, !srcloc !9
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 1, ptr elementtype(i32) %61) #6, !srcloc !21
  %63 = extractvalue { i32, i32 } %62, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  tail call void @wake_up_var(ptr noundef %61) #6
  br label %66

66:                                               ; preds = %65, %58, %57, %45
  tail call void @_raw_spin_lock(ptr noundef nonnull @destroy_lock) #6
  %67 = load ptr, ptr @connector_destroy_list, align 4
  %68 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %5, i32 0, i32 4
  store ptr %67, ptr %68, align 4
  store ptr %5, ptr @connector_destroy_list, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %69 = load i16, ptr @destroy_lock, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr @destroy_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %71 = load ptr, ptr @system_unbound_wq, align 4
  %72 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %71, ptr noundef nonnull @connector_reaper_work) #6
  br label %119

73:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %74 = load volatile i32, ptr %5, align 4
  store volatile i32 %74, ptr %2, align 4
  %75 = lshr i32 %74, 16
  %76 = and i32 %74, 65535
  %77 = icmp eq i32 %76, %75
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br i1 %77, label %78, label %79, !prof !8

78:                                               ; preds = %73
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/mark.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #6, !srcloc !12
  unreachable

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %5, i32 0, i32 1
  %81 = load i16, ptr %80, align 4
  %82 = icmp ult i16 %81, 3
  br i1 %82, label %83, label %116

83:                                               ; preds = %79
  %84 = getelementptr i8, ptr %43, i32 -24
  %85 = icmp eq ptr %84, null
  br i1 %85, label %104, label %86

86:                                               ; preds = %96, %83
  %87 = phi i32 [ %97, %96 ], [ 0, %83 ]
  %88 = phi ptr [ %101, %96 ], [ %84, %83 ]
  %89 = getelementptr inbounds %struct.fsnotify_mark, ptr %88, i32 0, i32 8
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %86
  %94 = load i32, ptr %88, align 4
  %95 = or i32 %94, %87
  br label %96

96:                                               ; preds = %93, %86
  %97 = phi i32 [ %95, %93 ], [ %87, %86 ]
  %98 = getelementptr inbounds %struct.fsnotify_mark, ptr %88, i32 0, i32 5
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  %101 = getelementptr i8, ptr %99, i32 -24
  %102 = icmp eq ptr %101, null
  %103 = or i1 %100, %102
  br i1 %103, label %104, label %86

104:                                              ; preds = %96, %83
  %105 = phi i32 [ 0, %83 ], [ %97, %96 ]
  %106 = icmp ult i16 %81, 3
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = sext i16 %81 to i32
  %109 = getelementptr inbounds [3 x i32], ptr @switch.table.fsnotify_put_mark, i32 0, i32 %108
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %5, i32 0, i32 4
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr i8, ptr %112, i32 %110
  br label %114

114:                                              ; preds = %107, %104
  %115 = phi ptr [ null, %104 ], [ %113, %107 ]
  store i32 %105, ptr %115, align 4
  br label %116

116:                                              ; preds = %114, %79
  store volatile ptr null, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %117 = load i16, ptr %5, align 4
  %118 = add i16 %117, 1
  store i16 %118, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  br label %119

119:                                              ; preds = %116, %66
  tail call void @_raw_spin_lock(ptr noundef nonnull @destroy_lock) #6
  %120 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 3
  %121 = load ptr, ptr @destroy_list, align 4
  %122 = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1
  store ptr %120, ptr %122, align 4
  store ptr %121, ptr %120, align 4
  %123 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 3, i32 1
  store ptr @destroy_list, ptr %123, align 4
  store volatile ptr %120, ptr @destroy_list, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %124 = load i16, ptr @destroy_lock, align 4
  %125 = add i16 %124, 1
  store i16 %125, ptr @destroy_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %126 = load ptr, ptr @system_unbound_wq, align 4
  %127 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %126, ptr noundef nonnull @reaper_work, i32 noundef 1) #6
  br label %128

128:                                              ; preds = %119, %28, %24, %23, %14, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @fsnotify_detach_connector_from_object(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %0, i32 0, i32 1
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  store i32 %5, ptr %1, align 4
  %6 = load i16, ptr %3, align 4
  switch i16 %6, label %23 [
    i16 3, label %52
    i16 0, label %7
    i16 1, label %12
    i16 2, label %16
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -384
  %11 = getelementptr i8, ptr %9, i32 -4
  store i32 0, ptr %11, align 4
  br label %20

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 4
  store i32 0, ptr %15, align 4
  br label %20

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 -4
  store i32 0, ptr %19, align 8
  br label %20

20:                                               ; preds = %16, %12, %7
  %21 = phi ptr [ null, %16 ], [ null, %12 ], [ %10, %7 ]
  %22 = load i16, ptr %3, align 4
  br label %23

23:                                               ; preds = %20, %2
  %24 = phi i16 [ %22, %20 ], [ %6, %2 ]
  %25 = phi ptr [ %21, %20 ], [ null, %2 ]
  switch i16 %24, label %49 [
    i16 0, label %26
    i16 1, label %31
    i16 2, label %36
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %0, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 -356
  %30 = load ptr, ptr %29, align 4
  br label %40

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %0, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 -120
  %35 = load ptr, ptr %34, align 4
  br label %40

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %0, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 -572
  br label %40

40:                                               ; preds = %36, %31, %26
  %41 = phi ptr [ %39, %36 ], [ %35, %31 ], [ %30, %26 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #6, !srcloc !9
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #6, !srcloc !21
  %46 = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  tail call void @wake_up_var(ptr noundef %44) #6
  br label %49

49:                                               ; preds = %48, %43, %40, %23
  %50 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %0, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  store volatile ptr null, ptr %51, align 4
  store ptr null, ptr %50, align 4
  store i16 3, ptr %3, align 4
  br label %52

52:                                               ; preds = %49, %2
  %53 = phi ptr [ %25, %49 ], [ null, %2 ]
  ret ptr %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @fsnotify_prepare_user_wait(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %50, %1
  %3 = phi i1 [ true, %1 ], [ %52, %50 ]
  %4 = phi i32 [ 0, %1 ], [ %51, %50 ]
  %5 = getelementptr [5 x ptr], ptr %0, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %50, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.fsnotify_mark, ptr %6, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %22, %8
  %13 = phi i32 [ %20, %22 ], [ %10, %8 ]
  %14 = add i32 %13, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #6, !srcloc !9
  br label %15

15:                                               ; preds = %15, %12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 %13, i32 %14, ptr elementtype(i32) %9) #6, !srcloc !23
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  %20 = extractvalue { i32, i32 } %16, 1
  %21 = icmp eq i32 %20, %13
  br i1 %21, label %24, label %22, !prof !11

22:                                               ; preds = %19
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %24, label %12

24:                                               ; preds = %22, %19, %8
  %25 = phi i32 [ 0, %8 ], [ %13, %19 ], [ 0, %22 ]
  %26 = add i32 %25, 1
  %27 = or i32 %26, %25
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %30, label %29, !prof !11

29:                                               ; preds = %24
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 0) #6
  br label %30

30:                                               ; preds = %29, %24
  %31 = icmp eq i32 %25, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.fsnotify_mark, ptr %6, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %33) #6
  %34 = getelementptr inbounds %struct.fsnotify_mark, ptr %6, i32 0, i32 8
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.fsnotify_mark, ptr %6, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.fsnotify_group, ptr %40, i32 0, i32 10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #6, !srcloc !9
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #6, !srcloc !24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %43 = load i16, ptr %33, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  br label %50

45:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %46 = load i16, ptr %33, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  tail call void @fsnotify_put_mark(ptr noundef nonnull %6) #6
  br label %48

48:                                               ; preds = %45, %30
  %49 = icmp eq i32 %4, 0
  br i1 %49, label %141, label %63

50:                                               ; preds = %38, %2
  %51 = add nuw nsw i32 %4, 1
  %52 = icmp ult i32 %4, 4
  %53 = icmp eq i32 %51, 5
  br i1 %53, label %54, label %2

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.fsnotify_iter_info, ptr %0, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = icmp ugt i32 %56, 1
  %58 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %59 = xor i1 %58, true
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %62, !prof !8

61:                                               ; preds = %54
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 189, i32 noundef 9, ptr noundef null) #6
  br label %62

62:                                               ; preds = %61, %54
  tail call void @__srcu_read_unlock(ptr noundef nonnull @fsnotify_mark_srcu, i32 noundef %56) #6
  br label %141

63:                                               ; preds = %48
  %64 = add nsw i32 %4, -1
  %65 = getelementptr [5 x ptr], ptr %0, i32 0, i32 %64
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %81, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.fsnotify_mark, ptr %66, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  tail call void @fsnotify_put_mark(ptr noundef nonnull %66) #6
  %71 = getelementptr inbounds %struct.fsnotify_group, ptr %70, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %71) #6, !srcloc !9
  %72 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %71, ptr %71, i32 1, ptr elementtype(i32) %71) #6, !srcloc !21
  %73 = extractvalue { i32, i32 } %72, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.fsnotify_group, ptr %70, i32 0, i32 8
  %77 = load i8, ptr %76, align 4, !range !25
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.fsnotify_group, ptr %70, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %80, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %81

81:                                               ; preds = %79, %75, %68, %63
  %82 = icmp ugt i32 %4, 1
  br i1 %82, label %83, label %141

83:                                               ; preds = %81
  %84 = add nsw i32 %4, -2
  %85 = getelementptr [5 x ptr], ptr %0, i32 0, i32 %84
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %101, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.fsnotify_mark, ptr %86, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  tail call void @fsnotify_put_mark(ptr noundef nonnull %86) #6
  %91 = getelementptr inbounds %struct.fsnotify_group, ptr %90, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #6, !srcloc !9
  %92 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #6, !srcloc !21
  %93 = extractvalue { i32, i32 } %92, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.fsnotify_group, ptr %90, i32 0, i32 8
  %97 = load i8, ptr %96, align 4, !range !25
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.fsnotify_group, ptr %90, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %100, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %101

101:                                              ; preds = %99, %95, %88, %83
  %102 = icmp ugt i32 %4, 2
  br i1 %102, label %103, label %141

103:                                              ; preds = %101
  %104 = add nsw i32 %4, -3
  %105 = getelementptr [5 x ptr], ptr %0, i32 0, i32 %104
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %121, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.fsnotify_mark, ptr %106, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  tail call void @fsnotify_put_mark(ptr noundef nonnull %106) #6
  %111 = getelementptr inbounds %struct.fsnotify_group, ptr %110, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %111) #6, !srcloc !9
  %112 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %111, ptr %111, i32 1, ptr elementtype(i32) %111) #6, !srcloc !21
  %113 = extractvalue { i32, i32 } %112, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.fsnotify_group, ptr %110, i32 0, i32 8
  %117 = load i8, ptr %116, align 4, !range !25
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.fsnotify_group, ptr %110, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %120, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %121

121:                                              ; preds = %119, %115, %108, %103
  %122 = icmp ugt i32 %4, 3
  br i1 %122, label %123, label %141

123:                                              ; preds = %121
  %124 = add nsw i32 %4, -4
  %125 = getelementptr [5 x ptr], ptr %0, i32 0, i32 %124
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %141, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.fsnotify_mark, ptr %126, i32 0, i32 2
  %130 = load ptr, ptr %129, align 4
  tail call void @fsnotify_put_mark(ptr noundef nonnull %126) #6
  %131 = getelementptr inbounds %struct.fsnotify_group, ptr %130, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %131) #6, !srcloc !9
  %132 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %131, ptr %131, i32 1, ptr elementtype(i32) %131) #6, !srcloc !21
  %133 = extractvalue { i32, i32 } %132, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.fsnotify_group, ptr %130, i32 0, i32 8
  %137 = load i8, ptr %136, align 4, !range !25
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.fsnotify_group, ptr %130, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %140, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %141

141:                                              ; preds = %139, %135, %128, %123, %121, %101, %81, %62, %48
  %142 = phi i1 [ %52, %62 ], [ %3, %48 ], [ %3, %123 ], [ %3, %128 ], [ %3, %135 ], [ %3, %139 ], [ %3, %121 ], [ %3, %101 ], [ %3, %81 ]
  %143 = xor i1 %142, true
  ret i1 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsnotify_finish_user_wait(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @fsnotify_mark_srcu) #6
  %3 = getelementptr inbounds %struct.fsnotify_iter_info, ptr %0, i32 0, i32 2
  store i32 %2, ptr %3, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.fsnotify_mark, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void @fsnotify_put_mark(ptr noundef nonnull %4) #6
  %9 = getelementptr inbounds %struct.fsnotify_group, ptr %8, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #6, !srcloc !9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #6, !srcloc !21
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.fsnotify_group, ptr %8, i32 0, i32 8
  %15 = load i8, ptr %14, align 4, !range !25
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.fsnotify_group, ptr %8, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %18, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %19

19:                                               ; preds = %17, %13, %6, %1
  %20 = getelementptr [5 x ptr], ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.fsnotify_mark, ptr %21, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  tail call void @fsnotify_put_mark(ptr noundef nonnull %21) #6
  %26 = getelementptr inbounds %struct.fsnotify_group, ptr %25, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #6, !srcloc !9
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #6, !srcloc !21
  %28 = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.fsnotify_group, ptr %25, i32 0, i32 8
  %32 = load i8, ptr %31, align 4, !range !25
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.fsnotify_group, ptr %25, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %35, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %36

36:                                               ; preds = %34, %30, %23, %19
  %37 = getelementptr [5 x ptr], ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.fsnotify_mark, ptr %38, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  tail call void @fsnotify_put_mark(ptr noundef nonnull %38) #6
  %43 = getelementptr inbounds %struct.fsnotify_group, ptr %42, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #6, !srcloc !9
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #6, !srcloc !21
  %45 = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.fsnotify_group, ptr %42, i32 0, i32 8
  %49 = load i8, ptr %48, align 4, !range !25
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.fsnotify_group, ptr %42, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %52, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %53

53:                                               ; preds = %51, %47, %40, %36
  %54 = getelementptr [5 x ptr], ptr %0, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %70, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.fsnotify_mark, ptr %55, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  tail call void @fsnotify_put_mark(ptr noundef nonnull %55) #6
  %60 = getelementptr inbounds %struct.fsnotify_group, ptr %59, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #6, !srcloc !9
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #6, !srcloc !21
  %62 = extractvalue { i32, i32 } %61, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.fsnotify_group, ptr %59, i32 0, i32 8
  %66 = load i8, ptr %65, align 4, !range !25
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.fsnotify_group, ptr %59, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %69, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %70

70:                                               ; preds = %68, %64, %57, %53
  %71 = getelementptr [5 x ptr], ptr %0, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %87, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.fsnotify_mark, ptr %72, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  tail call void @fsnotify_put_mark(ptr noundef nonnull %72) #6
  %77 = getelementptr inbounds %struct.fsnotify_group, ptr %76, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %77) #6, !srcloc !9
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %77, ptr %77, i32 1, ptr elementtype(i32) %77) #6, !srcloc !21
  %79 = extractvalue { i32, i32 } %78, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.fsnotify_group, ptr %76, i32 0, i32 8
  %83 = load i8, ptr %82, align 4, !range !25
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.fsnotify_group, ptr %76, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %86, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %87

87:                                               ; preds = %85, %81, %74, %70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsnotify_detach_mark(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 9
  %5 = tail call zeroext i1 @mutex_is_locked(ptr noundef %4) #6
  %6 = load i1, ptr @fsnotify_detach_mark.__already_done, align 1
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %9, label %8, !prof !11

8:                                                ; preds = %1
  store i1 true, ptr @fsnotify_detach_mark.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 403, i32 noundef 9, ptr noundef null) #6
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %10) #6
  %11 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %16 = load i16, ptr %10, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  br label %27

18:                                               ; preds = %9
  %19 = and i32 %12, -5
  store i32 %19, ptr %11, align 4
  %20 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 3
  %21 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 3, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store volatile ptr %20, ptr %20, align 4
  store ptr %20, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %25 = load i16, ptr %10, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  tail call void @fsnotify_put_mark(ptr noundef %0)
  br label %27

27:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsnotify_free_mark(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %10 = load i16, ptr %4, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  br label %21

12:                                               ; preds = %1
  %13 = and i32 %6, -3
  store i32 %13, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %14 = load i16, ptr %4, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.fsnotify_ops, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  tail call void %18(ptr noundef %0, ptr noundef %3) #6
  br label %21

21:                                               ; preds = %20, %12, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsnotify_destroy_mark(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %3) #6
  tail call void @fsnotify_detach_mark(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %12 = load i16, ptr %6, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  br label %23

14:                                               ; preds = %2
  %15 = and i32 %8, -3
  store i32 %15, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %16 = load i16, ptr %6, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.fsnotify_ops, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  tail call void %20(ptr noundef %0, ptr noundef %5) #6
  br label %23

23:                                               ; preds = %22, %14, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @fsnotify_compare_groups(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = icmp ugt i32 %10, %12
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = icmp ult ptr %0, %1
  %18 = select i1 %17, i32 1, i32 -1
  br label %19

19:                                               ; preds = %16, %14, %8, %6, %4, %2
  %20 = phi i32 [ 0, %2 ], [ 1, %4 ], [ -1, %6 ], [ 1, %8 ], [ -1, %14 ], [ %18, %16 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsnotify_add_mark_locked(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fsnotify_group, ptr %7, i32 0, i32 9
  %9 = tail call zeroext i1 @mutex_is_locked(ptr noundef %8) #6
  br i1 %9, label %11, label %10, !prof !11

10:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/mark.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 676, 0\0A.popsection", ""() #6, !srcloc !26
  unreachable

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %12) #6
  %13 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 6
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 3
  %17 = getelementptr inbounds %struct.fsnotify_group, ptr %7, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %16, ptr %19, align 4
  store ptr %18, ptr %16, align 4
  %20 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 3, i32 1
  store ptr %17, ptr %20, align 4
  store volatile ptr %16, ptr %17, align 4
  %21 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = load i1, ptr @fsnotify_get_mark.__already_done, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %11
  store i1 true, ptr @fsnotify_get_mark.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef null) #6
  br label %28

28:                                               ; preds = %27, %11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #6, !srcloc !9
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #6, !srcloc !10
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32, !prof !8

32:                                               ; preds = %28
  %33 = add i32 %30, 1
  %34 = or i32 %33, %30
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %38, label %36, !prof !11

36:                                               ; preds = %32, %28
  %37 = phi i32 [ 2, %28 ], [ 1, %32 ]
  tail call void @refcount_warn_saturate(ptr noundef %21, i32 noundef %37) #6
  br label %38

38:                                               ; preds = %36, %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %39 = load i16, ptr %12, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %41 = icmp ult i32 %2, 3
  br i1 %41, label %42, label %257, !prof !11

42:                                               ; preds = %38
  %43 = icmp eq ptr %4, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %42
  %45 = load i32, ptr %4, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = getelementptr [2 x i32], ptr %4, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  %51 = load i1, ptr @fsnotify_add_mark_list.__already_done, align 1
  %52 = xor i1 %51, true
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %55, !prof !8

54:                                               ; preds = %47
  store i1 true, ptr @fsnotify_add_mark_list.__already_done, align 1
  br label %257

55:                                               ; preds = %47
  br i1 %50, label %260, label %56

56:                                               ; preds = %55, %44, %42
  tail call void @_raw_spin_lock(ptr noundef %12) #6
  %57 = tail call fastcc ptr @fsnotify_grab_connector(ptr noundef %1) #6
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %145

59:                                               ; preds = %56
  %60 = trunc i32 %2 to i16
  %61 = getelementptr i8, ptr %1, i32 -120
  %62 = getelementptr i8, ptr %1, i32 -572
  %63 = getelementptr i8, ptr %1, i32 -384
  %64 = getelementptr i8, ptr %1, i32 -356
  br label %65

65:                                               ; preds = %142, %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %66 = load i16, ptr %12, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %68 = load ptr, ptr @fsnotify_mark_connector_cachep, align 4
  %69 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %68, i32 noundef 3264) #6
  %70 = icmp eq ptr %69, null
  br i1 %70, label %260, label %71

71:                                               ; preds = %65
  store i32 0, ptr %69, align 8
  %72 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %69, i32 0, i32 5
  store ptr null, ptr %72, align 4
  %73 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %69, i32 0, i32 1
  store i16 %60, ptr %73, align 4
  %74 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %69, i32 0, i32 4
  store ptr %1, ptr %74, align 8
  %75 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %69, i32 0, i32 3
  br i1 %43, label %78, label %76

76:                                               ; preds = %71
  %77 = load i64, ptr %4, align 4
  store i64 %77, ptr %75, align 8
  br label %80

78:                                               ; preds = %71
  %79 = getelementptr %struct.fsnotify_mark_connector, ptr %69, i32 0, i32 3, i32 0, i32 1
  store i32 0, ptr %79, align 4
  store i32 0, ptr %75, align 8
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i16 [ 0, %78 ], [ 1, %76 ]
  %82 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %69, i32 0, i32 2
  store i16 %81, ptr %82, align 2
  switch i16 %60, label %98 [
    i16 0, label %83
    i16 2, label %91
    i16 1, label %87
  ]

83:                                               ; preds = %80
  tail call void @ihold(ptr noundef %63) #6
  %84 = load ptr, ptr %64, align 4
  %85 = getelementptr inbounds %struct.super_block, ptr %84, i32 0, i32 42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %85) #6, !srcloc !9
  %86 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %85, ptr %85, i32 1, ptr elementtype(i32) %85) #6, !srcloc !24
  br label %87

87:                                               ; preds = %83, %80
  %88 = phi ptr [ %64, %83 ], [ %61, %80 ]
  %89 = phi ptr [ %63, %83 ], [ null, %80 ]
  %90 = load ptr, ptr %88, align 4
  br label %91

91:                                               ; preds = %87, %80
  %92 = phi ptr [ null, %80 ], [ %89, %87 ]
  %93 = phi ptr [ %62, %80 ], [ %90, %87 ]
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.super_block, ptr %93, i32 0, i32 42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %96) #6, !srcloc !9
  %97 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %96, ptr %96, i32 1, ptr elementtype(i32) %96) #6, !srcloc !24
  br label %98

98:                                               ; preds = %95, %91, %80
  %99 = phi ptr [ %92, %91 ], [ %92, %95 ], [ null, %80 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !27
  %100 = ptrtoint ptr %69 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #6, !srcloc !9
  br label %101

101:                                              ; preds = %101, %98
  %102 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %1, i32 0, i32 %100) #6, !srcloc !28
  %103 = extractvalue { i32, i32 } %102, 0
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %101

105:                                              ; preds = %101
  %106 = extractvalue { i32, i32 } %102, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !29
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %142, label %108

108:                                              ; preds = %105
  %109 = icmp eq ptr %99, null
  br i1 %109, label %118, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.inode, ptr %99, i32 0, i32 8
  %112 = load ptr, ptr %111, align 4
  tail call void @iput(ptr noundef nonnull %99) #6
  %113 = getelementptr inbounds %struct.super_block, ptr %112, i32 0, i32 42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %113) #6, !srcloc !9
  %114 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %113, ptr %113, i32 1, ptr elementtype(i32) %113) #6, !srcloc !21
  %115 = extractvalue { i32, i32 } %114, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  tail call void @wake_up_var(ptr noundef %113) #6
  br label %118

118:                                              ; preds = %117, %110, %108
  %119 = load i16, ptr %73, align 4
  switch i16 %119, label %140 [
    i16 0, label %120
    i16 1, label %124
    i16 2, label %128
  ]

120:                                              ; preds = %118
  %121 = load ptr, ptr %74, align 8
  %122 = getelementptr i8, ptr %121, i32 -356
  %123 = load ptr, ptr %122, align 4
  br label %131

124:                                              ; preds = %118
  %125 = load ptr, ptr %74, align 8
  %126 = getelementptr i8, ptr %125, i32 -120
  %127 = load ptr, ptr %126, align 4
  br label %131

128:                                              ; preds = %118
  %129 = load ptr, ptr %74, align 8
  %130 = getelementptr i8, ptr %129, i32 -572
  br label %131

131:                                              ; preds = %128, %124, %120
  %132 = phi ptr [ %130, %128 ], [ %127, %124 ], [ %123, %120 ]
  %133 = icmp eq ptr %132, null
  br i1 %133, label %140, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.super_block, ptr %132, i32 0, i32 42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %135) #6, !srcloc !9
  %136 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %135, ptr %135, i32 1, ptr elementtype(i32) %135) #6, !srcloc !21
  %137 = extractvalue { i32, i32 } %136, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  tail call void @wake_up_var(ptr noundef %135) #6
  br label %140

140:                                              ; preds = %139, %134, %131, %118
  %141 = load ptr, ptr @fsnotify_mark_connector_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %141, ptr noundef nonnull %69) #6
  br label %142

142:                                              ; preds = %140, %105
  tail call void @_raw_spin_lock(ptr noundef %12) #6
  %143 = tail call fastcc ptr @fsnotify_grab_connector(ptr noundef %1) #6
  %144 = icmp eq ptr %143, null
  br i1 %144, label %65, label %145

145:                                              ; preds = %142, %56
  %146 = phi ptr [ %57, %56 ], [ %143, %142 ]
  br i1 %43, label %182, label %147

147:                                              ; preds = %145
  %148 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %146, i32 0, i32 2
  %149 = load i16, ptr %148, align 2
  %150 = and i16 %149, 1
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %146, i32 0, i32 3
  %154 = load i64, ptr %4, align 4
  store i64 %154, ptr %153, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !30
  %155 = load i16, ptr %148, align 2
  %156 = or i16 %155, 1
  store i16 %156, ptr %148, align 2
  br label %182

157:                                              ; preds = %147
  %158 = load i32, ptr %4, align 4
  %159 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %146, i32 0, i32 3
  %160 = load i32, ptr %159, align 4
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = getelementptr [2 x i32], ptr %4, i32 0, i32 1
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr %struct.fsnotify_mark_connector, ptr %146, i32 0, i32 3, i32 0, i32 1
  %166 = load i32, ptr %165, align 4
  %167 = icmp eq i32 %164, %166
  br i1 %167, label %182, label %168

168:                                              ; preds = %162, %157
  %169 = tail call i32 @___ratelimit(ptr noundef nonnull @fsnotify_add_mark_list._rs, ptr noundef nonnull @__func__.fsnotify_add_mark_list) #6
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %244, label %171

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %146, i32 0, i32 1
  %173 = load i16, ptr %172, align 4
  %174 = zext i16 %173 to i32
  %175 = load i32, ptr %4, align 4
  %176 = getelementptr [2 x i32], ptr %4, i32 0, i32 1
  %177 = load i32, ptr %176, align 4
  %178 = load i32, ptr %159, align 4
  %179 = getelementptr %struct.fsnotify_mark_connector, ptr %146, i32 0, i32 3, i32 0, i32 1
  %180 = load i32, ptr %179, align 4
  %181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.fsnotify_add_mark_list, i32 noundef %174, i32 noundef %175, i32 noundef %177, i32 noundef %178, i32 noundef %180) #7
  br label %244

182:                                              ; preds = %162, %152, %145
  %183 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %146, i32 0, i32 5
  %184 = load volatile ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 5
  store ptr null, ptr %187, align 4
  %188 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 5, i32 1
  store volatile ptr %183, ptr %188, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !31
  store volatile ptr %187, ptr %183, align 4
  br label %242

189:                                              ; preds = %182
  %190 = getelementptr i8, ptr %184, i32 -24
  %191 = icmp eq ptr %190, null
  br i1 %191, label %234, label %192

192:                                              ; preds = %189
  %193 = load ptr, ptr %6, align 4
  %194 = icmp eq ptr %193, null
  %195 = getelementptr inbounds %struct.fsnotify_group, ptr %193, i32 0, i32 7
  br label %196

196:                                              ; preds = %227, %192
  %197 = phi ptr [ %190, %192 ], [ %231, %227 ]
  %198 = getelementptr inbounds %struct.fsnotify_mark, ptr %197, i32 0, i32 2
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, %193
  br i1 %200, label %201, label %208

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.fsnotify_mark, ptr %197, i32 0, i32 8
  %203 = load i32, ptr %202, align 4
  %204 = and i32 %203, 4
  %205 = icmp eq i32 %204, 0
  %206 = icmp ne i32 %3, 0
  %207 = or i1 %206, %205
  br i1 %207, label %220, label %244

208:                                              ; preds = %196
  %209 = icmp eq ptr %199, null
  br i1 %209, label %220, label %210

210:                                              ; preds = %208
  br i1 %194, label %227, label %211

211:                                              ; preds = %210
  %212 = getelementptr inbounds %struct.fsnotify_group, ptr %199, i32 0, i32 7
  %213 = load i32, ptr %212, align 4
  %214 = load i32, ptr %195, align 4
  %215 = icmp ult i32 %213, %214
  br i1 %215, label %220, label %216

216:                                              ; preds = %211
  %217 = icmp ule i32 %213, %214
  %218 = icmp ult ptr %199, %193
  %219 = select i1 %217, i1 %218, i1 false
  br i1 %219, label %220, label %227

220:                                              ; preds = %216, %211, %208, %201
  %221 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 5
  %222 = getelementptr inbounds %struct.fsnotify_mark, ptr %197, i32 0, i32 5
  %223 = getelementptr inbounds %struct.fsnotify_mark, ptr %197, i32 0, i32 5, i32 1
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 5, i32 1
  store volatile ptr %224, ptr %225, align 4
  store ptr %222, ptr %221, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !32
  %226 = load ptr, ptr %225, align 4
  store volatile ptr %221, ptr %226, align 4
  store volatile ptr %221, ptr %223, align 4
  br label %242

227:                                              ; preds = %216, %210
  %228 = getelementptr inbounds %struct.fsnotify_mark, ptr %197, i32 0, i32 5
  %229 = load ptr, ptr %228, align 4
  %230 = icmp eq ptr %229, null
  %231 = getelementptr i8, ptr %229, i32 -24
  %232 = icmp eq ptr %231, null
  %233 = or i1 %230, %232
  br i1 %233, label %235, label %196

234:                                              ; preds = %189
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/mark.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 648, 0\0A.popsection", ""() #6, !srcloc !33
  unreachable

235:                                              ; preds = %227
  %236 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 5
  store ptr %229, ptr %236, align 4
  %237 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 5, i32 1
  store volatile ptr %228, ptr %237, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !34
  store volatile ptr %236, ptr %228, align 4
  %238 = load ptr, ptr %236, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %242, label %240

240:                                              ; preds = %235
  %241 = getelementptr inbounds %struct.hlist_node, ptr %238, i32 0, i32 1
  store volatile ptr %236, ptr %241, align 4
  br label %242

242:                                              ; preds = %240, %235, %220, %186
  %243 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 6
  store volatile ptr %146, ptr %243, align 4
  br label %244

244:                                              ; preds = %242, %201, %171, %168
  %245 = phi i1 [ false, %168 ], [ false, %171 ], [ false, %201 ], [ true, %242 ]
  %246 = phi i32 [ -18, %168 ], [ -18, %171 ], [ -17, %201 ], [ 0, %242 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %247 = load i16, ptr %146, align 4
  %248 = add i16 %247, 1
  store i16 %248, ptr %146, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %249 = load i16, ptr %12, align 4
  %250 = add i16 %249, 1
  store i16 %250, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  br i1 %245, label %251, label %260

251:                                              ; preds = %244
  %252 = load i32, ptr %0, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %269, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 6
  %256 = load ptr, ptr %255, align 4
  tail call void @fsnotify_recalc_mask(ptr noundef %256)
  br label %269

257:                                              ; preds = %54, %38
  %258 = phi i32 [ 588, %54 ], [ 584, %38 ]
  %259 = phi i32 [ -19, %54 ], [ -22, %38 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %258, i32 noundef 9, ptr noundef null) #6
  br label %260

260:                                              ; preds = %257, %244, %65, %55
  %261 = phi i32 [ %246, %244 ], [ -19, %55 ], [ %259, %257 ], [ -12, %65 ]
  tail call void @_raw_spin_lock(ptr noundef %12) #6
  %262 = load i32, ptr %13, align 4
  %263 = and i32 %262, -7
  store i32 %263, ptr %13, align 4
  %264 = load ptr, ptr %20, align 4
  %265 = load ptr, ptr %16, align 4
  %266 = getelementptr inbounds %struct.list_head, ptr %265, i32 0, i32 1
  store ptr %264, ptr %266, align 4
  store volatile ptr %265, ptr %264, align 4
  store volatile ptr %16, ptr %16, align 4
  store ptr %16, ptr %20, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %267 = load i16, ptr %12, align 4
  %268 = add i16 %267, 1
  store i16 %268, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  tail call void @fsnotify_put_mark(ptr noundef %0)
  br label %269

269:                                              ; preds = %260, %254, %251
  %270 = phi i32 [ 0, %251 ], [ 0, %254 ], [ %261, %260 ]
  ret i32 %270
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsnotify_add_mark(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fsnotify_group, ptr %7, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %8) #6
  %9 = tail call i32 @fsnotify_add_mark_locked(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  tail call void @mutex_unlock(ptr noundef %8) #6
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fsnotify_find_mark(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = tail call fastcc ptr @fsnotify_grab_connector(ptr noundef %0)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = getelementptr i8, ptr %7, i32 -24
  %10 = icmp eq ptr %9, null
  %11 = or i1 %8, %10
  br i1 %11, label %50, label %12

12:                                               ; preds = %43, %5
  %13 = phi ptr [ %47, %43 ], [ %9, %5 ]
  %14 = getelementptr inbounds %struct.fsnotify_mark, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %43

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.fsnotify_mark, ptr %13, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.fsnotify_mark, ptr %13, i32 0, i32 1
  %24 = load volatile i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = load i1, ptr @fsnotify_get_mark.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !8

29:                                               ; preds = %22
  store i1 true, ptr @fsnotify_get_mark.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef null) #6
  br label %30

30:                                               ; preds = %29, %22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #6, !srcloc !9
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #6, !srcloc !10
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34, !prof !8

34:                                               ; preds = %30
  %35 = add i32 %32, 1
  %36 = or i32 %35, %32
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %40, label %38, !prof !11

38:                                               ; preds = %34, %30
  %39 = phi i32 [ 2, %30 ], [ 1, %34 ]
  tail call void @refcount_warn_saturate(ptr noundef %23, i32 noundef %39) #6
  br label %40

40:                                               ; preds = %38, %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %41 = load i16, ptr %3, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  br label %53

43:                                               ; preds = %17, %12
  %44 = getelementptr inbounds %struct.fsnotify_mark, ptr %13, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  %47 = getelementptr i8, ptr %45, i32 -24
  %48 = icmp eq ptr %47, null
  %49 = or i1 %46, %48
  br i1 %49, label %50, label %12

50:                                               ; preds = %43, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %51 = load i16, ptr %3, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  br label %53

53:                                               ; preds = %50, %40, %2
  %54 = phi ptr [ %13, %40 ], [ null, %50 ], [ null, %2 ]
  ret ptr %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @fsnotify_grab_connector(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @fsnotify_mark_srcu) #6
  %3 = load volatile ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull %3) #6
  %6 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %3, i32 0, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = icmp eq i16 %7, 3
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %10 = load i16, ptr %3, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %12 = icmp ugt i32 %2, 1
  %13 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %21, label %23, !prof !8

16:                                               ; preds = %5, %1
  %17 = icmp ugt i32 %2, 1
  %18 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %23, !prof !8

21:                                               ; preds = %16, %9
  %22 = phi ptr [ null, %9 ], [ %3, %16 ]
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 189, i32 noundef 9, ptr noundef null) #6
  br label %23

23:                                               ; preds = %21, %16, %9
  %24 = phi ptr [ null, %9 ], [ %3, %16 ], [ %22, %21 ]
  tail call void @__srcu_read_unlock(ptr noundef nonnull @fsnotify_mark_srcu, i32 noundef %2) #6
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsnotify_clear_marks_by_group(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = icmp eq i32 %1, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 11
  br label %31

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 9
  call void @mutex_lock(ptr noundef %9) #6
  %10 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %30, label %13

13:                                               ; preds = %28, %8
  %14 = phi ptr [ %15, %28 ], [ %11, %8 ]
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %14, i32 20
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %17, i32 0, i32 1
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  store volatile ptr %15, ptr %24, align 4
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %14, ptr %27, align 4
  store ptr %26, ptr %14, align 4
  store ptr %3, ptr %23, align 4
  store volatile ptr %14, ptr %3, align 8
  br label %28

28:                                               ; preds = %22, %13
  %29 = icmp eq ptr %15, %10
  br i1 %29, label %30, label %13

30:                                               ; preds = %28, %8
  call void @mutex_unlock(ptr noundef %9) #6
  br label %31

31:                                               ; preds = %30, %6
  %32 = phi ptr [ %7, %6 ], [ %3, %30 ]
  %33 = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 9
  call void @mutex_lock(ptr noundef %33) #6
  %34 = load volatile ptr, ptr %32, align 4
  %35 = icmp eq ptr %34, %32
  br i1 %35, label %36, label %37

36:                                               ; preds = %77, %31
  call void @mutex_unlock(ptr noundef %33) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret void

37:                                               ; preds = %77, %31
  %38 = phi ptr [ %78, %77 ], [ %34, %31 ]
  %39 = getelementptr i8, ptr %38, i32 -12
  %40 = getelementptr i8, ptr %38, i32 -8
  %41 = load volatile i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  %43 = load i1, ptr @fsnotify_get_mark.__already_done, align 1
  %44 = xor i1 %43, true
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %47, !prof !8

46:                                               ; preds = %37
  store i1 true, ptr @fsnotify_get_mark.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef null) #6
  br label %47

47:                                               ; preds = %46, %37
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #6, !srcloc !9
  %48 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #6, !srcloc !10
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51, !prof !8

51:                                               ; preds = %47
  %52 = add i32 %49, 1
  %53 = or i32 %52, %49
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %57, label %55, !prof !11

55:                                               ; preds = %51, %47
  %56 = phi i32 [ 2, %47 ], [ 1, %51 ]
  call void @refcount_warn_saturate(ptr noundef %40, i32 noundef %56) #6
  br label %57

57:                                               ; preds = %55, %51
  call void @fsnotify_detach_mark(ptr noundef %39)
  call void @mutex_unlock(ptr noundef %33) #6
  %58 = getelementptr i8, ptr %38, i32 -4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %38, i32 8
  call void @_raw_spin_lock(ptr noundef %60) #6
  %61 = getelementptr i8, ptr %38, i32 28
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %66 = load i16, ptr %60, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr %60, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  br label %77

68:                                               ; preds = %57
  %69 = and i32 %62, -3
  store i32 %69, ptr %61, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %70 = load i16, ptr %60, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %60, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %72 = load ptr, ptr %59, align 4
  %73 = getelementptr inbounds %struct.fsnotify_ops, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  call void %74(ptr noundef %39, ptr noundef %59) #6
  br label %77

77:                                               ; preds = %76, %68, %65
  call void @fsnotify_put_mark(ptr noundef %39)
  call void @mutex_lock(ptr noundef %33) #6
  %78 = load volatile ptr, ptr %32, align 4
  %79 = icmp eq ptr %78, %32
  br i1 %79, label %36, label %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsnotify_destroy_marks(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !35
  %3 = tail call fastcc ptr @fsnotify_grab_connector(ptr noundef %0)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %71, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = getelementptr i8, ptr %7, i32 -24
  %10 = icmp eq ptr %9, null
  %11 = or i1 %8, %10
  br i1 %11, label %46, label %12

12:                                               ; preds = %37, %5
  %13 = phi ptr [ %43, %37 ], [ %9, %5 ]
  %14 = phi ptr [ %13, %37 ], [ null, %5 ]
  %15 = getelementptr inbounds %struct.fsnotify_mark, ptr %13, i32 0, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = load i1, ptr @fsnotify_get_mark.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !8

21:                                               ; preds = %12
  store i1 true, ptr @fsnotify_get_mark.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef null) #6
  br label %22

22:                                               ; preds = %21, %12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #6, !srcloc !9
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #6, !srcloc !10
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26, !prof !8

26:                                               ; preds = %22
  %27 = add i32 %24, 1
  %28 = or i32 %27, %24
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %32, label %30, !prof !11

30:                                               ; preds = %26, %22
  %31 = phi i32 [ 2, %22 ], [ 1, %26 ]
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef %31) #6
  br label %32

32:                                               ; preds = %30, %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %33 = load i16, ptr %3, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %35 = icmp eq ptr %14, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @fsnotify_put_mark(ptr noundef nonnull %14)
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds %struct.fsnotify_mark, ptr %13, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void @fsnotify_destroy_mark(ptr noundef nonnull %13, ptr noundef %39)
  tail call void @_raw_spin_lock(ptr noundef nonnull %3) #6
  %40 = getelementptr inbounds %struct.fsnotify_mark, ptr %13, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  %43 = getelementptr i8, ptr %41, i32 -24
  %44 = icmp eq ptr %43, null
  %45 = or i1 %42, %44
  br i1 %45, label %46, label %12

46:                                               ; preds = %37, %5
  %47 = phi ptr [ null, %5 ], [ %13, %37 ]
  %48 = call fastcc ptr @fsnotify_detach_connector_from_object(ptr noundef nonnull %3, ptr noundef nonnull %2)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %49 = load i16, ptr %3, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %51 = icmp eq ptr %47, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  tail call void @fsnotify_put_mark(ptr noundef nonnull %47)
  br label %53

53:                                               ; preds = %52, %46
  %54 = icmp eq ptr %48, null
  br i1 %54, label %71, label %55

55:                                               ; preds = %53
  %56 = load i32, ptr %2, align 4
  %57 = icmp ne i32 %56, 0
  %58 = load i1, ptr @fsnotify_drop_object.__already_done, align 1
  %59 = xor i1 %58, true
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %62, !prof !8

61:                                               ; preds = %55
  store i1 true, ptr @fsnotify_drop_object.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef null) #6
  br label %62

62:                                               ; preds = %61, %55
  br i1 %57, label %71, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.inode, ptr %48, i32 0, i32 8
  %65 = load ptr, ptr %64, align 4
  tail call void @iput(ptr noundef nonnull %48) #6
  %66 = getelementptr inbounds %struct.super_block, ptr %65, i32 0, i32 42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %66) #6, !srcloc !9
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %66, ptr %66, i32 1, ptr elementtype(i32) %66) #6, !srcloc !21
  %68 = extractvalue { i32, i32 } %67, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  tail call void @wake_up_var(ptr noundef %66) #6
  br label %71

71:                                               ; preds = %70, %63, %62, %53, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsnotify_init_mark(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  store volatile i32 1, ptr %3, align 4
  tail call void @fsnotify_get_group(ptr noundef %1) #6
  %4 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 2
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 6
  store volatile ptr null, ptr %5, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_get_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsnotify_wait_marks_destroyed() #0 {
  %1 = tail call zeroext i1 @flush_delayed_work(ptr noundef nonnull @reaper_work) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_put_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsnotify_connector_destroy_workfn(ptr nocapture noundef readnone %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @destroy_lock) #6
  %2 = load ptr, ptr @connector_destroy_list, align 4
  store ptr null, ptr @connector_destroy_list, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %3 = load i16, ptr @destroy_lock, align 4
  %4 = add i16 %3, 1
  store i16 %4, ptr @destroy_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  tail call void @synchronize_srcu(ptr noundef nonnull @fsnotify_mark_srcu) #6
  %5 = icmp eq ptr %2, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %9, %6 ], [ %2, %1 ]
  %8 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr @fsnotify_mark_connector_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %10, ptr noundef nonnull %7) #6
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %6

12:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsnotify_mark_destroy_workfn(ptr nocapture noundef readnone %0) #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  tail call void @_raw_spin_lock(ptr noundef nonnull @destroy_lock) #6
  %3 = load ptr, ptr @destroy_list, align 4
  store ptr %3, ptr %2, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %2, ptr %4, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @destroy_list, i32 0, i32 1), align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  store ptr %2, ptr %5, align 4
  store volatile ptr @destroy_list, ptr @destroy_list, align 4
  store ptr @destroy_list, ptr getelementptr inbounds (%struct.list_head, ptr @destroy_list, i32 0, i32 1), align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %7 = load i16, ptr @destroy_lock, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr @destroy_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  call void @synchronize_srcu(ptr noundef nonnull @fsnotify_mark_srcu) #6
  %9 = load ptr, ptr %2, align 8
  %10 = icmp eq ptr %9, %2
  br i1 %10, label %32, label %11

11:                                               ; preds = %30, %1
  %12 = phi ptr [ %14, %30 ], [ %9, %1 ]
  %13 = getelementptr i8, ptr %12, i32 -12
  %14 = load ptr, ptr %12, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %14, ptr %16, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %15, align 4
  %18 = getelementptr i8, ptr %12, i32 -4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = load i1, ptr @fsnotify_final_mark_destroy.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %11
  store i1 true, ptr @fsnotify_final_mark_destroy.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef null) #6
  br label %25

25:                                               ; preds = %24, %11
  br i1 %20, label %30, label %26

26:                                               ; preds = %25
  %27 = load ptr, ptr %19, align 4
  %28 = getelementptr inbounds %struct.fsnotify_ops, ptr %27, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  call void %29(ptr noundef %13) #6
  call void @fsnotify_put_group(ptr noundef nonnull %19) #6
  br label %30

30:                                               ; preds = %26, %25
  %31 = icmp eq ptr %14, %2
  br i1 %31, label %32, label %11

32:                                               ; preds = %30, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 851657, i64 2148341628, i64 2148341654, i64 2148341701, i64 2148341723, i64 2148341751, i64 2148341771}
!10 = !{i64 2148354501, i64 2148354533, i64 2148354562, i64 2148354596, i64 2148354627, i64 2148354650}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2152545939, i64 2152546420, i64 2152545976, i64 2152546032, i64 2152546066, i64 2152546090, i64 2152546131, i64 2152546152, i64 2152546180, i64 2152546214}
!13 = !{i64 2149020261}
!14 = !{i64 2149016085}
!15 = !{i64 2149016160, i64 2149016187, i64 2149016234, i64 2149016256, i64 2149016284, i64 2149016304}
!16 = !{i64 2149043264}
!17 = !{i64 2148454723}
!18 = !{i64 2148356858, i64 2148356890, i64 2148356919, i64 2148356953, i64 2148356984, i64 2148357007}
!19 = !{i64 2149780237}
!20 = !{i64 2148453722}
!21 = !{i64 2148356084, i64 2148356116, i64 2148356145, i64 2148356179, i64 2148356210, i64 2148356233}
!22 = !{i64 2148453925}
!23 = !{i64 837720, i64 837744, i64 837765, i64 837782, i64 837799}
!24 = !{i64 2148353043, i64 2148353069, i64 2148353098, i64 2148353132, i64 2148353163, i64 2148353186}
!25 = !{i8 0, i8 2}
!26 = !{i64 2152585734, i64 2152586215, i64 2152585771, i64 2152585827, i64 2152585861, i64 2152585885, i64 2152585926, i64 2152585947, i64 2152585975, i64 2152586009}
!27 = !{i64 2152571256}
!28 = !{i64 863031, i64 863052, i64 863075, i64 863094, i64 863113}
!29 = !{i64 2152571644}
!30 = !{i64 2152577134}
!31 = !{i64 2149278330}
!32 = !{i64 2149306125}
!33 = !{i64 2152582510, i64 2152582991, i64 2152582547, i64 2152582603, i64 2152582637, i64 2152582661, i64 2152582702, i64 2152582723, i64 2152582751, i64 2152582785}
!34 = !{i64 2149321070}
!35 = !{!"auto-init"}
