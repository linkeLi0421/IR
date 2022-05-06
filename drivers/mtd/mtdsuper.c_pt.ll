; ModuleID = '/llk/IR/drivers/mtd/mtdsuper.c_pt.bc'
source_filename = "../drivers/mtd/mtdsuper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_tree_mtd:\09\09\09\09\09"
module asm "\09.asciz \09\22get_tree_mtd\22\09\09\09\09\09"
module asm "__kstrtabns_get_tree_mtd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kill_mtd_super:\09\09\09\09\09"
module asm "\09.asciz \09\22kill_mtd_super\22\09\09\09\09\09"
module asm "__kstrtabns_kill_mtd_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.p_log = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.1, ptr }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.67 }
%union.anon.67 = type { i64 }
%union.anon.69 = type { %struct.list_head }
%union.anon.70 = type { %struct.hlist_node }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.27 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.27 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }

@.str = private unnamed_addr constant [20 x i8] c"No source specified\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"MTD: MTD device with name \22%s\22 not found\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"MTD: Couldn't look up '%s': %d\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"MTD: Attempt to mount non-MTD device \22%s\22\00", align 1
@__kstrtab_get_tree_mtd = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_tree_mtd = external dso_local constant [0 x i8], align 1
@__ksymtab_get_tree_mtd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_tree_mtd to i32), ptr @__kstrtab_get_tree_mtd, ptr @__kstrtabns_get_tree_mtd }, section "___ksymtab_gpl+get_tree_mtd", align 4
@__kstrtab_kill_mtd_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_kill_mtd_super = external dso_local constant [0 x i8], align 1
@__ksymtab_kill_mtd_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kill_mtd_super to i32), ptr @__kstrtab_kill_mtd_super, ptr @__kstrtabns_kill_mtd_super }, section "___ksymtab_gpl+kill_mtd_super", align 4
@mtd_bdi = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"MTDSB: Device #%u doesn't appear to exist\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_get_tree_mtd, ptr @__ksymtab_kill_mtd_super], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_tree_mtd(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %10, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str) #4
  br label %101

11:                                               ; preds = %2
  %12 = load i8, ptr %6, align 1
  %13 = icmp eq i8 %12, 109
  br i1 %13, label %14, label %77

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %6, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 116
  br i1 %17, label %18, label %77

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %6, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 100
  br i1 %21, label %22, label %77

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %6, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 58
  br i1 %25, label %26, label %65

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %6, i32 4
  %28 = tail call ptr @get_mtd_device_nm(ptr noundef %27) #4
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %60, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 4
  store ptr %28, ptr %31, align 4
  %32 = tail call ptr @sget_fc(ptr noundef %0, ptr noundef nonnull @mtd_test_super, ptr noundef nonnull @mtd_set_super) #4
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = ptrtoint ptr %32 to i32
  br label %101

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 13
  %38 = load ptr, ptr %37, align 64
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @put_mtd_device(ptr noundef %28) #4
  br label %48

41:                                               ; preds = %36
  %42 = tail call i32 %1(ptr noundef %32, ptr noundef %0) #4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 10
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, 1073741824
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52, !prof !9

52:                                               ; preds = %48
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/mtdsuper.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 87, 0\0A.popsection", ""() #4, !srcloc !10
  unreachable

53:                                               ; preds = %48
  %54 = load ptr, ptr %37, align 64
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.dentry, ptr %54, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %57) #4
  br label %58

58:                                               ; preds = %56, %53
  store ptr %54, ptr %49, align 4
  br label %101

59:                                               ; preds = %41
  tail call void @deactivate_locked_super(ptr noundef %32) #4
  br label %101

60:                                               ; preds = %26
  %61 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %5, align 4
  %64 = getelementptr i8, ptr %63, i32 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %62, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.1, ptr noundef %64) #4
  br label %77

65:                                               ; preds = %22
  %66 = zext i8 %24 to i32
  %67 = add nsw i32 %66, -58
  %68 = icmp ult i32 %67, -10
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store ptr null, ptr %4, align 4, !annotation !8
  %70 = call i32 @simple_strtoul(ptr noundef %23, ptr noundef nonnull %4, i32 noundef 0) #4
  %71 = load ptr, ptr %4, align 4
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call fastcc i32 @mtd_get_sb_by_nr(ptr noundef %0, i32 noundef %70, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  br label %101

76:                                               ; preds = %69
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  br label %77

77:                                               ; preds = %76, %65, %60, %18, %14, %11
  %78 = load ptr, ptr %5, align 4
  %79 = call i32 @lookup_bdev(ptr noundef %78, ptr noundef nonnull %3) #4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = load ptr, ptr %5, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %83, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.2, ptr noundef %84, i32 noundef %79) #4
  br label %101

85:                                               ; preds = %77
  %86 = load i32, ptr %3, align 4
  %87 = and i32 %86, -1048576
  %88 = icmp eq i32 %87, 32505856
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = and i32 %86, 1048575
  %91 = call fastcc i32 @mtd_get_sb_by_nr(ptr noundef %0, i32 noundef %90, ptr noundef %1)
  br label %101

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 13
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, 32768
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = load ptr, ptr %5, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %99, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.3, ptr noundef %100) #4
  br label %101

101:                                              ; preds = %97, %92, %89, %81, %74, %59, %58, %34, %8
  %102 = phi i32 [ %79, %81 ], [ %91, %89 ], [ -22, %8 ], [ -22, %97 ], [ -22, %92 ], [ %75, %74 ], [ %42, %59 ], [ 0, %58 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret i32 %102
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device_nm(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mtd_get_sb_by_nr(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call ptr @get_mtd_device(ptr noundef null, i32 noundef %1) #4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %8, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.4, i32 noundef %1) #4
  %9 = ptrtoint ptr %4 to i32
  br label %40

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 4
  store ptr %4, ptr %11, align 4
  %12 = tail call ptr @sget_fc(ptr noundef %0, ptr noundef nonnull @mtd_test_super, ptr noundef nonnull @mtd_set_super) #4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = ptrtoint ptr %12 to i32
  br label %40

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 13
  %18 = load ptr, ptr %17, align 64
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @put_mtd_device(ptr noundef %4) #4
  br label %28

21:                                               ; preds = %16
  %22 = tail call i32 %2(ptr noundef %12, ptr noundef %0) #4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 1073741824
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32, !prof !9

32:                                               ; preds = %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/mtdsuper.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 87, 0\0A.popsection", ""() #4, !srcloc !10
  unreachable

33:                                               ; preds = %28
  %34 = load ptr, ptr %17, align 64
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %37) #4
  br label %38

38:                                               ; preds = %36, %33
  store ptr %34, ptr %29, align 4
  br label %40

39:                                               ; preds = %21
  tail call void @deactivate_locked_super(ptr noundef %12) #4
  br label %40

40:                                               ; preds = %39, %38, %14, %6
  %41 = phi i32 [ %9, %6 ], [ %15, %14 ], [ 0, %38 ], [ %22, %39 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lookup_bdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kill_mtd_super(ptr noundef %0) #0 {
  tail call void @generic_shutdown_super(ptr noundef %0) #4
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  tail call void @put_mtd_device(ptr noundef %3) #4
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_shutdown_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mtd_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sget_fc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @mtd_test_super(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 4
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_set_super(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 22
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, 32505856
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 1
  store i32 %8, ptr %9, align 8
  %10 = load ptr, ptr @mtd_bdi, align 4
  %11 = getelementptr inbounds %struct.backing_dev_info, ptr %10, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #4, !srcloc !11
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #4, !srcloc !12
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !13

15:                                               ; preds = %2
  %16 = add i32 %13, 1
  %17 = or i32 %16, %13
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %21, label %19, !prof !9

19:                                               ; preds = %15, %2
  %20 = phi i32 [ 2, %2 ], [ 1, %15 ]
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef %20) #4
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 21
  store ptr %10, ptr %22, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2153350726, i64 2153351212, i64 2153350763, i64 2153350819, i64 2153350853, i64 2153350877, i64 2153350918, i64 2153350939, i64 2153350967, i64 2153351001}
!11 = !{i64 445650, i64 2147935621, i64 2147935647, i64 2147935694, i64 2147935716, i64 2147935744, i64 2147935764}
!12 = !{i64 2147949291, i64 2147949323, i64 2147949352, i64 2147949386, i64 2147949417, i64 2147949440}
!13 = !{!"branch_weights", i32 1, i32 2000}
