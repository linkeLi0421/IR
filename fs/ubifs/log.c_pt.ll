; ModuleID = '/llk/IR/fs/ubifs/log.c_pt.bc'
source_filename = "../fs/ubifs/log.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ubifs_global_debug_info = type { i8, [3 x i8] }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.74, i32, i32, i32, [0 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.74 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.75, i32 }
%union.anon.75 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.ubifs_bud = type { i32, i32, i32, %struct.list_head, %struct.rb_node, ptr }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_ref_node = type { %struct.ubifs_ch, i32, i32, i32, [28 x i8] }
%struct.ubifs_cs_node = type { %struct.ubifs_ch, i64 }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.done_ref = type { %struct.rb_node, i32 }

@.str = private unnamed_addr constant [21 x i8] c"bud->lnum != b->lnum\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"fs/ubifs/log.c\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"c->replaying && c->ro_mount\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"!c->ro_media && !c->ro_mount\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"c->lhead_lnum != c->ltail_lnum\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"c->lhead_offs < c->leb_size\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"log is too full\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"list_empty(&c->old_buds)\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"bad bud_bytes %lld, calculated %lld\00", align 1
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_search_bud(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %22, %2
  %8 = phi ptr [ %24, %22 ], [ %5, %2 ]
  %9 = getelementptr i8, ptr %8, i32 -20
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, %1
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  br label %22

14:                                               ; preds = %7
  %15 = icmp slt i32 %10, %1
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1
  br label %22

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %8, i32 -20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %20 = load i16, ptr %3, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %29

22:                                               ; preds = %16, %12
  %23 = phi ptr [ %13, %12 ], [ %17, %16 ]
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %7

26:                                               ; preds = %22, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %27 = load i16, ptr %3, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %29

29:                                               ; preds = %26, %18
  %30 = phi ptr [ %19, %18 ], [ null, %26 ]
  ret ptr %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_get_wbuf(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %29, %6
  %12 = phi ptr [ %31, %29 ], [ %9, %6 ]
  %13 = getelementptr i8, ptr %12, i32 -20
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 2
  br label %29

18:                                               ; preds = %11
  %19 = icmp slt i32 %14, %1
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 1
  br label %29

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %12, i32 -12
  %24 = load i32, ptr %23, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %25 = load i16, ptr %7, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr %struct.ubifs_jhead, ptr %27, i32 %24
  br label %36

29:                                               ; preds = %20, %16
  %30 = phi ptr [ %17, %16 ], [ %21, %20 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %11

33:                                               ; preds = %29, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %34 = load i16, ptr %7, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %36

36:                                               ; preds = %33, %22, %2
  %37 = phi ptr [ %28, %22 ], [ null, %33 ], [ null, %2 ]
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_add_bud(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 4
  br label %9

9:                                                ; preds = %19, %7
  %10 = phi i32 [ %21, %19 ], [ %8, %7 ]
  %11 = phi ptr [ %27, %19 ], [ %5, %7 ]
  %12 = phi ptr [ %26, %19 ], [ %4, %7 ]
  %13 = getelementptr i8, ptr %11, i32 -20
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %10, %14
  br i1 %15, label %16, label %19, !prof !12

16:                                               ; preds = %9
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 123) #6
  %17 = load i32, ptr %1, align 4
  %18 = load i32, ptr %13, align 4
  br label %19

19:                                               ; preds = %16, %9
  %20 = phi i32 [ %18, %16 ], [ %14, %9 ]
  %21 = phi i32 [ %17, %16 ], [ %10, %9 ]
  %22 = icmp slt i32 %21, %20
  %23 = load ptr, ptr %12, align 4
  %24 = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 1
  %26 = select i1 %22, ptr %24, ptr %25
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %9

29:                                               ; preds = %19
  %30 = ptrtoint ptr %11 to i32
  br label %31

31:                                               ; preds = %29, %2
  %32 = phi i32 [ %30, %29 ], [ 0, %2 ]
  %33 = phi ptr [ %26, %29 ], [ %4, %2 ]
  %34 = getelementptr inbounds %struct.ubifs_bud, ptr %1, i32 0, i32 4
  store i32 %32, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ubifs_bud, ptr %1, i32 0, i32 4, i32 1
  store ptr null, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ubifs_bud, ptr %1, i32 0, i32 4, i32 2
  store ptr null, ptr %36, align 4
  store ptr %34, ptr %33, align 4
  tail call void @rb_insert_color(ptr noundef %34, ptr noundef %4) #6
  %37 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.ubifs_bud, ptr %1, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ubifs_bud, ptr %1, i32 0, i32 3
  %44 = getelementptr %struct.ubifs_jhead, ptr %38, i32 %42, i32 1
  %45 = getelementptr %struct.ubifs_jhead, ptr %38, i32 %42, i32 1, i32 1
  %46 = load ptr, ptr %45, align 4
  store ptr %43, ptr %45, align 4
  store ptr %44, ptr %43, align 4
  %47 = getelementptr inbounds %struct.ubifs_bud, ptr %1, i32 0, i32 3, i32 1
  store ptr %46, ptr %47, align 4
  store volatile ptr %43, ptr %46, align 4
  br label %59

48:                                               ; preds = %31
  %49 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 186
  %50 = load i8, ptr %49, align 4
  %51 = and i8 %50, 4
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %58, label %53, !prof !12

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %55 = load i8, ptr %54, align 8
  %56 = and i8 %55, 2
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %59, !prof !12

58:                                               ; preds = %53, %48
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 136) #6
  br label %59

59:                                               ; preds = %58, %53, %40
  %60 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %61 = load i32, ptr %60, align 8
  %62 = getelementptr inbounds %struct.ubifs_bud, ptr %1, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = sub i32 %61, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 16
  %67 = load i64, ptr %66, align 8
  %68 = add i64 %67, %65
  store i64 %68, ptr %66, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %69 = load i16, ptr %3, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_add_bud_to_log(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3136, i32 noundef 36) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %135, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 89
  %10 = load i32, ptr %9, align 8
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3392) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %132, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %14) #6
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %16 = load i8, ptr %15, align 8
  %17 = and i8 %16, 3
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19, !prof !13

19:                                               ; preds = %13
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 180) #6
  %20 = load i8, ptr %15, align 8
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi i8 [ %20, %19 ], [ %16, %13 ]
  %23 = and i8 %22, 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %130

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 9
  %27 = load i32, ptr %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %30 = load i32, ptr %29, align 8
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 %31, %28
  %33 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 10
  %34 = load i32, ptr %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 11
  %38 = load i32, ptr %37, align 4
  %39 = sext i32 %38 to i64
  %40 = mul nsw i64 %39, %31
  %41 = icmp slt i64 %40, %36
  br i1 %41, label %42, label %47

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 54
  %44 = load i64, ptr %43, align 8
  %45 = sub i64 %40, %36
  %46 = add i64 %45, %44
  br label %56

47:                                               ; preds = %25
  %48 = icmp eq i64 %40, %36
  br i1 %48, label %51, label %49

49:                                               ; preds = %47
  %50 = sub i64 %40, %36
  br label %56

51:                                               ; preds = %47
  %52 = icmp eq i32 %27, %38
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 54
  %55 = load i64, ptr %54, align 8
  br label %56

56:                                               ; preds = %53, %51, %49, %42
  %57 = phi i64 [ %46, %42 ], [ %50, %49 ], [ %55, %53 ], [ 0, %51 ]
  %58 = load i32, ptr %9, align 8
  %59 = sext i32 %58 to i64
  %60 = sub i64 %57, %59
  %61 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 13
  %62 = load i32, ptr %61, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %129, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 16
  %67 = load i64, ptr %66, align 8
  %68 = sext i32 %3 to i64
  %69 = sub nsw i64 %31, %68
  %70 = add i64 %69, %67
  %71 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 20
  %72 = load i64, ptr %71, align 8
  %73 = icmp sgt i64 %70, %72
  br i1 %73, label %129, label %74

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 21
  %76 = load i64, ptr %75, align 8
  %77 = icmp slt i64 %67, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 25
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  tail call void @ubifs_request_bg_commit(ptr noundef %0) #6
  br label %83

83:                                               ; preds = %82, %78, %74
  store i32 %2, ptr %6, align 8
  %84 = getelementptr inbounds %struct.ubifs_bud, ptr %6, i32 0, i32 1
  store i32 %3, ptr %84, align 4
  %85 = getelementptr inbounds %struct.ubifs_bud, ptr %6, i32 0, i32 2
  store i32 %1, ptr %85, align 8
  %86 = getelementptr inbounds %struct.ubifs_bud, ptr %6, i32 0, i32 5
  store ptr null, ptr %86, align 8
  %87 = getelementptr inbounds %struct.ubifs_ch, ptr %11, i32 0, i32 4
  store i8 8, ptr %87, align 4
  %88 = getelementptr inbounds %struct.ubifs_ref_node, ptr %11, i32 0, i32 1
  store i32 %2, ptr %88, align 8
  %89 = getelementptr inbounds %struct.ubifs_ref_node, ptr %11, i32 0, i32 2
  store i32 %3, ptr %89, align 4
  %90 = getelementptr inbounds %struct.ubifs_ref_node, ptr %11, i32 0, i32 3
  store i32 %1, ptr %90, align 32
  %91 = load i32, ptr %33, align 8
  %92 = load i32, ptr %29, align 8
  %93 = load i32, ptr %9, align 8
  %94 = sub i32 %92, %93
  %95 = icmp sgt i32 %91, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %83
  %97 = load i32, ptr %26, align 4
  %98 = add i32 %97, 1
  %99 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 55
  %100 = load i32, ptr %99, align 8
  %101 = icmp sgt i32 %98, %100
  %102 = select i1 %101, i32 3, i32 %98
  store i32 %102, ptr %26, align 4
  %103 = load i32, ptr %37, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %106, !prof !12

105:                                              ; preds = %96
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 236) #6
  br label %106

106:                                              ; preds = %105, %96
  store i32 0, ptr %33, align 8
  br label %109

107:                                              ; preds = %83
  %108 = icmp eq i32 %91, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %107, %106
  %110 = load i32, ptr %26, align 4
  %111 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %110) #6
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %109, %107
  %114 = load i32, ptr %84, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, ptr %6, align 8
  %118 = tail call i32 @ubifs_leb_map(ptr noundef %0, i32 noundef %117) #6
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %116, %113
  %121 = load i32, ptr %26, align 4
  %122 = load i32, ptr %33, align 8
  %123 = tail call i32 @ubifs_write_node(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 64, i32 noundef %121, i32 noundef %122) #6
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load i32, ptr %9, align 8
  %127 = load i32, ptr %33, align 8
  %128 = add i32 %127, %126
  store i32 %128, ptr %33, align 8
  tail call void @ubifs_add_bud(ptr noundef %0, ptr noundef nonnull %6)
  tail call void @mutex_unlock(ptr noundef %14) #6
  br label %132

129:                                              ; preds = %65, %56
  tail call void @ubifs_commit_required(ptr noundef %0) #6
  br label %130

130:                                              ; preds = %129, %120, %116, %109, %21
  %131 = phi i32 [ %111, %109 ], [ %118, %116 ], [ %123, %120 ], [ -30, %21 ], [ -11, %129 ]
  tail call void @mutex_unlock(ptr noundef %14) #6
  tail call void @kfree(ptr noundef nonnull %11) #6
  br label %132

132:                                              ; preds = %130, %125, %8
  %133 = phi ptr [ %6, %130 ], [ %11, %125 ], [ %6, %8 ]
  %134 = phi i32 [ %131, %130 ], [ 0, %125 ], [ -12, %8 ]
  tail call void @kfree(ptr noundef nonnull %133) #6
  br label %135

135:                                              ; preds = %132, %4
  %136 = phi i32 [ -12, %4 ], [ %134, %132 ]
  ret i32 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_commit_required(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_request_bg_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_write_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_log_start_commit(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @dbg_check_bud_bytes(ptr noundef %0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %158

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %8 = load i32, ptr %6, align 4
  %9 = shl i32 %8, 6
  %10 = or i32 %9, 31
  %11 = load i32, ptr %7, align 8
  %12 = add i32 %10, %11
  %13 = sub i32 0, %11
  %14 = and i32 %12, %13
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3136) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %158, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.ubifs_ch, ptr %15, i32 0, i32 4
  store i8 10, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 4
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.ubifs_cs_node, ptr %15, i32 0, i32 1
  store i64 %20, ptr %21, align 8
  tail call void @ubifs_prepare_node(ptr noundef %0, ptr noundef nonnull %15, i32 noundef 32, i32 noundef 0) #6
  %22 = load i32, ptr %6, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %26 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  br label %27

27:                                               ; preds = %49, %24
  %28 = phi i32 [ %22, %24 ], [ %50, %49 ]
  %29 = phi i32 [ 32, %24 ], [ %51, %49 ]
  %30 = phi i32 [ 0, %24 ], [ %52, %49 ]
  %31 = load ptr, ptr %25, align 8
  %32 = getelementptr %struct.ubifs_jhead, ptr %31, i32 %30
  %33 = getelementptr inbounds %struct.ubifs_wbuf, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.ubifs_wbuf, ptr %32, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %34, -1
  br i1 %37, label %49, label %38

38:                                               ; preds = %27
  %39 = load i32, ptr %26, align 8
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %15, i32 %29
  %43 = getelementptr inbounds %struct.ubifs_ch, ptr %42, i32 0, i32 4
  store i8 8, ptr %43, align 1
  %44 = getelementptr inbounds %struct.ubifs_ref_node, ptr %42, i32 0, i32 1
  store i32 %34, ptr %44, align 1
  %45 = getelementptr inbounds %struct.ubifs_ref_node, ptr %42, i32 0, i32 2
  store i32 %36, ptr %45, align 1
  %46 = getelementptr inbounds %struct.ubifs_ref_node, ptr %42, i32 0, i32 3
  store i32 %30, ptr %46, align 1
  tail call void @ubifs_prepare_node(ptr noundef %0, ptr noundef %42, i32 noundef 64, i32 noundef 0) #6
  %47 = add i32 %29, 64
  %48 = load i32, ptr %6, align 4
  br label %49

49:                                               ; preds = %41, %38, %27
  %50 = phi i32 [ %48, %41 ], [ %28, %38 ], [ %28, %27 ]
  %51 = phi i32 [ %47, %41 ], [ %29, %38 ], [ %29, %27 ]
  %52 = add nuw nsw i32 %30, 1
  %53 = icmp slt i32 %52, %50
  br i1 %53, label %27, label %54

54:                                               ; preds = %49, %17
  %55 = phi i32 [ 32, %17 ], [ %51, %49 ]
  %56 = getelementptr i8, ptr %15, i32 %55
  %57 = load i32, ptr %7, align 8
  %58 = add i32 %55, -1
  %59 = add i32 %58, %57
  %60 = sub i32 0, %57
  %61 = and i32 %59, %60
  %62 = sub i32 %61, %55
  tail call void @ubifs_pad(ptr noundef %0, ptr noundef %56, i32 noundef %62) #6
  %63 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 10
  %64 = load i32, ptr %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 9
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 1
  %70 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 55
  %71 = load i32, ptr %70, align 8
  %72 = icmp sgt i32 %69, %71
  %73 = select i1 %72, i32 3, i32 %69
  store i32 %73, ptr %67, align 4
  %74 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 11
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %78, !prof !12

77:                                               ; preds = %66
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 423) #6
  br label %78

78:                                               ; preds = %77, %66
  store i32 0, ptr %63, align 8
  br label %79

79:                                               ; preds = %78, %54
  %80 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 9
  %81 = load i32, ptr %80, align 4
  %82 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %81) #6
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %156

84:                                               ; preds = %79
  %85 = load i32, ptr %7, align 8
  %86 = add i32 %58, %85
  %87 = sub i32 0, %85
  %88 = and i32 %86, %87
  %89 = load i32, ptr %80, align 4
  %90 = tail call i32 @ubifs_leb_write(ptr noundef %0, i32 noundef %89, ptr noundef nonnull %15, i32 noundef 0, i32 noundef %88) #6
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %156

92:                                               ; preds = %84
  %93 = load i32, ptr %80, align 4
  store i32 %93, ptr %1, align 4
  %94 = load i32, ptr %63, align 8
  %95 = add i32 %94, %88
  store i32 %95, ptr %63, align 8
  %96 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %97 = load i32, ptr %96, align 8
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %100, label %99, !prof !13

99:                                               ; preds = %92
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 441) #6
  br label %100

100:                                              ; preds = %99, %92
  %101 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 22
  %102 = load volatile ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %101
  br i1 %103, label %105, label %104, !prof !13

104:                                              ; preds = %100
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 301) #6
  br label %105

105:                                              ; preds = %104, %100
  %106 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 14
  store i64 0, ptr %106, align 8
  %107 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %107) #6
  %108 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 15
  %109 = tail call ptr @rb_first(ptr noundef %108) #6
  %110 = icmp eq ptr %109, null
  br i1 %110, label %152, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  br label %113

113:                                              ; preds = %150, %111
  %114 = phi ptr [ %109, %111 ], [ %115, %150 ]
  %115 = tail call ptr @rb_next(ptr noundef nonnull %114) #6
  %116 = getelementptr i8, ptr %114, i32 -20
  %117 = load ptr, ptr %112, align 8
  %118 = getelementptr i8, ptr %114, i32 -12
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr %struct.ubifs_jhead, ptr %117, i32 %119
  %121 = getelementptr inbounds %struct.ubifs_wbuf, ptr %120, i32 0, i32 2
  %122 = load i32, ptr %121, align 8
  %123 = load i32, ptr %116, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %113
  %126 = getelementptr inbounds %struct.ubifs_wbuf, ptr %120, i32 0, i32 3
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr i8, ptr %114, i32 -16
  %129 = load i32, ptr %128, align 4
  %130 = sub i32 %127, %129
  %131 = sext i32 %130 to i64
  %132 = load i64, ptr %106, align 8
  %133 = add i64 %132, %131
  store i64 %133, ptr %106, align 8
  %134 = load i32, ptr %126, align 4
  store i32 %134, ptr %128, align 4
  br label %150

135:                                              ; preds = %113
  %136 = load i32, ptr %96, align 8
  %137 = getelementptr i8, ptr %114, i32 -16
  %138 = load i32, ptr %137, align 4
  %139 = sub i32 %136, %138
  %140 = sext i32 %139 to i64
  %141 = load i64, ptr %106, align 8
  %142 = add i64 %141, %140
  store i64 %142, ptr %106, align 8
  tail call void @rb_erase(ptr noundef nonnull %114, ptr noundef %108) #6
  %143 = getelementptr i8, ptr %114, i32 -8
  %144 = getelementptr i8, ptr %114, i32 -4
  %145 = load ptr, ptr %144, align 4
  %146 = load ptr, ptr %143, align 4
  %147 = getelementptr inbounds %struct.list_head, ptr %146, i32 0, i32 1
  store ptr %145, ptr %147, align 4
  store volatile ptr %146, ptr %145, align 4
  %148 = load ptr, ptr %101, align 4
  %149 = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  store ptr %143, ptr %149, align 4
  store ptr %148, ptr %143, align 4
  store ptr %101, ptr %144, align 4
  store volatile ptr %143, ptr %101, align 4
  br label %150

150:                                              ; preds = %135, %125
  %151 = icmp eq ptr %115, null
  br i1 %151, label %152, label %113

152:                                              ; preds = %150, %105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %153 = load i16, ptr %107, align 4
  %154 = add i16 %153, 1
  store i16 %154, ptr %107, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %155 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 13
  store i32 0, ptr %155, align 4
  br label %156

156:                                              ; preds = %152, %84, %79
  %157 = phi i32 [ %82, %79 ], [ %90, %84 ], [ 0, %152 ]
  tail call void @kfree(ptr noundef nonnull %15) #6
  br label %158

158:                                              ; preds = %156, %5, %2
  %159 = phi i32 [ %157, %156 ], [ %3, %2 ], [ -12, %5 ]
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dbg_check_bud_bytes(ptr noundef %0) unnamed_addr #0 {
  %2 = load i8, ptr @ubifs_dbg, align 4
  %3 = and i8 %2, 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ubifs_debug_info, ptr %7, i32 0, i32 19
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %53, label %12

12:                                               ; preds = %5, %1
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %13) #6
  %14 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  br label %21

21:                                               ; preds = %39, %17
  %22 = phi i32 [ 0, %17 ], [ %41, %39 ]
  %23 = phi i64 [ 0, %17 ], [ %40, %39 ]
  %24 = getelementptr %struct.ubifs_jhead, ptr %19, i32 %22, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %20, align 8
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi ptr [ %25, %27 ], [ %37, %29 ]
  %31 = phi i64 [ %23, %27 ], [ %36, %29 ]
  %32 = getelementptr i8, ptr %30, i32 -8
  %33 = load i32, ptr %32, align 4
  %34 = sub i32 %28, %33
  %35 = sext i32 %34 to i64
  %36 = add i64 %31, %35
  %37 = load ptr, ptr %30, align 4
  %38 = icmp eq ptr %37, %24
  br i1 %38, label %39, label %29

39:                                               ; preds = %29, %21
  %40 = phi i64 [ %23, %21 ], [ %36, %29 ]
  %41 = add nuw nsw i32 %22, 1
  %42 = icmp eq i32 %41, %15
  br i1 %42, label %43, label %21

43:                                               ; preds = %39, %12
  %44 = phi i64 [ 0, %12 ], [ %40, %39 ]
  %45 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 16
  %46 = load i64, ptr %45, align 8
  %47 = icmp eq i64 %46, %44
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.8, i64 noundef %46, i64 noundef %44) #6
  br label %49

49:                                               ; preds = %48, %43
  %50 = phi i32 [ -22, %48 ], [ 0, %43 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %51 = load i16, ptr %13, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %53

53:                                               ; preds = %49, %5
  %54 = phi i32 [ %50, %49 ], [ 0, %5 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_prepare_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_log_end_commit(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 11
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 13
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %8) #6
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 14
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 16
  %12 = load i64, ptr %11, align 8
  %13 = sub i64 %12, %10
  store i64 %13, ptr %11, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %14 = load i16, ptr %8, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %16 = tail call fastcc i32 @dbg_check_bud_bytes(ptr noundef %0)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = tail call i32 @ubifs_write_master(ptr noundef %0) #6
  br label %20

20:                                               ; preds = %18, %2
  %21 = phi i32 [ %16, %2 ], [ %19, %18 ]
  tail call void @mutex_unlock(ptr noundef %3) #6
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_write_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_log_post_commit(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 22
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %21, label %6

6:                                                ; preds = %12, %2
  %7 = phi ptr [ %19, %12 ], [ %4, %2 ]
  %8 = getelementptr i8, ptr %7, i32 -12
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @ubifs_change_one_lp(ptr noundef %0, i32 noundef %9, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 16, i32 noundef 0) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  %17 = getelementptr i8, ptr %7, i32 20
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %18) #6
  tail call void @kfree(ptr noundef %8) #6
  %19 = load volatile ptr, ptr %3, align 4
  %20 = icmp eq ptr %19, %3
  br i1 %20, label %21, label %6

21:                                               ; preds = %12, %2
  %22 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %22) #6
  %23 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %39, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 55
  br label %28

28:                                               ; preds = %32, %26
  %29 = phi i32 [ %1, %26 ], [ %36, %32 ]
  %30 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %29) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = add i32 %29, 1
  %34 = load i32, ptr %27, align 8
  %35 = icmp sgt i32 %33, %34
  %36 = select i1 %35, i32 3, i32 %33
  %37 = load i32, ptr %23, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %28

39:                                               ; preds = %32, %28, %21
  %40 = phi i32 [ 0, %21 ], [ 0, %32 ], [ %30, %28 ]
  tail call void @mutex_unlock(ptr noundef %22) #6
  br label %41

41:                                               ; preds = %39, %6
  %42 = phi i32 [ %40, %39 ], [ %10, %6 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_consolidate_log(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.rb_root, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %4 = load i32, ptr %3, align 8
  %5 = tail call noalias ptr @vmalloc(i32 noundef %4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %204, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 122
  %11 = load ptr, ptr %10, align 8
  %12 = call ptr @ubifs_scan(ptr noundef %0, i32 noundef %9, i32 noundef 0, ptr noundef %11, i32 noundef 0) #6
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 55
  %17 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 9
  br label %21

18:                                               ; preds = %143, %7
  %19 = phi ptr [ %12, %7 ], [ %149, %143 ]
  %20 = ptrtoint ptr %19 to i32
  br label %195

21:                                               ; preds = %143, %14
  %22 = phi ptr [ %12, %14 ], [ %149, %143 ]
  %23 = phi i32 [ %9, %14 ], [ %147, %143 ]
  %24 = phi i32 [ 1, %14 ], [ %140, %143 ]
  %25 = phi i32 [ 0, %14 ], [ %139, %143 ]
  %26 = phi i32 [ %9, %14 ], [ %138, %143 ]
  %27 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %22, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %137, label %30

30:                                               ; preds = %131, %21
  %31 = phi ptr [ %135, %131 ], [ %28, %21 ]
  %32 = phi i32 [ %134, %131 ], [ %24, %21 ]
  %33 = phi i32 [ %133, %131 ], [ %25, %21 ]
  %34 = phi i32 [ %132, %131 ], [ %26, %21 ]
  %35 = getelementptr inbounds %struct.ubifs_scan_node, ptr %31, i32 0, i32 3
  %36 = load i32, ptr %35, align 8
  switch i32 %36, label %131 [
    i32 8, label %37
    i32 10, label %99
  ]

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.ubifs_scan_node, ptr %31, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ubifs_ref_node, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 1
  %42 = load ptr, ptr %2, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %61, label %44

44:                                               ; preds = %55, %37
  %45 = phi ptr [ %57, %55 ], [ %42, %37 ]
  %46 = getelementptr inbounds %struct.done_ref, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp sgt i32 %47, %41
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.rb_node, ptr %45, i32 0, i32 2
  br label %55

51:                                               ; preds = %44
  %52 = icmp slt i32 %47, %41
  br i1 %52, label %53, label %131

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.rb_node, ptr %45, i32 0, i32 1
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi ptr [ %50, %49 ], [ %54, %53 ]
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %44

59:                                               ; preds = %55
  %60 = ptrtoint ptr %45 to i32
  br label %61

61:                                               ; preds = %59, %37
  %62 = phi i32 [ %60, %59 ], [ 0, %37 ]
  %63 = phi ptr [ %56, %59 ], [ %2, %37 ]
  %64 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %65 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3392, i32 noundef 16) #7
  %66 = icmp eq ptr %65, null
  br i1 %66, label %193, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.done_ref, ptr %65, i32 0, i32 1
  store i32 %41, ptr %68, align 4
  store i32 %62, ptr %65, align 8
  %69 = getelementptr inbounds %struct.rb_node, ptr %65, i32 0, i32 1
  store ptr null, ptr %69, align 4
  %70 = getelementptr inbounds %struct.rb_node, ptr %65, i32 0, i32 2
  store ptr null, ptr %70, align 8
  store ptr %65, ptr %63, align 4
  call void @rb_insert_color(ptr noundef nonnull %65, ptr noundef nonnull %2) #6
  %71 = load ptr, ptr %38, align 4
  %72 = getelementptr inbounds %struct.ubifs_ch, ptr %71, i32 0, i32 3
  %73 = load i32, ptr %72, align 1
  %74 = load i32, ptr %3, align 8
  %75 = sub i32 %74, %33
  %76 = icmp sgt i32 %73, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %67
  %78 = load i32, ptr %15, align 8
  %79 = add i32 %33, -1
  %80 = add i32 %79, %78
  %81 = sub i32 0, %78
  %82 = and i32 %80, %81
  %83 = getelementptr i8, ptr %5, i32 %33
  %84 = sub i32 %82, %33
  call void @ubifs_pad(ptr noundef %0, ptr noundef %83, i32 noundef %84) #6
  %85 = call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef %34, ptr noundef nonnull %5, i32 noundef %82) #6
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %193

87:                                               ; preds = %77
  %88 = add i32 %34, 1
  %89 = load i32, ptr %16, align 8
  %90 = icmp sgt i32 %88, %89
  %91 = select i1 %90, i32 3, i32 %88
  br label %92

92:                                               ; preds = %87, %67
  %93 = phi i32 [ %91, %87 ], [ %34, %67 ]
  %94 = phi i32 [ 0, %87 ], [ %33, %67 ]
  %95 = getelementptr i8, ptr %5, i32 %94
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %95, ptr align 1 %71, i32 %73, i1 false) #6
  %96 = add i32 %73, 7
  %97 = and i32 %96, -8
  %98 = add i32 %94, %97
  br label %131

99:                                               ; preds = %30
  %100 = icmp eq i32 %32, 0
  br i1 %100, label %131, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.ubifs_scan_node, ptr %31, i32 0, i32 6
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.ubifs_ch, ptr %103, i32 0, i32 3
  %105 = load i32, ptr %104, align 1
  %106 = load i32, ptr %3, align 8
  %107 = sub i32 %106, %33
  %108 = icmp sgt i32 %105, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %101
  %110 = load i32, ptr %15, align 8
  %111 = add i32 %33, -1
  %112 = add i32 %111, %110
  %113 = sub i32 0, %110
  %114 = and i32 %112, %113
  %115 = getelementptr i8, ptr %5, i32 %33
  %116 = sub i32 %114, %33
  call void @ubifs_pad(ptr noundef %0, ptr noundef %115, i32 noundef %116) #6
  %117 = call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef %34, ptr noundef nonnull %5, i32 noundef %114) #6
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %193

119:                                              ; preds = %109
  %120 = add i32 %34, 1
  %121 = load i32, ptr %16, align 8
  %122 = icmp sgt i32 %120, %121
  %123 = select i1 %122, i32 3, i32 %120
  br label %124

124:                                              ; preds = %119, %101
  %125 = phi i32 [ %123, %119 ], [ %34, %101 ]
  %126 = phi i32 [ 0, %119 ], [ %33, %101 ]
  %127 = getelementptr i8, ptr %5, i32 %126
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %127, ptr align 1 %103, i32 %105, i1 false) #6
  %128 = add i32 %105, 7
  %129 = and i32 %128, -8
  %130 = add i32 %126, %129
  br label %131

131:                                              ; preds = %124, %99, %92, %51, %30
  %132 = phi i32 [ %34, %30 ], [ %34, %99 ], [ %125, %124 ], [ %93, %92 ], [ %34, %51 ]
  %133 = phi i32 [ %33, %30 ], [ %33, %99 ], [ %130, %124 ], [ %98, %92 ], [ %33, %51 ]
  %134 = phi i32 [ %32, %30 ], [ 0, %99 ], [ 0, %124 ], [ %32, %92 ], [ %32, %51 ]
  %135 = load ptr, ptr %31, align 4
  %136 = icmp eq ptr %135, %27
  br i1 %136, label %137, label %30

137:                                              ; preds = %131, %21
  %138 = phi i32 [ %26, %21 ], [ %132, %131 ]
  %139 = phi i32 [ %25, %21 ], [ %133, %131 ]
  %140 = phi i32 [ %24, %21 ], [ %134, %131 ]
  call void @ubifs_scan_destroy(ptr noundef %22) #6
  %141 = load i32, ptr %17, align 4
  %142 = icmp eq i32 %23, %141
  br i1 %142, label %151, label %143

143:                                              ; preds = %137
  %144 = add i32 %23, 1
  %145 = load i32, ptr %16, align 8
  %146 = icmp sgt i32 %144, %145
  %147 = select i1 %146, i32 3, i32 %144
  %148 = load ptr, ptr %10, align 8
  %149 = call ptr @ubifs_scan(ptr noundef %0, i32 noundef %147, i32 noundef 0, ptr noundef %148, i32 noundef 0) #6
  %150 = icmp ugt ptr %149, inttoptr (i32 -4096 to ptr)
  br i1 %150, label %18, label %21

151:                                              ; preds = %137
  %152 = icmp eq i32 %139, 0
  br i1 %152, label %168, label %153

153:                                              ; preds = %151
  %154 = load i32, ptr %15, align 8
  %155 = add i32 %139, -1
  %156 = add i32 %155, %154
  %157 = sub i32 0, %154
  %158 = and i32 %156, %157
  %159 = getelementptr i8, ptr %5, i32 %139
  %160 = sub i32 %158, %139
  call void @ubifs_pad(ptr noundef %0, ptr noundef %159, i32 noundef %160) #6
  %161 = call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef %138, ptr noundef nonnull %5, i32 noundef %158) #6
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %195

163:                                              ; preds = %153
  %164 = load i32, ptr %15, align 8
  %165 = add i32 %155, %164
  %166 = sub i32 0, %164
  %167 = and i32 %165, %166
  br label %168

168:                                              ; preds = %163, %151
  %169 = phi i32 [ 0, %151 ], [ %167, %163 ]
  %170 = call ptr @rb_first_postorder(ptr noundef nonnull %2) #6
  %171 = icmp eq ptr %170, null
  br i1 %171, label %176, label %172

172:                                              ; preds = %172, %168
  %173 = phi ptr [ %174, %172 ], [ %170, %168 ]
  %174 = call ptr @rb_next_postorder(ptr noundef nonnull %173) #6
  call void @kfree(ptr noundef nonnull %173) #6
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %172

176:                                              ; preds = %172, %168
  call void @vfree(ptr noundef nonnull %5) #6
  %177 = load i32, ptr %17, align 4
  %178 = icmp eq i32 %138, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.6) #6
  br label %204

180:                                              ; preds = %188, %176
  %181 = phi i32 [ %185, %188 ], [ %138, %176 ]
  %182 = add i32 %181, 1
  %183 = load i32, ptr %16, align 8
  %184 = icmp sgt i32 %182, %183
  %185 = select i1 %184, i32 3, i32 %182
  %186 = call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %185) #6
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %204

188:                                              ; preds = %180
  %189 = load i32, ptr %17, align 4
  %190 = icmp eq i32 %185, %189
  br i1 %190, label %191, label %180

191:                                              ; preds = %188
  store i32 %138, ptr %17, align 4
  %192 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 10
  store i32 %169, ptr %192, align 8
  br label %204

193:                                              ; preds = %109, %77, %61
  %194 = phi i32 [ %117, %109 ], [ -12, %61 ], [ %85, %77 ]
  call void @ubifs_scan_destroy(ptr noundef %22) #6
  br label %195

195:                                              ; preds = %193, %153, %18
  %196 = phi i32 [ %20, %18 ], [ %194, %193 ], [ %161, %153 ]
  %197 = call ptr @rb_first_postorder(ptr noundef nonnull %2) #6
  %198 = icmp eq ptr %197, null
  br i1 %198, label %203, label %199

199:                                              ; preds = %199, %195
  %200 = phi ptr [ %201, %199 ], [ %197, %195 ]
  %201 = call ptr @rb_next_postorder(ptr noundef nonnull %200) #6
  call void @kfree(ptr noundef nonnull %200) #6
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %199

203:                                              ; preds = %199, %195
  call void @vfree(ptr noundef nonnull %5) #6
  br label %204

204:                                              ; preds = %203, %191, %180, %179, %1
  %205 = phi i32 [ %196, %203 ], [ -22, %179 ], [ 0, %191 ], [ -12, %1 ], [ %186, %180 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %205
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scan_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_change_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind allocsize(0) }

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
!8 = !{i64 2149092427}
!9 = !{i64 2149088251}
!10 = !{i64 2149088326, i64 2149088353, i64 2149088400, i64 2149088422, i64 2149088450, i64 2149088470}
!11 = !{i64 2149115430}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
