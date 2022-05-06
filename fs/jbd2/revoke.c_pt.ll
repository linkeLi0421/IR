; ModuleID = '/llk/IR/fs/jbd2/revoke.c_pt.bc'
source_filename = "../fs/jbd2/revoke.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.jbd2_revoke_table_s = type { i32, i32, ptr }
%struct.jbd2_journal_handle = type { %union.anon.72, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.72 = type { ptr }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.jbd2_revoke_record_s = type { %struct.list_head, i32, i64 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.journal_superblock_s = type { %struct.journal_header_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i8, [3 x i8], i32, [41 x i32], i32, [768 x i8] }
%struct.journal_header_s = type { i32, i32, i32 }
%struct.jbd2_journal_revoke_header_s = type { %struct.journal_header_s, i32 }

@jbd2_revoke_record_cache = internal unnamed_addr global ptr null, align 4
@jbd2_revoke_table_cache = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [21 x i8] c"jbd2_revoke_record_s\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"\010JBD2: failed to create revoke_record cache\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"jbd2_revoke_table_s\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\010JBD2: failed to create revoke_table cache\0A\00", align 1
@jbd2_journal_revoke.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"fs/jbd2/revoke.c\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\013JBD2 unexpected failure: %s: %s;\0A\00", align 1
@__func__.jbd2_journal_revoke = private unnamed_addr constant [20 x i8] c"jbd2_journal_revoke\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"!buffer_revoked(bh)\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\013inconsistent data on disk\0A\00", align 1
@jbd2_journal_has_csum_v2or3.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/jbd2.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_journal_destroy_revoke_record_cache() local_unnamed_addr #0 {
  %1 = load ptr, ptr @jbd2_revoke_record_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #7
  store ptr null, ptr @jbd2_revoke_record_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_journal_destroy_revoke_table_cache() local_unnamed_addr #0 {
  %1 = load ptr, ptr @jbd2_revoke_table_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #7
  store ptr null, ptr @jbd2_revoke_table_cache, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_init_revoke_record_cache() local_unnamed_addr #2 section ".init.text" {
  %1 = load ptr, ptr @jbd2_revoke_record_cache, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !8

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/revoke.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 195, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

4:                                                ; preds = %0
  %5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 8, i32 noundef 139264, ptr noundef null) #7
  store ptr %5, ptr @jbd2_revoke_record_cache, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ -12, %7 ], [ 0, %4 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_init_revoke_table_cache() local_unnamed_addr #2 section ".init.text" {
  %1 = load ptr, ptr @jbd2_revoke_table_cache, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !8

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/revoke.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

4:                                                ; preds = %0
  %5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.2, i32 noundef 12, i32 noundef 4, i32 noundef 131072, ptr noundef null) #7
  store ptr %5, ptr @jbd2_revoke_table_cache, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ -12, %7 ], [ 0, %4 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_init_revoke(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 53
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/revoke.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 265, 0\0A.popsection", ""() #7, !srcloc !11
  unreachable

7:                                                ; preds = %2
  %8 = tail call i32 @llvm.ctpop.i32(i32 %1) #7, !range !12
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %11, label %10, !prof !13

10:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/revoke.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 266, 0\0A.popsection", ""() #7, !srcloc !14
  unreachable

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @jbd2_journal_init_revoke_table(i32 noundef %1)
  store ptr %12, ptr %3, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @jbd2_journal_init_revoke_table(i32 noundef %1)
  %16 = getelementptr %struct.journal_s, ptr %0, i32 0, i32 53, i32 1
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 52
  store ptr %15, ptr %19, align 4
  %20 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 51
  store i32 0, ptr %20, align 8
  br label %38

21:                                               ; preds = %14
  %22 = load ptr, ptr %3, align 8
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, 0
  %25 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %22, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  br i1 %24, label %30, label %36

27:                                               ; preds = %30
  %28 = add nuw nsw i32 %31, 1
  %29 = icmp eq i32 %28, %23
  br i1 %29, label %36, label %30

30:                                               ; preds = %27, %21
  %31 = phi i32 [ %28, %27 ], [ 0, %21 ]
  %32 = getelementptr %struct.list_head, ptr %26, i32 %31
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %27, label %35, !prof !8

35:                                               ; preds = %30
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/revoke.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 255, 0\0A.popsection", ""() #7, !srcloc !15
  unreachable

36:                                               ; preds = %27, %21
  tail call void @kfree(ptr noundef %26) #7
  %37 = load ptr, ptr @jbd2_revoke_table_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %37, ptr noundef %22) #7
  store ptr null, ptr %3, align 8
  br label %38

38:                                               ; preds = %36, %18, %11
  %39 = phi i32 [ 0, %18 ], [ -12, %11 ], [ -12, %36 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @jbd2_journal_init_revoke_table(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @jbd2_revoke_table_cache, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3264) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = icmp ult i32 %0, 2
  br i1 %6, label %13, label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ %10, %7 ], [ %0, %5 ]
  %9 = phi i32 [ %11, %7 ], [ 0, %5 ]
  %10 = ashr i32 %8, 1
  %11 = add i32 %9, 1
  %12 = icmp ult i32 %8, 4
  br i1 %12, label %13, label %7

13:                                               ; preds = %7, %5
  %14 = phi i32 [ 0, %5 ], [ %11, %7 ]
  store i32 %0, ptr %3, align 8
  %15 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %3, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 8) #7
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %18, label %20, !prof !16

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %3, i32 0, i32 2
  store ptr null, ptr %19, align 8
  br label %30

20:                                               ; preds = %13
  %21 = extractvalue { i32, i1 } %16, 0
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #9
  %23 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %3, i32 0, i32 2
  store ptr %22, ptr %23, align 8
  %24 = icmp eq ptr %22, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = icmp eq i32 %0, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %25
  store volatile ptr %22, ptr %22, align 64
  %28 = getelementptr %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %22, ptr %28, align 4
  %29 = icmp eq i32 %0, 1
  br i1 %29, label %39, label %32

30:                                               ; preds = %20, %18
  %31 = load ptr, ptr @jbd2_revoke_table_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %31, ptr noundef nonnull %3) #7
  br label %39

32:                                               ; preds = %32, %27
  %33 = phi i32 [ %37, %32 ], [ 1, %27 ]
  %34 = load ptr, ptr %23, align 8
  %35 = getelementptr %struct.list_head, ptr %34, i32 %33
  store volatile ptr %35, ptr %35, align 4
  %36 = getelementptr %struct.list_head, ptr %34, i32 %33, i32 1
  store ptr %35, ptr %36, align 4
  %37 = add nuw nsw i32 %33, 1
  %38 = icmp eq i32 %37, %0
  br i1 %38, label %39, label %32

39:                                               ; preds = %32, %30, %27, %25, %1
  %40 = phi ptr [ null, %30 ], [ null, %1 ], [ %3, %25 ], [ %3, %27 ], [ %3, %32 ]
  ret ptr %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_journal_destroy_revoke(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 52
  store ptr null, ptr %2, align 4
  %3 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 53
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %4, align 4
  %8 = icmp sgt i32 %7, 0
  %9 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  br i1 %8, label %14, label %20

11:                                               ; preds = %14
  %12 = add nuw nsw i32 %15, 1
  %13 = icmp eq i32 %12, %7
  br i1 %13, label %20, label %14

14:                                               ; preds = %11, %6
  %15 = phi i32 [ %12, %11 ], [ 0, %6 ]
  %16 = getelementptr %struct.list_head, ptr %10, i32 %15
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %11, label %19, !prof !8

19:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/revoke.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 255, 0\0A.popsection", ""() #7, !srcloc !15
  unreachable

20:                                               ; preds = %11, %6
  tail call void @kfree(ptr noundef %10) #7
  %21 = load ptr, ptr @jbd2_revoke_table_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef nonnull %4) #7
  br label %22

22:                                               ; preds = %20, %1
  %23 = getelementptr %struct.journal_s, ptr %0, i32 0, i32 53, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %24, align 4
  %28 = icmp sgt i32 %27, 0
  %29 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %24, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  br i1 %28, label %34, label %40

31:                                               ; preds = %34
  %32 = add nuw nsw i32 %35, 1
  %33 = icmp eq i32 %32, %27
  br i1 %33, label %40, label %34

34:                                               ; preds = %31, %26
  %35 = phi i32 [ %32, %31 ], [ 0, %26 ]
  %36 = getelementptr %struct.list_head, ptr %30, i32 %35
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %31, label %39, !prof !8

39:                                               ; preds = %34
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/revoke.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 255, 0\0A.popsection", ""() #7, !srcloc !15
  unreachable

40:                                               ; preds = %31, %26
  tail call void @kfree(ptr noundef %30) #7
  %41 = load ptr, ptr @jbd2_revoke_table_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %41, ptr noundef nonnull %24) #7
  br label %42

42:                                               ; preds = %40, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_revoke(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @jbd2_journal_set_features(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 1) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/revoke.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 340, 0\0A.popsection", ""() #7, !srcloc !17
  unreachable

9:                                                ; preds = %3
  %10 = icmp eq ptr %2, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.journal_s, ptr %5, i32 0, i32 36
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.journal_s, ptr %5, i32 0, i32 33
  %15 = load i32, ptr %14, align 8
  %16 = tail call ptr @__find_get_block(ptr noundef %13, i64 noundef %1, i32 noundef %15) #7
  br label %17

17:                                               ; preds = %11, %9
  %18 = phi ptr [ %2, %9 ], [ %16, %11 ]
  %19 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp slt i32 %20, 1
  %22 = load i1, ptr @jbd2_journal_revoke.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !16

25:                                               ; preds = %17
  store i1 true, ptr @jbd2_journal_revoke.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 374, i32 noundef 9, ptr noundef null) #7
  br label %26

26:                                               ; preds = %25, %17
  br i1 %21, label %27, label %32

27:                                               ; preds = %26
  %28 = xor i1 %10, true
  %29 = icmp eq ptr %18, null
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %89, label %31

31:                                               ; preds = %27
  tail call void @__brelse(ptr noundef nonnull %18) #7
  br label %89

32:                                               ; preds = %26
  %33 = icmp eq ptr %18, null
  br i1 %33, label %56, label %34

34:                                               ; preds = %32
  %35 = load volatile i32, ptr %18, align 4
  %36 = and i32 %35, 524288
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.jbd2_journal_revoke, ptr noundef nonnull @.str.6) #8
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br i1 %10, label %41, label %89

41:                                               ; preds = %38
  tail call void @__brelse(ptr noundef nonnull %18) #7
  br label %89

42:                                               ; preds = %34
  %43 = load volatile i32, ptr %18, align 4
  %44 = and i32 %43, 524288
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  tail call void @_set_bit(i32 noundef 19, ptr noundef nonnull %18) #7
  br label %47

47:                                               ; preds = %46, %42
  %48 = load volatile i32, ptr %18, align 4
  %49 = and i32 %48, 1048576
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  tail call void @_set_bit(i32 noundef 20, ptr noundef nonnull %18) #7
  br label %52

52:                                               ; preds = %51, %47
  br i1 %10, label %55, label %53

53:                                               ; preds = %52
  %54 = tail call i32 @jbd2_journal_forget(ptr noundef %0, ptr noundef nonnull %2) #7
  br label %56

55:                                               ; preds = %52
  tail call void @__brelse(ptr noundef nonnull %18) #7
  br label %56

56:                                               ; preds = %55, %53, %32
  %57 = load i32, ptr %19, align 4
  %58 = add i32 %57, -1
  store i32 %58, ptr %19, align 4
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr inbounds %struct.transaction_s, ptr %59, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = load ptr, ptr @jbd2_revoke_record_cache, align 4
  %63 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %62, i32 noundef 35904) #7
  %64 = icmp eq ptr %63, null
  br i1 %64, label %89, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %63, i32 0, i32 1
  store i32 %61, ptr %66, align 8
  %67 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %63, i32 0, i32 2
  store i64 %1, ptr %67, align 8
  %68 = getelementptr inbounds %struct.journal_s, ptr %5, i32 0, i32 52
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %69, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = trunc i64 %1 to i32
  %75 = lshr i64 %1, 32
  %76 = trunc i64 %75 to i32
  %77 = mul i32 %76, 1640531527
  %78 = xor i32 %77, %74
  %79 = mul i32 %78, 1640531527
  %80 = sub i32 32, %73
  %81 = lshr i32 %79, %80
  %82 = getelementptr %struct.list_head, ptr %71, i32 %81
  %83 = getelementptr inbounds %struct.journal_s, ptr %5, i32 0, i32 51
  tail call void @_raw_spin_lock(ptr noundef %83) #7
  %84 = load ptr, ptr %82, align 4
  %85 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  store ptr %63, ptr %85, align 4
  store ptr %84, ptr %63, align 8
  %86 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %82, ptr %86, align 4
  store volatile ptr %63, ptr %82, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %87 = load i16, ptr %83, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr %83, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  br label %89

89:                                               ; preds = %65, %56, %41, %38, %31, %27
  %90 = phi i32 [ -5, %27 ], [ -5, %41 ], [ -5, %38 ], [ -5, %31 ], [ 0, %65 ], [ -12, %56 ]
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_set_features(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__find_get_block(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_forget(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_cancel_revoke(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %1, align 4
  %6 = tail call i32 @_test_and_set_bit(i32 noundef 20, ptr noundef %5) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @_clear_bit(i32 noundef 19, ptr noundef %5) #7
  br label %12

9:                                                ; preds = %2
  %10 = tail call i32 @_test_and_clear_bit(i32 noundef 19, ptr noundef %5) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %67, label %12

12:                                               ; preds = %9, %8
  %13 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 3
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.journal_s, ptr %4, i32 0, i32 52
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %16, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = trunc i64 %14 to i32
  %22 = lshr i64 %14, 32
  %23 = trunc i64 %22 to i32
  %24 = mul i32 %23, 1640531527
  %25 = xor i32 %24, %21
  %26 = mul i32 %25, 1640531527
  %27 = sub i32 32, %20
  %28 = lshr i32 %26, %27
  %29 = getelementptr %struct.list_head, ptr %18, i32 %28
  %30 = getelementptr inbounds %struct.journal_s, ptr %4, i32 0, i32 51
  tail call void @_raw_spin_lock(ptr noundef %30) #7
  br label %31

31:                                               ; preds = %35, %12
  %32 = phi ptr [ %29, %12 ], [ %33, %35 ]
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %29
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %33, i32 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = icmp eq i64 %37, %14
  br i1 %38, label %42, label %31

39:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %40 = load i16, ptr %30, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  br label %54

42:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %43 = load i16, ptr %30, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  %45 = icmp eq ptr %33, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  tail call void @_raw_spin_lock(ptr noundef %30) #7
  %47 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %33, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %49, ptr %48, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %33, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %51 = load i16, ptr %30, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  %53 = load ptr, ptr @jbd2_revoke_record_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %53, ptr noundef nonnull %33) #7
  br label %54

54:                                               ; preds = %46, %42, %39
  %55 = phi i32 [ 1, %46 ], [ 0, %39 ], [ 0, %42 ]
  %56 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 6
  %57 = load ptr, ptr %56, align 8
  %58 = load i64, ptr %13, align 8
  %59 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 4
  %60 = load i32, ptr %59, align 8
  %61 = tail call ptr @__find_get_block(ptr noundef %57, i64 noundef %58, i32 noundef %60) #7
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %54
  %64 = icmp eq ptr %61, %5
  br i1 %64, label %66, label %65

65:                                               ; preds = %63
  tail call void @_clear_bit(i32 noundef 19, ptr noundef nonnull %61) #7
  br label %66

66:                                               ; preds = %65, %63
  tail call void @__brelse(ptr noundef nonnull %61) #7
  br label %67

67:                                               ; preds = %66, %54, %9
  %68 = phi i32 [ %55, %54 ], [ %55, %66 ], [ 0, %9 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_clear_buffer_revoked_flags(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 52
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %35

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %3, i32 0, i32 2
  %8 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 36
  %9 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 33
  br label %10

10:                                               ; preds = %31, %6
  %11 = phi i32 [ %4, %6 ], [ %32, %31 ]
  %12 = phi i32 [ 0, %6 ], [ %33, %31 ]
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr %struct.list_head, ptr %13, i32 %12
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %31, label %17

17:                                               ; preds = %26, %10
  %18 = phi ptr [ %27, %26 ], [ %15, %10 ]
  %19 = load ptr, ptr %8, align 8
  %20 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %18, i32 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = load i32, ptr %9, align 8
  %23 = tail call ptr @__find_get_block(ptr noundef %19, i64 noundef %21, i32 noundef %22) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  tail call void @_clear_bit(i32 noundef 19, ptr noundef nonnull %23) #7
  tail call void @__brelse(ptr noundef nonnull %23) #7
  br label %26

26:                                               ; preds = %25, %17
  %27 = load ptr, ptr %18, align 4
  %28 = icmp eq ptr %27, %14
  br i1 %28, label %29, label %17

29:                                               ; preds = %26
  %30 = load i32, ptr %3, align 4
  br label %31

31:                                               ; preds = %29, %10
  %32 = phi i32 [ %30, %29 ], [ %11, %10 ]
  %33 = add nuw nsw i32 %12, 1
  %34 = icmp slt i32 %33, %32
  br i1 %34, label %10, label %35

35:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_journal_switch_revoke_table(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 52
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 53
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr %struct.journal_s, ptr %0, i32 0, i32 53, i32 1
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %9, %7 ], [ %5, %1 ]
  store ptr %11, ptr %2, align 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %14, %10
  %15 = phi ptr [ %22, %14 ], [ %11, %10 ]
  %16 = phi i32 [ %21, %14 ], [ 0, %10 ]
  %17 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %15, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.list_head, ptr %18, i32 %16
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr %struct.list_head, ptr %18, i32 %16, i32 1
  store ptr %19, ptr %20, align 4
  %21 = add nuw nsw i32 %16, 1
  %22 = load ptr, ptr %2, align 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %14, label %25

25:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_journal_write_revoke_records(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 52
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 53
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr %struct.journal_s, ptr %3, i32 0, i32 53, i32 1
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ %11, %9 ], [ %7, %2 ]
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %185

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %13, i32 0, i32 2
  %18 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  br label %19

19:                                               ; preds = %158, %16
  %20 = phi i32 [ %14, %16 ], [ %159, %158 ]
  %21 = phi i32 [ 0, %16 ], [ %162, %158 ]
  %22 = phi i32 [ 0, %16 ], [ %161, %158 ]
  %23 = phi ptr [ null, %16 ], [ %160, %158 ]
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr %struct.list_head, ptr %24, i32 %21
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %158, label %28

28:                                               ; preds = %146, %19
  %29 = phi ptr [ %154, %146 ], [ %26, %19 ]
  %30 = phi i32 [ %148, %146 ], [ %22, %19 ]
  %31 = phi ptr [ %147, %146 ], [ %23, %19 ]
  %32 = load ptr, ptr %0, align 8
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %146

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.journal_s, ptr %32, i32 0, i32 6
  %38 = load i32, ptr %37, align 8
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.journal_s, ptr %32, i32 0, i32 70
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  %44 = select i1 %43, i32 0, i32 -4
  br label %79

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.journal_s, ptr %32, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.journal_superblock_s, ptr %47, i32 0, i32 8
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 402653184
  %51 = icmp eq i32 %50, 0
  %52 = getelementptr inbounds %struct.journal_s, ptr %32, i32 0, i32 70
  %53 = load ptr, ptr %52, align 8
  br i1 %51, label %59, label %54

54:                                               ; preds = %45
  %55 = icmp eq ptr %53, null
  %56 = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  %57 = xor i1 %56, true
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %62, label %59, !prof !16

59:                                               ; preds = %54, %45
  %60 = icmp eq ptr %53, null
  %61 = select i1 %60, i32 0, i32 -4
  br label %72

62:                                               ; preds = %54
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1735, i32 noundef 9, ptr noundef null) #7
  %63 = load i32, ptr %37, align 8
  %64 = load ptr, ptr %52, align 8
  %65 = icmp eq ptr %64, null
  %66 = select i1 %65, i32 0, i32 -4
  %67 = icmp sgt i32 %63, 1
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load ptr, ptr %46, align 4
  %70 = getelementptr inbounds %struct.journal_superblock_s, ptr %69, i32 0, i32 8
  %71 = load i32, ptr %70, align 4
  br label %72

72:                                               ; preds = %68, %59
  %73 = phi i32 [ %49, %59 ], [ %71, %68 ]
  %74 = phi i32 [ %61, %59 ], [ %66, %68 ]
  %75 = phi i32 [ %38, %59 ], [ %63, %68 ]
  %76 = and i32 %73, 33554432
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, i32 4, i32 8
  br label %79

79:                                               ; preds = %72, %62, %40
  %80 = phi i32 [ %38, %40 ], [ %63, %62 ], [ %75, %72 ]
  %81 = phi i32 [ %44, %40 ], [ %66, %62 ], [ %74, %72 ]
  %82 = phi i32 [ 4, %40 ], [ 4, %62 ], [ %78, %72 ]
  %83 = icmp eq ptr %31, null
  br i1 %83, label %109, label %84

84:                                               ; preds = %79
  %85 = add i32 %82, %30
  %86 = getelementptr inbounds %struct.journal_s, ptr %32, i32 0, i32 33
  %87 = load i32, ptr %86, align 8
  %88 = add i32 %87, %81
  %89 = icmp sgt i32 %85, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %84
  %91 = load i32, ptr %32, align 8
  %92 = and i32 %91, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.buffer_head, ptr %31, i32 0, i32 5
  %96 = load ptr, ptr %95, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  %98 = getelementptr inbounds %struct.jbd2_journal_revoke_header_s, ptr %96, i32 0, i32 1
  store i32 %97, ptr %98, align 4
  tail call void @jbd2_descriptor_block_csum_set(ptr noundef %32, ptr noundef nonnull %31) #7
  %99 = load volatile i32, ptr %31, align 4
  %100 = and i32 %99, 131072
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  tail call void @_set_bit(i32 noundef 17, ptr noundef nonnull %31) #7
  br label %103

103:                                              ; preds = %102, %94
  %104 = load volatile i32, ptr %31, align 4
  %105 = and i32 %104, 2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  tail call void @_set_bit(i32 noundef 1, ptr noundef nonnull %31) #7
  br label %108

108:                                              ; preds = %107, %103
  tail call void @write_dirty_buffer(ptr noundef nonnull %31, i32 noundef 2048) #7
  br label %109

109:                                              ; preds = %108, %90, %79
  %110 = tail call ptr @jbd2_journal_get_descriptor_buffer(ptr noundef %0, i32 noundef 5) #7
  %111 = icmp eq ptr %110, null
  br i1 %111, label %146, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.buffer_head, ptr %110, i32 0, i32 9
  %114 = load ptr, ptr %18, align 4
  store ptr %113, ptr %18, align 4
  store ptr %1, ptr %113, align 4
  %115 = getelementptr inbounds %struct.buffer_head, ptr %110, i32 0, i32 9, i32 1
  store ptr %114, ptr %115, align 4
  store volatile ptr %113, ptr %114, align 4
  %116 = load i32, ptr %37, align 8
  br label %117

117:                                              ; preds = %112, %84
  %118 = phi ptr [ %110, %112 ], [ %31, %84 ]
  %119 = phi i32 [ %116, %112 ], [ %80, %84 ]
  %120 = phi i32 [ 16, %112 ], [ %30, %84 ]
  %121 = icmp sgt i32 %119, 1
  br i1 %121, label %122, label %136

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.journal_s, ptr %32, i32 0, i32 5
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.journal_superblock_s, ptr %124, i32 0, i32 8
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %126, 33554432
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %29, i32 0, i32 2
  %131 = load i64, ptr %130, align 8
  %132 = tail call i64 @llvm.bswap.i64(i64 %131) #7
  %133 = getelementptr inbounds %struct.buffer_head, ptr %118, i32 0, i32 5
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr i8, ptr %134, i32 %120
  store i64 %132, ptr %135, align 8
  br label %144

136:                                              ; preds = %122, %117
  %137 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %29, i32 0, i32 2
  %138 = load i64, ptr %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #7
  %141 = getelementptr inbounds %struct.buffer_head, ptr %118, i32 0, i32 5
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr i8, ptr %142, i32 %120
  store i32 %140, ptr %143, align 4
  br label %144

144:                                              ; preds = %136, %129
  %145 = add i32 %120, %82
  br label %146

146:                                              ; preds = %144, %109, %28
  %147 = phi ptr [ %31, %109 ], [ %118, %144 ], [ %31, %28 ]
  %148 = phi i32 [ %30, %109 ], [ %145, %144 ], [ %30, %28 ]
  %149 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = load ptr, ptr %29, align 4
  %152 = getelementptr inbounds %struct.list_head, ptr %151, i32 0, i32 1
  store ptr %150, ptr %152, align 4
  store volatile ptr %151, ptr %150, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %29, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %149, align 4
  %153 = load ptr, ptr @jbd2_revoke_record_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %153, ptr noundef %29) #7
  %154 = load volatile ptr, ptr %25, align 4
  %155 = icmp eq ptr %154, %25
  br i1 %155, label %156, label %28

156:                                              ; preds = %146
  %157 = load i32, ptr %13, align 4
  br label %158

158:                                              ; preds = %156, %19
  %159 = phi i32 [ %20, %19 ], [ %157, %156 ]
  %160 = phi ptr [ %23, %19 ], [ %147, %156 ]
  %161 = phi i32 [ %22, %19 ], [ %148, %156 ]
  %162 = add nuw nsw i32 %21, 1
  %163 = icmp slt i32 %162, %159
  br i1 %163, label %19, label %164

164:                                              ; preds = %158
  %165 = icmp eq ptr %160, null
  br i1 %165, label %185, label %166

166:                                              ; preds = %164
  %167 = load i32, ptr %3, align 8
  %168 = and i32 %167, 2
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %185

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.buffer_head, ptr %160, i32 0, i32 5
  %172 = load ptr, ptr %171, align 4
  %173 = tail call i32 @llvm.bswap.i32(i32 %161) #7
  %174 = getelementptr inbounds %struct.jbd2_journal_revoke_header_s, ptr %172, i32 0, i32 1
  store i32 %173, ptr %174, align 4
  tail call void @jbd2_descriptor_block_csum_set(ptr noundef %3, ptr noundef nonnull %160) #7
  %175 = load volatile i32, ptr %160, align 4
  %176 = and i32 %175, 131072
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %170
  tail call void @_set_bit(i32 noundef 17, ptr noundef nonnull %160) #7
  br label %179

179:                                              ; preds = %178, %170
  %180 = load volatile i32, ptr %160, align 4
  %181 = and i32 %180, 2
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  tail call void @_set_bit(i32 noundef 1, ptr noundef nonnull %160) #7
  br label %184

184:                                              ; preds = %183, %179
  tail call void @write_dirty_buffer(ptr noundef nonnull %160, i32 noundef 2048) #7
  br label %185

185:                                              ; preds = %184, %166, %164, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_set_revoke(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 52
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = trunc i64 %1 to i32
  %11 = lshr i64 %1, 32
  %12 = trunc i64 %11 to i32
  %13 = mul i32 %12, 1640531527
  %14 = xor i32 %13, %10
  %15 = mul i32 %14, 1640531527
  %16 = sub i32 32, %9
  %17 = lshr i32 %15, %16
  %18 = getelementptr %struct.list_head, ptr %7, i32 %17
  %19 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 51
  tail call void @_raw_spin_lock(ptr noundef %19) #7
  br label %20

20:                                               ; preds = %24, %3
  %21 = phi ptr [ %18, %3 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %18
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %22, i32 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = icmp eq i64 %26, %1
  br i1 %27, label %31, label %20

28:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %29 = load i16, ptr %19, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  br label %41

31:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %32 = load i16, ptr %19, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  %34 = icmp eq ptr %22, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %22, i32 0, i32 1
  %37 = load i32, ptr %36, align 8
  %38 = sub i32 %2, %37
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %61, label %40

40:                                               ; preds = %35
  store i32 %2, ptr %36, align 8
  br label %61

41:                                               ; preds = %31, %28
  %42 = load ptr, ptr @jbd2_revoke_record_cache, align 4
  %43 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %42, i32 noundef 35904) #7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %61, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %43, i32 0, i32 1
  store i32 %2, ptr %46, align 8
  %47 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %43, i32 0, i32 2
  store i64 %1, ptr %47, align 8
  %48 = load ptr, ptr %4, align 4
  %49 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %48, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = sub i32 32, %52
  %54 = lshr i32 %15, %53
  %55 = getelementptr %struct.list_head, ptr %50, i32 %54
  tail call void @_raw_spin_lock(ptr noundef %19) #7
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %43, ptr %57, align 4
  store ptr %56, ptr %43, align 8
  %58 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %55, ptr %58, align 4
  store volatile ptr %43, ptr %55, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %59 = load i16, ptr %19, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  br label %61

61:                                               ; preds = %45, %41, %40, %35
  %62 = phi i32 [ 0, %40 ], [ 0, %35 ], [ 0, %45 ], [ -12, %41 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_test_revoke(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 52
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = trunc i64 %1 to i32
  %11 = lshr i64 %1, 32
  %12 = trunc i64 %11 to i32
  %13 = mul i32 %12, 1640531527
  %14 = xor i32 %13, %10
  %15 = mul i32 %14, 1640531527
  %16 = sub i32 32, %9
  %17 = lshr i32 %15, %16
  %18 = getelementptr %struct.list_head, ptr %7, i32 %17
  %19 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 51
  tail call void @_raw_spin_lock(ptr noundef %19) #7
  br label %20

20:                                               ; preds = %24, %3
  %21 = phi ptr [ %18, %3 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %18
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %22, i32 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = icmp eq i64 %26, %1
  br i1 %27, label %31, label %20

28:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %29 = load i16, ptr %19, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  br label %41

31:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %32 = load i16, ptr %19, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  %34 = icmp eq ptr %22, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %22, i32 0, i32 1
  %37 = load i32, ptr %36, align 8
  %38 = sub i32 %2, %37
  %39 = icmp slt i32 %38, 1
  %40 = zext i1 %39 to i32
  br label %41

41:                                               ; preds = %35, %31, %28
  %42 = phi i32 [ 0, %31 ], [ %40, %35 ], [ 0, %28 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_journal_clear_revoke(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 52
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %3, i32 0, i32 2
  br label %8

8:                                                ; preds = %26, %6
  %9 = phi i32 [ %4, %6 ], [ %27, %26 ]
  %10 = phi i32 [ 0, %6 ], [ %28, %26 ]
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr %struct.list_head, ptr %11, i32 %10
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %26, label %15

15:                                               ; preds = %15, %8
  %16 = phi ptr [ %22, %15 ], [ %13, %8 ]
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  %21 = load ptr, ptr @jbd2_revoke_record_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef %16) #7
  %22 = load volatile ptr, ptr %12, align 4
  %23 = icmp eq ptr %22, %12
  br i1 %23, label %24, label %15

24:                                               ; preds = %15
  %25 = load i32, ptr %3, align 4
  br label %26

26:                                               ; preds = %24, %8
  %27 = phi i32 [ %25, %24 ], [ %9, %8 ]
  %28 = add nuw nsw i32 %10, 1
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %8, label %30

30:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jbd2_journal_get_descriptor_buffer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_descriptor_block_csum_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_dirty_buffer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2153287041, i64 2153287522, i64 2153287078, i64 2153287134, i64 2153287168, i64 2153287192, i64 2153287233, i64 2153287254, i64 2153287282, i64 2153287316}
!10 = !{i64 2153289177, i64 2153289658, i64 2153289214, i64 2153289270, i64 2153289304, i64 2153289328, i64 2153289369, i64 2153289390, i64 2153289418, i64 2153289452}
!11 = !{i64 2153292551, i64 2153293032, i64 2153292588, i64 2153292644, i64 2153292678, i64 2153292702, i64 2153292743, i64 2153292764, i64 2153292792, i64 2153292826}
!12 = !{i32 0, i32 33}
!13 = !{!"branch_weights", i32 -102759400, i32 4193255}
!14 = !{i64 2153293635, i64 2153294116, i64 2153293672, i64 2153293728, i64 2153293762, i64 2153293786, i64 2153293827, i64 2153293848, i64 2153293876, i64 2153293910}
!15 = !{i64 2153291404, i64 2153291885, i64 2153291441, i64 2153291497, i64 2153291531, i64 2153291555, i64 2153291596, i64 2153291617, i64 2153291645, i64 2153291679}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2153295336, i64 2153295817, i64 2153295373, i64 2153295429, i64 2153295463, i64 2153295487, i64 2153295528, i64 2153295549, i64 2153295577, i64 2153295611}
!18 = !{i64 2149039708}
!19 = !{i64 2149035532}
!20 = !{i64 2149035607, i64 2149035634, i64 2149035681, i64 2149035703, i64 2149035731, i64 2149035751}
!21 = !{i64 2149062711}
