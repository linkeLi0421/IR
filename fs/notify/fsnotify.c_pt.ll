; ModuleID = '/llk/IR/fs/notify/fsnotify.c_pt.bc'
source_filename = "../fs/notify/fsnotify.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___fsnotify_inode_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22__fsnotify_inode_delete\22\09\09\09\09\09"
module asm "__kstrtabns___fsnotify_inode_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___fsnotify_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22__fsnotify_parent\22\09\09\09\09\09"
module asm "__kstrtabns___fsnotify_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type {}
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
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.64, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%union.anon.64 = type { %struct.list_head }
%union.anon.65 = type { %struct.hlist_node }
%struct.name_snapshot = type { %struct.qstr, [36 x i8] }
%struct.mount = type { %struct.hlist_node, ptr, ptr, %struct.vfsmount, %union.anon.70, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %union.anon.71, %struct.list_head, ptr, i32, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%union.anon.70 = type { %struct.callback_head }
%union.anon.71 = type { %struct.hlist_node }
%struct.path = type { ptr, ptr }
%struct.fs_error_report = type { i32, ptr, ptr }
%struct.fsnotify_iter_info = type { [5 x ptr], i32, i32 }
%struct.fsnotify_mark_connector = type { %struct.spinlock, i16, i16, %struct.__kernel_fsid_t, %union.anon.63, %struct.hlist_head }
%struct.__kernel_fsid_t = type { [2 x i32] }
%union.anon.63 = type { ptr }
%struct.fsnotify_mark = type { i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.spinlock, %struct.hlist_node, ptr, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab___fsnotify_inode_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns___fsnotify_inode_delete = external dso_local constant [0 x i8], align 1
@__ksymtab___fsnotify_inode_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__fsnotify_inode_delete to i32), ptr @__kstrtab___fsnotify_inode_delete, ptr @__kstrtabns___fsnotify_inode_delete }, section "___ksymtab_gpl+__fsnotify_inode_delete", align 4
@__fsnotify_parent.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [21 x i8] c"fs/notify/fsnotify.c\00", align 1
@__kstrtab___fsnotify_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns___fsnotify_parent = external dso_local constant [0 x i8], align 1
@__ksymtab___fsnotify_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__fsnotify_parent to i32), ptr @__kstrtab___fsnotify_parent, ptr @__kstrtabns___fsnotify_parent }, section "___ksymtab_gpl+__fsnotify_parent", align 4
@fsnotify_mark_srcu = external dso_local global %struct.srcu_struct, align 4
@__kstrtab_fsnotify = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify to i32), ptr @__kstrtab_fsnotify, ptr @__kstrtabns_fsnotify }, section "___ksymtab_gpl+fsnotify", align 4
@__initcall__kmod_fsnotify__232_595_fsnotify_init1 = internal global ptr @fsnotify_init, section ".initcall1.init", align 4
@fsnotify_handle_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fsnotify_handle_event.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@fsnotify_handle_inode_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fsnotify_handle_inode_event.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/srcu.h\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"initializing fsnotify_mark_srcu\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"fsnotify_mark_connector\00", align 1
@fsnotify_mark_connector_cachep = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_fsnotify__232_595_fsnotify_init1, ptr @__ksymtab___fsnotify_inode_delete, ptr @__ksymtab___fsnotify_parent, ptr @__ksymtab_fsnotify], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__fsnotify_inode_delete(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 46
  tail call void @fsnotify_destroy_marks(ptr noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__fsnotify_vfsmount_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 124
  tail call void @fsnotify_destroy_marks(ptr noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsnotify_sb_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_bit_queue_entry, align 4
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 55
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 56
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %52, label %7

7:                                                ; preds = %48, %1
  %8 = phi ptr [ %50, %48 ], [ %5, %1 ]
  %9 = phi ptr [ %49, %48 ], [ null, %1 ]
  %10 = getelementptr i8, ptr %8, i32 -184
  %11 = getelementptr i8, ptr %8, i32 -80
  tail call void @_raw_spin_lock(ptr noundef %11) #6
  %12 = getelementptr i8, ptr %8, i32 -60
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 56
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %17 = load i16, ptr %11, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %48

19:                                               ; preds = %7
  %20 = getelementptr i8, ptr %8, i32 40
  %21 = load volatile i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %24 = load i16, ptr %11, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %48

26:                                               ; preds = %19
  tail call void @__iget(ptr noundef %10) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %27 = load i16, ptr %11, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %29 = load i16, ptr %3, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %31 = icmp eq ptr %9, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void @iput(ptr noundef nonnull %9) #6
  br label %33

33:                                               ; preds = %32, %26
  %34 = getelementptr i8, ptr %8, i32 -156
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 42
  %37 = load volatile i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load i16, ptr %10, align 8
  %41 = and i16 %40, -4096
  %42 = icmp eq i16 %41, 16384
  %43 = select i1 %42, i32 1073750016, i32 8192
  %44 = tail call i32 @fsnotify(i32 noundef %43, ptr noundef %10, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef %10, i32 noundef 0) #6
  br label %45

45:                                               ; preds = %39, %33
  %46 = getelementptr i8, ptr %8, i32 200
  tail call void @fsnotify_destroy_marks(ptr noundef %46) #6
  %47 = tail call i32 @__cond_resched() #6
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  br label %48

48:                                               ; preds = %45, %23, %16
  %49 = phi ptr [ %9, %16 ], [ %10, %45 ], [ %9, %23 ]
  %50 = load ptr, ptr %8, align 4
  %51 = icmp eq ptr %50, %4
  br i1 %51, label %52, label %7

52:                                               ; preds = %48, %1
  %53 = phi ptr [ null, %1 ], [ %49, %48 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %54 = load i16, ptr %3, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %56 = icmp eq ptr %53, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  tail call void @iput(ptr noundef nonnull %53) #6
  br label %58

58:                                               ; preds = %57, %52
  %59 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 32
  tail call void @fsnotify_destroy_marks(ptr noundef %59) #6
  %60 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 42
  %61 = load volatile i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %58
  %64 = tail call ptr @__var_waitqueue(ptr noundef %60) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !12
  call void @init_wait_var_entry(ptr noundef nonnull %2, ptr noundef %60, i32 noundef 0) #6
  %65 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1
  %66 = call i32 @prepare_to_wait_event(ptr noundef %64, ptr noundef %65, i32 noundef 2) #6
  %67 = load volatile i32, ptr %60, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %69, %63
  call void @schedule() #6
  %70 = call i32 @prepare_to_wait_event(ptr noundef %64, ptr noundef %65, i32 noundef 2) #6
  %71 = load volatile i32, ptr %60, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %69

73:                                               ; preds = %69, %63
  call void @finish_wait(ptr noundef %64, ptr noundef %65) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #6
  br label %74

74:                                               ; preds = %73, %58
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__fsnotify_update_child_dentry_flags(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i16, ptr %0, align 8
  %3 = and i16 %2, -4096
  %4 = icmp eq i16 %3, 16384
  br i1 %4, label %5, label %56

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 45
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %8) #6
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 32
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = getelementptr i8, ptr %10, i32 -128
  %13 = icmp eq ptr %12, null
  %14 = or i1 %11, %13
  br i1 %14, label %53, label %15

15:                                               ; preds = %5
  %16 = and i32 %7, 462911
  %17 = and i32 %7, 134217728
  %18 = icmp eq i32 %17, 0
  %19 = icmp eq i32 %16, 0
  %20 = or i1 %18, %19
  %21 = select i1 %20, i32 0, i32 16384
  br label %22

22:                                               ; preds = %44, %15
  %23 = phi ptr [ %12, %15 ], [ %50, %44 ]
  %24 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %24) #6
  %25 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 14
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %44, label %28

28:                                               ; preds = %41, %22
  %29 = phi ptr [ %42, %41 ], [ %26, %22 ]
  %30 = getelementptr i8, ptr %29, i32 -72
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %29, i32 -112
  %35 = getelementptr i8, ptr %29, i32 -32
  tail call void @_raw_spin_lock(ptr noundef %35) #6
  %36 = load i32, ptr %34, align 8
  %37 = and i32 %36, -16385
  %38 = or i32 %37, %21
  store i32 %38, ptr %34, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %39 = load i16, ptr %35, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %41

41:                                               ; preds = %33, %28
  %42 = load ptr, ptr %29, align 8
  %43 = icmp eq ptr %42, %25
  br i1 %43, label %44, label %28

44:                                               ; preds = %41, %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %45 = load i16, ptr %24, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %47 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 15
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  %50 = getelementptr i8, ptr %48, i32 -128
  %51 = icmp eq ptr %50, null
  %52 = or i1 %49, %51
  br i1 %52, label %53, label %22

53:                                               ; preds = %44, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %54 = load i16, ptr %8, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %56

56:                                               ; preds = %53, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__fsnotify_parent(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.name_snapshot, align 8
  %6 = icmp ne i32 %3, 1
  %7 = icmp eq ptr %2, null
  %8 = or i1 %7, %6
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 -16
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi ptr [ %11, %9 ], [ null, %4 ]
  %14 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  %16 = load i32, ptr %0, align 8
  %17 = and i32 %16, 16384
  %18 = icmp ne i32 %17, 0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i32 56, i1 false), !annotation !12
  %19 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 46
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 32
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = icmp eq ptr %13, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.mount, ptr %13, i32 0, i32 20
  %32 = load ptr, ptr %31, align 4
  %33 = icmp ne ptr %32, null
  %34 = select i1 %33, i1 true, i1 %18
  br i1 %34, label %36, label %120

35:                                               ; preds = %28
  br i1 %18, label %36, label %120

36:                                               ; preds = %35, %30, %22, %12
  %37 = and i32 %1, 1073741824
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 45
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 134217728
  %43 = icmp eq i32 %42, 0
  %44 = and i32 %41, 462911
  %45 = select i1 %43, i32 0, i32 %44
  %46 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 8
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 31
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 134217728
  %51 = icmp eq i32 %50, 0
  %52 = and i32 %49, 462911
  %53 = select i1 %51, i32 0, i32 %52
  %54 = or i32 %53, %45
  %55 = icmp eq ptr %13, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.mount, ptr %13, i32 0, i32 21
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 134217728
  %60 = icmp eq i32 %59, 0
  %61 = and i32 %58, 462911
  %62 = select i1 %60, i32 0, i32 %61
  %63 = or i32 %62, %54
  br label %64

64:                                               ; preds = %56, %39
  %65 = phi i32 [ %63, %56 ], [ %54, %39 ]
  %66 = and i32 %65, %1
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %64, %36
  %69 = phi i1 [ %67, %64 ], [ false, %36 ]
  %70 = select i1 %18, i1 true, i1 %69
  br i1 %70, label %71, label %109

71:                                               ; preds = %68
  %72 = tail call ptr @dget_parent(ptr noundef %0) #6
  %73 = getelementptr inbounds %struct.dentry, ptr %72, i32 0, i32 5
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.inode, ptr %74, i32 0, i32 45
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 134217728
  %78 = icmp eq i32 %77, 0
  %79 = and i32 %76, 462911
  %80 = select i1 %78, i32 0, i32 %79
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %18, i1 %81, i1 false
  br i1 %82, label %83, label %84, !prof !13

83:                                               ; preds = %71
  tail call void @__fsnotify_update_child_dentry_flags(ptr noundef %74)
  br label %84

84:                                               ; preds = %83, %71
  %85 = and i32 %80, %1
  %86 = icmp eq i32 %85, 0
  %87 = xor i1 %86, true
  %88 = select i1 %69, i1 true, i1 %87
  br i1 %88, label %89, label %109

89:                                               ; preds = %84
  switch i32 %3, label %101 [
    i32 2, label %102
    i32 3, label %90
    i32 1, label %93
    i32 4, label %98
  ]

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %92 = load ptr, ptr %91, align 8
  br label %102

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.path, ptr %2, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.dentry, ptr %95, i32 0, i32 5
  %97 = load ptr, ptr %96, align 8
  br label %102

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.fs_error_report, ptr %2, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  br label %102

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %98, %93, %90, %89
  %103 = phi ptr [ null, %101 ], [ %100, %98 ], [ %97, %93 ], [ %92, %90 ], [ %2, %89 ]
  %104 = icmp ne ptr %15, %103
  %105 = load i1, ptr @__fsnotify_parent.__already_done, align 1
  %106 = xor i1 %105, true
  %107 = select i1 %104, i1 %106, i1 false
  br i1 %107, label %108, label %113, !prof !13

108:                                              ; preds = %102
  store i1 true, ptr @__fsnotify_parent.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef null) #6
  br label %113

109:                                              ; preds = %84, %68
  %110 = phi ptr [ %72, %84 ], [ null, %68 ]
  %111 = phi ptr [ %74, %84 ], [ null, %68 ]
  %112 = tail call i32 @fsnotify(i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %111, ptr noundef null, ptr noundef %15, i32 noundef 0)
  br label %117

113:                                              ; preds = %108, %102
  call void @take_dentry_name_snapshot(ptr noundef nonnull %5, ptr noundef %0) #6
  %114 = or i32 %1, 134217728
  %115 = select i1 %86, i32 %1, i32 %114
  %116 = call i32 @fsnotify(i32 noundef %115, ptr noundef %2, i32 noundef %3, ptr noundef %74, ptr noundef nonnull %5, ptr noundef %15, i32 noundef 0)
  call void @release_dentry_name_snapshot(ptr noundef nonnull %5) #6
  br label %117

117:                                              ; preds = %113, %109
  %118 = phi i32 [ %112, %109 ], [ %116, %113 ]
  %119 = phi ptr [ %110, %109 ], [ %72, %113 ]
  call void @dput(ptr noundef %119) #6
  br label %120

120:                                              ; preds = %117, %35, %30
  %121 = phi i32 [ %118, %117 ], [ 0, %30 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #6
  ret i32 %121
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @take_dentry_name_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsnotify(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.fsnotify_iter_info, align 4
  %9 = icmp eq i32 %2, 1
  %10 = select i1 %9, ptr %1, ptr null
  switch i32 %2, label %24 [
    i32 2, label %11
    i32 3, label %13
    i32 1, label %15
    i32 4, label %19
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  br label %21

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  br label %21

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 9
  br label %21

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.fs_error_report, ptr %1, i32 0, i32 2
  br label %21

21:                                               ; preds = %19, %15, %13, %11
  %22 = phi ptr [ %20, %19 ], [ %18, %15 ], [ %14, %13 ], [ %12, %11 ]
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %7
  %25 = phi ptr [ null, %7 ], [ %23, %21 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 24, i1 false)
  %26 = icmp eq ptr %10, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %10, align 4
  %29 = getelementptr i8, ptr %28, i32 -16
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi ptr [ %29, %27 ], [ null, %24 ]
  %32 = icmp eq ptr %5, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = and i32 %0, 268435456
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %33
  switch i32 %2, label %40 [
    i32 3, label %41
    i32 1, label %37
  ]

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  br label %41

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %37, %36
  %42 = phi ptr [ null, %40 ], [ %39, %37 ], [ %1, %36 ]
  %43 = getelementptr inbounds %struct.dentry, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.dentry, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 8
  br label %52

47:                                               ; preds = %30
  %48 = and i32 %0, 134217728
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, ptr null, ptr %3
  %51 = select i1 %49, i32 0, i32 3
  br label %52

52:                                               ; preds = %47, %41, %33
  %53 = phi ptr [ %3, %41 ], [ %3, %33 ], [ %5, %47 ]
  %54 = phi ptr [ %46, %41 ], [ null, %33 ], [ %50, %47 ]
  %55 = phi i32 [ 4, %41 ], [ 0, %33 ], [ %51, %47 ]
  %56 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 32
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %80

59:                                               ; preds = %52
  %60 = icmp eq ptr %31, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.mount, ptr %31, i32 0, i32 20
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 31
  %67 = load i32, ptr %66, align 8
  br label %84

68:                                               ; preds = %61, %59
  %69 = icmp eq ptr %53, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 46
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %70, %68
  %75 = icmp eq ptr %54, null
  br i1 %75, label %590, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.inode, ptr %54, i32 0, i32 46
  %78 = load ptr, ptr %77, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %590, label %80

80:                                               ; preds = %76, %70, %52
  %81 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 31
  %82 = load i32, ptr %81, align 8
  %83 = icmp eq ptr %31, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %80, %65
  %85 = phi i32 [ %67, %65 ], [ %82, %80 ]
  %86 = getelementptr inbounds %struct.mount, ptr %31, i32 0, i32 21
  %87 = load i32, ptr %86, align 4
  %88 = or i32 %87, %85
  br label %89

89:                                               ; preds = %84, %80
  %90 = phi i1 [ false, %84 ], [ true, %80 ]
  %91 = phi i32 [ %88, %84 ], [ %82, %80 ]
  %92 = icmp eq ptr %53, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 45
  %95 = load i32, ptr %94, align 4
  %96 = or i32 %95, %91
  br label %97

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %96, %93 ], [ %91, %89 ]
  %99 = icmp eq ptr %54, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.inode, ptr %54, i32 0, i32 45
  %102 = load i32, ptr %101, align 4
  %103 = or i32 %102, %98
  br label %104

104:                                              ; preds = %100, %97
  %105 = phi i32 [ %103, %100 ], [ %98, %97 ]
  %106 = and i32 %0, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = and i32 %0, 268959743
  %110 = and i32 %109, %105
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %590, label %112

112:                                              ; preds = %108, %104
  %113 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @fsnotify_mark_srcu) #6
  %114 = getelementptr inbounds %struct.fsnotify_iter_info, ptr %8, i32 0, i32 2
  store i32 %113, ptr %114, align 4
  %115 = load volatile ptr, ptr %56, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %115, i32 0, i32 5
  %119 = load volatile ptr, ptr %118, align 4
  br label %120

120:                                              ; preds = %117, %112
  %121 = phi ptr [ %119, %117 ], [ null, %112 ]
  %122 = icmp eq ptr %121, null
  %123 = getelementptr i8, ptr %121, i32 -24
  %124 = select i1 %122, ptr null, ptr %123
  %125 = getelementptr inbounds [5 x ptr], ptr %8, i32 0, i32 2
  store ptr %124, ptr %125, align 4
  br i1 %90, label %139, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.mount, ptr %31, i32 0, i32 20
  %128 = load volatile ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %128, i32 0, i32 5
  %132 = load volatile ptr, ptr %131, align 4
  br label %133

133:                                              ; preds = %130, %126
  %134 = phi ptr [ %132, %130 ], [ null, %126 ]
  %135 = icmp eq ptr %134, null
  %136 = getelementptr i8, ptr %134, i32 -24
  %137 = select i1 %135, ptr null, ptr %136
  %138 = getelementptr inbounds [5 x ptr], ptr %8, i32 0, i32 1
  store ptr %137, ptr %138, align 4
  br label %139

139:                                              ; preds = %133, %120
  br i1 %92, label %152, label %140

140:                                              ; preds = %139
  %141 = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 46
  %142 = load volatile ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %142, i32 0, i32 5
  %146 = load volatile ptr, ptr %145, align 4
  br label %147

147:                                              ; preds = %144, %140
  %148 = phi ptr [ %146, %144 ], [ null, %140 ]
  %149 = icmp eq ptr %148, null
  %150 = getelementptr i8, ptr %148, i32 -24
  %151 = select i1 %149, ptr null, ptr %150
  store ptr %151, ptr %8, align 4
  br label %152

152:                                              ; preds = %147, %139
  br i1 %99, label %166, label %153

153:                                              ; preds = %152
  %154 = getelementptr inbounds %struct.inode, ptr %54, i32 0, i32 46
  %155 = load volatile ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %155, i32 0, i32 5
  %159 = load volatile ptr, ptr %158, align 4
  br label %160

160:                                              ; preds = %157, %153
  %161 = phi ptr [ %159, %157 ], [ null, %153 ]
  %162 = icmp eq ptr %161, null
  %163 = getelementptr i8, ptr %161, i32 -24
  %164 = select i1 %162, ptr null, ptr %163
  %165 = getelementptr [5 x ptr], ptr %8, i32 0, i32 %55
  store ptr %164, ptr %165, align 4
  br label %166

166:                                              ; preds = %160, %152
  %167 = getelementptr inbounds [5 x ptr], ptr %8, i32 0, i32 1
  %168 = getelementptr inbounds [5 x ptr], ptr %8, i32 0, i32 3
  %169 = getelementptr inbounds [5 x ptr], ptr %8, i32 0, i32 4
  %170 = getelementptr inbounds %struct.fsnotify_iter_info, ptr %8, i32 0, i32 1
  %171 = and i32 %0, 268959743
  %172 = and i32 %0, 268435456
  %173 = icmp eq i32 %172, 0
  %174 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %175 = and i32 %0, 134217728
  %176 = icmp eq i32 %175, 0
  %177 = and i32 %0, -134217729
  %178 = select i1 %176, ptr %4, ptr null
  %179 = select i1 %176, ptr %3, ptr null
  %180 = and i32 %0, 458752
  %181 = icmp eq i32 %180, 0
  br label %182

182:                                              ; preds = %569, %166
  %183 = load ptr, ptr %8, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %192, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.fsnotify_mark, ptr %183, i32 0, i32 2
  %187 = load ptr, ptr %186, align 4
  %188 = call i32 @fsnotify_compare_groups(ptr noundef null, ptr noundef %187) #6
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = load ptr, ptr %186, align 4
  br label %192

192:                                              ; preds = %190, %185, %182
  %193 = phi ptr [ %191, %190 ], [ null, %185 ], [ null, %182 ]
  %194 = load ptr, ptr %167, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %203, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.fsnotify_mark, ptr %194, i32 0, i32 2
  %198 = load ptr, ptr %197, align 4
  %199 = call i32 @fsnotify_compare_groups(ptr noundef %193, ptr noundef %198) #6
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  %202 = load ptr, ptr %197, align 4
  br label %203

203:                                              ; preds = %201, %196, %192
  %204 = phi ptr [ %202, %201 ], [ %193, %196 ], [ %193, %192 ]
  %205 = load ptr, ptr %125, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %214, label %207

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.fsnotify_mark, ptr %205, i32 0, i32 2
  %209 = load ptr, ptr %208, align 4
  %210 = call i32 @fsnotify_compare_groups(ptr noundef %204, ptr noundef %209) #6
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load ptr, ptr %208, align 4
  br label %214

214:                                              ; preds = %212, %207, %203
  %215 = phi ptr [ %213, %212 ], [ %204, %207 ], [ %204, %203 ]
  %216 = load ptr, ptr %168, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %225, label %218

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.fsnotify_mark, ptr %216, i32 0, i32 2
  %220 = load ptr, ptr %219, align 4
  %221 = call i32 @fsnotify_compare_groups(ptr noundef %215, ptr noundef %220) #6
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %218
  %224 = load ptr, ptr %219, align 4
  br label %225

225:                                              ; preds = %223, %218, %214
  %226 = phi ptr [ %224, %223 ], [ %215, %218 ], [ %215, %214 ]
  %227 = load ptr, ptr %169, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %236, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.fsnotify_mark, ptr %227, i32 0, i32 2
  %231 = load ptr, ptr %230, align 4
  %232 = call i32 @fsnotify_compare_groups(ptr noundef %226, ptr noundef %231) #6
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %229
  %235 = load ptr, ptr %230, align 4
  br label %236

236:                                              ; preds = %234, %229, %225
  %237 = phi ptr [ %235, %234 ], [ %226, %229 ], [ %226, %225 ]
  %238 = icmp eq ptr %237, null
  br i1 %238, label %581, label %239

239:                                              ; preds = %236
  store i32 0, ptr %170, align 4
  %240 = load ptr, ptr %8, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %250, label %242

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.fsnotify_mark, ptr %240, i32 0, i32 2
  %244 = load ptr, ptr %243, align 4
  %245 = call i32 @fsnotify_compare_groups(ptr noundef nonnull %237, ptr noundef %244) #6
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = load i32, ptr %170, align 4
  %249 = or i32 %248, 1
  store i32 %249, ptr %170, align 4
  br label %250

250:                                              ; preds = %247, %242, %239
  %251 = load ptr, ptr %167, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %261, label %253

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.fsnotify_mark, ptr %251, i32 0, i32 2
  %255 = load ptr, ptr %254, align 4
  %256 = call i32 @fsnotify_compare_groups(ptr noundef nonnull %237, ptr noundef %255) #6
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %253
  %259 = load i32, ptr %170, align 4
  %260 = or i32 %259, 2
  store i32 %260, ptr %170, align 4
  br label %261

261:                                              ; preds = %258, %253, %250
  %262 = load ptr, ptr %125, align 4
  %263 = icmp eq ptr %262, null
  br i1 %263, label %272, label %264

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.fsnotify_mark, ptr %262, i32 0, i32 2
  %266 = load ptr, ptr %265, align 4
  %267 = call i32 @fsnotify_compare_groups(ptr noundef nonnull %237, ptr noundef %266) #6
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %264
  %270 = load i32, ptr %170, align 4
  %271 = or i32 %270, 4
  store i32 %271, ptr %170, align 4
  br label %272

272:                                              ; preds = %269, %264, %261
  %273 = load ptr, ptr %168, align 4
  %274 = icmp eq ptr %273, null
  br i1 %274, label %283, label %275

275:                                              ; preds = %272
  %276 = getelementptr inbounds %struct.fsnotify_mark, ptr %273, i32 0, i32 2
  %277 = load ptr, ptr %276, align 4
  %278 = call i32 @fsnotify_compare_groups(ptr noundef nonnull %237, ptr noundef %277) #6
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %275
  %281 = load i32, ptr %170, align 4
  %282 = or i32 %281, 8
  store i32 %282, ptr %170, align 4
  br label %283

283:                                              ; preds = %280, %275, %272
  %284 = load ptr, ptr %169, align 4
  %285 = icmp eq ptr %284, null
  br i1 %285, label %294, label %286

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.fsnotify_mark, ptr %284, i32 0, i32 2
  %288 = load ptr, ptr %287, align 4
  %289 = call i32 @fsnotify_compare_groups(ptr noundef nonnull %237, ptr noundef %288) #6
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %286
  %292 = load i32, ptr %170, align 4
  %293 = or i32 %292, 16
  store i32 %293, ptr %170, align 4
  br label %297

294:                                              ; preds = %286, %283
  %295 = load i32, ptr %170, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %581, label %297

297:                                              ; preds = %294, %291
  %298 = phi i32 [ %293, %291 ], [ %295, %294 ]
  %299 = and i32 %298, 1
  br i1 %107, label %364, label %300

300:                                              ; preds = %297
  %301 = icmp eq i32 %299, 0
  br i1 %301, label %312, label %302

302:                                              ; preds = %300
  %303 = load ptr, ptr %8, align 4
  %304 = icmp eq ptr %303, null
  br i1 %304, label %312, label %305

305:                                              ; preds = %302
  %306 = getelementptr inbounds %struct.fsnotify_mark, ptr %303, i32 0, i32 8
  %307 = load i32, ptr %306, align 4
  %308 = and i32 %307, 1
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %305
  %311 = getelementptr inbounds %struct.fsnotify_mark, ptr %303, i32 0, i32 7
  store i32 0, ptr %311, align 4
  br label %312

312:                                              ; preds = %310, %305, %302, %300
  %313 = and i32 %298, 2
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %325, label %315

315:                                              ; preds = %312
  %316 = load ptr, ptr %167, align 4
  %317 = icmp eq ptr %316, null
  br i1 %317, label %325, label %318

318:                                              ; preds = %315
  %319 = getelementptr inbounds %struct.fsnotify_mark, ptr %316, i32 0, i32 8
  %320 = load i32, ptr %319, align 4
  %321 = and i32 %320, 1
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %318
  %324 = getelementptr inbounds %struct.fsnotify_mark, ptr %316, i32 0, i32 7
  store i32 0, ptr %324, align 4
  br label %325

325:                                              ; preds = %323, %318, %315, %312
  %326 = and i32 %298, 4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %338, label %328

328:                                              ; preds = %325
  %329 = load ptr, ptr %125, align 4
  %330 = icmp eq ptr %329, null
  br i1 %330, label %338, label %331

331:                                              ; preds = %328
  %332 = getelementptr inbounds %struct.fsnotify_mark, ptr %329, i32 0, i32 8
  %333 = load i32, ptr %332, align 4
  %334 = and i32 %333, 1
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %331
  %337 = getelementptr inbounds %struct.fsnotify_mark, ptr %329, i32 0, i32 7
  store i32 0, ptr %337, align 4
  br label %338

338:                                              ; preds = %336, %331, %328, %325
  %339 = and i32 %298, 8
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %351, label %341

341:                                              ; preds = %338
  %342 = load ptr, ptr %168, align 4
  %343 = icmp eq ptr %342, null
  br i1 %343, label %351, label %344

344:                                              ; preds = %341
  %345 = getelementptr inbounds %struct.fsnotify_mark, ptr %342, i32 0, i32 8
  %346 = load i32, ptr %345, align 4
  %347 = and i32 %346, 1
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %344
  %350 = getelementptr inbounds %struct.fsnotify_mark, ptr %342, i32 0, i32 7
  store i32 0, ptr %350, align 4
  br label %351

351:                                              ; preds = %349, %344, %341, %338
  %352 = and i32 %298, 16
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %364, label %354

354:                                              ; preds = %351
  %355 = load ptr, ptr %169, align 4
  %356 = icmp eq ptr %355, null
  br i1 %356, label %364, label %357

357:                                              ; preds = %354
  %358 = getelementptr inbounds %struct.fsnotify_mark, ptr %355, i32 0, i32 8
  %359 = load i32, ptr %358, align 4
  %360 = and i32 %359, 1
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %357
  %363 = getelementptr inbounds %struct.fsnotify_mark, ptr %355, i32 0, i32 7
  store i32 0, ptr %363, align 4
  br label %364

364:                                              ; preds = %362, %357, %354, %351, %297
  %365 = icmp eq i32 %299, 0
  br i1 %365, label %375, label %366

366:                                              ; preds = %364
  %367 = load ptr, ptr %8, align 4
  %368 = icmp eq ptr %367, null
  br i1 %368, label %375, label %369

369:                                              ; preds = %366
  %370 = getelementptr inbounds %struct.fsnotify_mark, ptr %367, i32 0, i32 2
  %371 = load ptr, ptr %370, align 4
  %372 = load i32, ptr %367, align 4
  %373 = getelementptr inbounds %struct.fsnotify_mark, ptr %367, i32 0, i32 7
  %374 = load i32, ptr %373, align 4
  br label %375

375:                                              ; preds = %369, %366, %364
  %376 = phi i32 [ %372, %369 ], [ 0, %366 ], [ 0, %364 ]
  %377 = phi i32 [ %374, %369 ], [ 0, %366 ], [ 0, %364 ]
  %378 = phi ptr [ %371, %369 ], [ null, %366 ], [ null, %364 ]
  %379 = and i32 %298, 2
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %392, label %381

381:                                              ; preds = %375
  %382 = load ptr, ptr %167, align 4
  %383 = icmp eq ptr %382, null
  br i1 %383, label %392, label %384

384:                                              ; preds = %381
  %385 = getelementptr inbounds %struct.fsnotify_mark, ptr %382, i32 0, i32 2
  %386 = load ptr, ptr %385, align 4
  %387 = load i32, ptr %382, align 4
  %388 = or i32 %387, %376
  %389 = getelementptr inbounds %struct.fsnotify_mark, ptr %382, i32 0, i32 7
  %390 = load i32, ptr %389, align 4
  %391 = or i32 %390, %377
  br label %392

392:                                              ; preds = %384, %381, %375
  %393 = phi i32 [ %388, %384 ], [ %376, %381 ], [ %376, %375 ]
  %394 = phi i32 [ %391, %384 ], [ %377, %381 ], [ %377, %375 ]
  %395 = phi ptr [ %386, %384 ], [ %378, %381 ], [ %378, %375 ]
  %396 = and i32 %298, 4
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %409, label %398

398:                                              ; preds = %392
  %399 = load ptr, ptr %125, align 4
  %400 = icmp eq ptr %399, null
  br i1 %400, label %409, label %401

401:                                              ; preds = %398
  %402 = getelementptr inbounds %struct.fsnotify_mark, ptr %399, i32 0, i32 2
  %403 = load ptr, ptr %402, align 4
  %404 = load i32, ptr %399, align 4
  %405 = or i32 %404, %393
  %406 = getelementptr inbounds %struct.fsnotify_mark, ptr %399, i32 0, i32 7
  %407 = load i32, ptr %406, align 4
  %408 = or i32 %407, %394
  br label %409

409:                                              ; preds = %401, %398, %392
  %410 = phi i32 [ %405, %401 ], [ %393, %398 ], [ %393, %392 ]
  %411 = phi i32 [ %408, %401 ], [ %394, %398 ], [ %394, %392 ]
  %412 = phi ptr [ %403, %401 ], [ %395, %398 ], [ %395, %392 ]
  %413 = and i32 %298, 8
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %426, label %415

415:                                              ; preds = %409
  %416 = load ptr, ptr %168, align 4
  %417 = icmp eq ptr %416, null
  br i1 %417, label %426, label %418

418:                                              ; preds = %415
  %419 = getelementptr inbounds %struct.fsnotify_mark, ptr %416, i32 0, i32 2
  %420 = load ptr, ptr %419, align 4
  %421 = load i32, ptr %416, align 4
  %422 = or i32 %421, %410
  %423 = getelementptr inbounds %struct.fsnotify_mark, ptr %416, i32 0, i32 7
  %424 = load i32, ptr %423, align 4
  %425 = or i32 %424, %411
  br label %426

426:                                              ; preds = %418, %415, %409
  %427 = phi i32 [ %422, %418 ], [ %410, %415 ], [ %410, %409 ]
  %428 = phi i32 [ %425, %418 ], [ %411, %415 ], [ %411, %409 ]
  %429 = phi ptr [ %420, %418 ], [ %412, %415 ], [ %412, %409 ]
  %430 = and i32 %298, 16
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %443, label %432

432:                                              ; preds = %426
  %433 = load ptr, ptr %169, align 4
  %434 = icmp eq ptr %433, null
  br i1 %434, label %443, label %435

435:                                              ; preds = %432
  %436 = getelementptr inbounds %struct.fsnotify_mark, ptr %433, i32 0, i32 2
  %437 = load ptr, ptr %436, align 4
  %438 = load i32, ptr %433, align 4
  %439 = or i32 %438, %427
  %440 = getelementptr inbounds %struct.fsnotify_mark, ptr %433, i32 0, i32 7
  %441 = load i32, ptr %440, align 4
  %442 = or i32 %441, %428
  br label %443

443:                                              ; preds = %435, %432, %426
  %444 = phi i32 [ %439, %435 ], [ %427, %432 ], [ %427, %426 ]
  %445 = phi i32 [ %442, %435 ], [ %428, %432 ], [ %428, %426 ]
  %446 = phi ptr [ %437, %435 ], [ %429, %432 ], [ %429, %426 ]
  %447 = and i32 %171, %444
  %448 = xor i32 %445, -1
  %449 = and i32 %447, %448
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %509, label %451

451:                                              ; preds = %443
  %452 = load ptr, ptr %446, align 4
  %453 = load ptr, ptr %452, align 4
  %454 = icmp eq ptr %453, null
  br i1 %454, label %457, label %455

455:                                              ; preds = %451
  %456 = call i32 %453(ptr noundef %446, i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %6, ptr noundef nonnull %8) #6
  br label %502

457:                                              ; preds = %451
  %458 = load ptr, ptr %8, align 4
  %459 = select i1 %365, ptr null, ptr %458
  %460 = load ptr, ptr %168, align 4
  %461 = select i1 %414, ptr null, ptr %460
  br i1 %397, label %469, label %462

462:                                              ; preds = %457
  %463 = load ptr, ptr %125, align 4
  %464 = icmp ne ptr %463, null
  %465 = load i1, ptr @fsnotify_handle_event.__already_done, align 1
  %466 = xor i1 %465, true
  %467 = select i1 %464, i1 %466, i1 false
  br i1 %467, label %506, label %468, !prof !13

468:                                              ; preds = %462
  br i1 %464, label %509, label %469

469:                                              ; preds = %468, %457
  br i1 %380, label %477, label %470

470:                                              ; preds = %469
  %471 = load ptr, ptr %167, align 4
  %472 = icmp ne ptr %471, null
  %473 = load i1, ptr @fsnotify_handle_event.__already_done.1, align 1
  %474 = xor i1 %473, true
  %475 = select i1 %472, i1 %474, i1 false
  br i1 %475, label %506, label %476, !prof !13

476:                                              ; preds = %470
  br i1 %472, label %509, label %477

477:                                              ; preds = %476, %469
  br i1 %173, label %489, label %478

478:                                              ; preds = %477
  switch i32 %2, label %481 [
    i32 3, label %482
    i32 1, label %479
  ]

479:                                              ; preds = %478
  %480 = load ptr, ptr %174, align 4
  br label %482

481:                                              ; preds = %478
  br label %482

482:                                              ; preds = %481, %479, %478
  %483 = phi ptr [ null, %481 ], [ %480, %479 ], [ %1, %478 ]
  %484 = getelementptr inbounds %struct.dentry, ptr %483, i32 0, i32 3
  %485 = load ptr, ptr %484, align 8
  %486 = getelementptr inbounds %struct.dentry, ptr %485, i32 0, i32 5
  %487 = load ptr, ptr %486, align 8
  %488 = icmp eq ptr %487, %3
  br i1 %488, label %489, label %509

489:                                              ; preds = %482, %477
  %490 = icmp eq ptr %461, null
  br i1 %490, label %500, label %491

491:                                              ; preds = %489
  %492 = load i32, ptr %461, align 4
  %493 = and i32 %492, 134217728
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %498, label %495

495:                                              ; preds = %491
  %496 = call fastcc i32 @fsnotify_handle_inode_event(ptr noundef %446, ptr noundef nonnull %461, i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0) #6
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %502

498:                                              ; preds = %495, %491
  %499 = icmp eq ptr %459, null
  br i1 %499, label %509, label %500

500:                                              ; preds = %498, %489
  %501 = call fastcc i32 @fsnotify_handle_inode_event(ptr noundef %446, ptr noundef %459, i32 noundef %177, ptr noundef %1, i32 noundef %2, ptr noundef %179, ptr noundef %178, i32 noundef %6) #6
  br label %502

502:                                              ; preds = %500, %495, %455
  %503 = phi i32 [ %456, %455 ], [ %501, %500 ], [ %496, %495 ]
  %504 = icmp eq i32 %503, 0
  %505 = or i1 %181, %504
  br i1 %505, label %509, label %581

506:                                              ; preds = %470, %462
  %507 = phi ptr [ @fsnotify_handle_event.__already_done, %462 ], [ @fsnotify_handle_event.__already_done.1, %470 ]
  %508 = phi i32 [ 278, %462 ], [ 279, %470 ]
  store i1 true, ptr %507, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %508, i32 noundef 9, ptr noundef null) #6
  br label %509

509:                                              ; preds = %506, %502, %498, %482, %476, %468, %443
  %510 = load i32, ptr %170, align 4
  %511 = and i32 %510, 1
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %524, label %513

513:                                              ; preds = %509
  %514 = load ptr, ptr %8, align 4
  %515 = icmp eq ptr %514, null
  br i1 %515, label %519, label %516

516:                                              ; preds = %513
  %517 = getelementptr inbounds %struct.fsnotify_mark, ptr %514, i32 0, i32 5
  %518 = load volatile ptr, ptr %517, align 4
  br label %519

519:                                              ; preds = %516, %513
  %520 = phi ptr [ %518, %516 ], [ null, %513 ]
  %521 = icmp eq ptr %520, null
  %522 = getelementptr i8, ptr %520, i32 -24
  %523 = select i1 %521, ptr null, ptr %522
  store ptr %523, ptr %8, align 4
  br label %524

524:                                              ; preds = %519, %509
  %525 = and i32 %510, 2
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %538, label %527

527:                                              ; preds = %524
  %528 = load ptr, ptr %167, align 4
  %529 = icmp eq ptr %528, null
  br i1 %529, label %533, label %530

530:                                              ; preds = %527
  %531 = getelementptr inbounds %struct.fsnotify_mark, ptr %528, i32 0, i32 5
  %532 = load volatile ptr, ptr %531, align 4
  br label %533

533:                                              ; preds = %530, %527
  %534 = phi ptr [ %532, %530 ], [ null, %527 ]
  %535 = icmp eq ptr %534, null
  %536 = getelementptr i8, ptr %534, i32 -24
  %537 = select i1 %535, ptr null, ptr %536
  store ptr %537, ptr %167, align 4
  br label %538

538:                                              ; preds = %533, %524
  %539 = and i32 %510, 4
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %552, label %541

541:                                              ; preds = %538
  %542 = load ptr, ptr %125, align 4
  %543 = icmp eq ptr %542, null
  br i1 %543, label %547, label %544

544:                                              ; preds = %541
  %545 = getelementptr inbounds %struct.fsnotify_mark, ptr %542, i32 0, i32 5
  %546 = load volatile ptr, ptr %545, align 4
  br label %547

547:                                              ; preds = %544, %541
  %548 = phi ptr [ %546, %544 ], [ null, %541 ]
  %549 = icmp eq ptr %548, null
  %550 = getelementptr i8, ptr %548, i32 -24
  %551 = select i1 %549, ptr null, ptr %550
  store ptr %551, ptr %125, align 4
  br label %552

552:                                              ; preds = %547, %538
  %553 = and i32 %510, 8
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %566, label %555

555:                                              ; preds = %552
  %556 = load ptr, ptr %168, align 4
  %557 = icmp eq ptr %556, null
  br i1 %557, label %561, label %558

558:                                              ; preds = %555
  %559 = getelementptr inbounds %struct.fsnotify_mark, ptr %556, i32 0, i32 5
  %560 = load volatile ptr, ptr %559, align 4
  br label %561

561:                                              ; preds = %558, %555
  %562 = phi ptr [ %560, %558 ], [ null, %555 ]
  %563 = icmp eq ptr %562, null
  %564 = getelementptr i8, ptr %562, i32 -24
  %565 = select i1 %563, ptr null, ptr %564
  store ptr %565, ptr %168, align 4
  br label %566

566:                                              ; preds = %561, %552
  %567 = and i32 %510, 16
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %570

569:                                              ; preds = %576, %566
  br label %182

570:                                              ; preds = %566
  %571 = load ptr, ptr %169, align 4
  %572 = icmp eq ptr %571, null
  br i1 %572, label %576, label %573

573:                                              ; preds = %570
  %574 = getelementptr inbounds %struct.fsnotify_mark, ptr %571, i32 0, i32 5
  %575 = load volatile ptr, ptr %574, align 4
  br label %576

576:                                              ; preds = %573, %570
  %577 = phi ptr [ %575, %573 ], [ null, %570 ]
  %578 = icmp eq ptr %577, null
  %579 = getelementptr i8, ptr %577, i32 -24
  %580 = select i1 %578, ptr null, ptr %579
  store ptr %580, ptr %169, align 4
  br label %569

581:                                              ; preds = %502, %294, %236
  %582 = phi i32 [ %503, %502 ], [ 0, %294 ], [ 0, %236 ]
  %583 = load i32, ptr %114, align 4
  %584 = icmp ugt i32 %583, 1
  %585 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %586 = xor i1 %585, true
  %587 = select i1 %584, i1 %586, i1 false
  br i1 %587, label %588, label %589, !prof !13

588:                                              ; preds = %581
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 189, i32 noundef 9, ptr noundef null) #6
  br label %589

589:                                              ; preds = %588, %581
  call void @__srcu_read_unlock(ptr noundef nonnull @fsnotify_mark_srcu, i32 noundef %583) #6
  br label %590

590:                                              ; preds = %589, %108, %76, %74
  %591 = phi i32 [ %582, %589 ], [ 0, %76 ], [ 0, %74 ], [ 0, %108 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #6
  ret i32 %591
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_dentry_name_snapshot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @fsnotify_init() #4 section ".init.text" {
  %1 = tail call i32 @init_srcu_struct(ptr noundef nonnull @fsnotify_mark_srcu) #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.4) #7
  unreachable

4:                                                ; preds = %0
  %5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.5, i32 noundef 24, i32 noundef 4, i32 noundef 262144, ptr noundef null) #6
  store ptr %5, ptr @fsnotify_mark_connector_cachep, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_destroy_marks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iget(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify_compare_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fsnotify_handle_inode_event(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = icmp eq i32 %4, 1
  %10 = select i1 %9, ptr %3, ptr null
  switch i32 %4, label %22 [
    i32 2, label %23
    i32 3, label %11
    i32 1, label %14
    i32 4, label %19
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  br label %23

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 8
  br label %23

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.fs_error_report, ptr %3, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  br label %23

22:                                               ; preds = %8
  br label %23

23:                                               ; preds = %22, %19, %14, %11, %8
  %24 = phi ptr [ null, %22 ], [ %21, %19 ], [ %18, %14 ], [ %13, %11 ], [ %3, %8 ]
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.fsnotify_ops, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = load i1, ptr @fsnotify_handle_inode_event.__already_done, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %33, !prof !13

32:                                               ; preds = %23
  store i1 true, ptr @fsnotify_handle_inode_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef null) #6
  br label %33

33:                                               ; preds = %32, %23
  br i1 %28, label %66, label %34

34:                                               ; preds = %33
  %35 = icmp eq ptr %24, null
  %36 = icmp eq ptr %5, null
  %37 = and i1 %36, %35
  %38 = load i1, ptr @fsnotify_handle_inode_event.__already_done.2, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !13

41:                                               ; preds = %34
  store i1 true, ptr @fsnotify_handle_inode_event.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #6
  br label %42

42:                                               ; preds = %41, %34
  br i1 %37, label %66, label %43

43:                                               ; preds = %42
  %44 = load i32, ptr %1, align 4
  %45 = and i32 %44, 67108864
  %46 = icmp ne i32 %45, 0
  %47 = icmp ne ptr %10, null
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.path, ptr %10, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dentry, ptr %51, i32 0, i32 2, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.dentry, ptr %51, i32 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, %51
  br i1 %58, label %59, label %66

59:                                               ; preds = %55, %49, %43
  %60 = and i32 %2, 268959743
  %61 = and i32 %60, %44
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %26, align 4
  %65 = tail call i32 %64(ptr noundef %1, i32 noundef %2, ptr noundef %24, ptr noundef %5, ptr noundef %6, i32 noundef %7) #6
  br label %66

66:                                               ; preds = %63, %59, %55, %42, %33
  %67 = phi i32 [ %65, %63 ], [ 0, %33 ], [ 0, %42 ], [ 0, %55 ], [ 0, %59 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_srcu_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold noreturn nounwind }

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
!8 = !{i64 2149109801}
!9 = !{i64 2149105625}
!10 = !{i64 2149105700, i64 2149105727, i64 2149105774, i64 2149105796, i64 2149105824, i64 2149105844}
!11 = !{i64 2149132816}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 1, i32 2000}
