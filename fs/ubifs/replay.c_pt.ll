; ModuleID = '/llk/IR/fs/ubifs/replay.c_pt.bc'
source_filename = "../fs/ubifs/replay.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ubifs_dent_node = type { %struct.ubifs_ch, [16 x i8], i64, i8, i8, i16, i32, [0 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%union.ubifs_key = type { [1 x i64] }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.72, i32, i32, i32, [0 x i8] }
%union.anon.72 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.73, i32 }
%union.anon.73 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_lprops = type { i32, i32, i32, i32, %union.anon.75 }
%union.anon.75 = type { %struct.list_head }
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.ubifs_cs_node = type { %struct.ubifs_ch, i64 }
%struct.ubifs_ref_node = type { %struct.ubifs_ch, i32, i32, i32, [28 x i8] }
%struct.ubifs_bud = type { i32, i32, i32, %struct.list_head, %struct.rb_node, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.bud_entry = type { %struct.list_head, ptr, i64, i32, i32 }
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.ubifs_ino_node = type { %struct.ubifs_ch, [16 x i8], i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i16, [26 x i8], [0 x i8] }
%struct.replay_entry = type { i32, i32, i32, [0 x i8], i8, i64, %struct.list_head, %union.ubifs_key, %union.anon.78 }
%union.anon.78 = type { %struct.anon.79, [16 x i8] }
%struct.anon.79 = type { i64, i64 }
%struct.ubifs_data_node = type { %struct.ubifs_ch, [16 x i8], i32, i16, i16, [0 x i8] }
%struct.fscrypt_name = type { ptr, %struct.fscrypt_str, i32, i32, %struct.fscrypt_str, i8 }
%struct.fscrypt_str = type { ptr, i32 }
%struct.ubifs_trun_node = type { %struct.ubifs_ch, i32, [12 x i8], i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"bad %s node\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"directory entry\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"extended attribute entry\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"bad key type %d\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"bad index head LEB %d:%d\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"no UBIFS nodes found at the log head LEB %d:%d, possibly corrupted\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"c->bud_bytes <= c->max_bud_bytes || c->need_recovery\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"fs/ubifs/replay.c\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"mutex_is_locked(&c->lp_mutex)\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"fs/ubifs/misc.h\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"c->lst.empty_lebs >= 0 && c->lst.empty_lebs <= c->main_lebs\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"first log node at LEB %d:%d is not CS node\00", align 1
@.str.12 = private unnamed_addr constant [70 x i8] c"first CS node at LEB %d:%d has wrong commit number %llu expected %llu\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"first node is not at zero offset\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"file system's life ended\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"bad sqnum %llu, commit sqnum %llu\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"unexpected node in log\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"log error detected while replaying the log at LEB %d:%d\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"bud at LEB %d:%d was already referred\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.19 = private unnamed_addr constant [22 x i8] c"b->sqnum > prev_sqnum\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"bad truncation node\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"unexpected node type %d in bud LEB %d:%d\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"ubifs_search_bud(c, lnum)\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"sleb->endpt - offs >= used\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"sleb->endpt % c->min_io_size == 0\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"bad node is at LEB %d:%d\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"ra->sqnum != rb->sqnum\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"key_type(c, &rino->key) == UBIFS_INO_KEY\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"r->sqnum >= rino->sqnum\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"!(block & ~UBIFS_S_KEY_BLOCK_MASK)\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"fs/ubifs/key.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_validate_entry(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.ubifs_dent_node, ptr %1, i32 0, i32 1, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 29
  %6 = getelementptr inbounds %struct.ubifs_dent_node, ptr %1, i32 0, i32 5
  %7 = load i16, ptr %6, align 1
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 1
  %11 = add nuw nsw i32 %8, 57
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ubifs_dent_node, ptr %1, i32 0, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = icmp ugt i8 %15, 6
  %17 = icmp ugt i16 %7, 255
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %33, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ubifs_dent_node, ptr %1, i32 0, i32 7
  %21 = getelementptr %struct.ubifs_dent_node, ptr %1, i32 0, i32 7, i32 %8
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = icmp eq i32 %5, 3
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = tail call i32 @strnlen(ptr noundef %20, i32 noundef %8)
  %28 = icmp eq i32 %27, %8
  br i1 %28, label %29, label %33

29:                                               ; preds = %26, %24
  %30 = getelementptr inbounds %struct.ubifs_dent_node, ptr %1, i32 0, i32 2
  %31 = load i64, ptr %30, align 1
  %32 = icmp ugt i64 %31, 4294967295
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %26, %19, %13, %2
  %34 = icmp eq i32 %5, 2
  %35 = select i1 %34, ptr @.str.1, ptr @.str.2
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %35) #7
  br label %40

36:                                               ; preds = %29
  %37 = add nsw i32 %5, -4
  %38 = icmp ult i32 %37, -2
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %5) #7
  br label %40

40:                                               ; preds = %39, %36, %33
  %41 = phi i32 [ -22, %33 ], [ -22, %39 ], [ 0, %36 ]
  ret i32 %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_replay_journal(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %union.ubifs_key, align 8
  %3 = alloca %union.ubifs_key, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  tail call void @mutex_lock(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 39
  %7 = load i32, ptr %6, align 8
  %8 = tail call ptr @ubifs_lpt_lookup_dirty(ptr noundef %0, i32 noundef %7) #7
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = ptrtoint ptr %8 to i32
  br label %21

12:                                               ; preds = %1
  %13 = load i32, ptr %8, align 4
  %14 = getelementptr inbounds %struct.ubifs_lprops, ptr %8, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 16
  %17 = tail call ptr @ubifs_change_lp(ptr noundef %0, ptr noundef %8, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef %16, i32 noundef 0) #7
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %19 = ptrtoint ptr %17 to i32
  %20 = select i1 %18, i32 %19, i32 %13
  br label %21

21:                                               ; preds = %12, %10
  %22 = phi i32 [ %11, %10 ], [ %20, %12 ]
  %23 = tail call zeroext i1 @mutex_is_locked(ptr noundef %5) #7
  br i1 %23, label %25, label %24, !prof !8

24:                                               ; preds = %21
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 256) #7
  br label %25

25:                                               ; preds = %24, %21
  %26 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %27 = load i32, ptr %26, align 8
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %33, !prof !8

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %27, %31
  br i1 %32, label %33, label %34, !prof !9

33:                                               ; preds = %29, %25
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef 258) #7
  br label %34

34:                                               ; preds = %33, %29
  tail call void @mutex_unlock(ptr noundef %5) #7
  %35 = icmp slt i32 %22, 0
  br i1 %35, label %820, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 40
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %40 = load i32, ptr %39, align 8
  %41 = sub i32 %40, %22
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = load i32, ptr %6, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %44, i32 noundef %38) #7
  br label %820

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 186
  %47 = load i8, ptr %46, align 4
  %48 = or i8 %47, 4
  store i8 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 9
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 11
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 122
  %53 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 189
  %54 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 4
  %55 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 3
  %56 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %57 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %58 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %59 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %60 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 188
  %61 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 188, i32 1
  %62 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 10
  %63 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 55
  br label %64

64:                                               ; preds = %246, %45
  %65 = phi i8 [ %48, %45 ], [ %247, %246 ]
  %66 = phi i32 [ %50, %45 ], [ %243, %246 ]
  %67 = load ptr, ptr %52, align 8
  %68 = lshr i8 %65, 1
  %69 = and i8 %68, 1
  %70 = zext i8 %69 to i32
  %71 = tail call ptr @ubifs_scan(ptr noundef %0, i32 noundef %66, i32 noundef 0, ptr noundef %67, i32 noundef %70) #7
  %72 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %85

73:                                               ; preds = %64
  %74 = ptrtoint ptr %71 to i32
  %75 = icmp eq ptr %71, inttoptr (i32 -117 to ptr)
  br i1 %75, label %76, label %233

76:                                               ; preds = %73
  %77 = load i8, ptr %46, align 4
  %78 = and i8 %77, 2
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %783, label %80

80:                                               ; preds = %76
  %81 = tail call ptr @ubifs_recover_log_leb(ptr noundef %0, i32 noundef %66, i32 noundef 0, ptr noundef %67) #7
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = ptrtoint ptr %81 to i32
  br label %233

85:                                               ; preds = %80, %64
  %86 = phi ptr [ %81, %80 ], [ %71, %64 ]
  %87 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %86, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %222, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %86, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %86, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = load i64, ptr %53, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.ubifs_scan_node, ptr %94, i32 0, i32 3
  %99 = load i32, ptr %98, align 8
  %100 = icmp eq i32 %99, 10
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %66, i32 noundef 0) #7
  br label %224

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.ubifs_cs_node, ptr %92, i32 0, i32 1
  %104 = load i64, ptr %103, align 1
  %105 = load i64, ptr %54, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %66, i32 noundef 0, i64 noundef %104, i64 noundef %105) #7
  br label %224

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.ubifs_ch, ptr %92, i32 0, i32 2
  %110 = load i64, ptr %109, align 1
  store i64 %110, ptr %53, align 8
  br label %111

111:                                              ; preds = %108, %90
  %112 = phi i64 [ %110, %108 ], [ %95, %90 ]
  %113 = getelementptr inbounds %struct.ubifs_scan_node, ptr %94, i32 0, i32 2
  %114 = load i64, ptr %113, align 8
  %115 = icmp ult i64 %114, %112
  br i1 %115, label %222, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.ubifs_scan_node, ptr %94, i32 0, i32 4
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load ptr, ptr %93, align 4
  %122 = icmp eq ptr %121, %93
  br i1 %122, label %209, label %124

123:                                              ; preds = %116
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.13) #7
  br label %224

124:                                              ; preds = %206, %120
  %125 = phi ptr [ %207, %206 ], [ %121, %120 ]
  %126 = tail call i32 @__cond_resched() #7
  %127 = getelementptr inbounds %struct.ubifs_scan_node, ptr %125, i32 0, i32 2
  %128 = load i64, ptr %127, align 8
  %129 = icmp ugt i64 %128, -16777217
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.14) #7
  br label %224

131:                                              ; preds = %124
  %132 = load i64, ptr %53, align 8
  %133 = icmp ult i64 %128, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.15, i64 noundef %128, i64 noundef %132) #7
  br label %224

135:                                              ; preds = %131
  %136 = load i64, ptr %55, align 8
  %137 = icmp ugt i64 %128, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i64 %128, ptr %55, align 8
  br label %139

139:                                              ; preds = %138, %135
  %140 = getelementptr inbounds %struct.ubifs_scan_node, ptr %125, i32 0, i32 3
  %141 = load i32, ptr %140, align 8
  switch i32 %141, label %205 [
    i32 8, label %142
    i32 10, label %200
  ]

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.ubifs_scan_node, ptr %125, i32 0, i32 6
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.ubifs_ref_node, ptr %144, i32 0, i32 1
  %146 = load i32, ptr %145, align 1
  %147 = getelementptr inbounds %struct.ubifs_ref_node, ptr %144, i32 0, i32 2
  %148 = load i32, ptr %147, align 1
  %149 = getelementptr inbounds %struct.ubifs_ref_node, ptr %144, i32 0, i32 3
  %150 = load i32, ptr %149, align 1
  %151 = load i32, ptr %56, align 4
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %153, label %224

153:                                              ; preds = %142
  %154 = load i32, ptr %57, align 8
  %155 = icmp slt i32 %146, %154
  br i1 %155, label %156, label %224

156:                                              ; preds = %153
  %157 = load i32, ptr %58, align 8
  %158 = icmp slt i32 %146, %157
  br i1 %158, label %224, label %159

159:                                              ; preds = %156
  %160 = load i32, ptr %39, align 8
  %161 = icmp ugt i32 %148, %160
  br i1 %161, label %224, label %162

162:                                              ; preds = %159
  %163 = load i32, ptr %59, align 8
  %164 = add i32 %163, -1
  %165 = and i32 %164, %148
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %224

167:                                              ; preds = %162
  %168 = tail call ptr @ubifs_search_bud(ptr noundef %0, i32 noundef %146) #7
  %169 = icmp eq ptr %168, null
  br i1 %169, label %179, label %170

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.ubifs_bud, ptr %168, i32 0, i32 2
  %172 = load i32, ptr %171, align 4
  %173 = icmp eq i32 %172, %150
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.ubifs_bud, ptr %168, i32 0, i32 1
  %176 = load i32, ptr %175, align 4
  %177 = icmp ugt i32 %176, %148
  br i1 %177, label %178, label %206

178:                                              ; preds = %174, %170
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %146, i32 noundef %148) #7
  br label %224

179:                                              ; preds = %167
  %180 = load i32, ptr %145, align 1
  %181 = load i32, ptr %147, align 1
  %182 = load i32, ptr %149, align 1
  %183 = load i64, ptr %127, align 8
  %184 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %185 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %184, i32 noundef 3264, i32 noundef 36) #8
  %186 = icmp eq ptr %185, null
  br i1 %186, label %222, label %187

187:                                              ; preds = %179
  %188 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %189 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %188, i32 noundef 3264, i32 noundef 32) #8
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  tail call void @kfree(ptr noundef nonnull %185) #7
  tail call void @kfree(ptr noundef null) #7
  br label %222

192:                                              ; preds = %187
  store i32 %180, ptr %185, align 8
  %193 = getelementptr inbounds %struct.ubifs_bud, ptr %185, i32 0, i32 1
  store i32 %181, ptr %193, align 4
  %194 = getelementptr inbounds %struct.ubifs_bud, ptr %185, i32 0, i32 2
  store i32 %182, ptr %194, align 8
  %195 = getelementptr inbounds %struct.ubifs_bud, ptr %185, i32 0, i32 5
  store ptr null, ptr %195, align 8
  tail call void @ubifs_add_bud(ptr noundef %0, ptr noundef nonnull %185) #7
  %196 = getelementptr inbounds %struct.bud_entry, ptr %189, i32 0, i32 1
  store ptr %185, ptr %196, align 8
  %197 = getelementptr inbounds %struct.bud_entry, ptr %189, i32 0, i32 2
  store i64 %183, ptr %197, align 8
  %198 = load ptr, ptr %61, align 4
  store ptr %189, ptr %61, align 4
  store ptr %60, ptr %189, align 8
  %199 = getelementptr inbounds %struct.list_head, ptr %189, i32 0, i32 1
  store ptr %198, ptr %199, align 4
  store volatile ptr %189, ptr %198, align 4
  br label %206

200:                                              ; preds = %139
  %201 = getelementptr inbounds %struct.ubifs_scan_node, ptr %125, i32 0, i32 4
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %200
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.16) #7
  br label %224

205:                                              ; preds = %139
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.16) #7
  br label %224

206:                                              ; preds = %200, %192, %174
  %207 = load ptr, ptr %125, align 4
  %208 = icmp eq ptr %207, %93
  br i1 %208, label %209, label %124

209:                                              ; preds = %206, %120
  %210 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %86, i32 0, i32 3
  %211 = load i32, ptr %210, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = load i32, ptr %62, align 8
  %215 = load i32, ptr %39, align 8
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %222, label %217

217:                                              ; preds = %213, %209
  store i32 %66, ptr %49, align 4
  %218 = load i32, ptr %210, align 4
  store i32 %218, ptr %62, align 8
  %219 = load i32, ptr %210, align 4
  %220 = icmp eq i32 %219, 0
  %221 = zext i1 %220 to i32
  br label %222

222:                                              ; preds = %217, %213, %191, %179, %111, %85
  %223 = phi i32 [ 1, %85 ], [ 1, %111 ], [ -12, %191 ], [ %221, %217 ], [ 1, %213 ], [ -12, %179 ]
  tail call void @ubifs_scan_destroy(ptr noundef %86) #7
  br label %233

224:                                              ; preds = %205, %204, %178, %162, %159, %156, %153, %142, %134, %130, %123, %107, %101
  %225 = phi ptr [ %94, %101 ], [ %94, %107 ], [ %94, %123 ], [ %125, %130 ], [ %125, %134 ], [ %125, %205 ], [ %125, %204 ], [ %125, %178 ], [ %125, %142 ], [ %125, %153 ], [ %125, %156 ], [ %125, %159 ], [ %125, %162 ]
  %226 = getelementptr inbounds %struct.ubifs_scan_node, ptr %225, i32 0, i32 4
  %227 = load i32, ptr %226, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %66, i32 noundef %227) #7
  %228 = getelementptr inbounds %struct.ubifs_scan_node, ptr %225, i32 0, i32 6
  %229 = load ptr, ptr %228, align 4
  %230 = load i32, ptr %39, align 8
  %231 = load i32, ptr %226, align 4
  %232 = sub i32 %230, %231
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef %229, i32 noundef %232) #7
  tail call void @ubifs_scan_destroy(ptr noundef %86) #7
  br label %783

233:                                              ; preds = %222, %83, %73
  %234 = phi i32 [ %84, %83 ], [ %223, %222 ], [ %74, %73 ]
  switch i32 %234, label %783 [
    i32 1, label %235
    i32 0, label %239
  ]

235:                                              ; preds = %233
  %236 = load i32, ptr %49, align 4
  %237 = icmp eq i32 %66, %236
  br i1 %237, label %238, label %248

238:                                              ; preds = %235
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %66, i32 noundef 0) #7
  br label %783

239:                                              ; preds = %233
  %240 = add i32 %66, 1
  %241 = load i32, ptr %63, align 8
  %242 = icmp sgt i32 %240, %241
  %243 = select i1 %242, i32 3, i32 %240
  %244 = load i32, ptr %51, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %248, label %246

246:                                              ; preds = %239
  %247 = load i8, ptr %46, align 4
  br label %64

248:                                              ; preds = %239, %235
  %249 = load ptr, ptr %60, align 8
  %250 = icmp eq ptr %249, %60
  br i1 %250, label %569, label %251

251:                                              ; preds = %248
  %252 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %253 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 93
  %254 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 2
  %255 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 187
  %256 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 187, i32 1
  br label %257

257:                                              ; preds = %565, %251
  %258 = phi ptr [ %249, %251 ], [ %567, %565 ]
  %259 = phi i64 [ 0, %251 ], [ %566, %565 ]
  %260 = getelementptr inbounds %struct.bud_entry, ptr %258, i32 0, i32 1
  %261 = load ptr, ptr %260, align 8
  %262 = load ptr, ptr %252, align 8
  %263 = getelementptr inbounds %struct.ubifs_bud, ptr %261, i32 0, i32 2
  %264 = load i32, ptr %263, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !10
  %265 = getelementptr inbounds %struct.ubifs_bud, ptr %261, i32 0, i32 3
  %266 = getelementptr %struct.ubifs_jhead, ptr %262, i32 %264, i32 1
  %267 = load ptr, ptr %265, align 4
  %268 = icmp eq ptr %267, %266
  br i1 %268, label %282, label %269

269:                                              ; preds = %257
  %270 = load ptr, ptr %267, align 4
  %271 = icmp eq ptr %270, %266
  br i1 %271, label %272, label %282

272:                                              ; preds = %269
  %273 = getelementptr i8, ptr %267, i32 -12
  %274 = load i32, ptr %273, align 4
  %275 = getelementptr i8, ptr %267, i32 -8
  %276 = load i32, ptr %275, align 4
  %277 = call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %274, ptr noundef nonnull %4, i32 noundef %276, i32 noundef 4, i32 noundef 1) #7
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %272
  %280 = load i32, ptr %4, align 4
  %281 = icmp eq i32 %280, -1
  br label %282

282:                                              ; preds = %279, %272, %269, %257
  %283 = phi i1 [ %281, %279 ], [ true, %257 ], [ false, %269 ], [ false, %272 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %284 = load ptr, ptr %260, align 8
  %285 = load i32, ptr %284, align 4
  %286 = getelementptr inbounds %struct.ubifs_bud, ptr %284, i32 0, i32 1
  %287 = load i32, ptr %286, align 4
  %288 = load i8, ptr %46, align 4
  %289 = and i8 %288, 2
  %290 = icmp ne i8 %289, 0
  %291 = select i1 %290, i1 %283, i1 false
  %292 = load ptr, ptr %52, align 8
  br i1 %291, label %293, label %297

293:                                              ; preds = %282
  %294 = getelementptr inbounds %struct.ubifs_bud, ptr %284, i32 0, i32 2
  %295 = load i32, ptr %294, align 4
  %296 = call ptr @ubifs_recover_leb(ptr noundef %0, i32 noundef %285, i32 noundef %287, ptr noundef %292, i32 noundef %295) #7
  br label %299

297:                                              ; preds = %282
  %298 = call ptr @ubifs_scan(ptr noundef %0, i32 noundef %285, i32 noundef %287, ptr noundef %292, i32 noundef 0) #7
  br label %299

299:                                              ; preds = %297, %293
  %300 = phi ptr [ %296, %293 ], [ %298, %297 ]
  %301 = icmp ugt ptr %300, inttoptr (i32 -4096 to ptr)
  br i1 %301, label %302, label %304

302:                                              ; preds = %299
  %303 = ptrtoint ptr %300 to i32
  br label %556

304:                                              ; preds = %299
  %305 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %300, i32 0, i32 1
  %306 = load i32, ptr %305, align 4
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %546, label %308

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %300, i32 0, i32 2
  br label %310

310:                                              ; preds = %514, %308
  %311 = phi i32 [ 0, %308 ], [ %515, %514 ]
  %312 = phi ptr [ %309, %308 ], [ %314, %514 ]
  %313 = phi i32 [ 0, %308 ], [ %516, %514 ]
  %314 = load ptr, ptr %312, align 4
  %315 = icmp eq ptr %314, %309
  br i1 %315, label %518, label %316

316:                                              ; preds = %310
  %317 = call i32 @__cond_resched() #7
  %318 = getelementptr inbounds %struct.ubifs_scan_node, ptr %314, i32 0, i32 2
  %319 = load i64, ptr %318, align 8
  %320 = icmp ugt i64 %319, -16777217
  br i1 %320, label %321, label %322

321:                                              ; preds = %316
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.14) #7
  br label %548

322:                                              ; preds = %316
  %323 = getelementptr inbounds %struct.ubifs_scan_node, ptr %314, i32 0, i32 6
  %324 = load i64, ptr %55, align 8
  %325 = icmp ugt i64 %319, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %322
  store i64 %319, ptr %55, align 8
  br label %327

327:                                              ; preds = %326, %322
  %328 = getelementptr inbounds %struct.ubifs_scan_node, ptr %314, i32 0, i32 3
  %329 = load i32, ptr %328, align 8
  switch i32 %329, label %511 [
    i32 0, label %330
    i32 1, label %371
    i32 2, label %411
    i32 3, label %411
    i32 4, label %464
    i32 12, label %514
  ]

330:                                              ; preds = %327
  %331 = load ptr, ptr %323, align 4
  %332 = getelementptr inbounds %struct.ubifs_ino_node, ptr %331, i32 0, i32 3
  %333 = load i64, ptr %332, align 1
  %334 = getelementptr inbounds %struct.ubifs_ino_node, ptr %331, i32 0, i32 10
  %335 = load i32, ptr %334, align 1
  %336 = icmp eq i32 %335, 0
  %337 = getelementptr inbounds %struct.ubifs_scan_node, ptr %314, i32 0, i32 4
  %338 = load i32, ptr %337, align 4
  %339 = getelementptr inbounds %struct.ubifs_scan_node, ptr %314, i32 0, i32 5
  %340 = load i32, ptr %339, align 8
  %341 = getelementptr inbounds %struct.ubifs_scan_node, ptr %314, i32 0, i32 1
  %342 = load i64, ptr %318, align 8
  %343 = load i32, ptr %341, align 8
  %344 = load i32, ptr %254, align 8
  %345 = icmp ult i32 %343, %344
  br i1 %345, label %347, label %346

346:                                              ; preds = %330
  store i32 %343, ptr %254, align 8
  br label %347

347:                                              ; preds = %346, %330
  %348 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %349 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %348, i32 noundef 3520, i32 noundef 72) #8
  %350 = icmp eq ptr %349, null
  br i1 %350, label %546, label %351

351:                                              ; preds = %347
  %352 = add i32 %340, 7
  %353 = and i32 %352, -8
  %354 = select i1 %336, i32 0, i32 %353
  %355 = add i32 %354, %311
  store i32 %285, ptr %349, align 8
  %356 = getelementptr inbounds %struct.replay_entry, ptr %349, i32 0, i32 1
  store i32 %338, ptr %356, align 4
  %357 = getelementptr inbounds %struct.replay_entry, ptr %349, i32 0, i32 2
  store i32 %340, ptr %357, align 8
  %358 = getelementptr inbounds %struct.replay_entry, ptr %349, i32 0, i32 4
  %359 = zext i1 %336 to i8
  %360 = load i8, ptr %358, align 4
  %361 = and i8 %360, -2
  %362 = or i8 %361, %359
  store i8 %362, ptr %358, align 4
  %363 = getelementptr inbounds %struct.replay_entry, ptr %349, i32 0, i32 5
  store i64 %342, ptr %363, align 8
  %364 = getelementptr inbounds %struct.replay_entry, ptr %349, i32 0, i32 7
  %365 = load i64, ptr %341, align 8
  store i64 %365, ptr %364, align 8
  %366 = getelementptr inbounds %struct.replay_entry, ptr %349, i32 0, i32 8
  store i64 0, ptr %366, align 8
  %367 = getelementptr inbounds %struct.replay_entry, ptr %349, i32 0, i32 8, i32 0, i32 1
  store i64 %333, ptr %367, align 8
  %368 = getelementptr inbounds %struct.replay_entry, ptr %349, i32 0, i32 6
  %369 = load ptr, ptr %256, align 4
  store ptr %368, ptr %256, align 4
  store ptr %255, ptr %368, align 8
  %370 = getelementptr inbounds %struct.replay_entry, ptr %349, i32 0, i32 6, i32 1
  store ptr %369, ptr %370, align 4
  store volatile ptr %368, ptr %369, align 4
  br label %514

371:                                              ; preds = %327
  %372 = load ptr, ptr %323, align 4
  %373 = getelementptr inbounds %struct.ubifs_data_node, ptr %372, i32 0, i32 2
  %374 = load i32, ptr %373, align 1
  %375 = getelementptr inbounds %struct.ubifs_scan_node, ptr %314, i32 0, i32 1
  %376 = getelementptr [2 x i32], ptr %375, i32 0, i32 1
  %377 = load i32, ptr %376, align 4
  %378 = shl i32 %377, 12
  %379 = add i32 %378, %374
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds %struct.ubifs_scan_node, ptr %314, i32 0, i32 4
  %382 = load i32, ptr %381, align 4
  %383 = getelementptr inbounds %struct.ubifs_scan_node, ptr %314, i32 0, i32 5
  %384 = load i32, ptr %383, align 8
  %385 = load i64, ptr %318, align 8
  %386 = load i32, ptr %375, align 8
  %387 = load i32, ptr %254, align 8
  %388 = icmp ult i32 %386, %387
  br i1 %388, label %390, label %389

389:                                              ; preds = %371
  store i32 %386, ptr %254, align 8
  br label %390

390:                                              ; preds = %389, %371
  %391 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %392 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %391, i32 noundef 3520, i32 noundef 72) #8
  %393 = icmp eq ptr %392, null
  br i1 %393, label %546, label %394

394:                                              ; preds = %390
  %395 = add i32 %384, 7
  %396 = and i32 %395, -8
  %397 = add i32 %396, %311
  store i32 %285, ptr %392, align 8
  %398 = getelementptr inbounds %struct.replay_entry, ptr %392, i32 0, i32 1
  store i32 %382, ptr %398, align 4
  %399 = getelementptr inbounds %struct.replay_entry, ptr %392, i32 0, i32 2
  store i32 %384, ptr %399, align 8
  %400 = getelementptr inbounds %struct.replay_entry, ptr %392, i32 0, i32 4
  %401 = load i8, ptr %400, align 4
  %402 = and i8 %401, -2
  store i8 %402, ptr %400, align 4
  %403 = getelementptr inbounds %struct.replay_entry, ptr %392, i32 0, i32 5
  store i64 %385, ptr %403, align 8
  %404 = getelementptr inbounds %struct.replay_entry, ptr %392, i32 0, i32 7
  %405 = load i64, ptr %375, align 8
  store i64 %405, ptr %404, align 8
  %406 = getelementptr inbounds %struct.replay_entry, ptr %392, i32 0, i32 8
  store i64 0, ptr %406, align 8
  %407 = getelementptr inbounds %struct.replay_entry, ptr %392, i32 0, i32 8, i32 0, i32 1
  store i64 %380, ptr %407, align 8
  %408 = getelementptr inbounds %struct.replay_entry, ptr %392, i32 0, i32 6
  %409 = load ptr, ptr %256, align 4
  store ptr %408, ptr %256, align 4
  store ptr %255, ptr %408, align 8
  %410 = getelementptr inbounds %struct.replay_entry, ptr %392, i32 0, i32 6, i32 1
  store ptr %409, ptr %410, align 4
  store volatile ptr %408, ptr %409, align 4
  br label %514

411:                                              ; preds = %327, %327
  %412 = load ptr, ptr %323, align 4
  %413 = call i32 @ubifs_validate_entry(ptr noundef %0, ptr noundef %412) #7
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %548

415:                                              ; preds = %411
  %416 = getelementptr inbounds %struct.ubifs_scan_node, ptr %314, i32 0, i32 4
  %417 = load i32, ptr %416, align 4
  %418 = getelementptr inbounds %struct.ubifs_scan_node, ptr %314, i32 0, i32 5
  %419 = load i32, ptr %418, align 8
  %420 = getelementptr inbounds %struct.ubifs_scan_node, ptr %314, i32 0, i32 1
  %421 = getelementptr inbounds %struct.ubifs_dent_node, ptr %412, i32 0, i32 7
  %422 = getelementptr inbounds %struct.ubifs_dent_node, ptr %412, i32 0, i32 5
  %423 = load i16, ptr %422, align 1
  %424 = zext i16 %423 to i32
  %425 = load i64, ptr %318, align 8
  %426 = getelementptr inbounds %struct.ubifs_dent_node, ptr %412, i32 0, i32 2
  %427 = load i64, ptr %426, align 1
  %428 = icmp eq i64 %427, 0
  %429 = load i32, ptr %420, align 8
  %430 = load i32, ptr %254, align 8
  %431 = icmp ult i32 %429, %430
  br i1 %431, label %433, label %432

432:                                              ; preds = %415
  store i32 %429, ptr %254, align 8
  br label %433

433:                                              ; preds = %432, %415
  %434 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %435 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %434, i32 noundef 3520, i32 noundef 72) #8
  %436 = icmp eq ptr %435, null
  br i1 %436, label %546, label %437

437:                                              ; preds = %433
  %438 = add nuw nsw i32 %424, 1
  %439 = call noalias align 64 ptr @__kmalloc(i32 noundef %438, i32 noundef 3264) #9
  %440 = icmp eq ptr %439, null
  br i1 %440, label %441, label %442

441:                                              ; preds = %437
  call void @kfree(ptr noundef nonnull %435) #7
  br label %546

442:                                              ; preds = %437
  %443 = add i32 %419, 7
  %444 = and i32 %443, -8
  %445 = select i1 %428, i32 0, i32 %444
  %446 = add i32 %445, %311
  store i32 %285, ptr %435, align 8
  %447 = getelementptr inbounds %struct.replay_entry, ptr %435, i32 0, i32 1
  store i32 %417, ptr %447, align 4
  %448 = getelementptr inbounds %struct.replay_entry, ptr %435, i32 0, i32 2
  store i32 %419, ptr %448, align 8
  %449 = getelementptr inbounds %struct.replay_entry, ptr %435, i32 0, i32 4
  %450 = zext i1 %428 to i8
  %451 = load i8, ptr %449, align 4
  %452 = and i8 %451, -2
  %453 = or i8 %452, %450
  store i8 %453, ptr %449, align 4
  %454 = getelementptr inbounds %struct.replay_entry, ptr %435, i32 0, i32 5
  store i64 %425, ptr %454, align 8
  %455 = getelementptr inbounds %struct.replay_entry, ptr %435, i32 0, i32 7
  %456 = load i64, ptr %420, align 8
  store i64 %456, ptr %455, align 8
  %457 = getelementptr inbounds %struct.replay_entry, ptr %435, i32 0, i32 8
  %458 = getelementptr inbounds %struct.fscrypt_name, ptr %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.replay_entry, ptr %435, i32 0, i32 8, i32 0, i32 1
  store i32 %424, ptr %459, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %439, ptr align 1 %421, i32 %424, i1 false) #7
  %460 = getelementptr i8, ptr %439, i32 %424
  store i8 0, ptr %460, align 1
  store ptr %439, ptr %458, align 4
  %461 = getelementptr inbounds %struct.replay_entry, ptr %435, i32 0, i32 6
  %462 = load ptr, ptr %256, align 4
  store ptr %461, ptr %256, align 4
  store ptr %255, ptr %461, align 8
  %463 = getelementptr inbounds %struct.replay_entry, ptr %435, i32 0, i32 6, i32 1
  store ptr %462, ptr %463, align 4
  store volatile ptr %461, ptr %462, align 4
  br label %514

464:                                              ; preds = %327
  %465 = load ptr, ptr %323, align 4
  %466 = getelementptr inbounds %struct.ubifs_trun_node, ptr %465, i32 0, i32 3
  %467 = load i64, ptr %466, align 1
  %468 = getelementptr inbounds %struct.ubifs_trun_node, ptr %465, i32 0, i32 4
  %469 = load i64, ptr %468, align 1
  %470 = icmp slt i64 %467, 0
  br i1 %470, label %510, label %471

471:                                              ; preds = %464
  %472 = load i64, ptr %253, align 8
  %473 = icmp sle i64 %467, %472
  %474 = icmp sgt i64 %469, -1
  %475 = select i1 %473, i1 %474, i1 false
  %476 = icmp sle i64 %469, %472
  %477 = select i1 %475, i1 %476, i1 false
  %478 = icmp sgt i64 %467, %469
  %479 = select i1 %477, i1 %478, i1 false
  br i1 %479, label %480, label %510

480:                                              ; preds = %471
  %481 = getelementptr inbounds %struct.ubifs_trun_node, ptr %465, i32 0, i32 1
  %482 = load i32, ptr %481, align 1
  %483 = getelementptr inbounds %struct.ubifs_scan_node, ptr %314, i32 0, i32 4
  %484 = load i32, ptr %483, align 4
  %485 = getelementptr inbounds %struct.ubifs_scan_node, ptr %314, i32 0, i32 5
  %486 = load i32, ptr %485, align 8
  %487 = load i64, ptr %318, align 8
  %488 = load i32, ptr %254, align 8
  %489 = icmp ult i32 %482, %488
  br i1 %489, label %491, label %490

490:                                              ; preds = %480
  store i32 %482, ptr %254, align 8
  br label %491

491:                                              ; preds = %490, %480
  %492 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %493 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %492, i32 noundef 3520, i32 noundef 72) #8
  %494 = icmp eq ptr %493, null
  br i1 %494, label %546, label %495

495:                                              ; preds = %491
  store i32 %285, ptr %493, align 8
  %496 = getelementptr inbounds %struct.replay_entry, ptr %493, i32 0, i32 1
  store i32 %484, ptr %496, align 4
  %497 = getelementptr inbounds %struct.replay_entry, ptr %493, i32 0, i32 2
  store i32 %486, ptr %497, align 8
  %498 = getelementptr inbounds %struct.replay_entry, ptr %493, i32 0, i32 4
  %499 = load i8, ptr %498, align 4
  %500 = or i8 %499, 1
  store i8 %500, ptr %498, align 4
  %501 = getelementptr inbounds %struct.replay_entry, ptr %493, i32 0, i32 5
  store i64 %487, ptr %501, align 8
  %502 = getelementptr inbounds %struct.replay_entry, ptr %493, i32 0, i32 7
  %503 = zext i32 %482 to i64
  %504 = or i64 %503, -9223372036854775808
  store i64 %504, ptr %502, align 8
  %505 = getelementptr inbounds %struct.replay_entry, ptr %493, i32 0, i32 8
  store i64 %467, ptr %505, align 8
  %506 = getelementptr inbounds %struct.replay_entry, ptr %493, i32 0, i32 8, i32 0, i32 1
  store i64 %469, ptr %506, align 8
  %507 = getelementptr inbounds %struct.replay_entry, ptr %493, i32 0, i32 6
  %508 = load ptr, ptr %256, align 4
  store ptr %507, ptr %256, align 4
  store ptr %255, ptr %507, align 8
  %509 = getelementptr inbounds %struct.replay_entry, ptr %493, i32 0, i32 6, i32 1
  store ptr %508, ptr %509, align 4
  store volatile ptr %507, ptr %508, align 4
  br label %514

510:                                              ; preds = %471, %464
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.20) #7
  br label %548

511:                                              ; preds = %327
  %512 = getelementptr inbounds %struct.ubifs_scan_node, ptr %314, i32 0, i32 4
  %513 = load i32, ptr %512, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %329, i32 noundef %285, i32 noundef %513) #7
  br label %548

514:                                              ; preds = %495, %442, %394, %351, %327
  %515 = phi i32 [ %397, %394 ], [ %355, %351 ], [ %311, %495 ], [ %446, %442 ], [ %311, %327 ]
  %516 = add i32 %313, 1
  %517 = icmp eq i32 %516, %306
  br i1 %517, label %518, label %310

518:                                              ; preds = %514, %310
  %519 = phi i32 [ %311, %310 ], [ %515, %514 ]
  %520 = call ptr @ubifs_search_bud(ptr noundef %0, i32 noundef %285) #7
  %521 = icmp eq ptr %520, null
  br i1 %521, label %522, label %523, !prof !9

522:                                              ; preds = %518
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.7, i32 noundef 818) #7
  br label %523

523:                                              ; preds = %522, %518
  %524 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %300, i32 0, i32 3
  %525 = load i32, ptr %524, align 4
  %526 = sub i32 %525, %287
  %527 = icmp slt i32 %526, %519
  br i1 %527, label %528, label %530, !prof !9

528:                                              ; preds = %523
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.7, i32 noundef 819) #7
  %529 = load i32, ptr %524, align 4
  br label %530

530:                                              ; preds = %528, %523
  %531 = phi i32 [ %525, %523 ], [ %529, %528 ]
  %532 = load i32, ptr %59, align 8
  %533 = srem i32 %531, %532
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %537, label %535, !prof !8

535:                                              ; preds = %530
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.7, i32 noundef 820) #7
  %536 = load i32, ptr %524, align 4
  br label %537

537:                                              ; preds = %535, %530
  %538 = phi i32 [ %536, %535 ], [ %531, %530 ]
  %539 = add i32 %519, %287
  %540 = sub i32 %538, %539
  %541 = getelementptr inbounds %struct.bud_entry, ptr %258, i32 0, i32 4
  store i32 %540, ptr %541, align 4
  %542 = load i32, ptr %39, align 8
  %543 = load i32, ptr %524, align 4
  %544 = sub i32 %542, %543
  %545 = getelementptr inbounds %struct.bud_entry, ptr %258, i32 0, i32 3
  store i32 %544, ptr %545, align 8
  br label %546

546:                                              ; preds = %537, %491, %441, %433, %390, %347, %304
  %547 = phi i32 [ 0, %537 ], [ %306, %304 ], [ -12, %441 ], [ -12, %347 ], [ -12, %390 ], [ -12, %433 ], [ -12, %491 ]
  call void @ubifs_scan_destroy(ptr noundef %300) #7
  br label %556

548:                                              ; preds = %511, %510, %411, %321
  %549 = getelementptr inbounds %struct.ubifs_scan_node, ptr %314, i32 0, i32 4
  %550 = load i32, ptr %549, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %285, i32 noundef %550) #7
  %551 = getelementptr inbounds %struct.ubifs_scan_node, ptr %314, i32 0, i32 6
  %552 = load ptr, ptr %551, align 4
  %553 = load i32, ptr %39, align 8
  %554 = load i32, ptr %549, align 4
  %555 = sub i32 %553, %554
  call void @ubifs_dump_node(ptr noundef %0, ptr noundef %552, i32 noundef %555) #7
  call void @ubifs_scan_destroy(ptr noundef %300) #7
  br label %783

556:                                              ; preds = %546, %302
  %557 = phi i32 [ %303, %302 ], [ %547, %546 ]
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %783

559:                                              ; preds = %556
  %560 = getelementptr inbounds %struct.bud_entry, ptr %258, i32 0, i32 2
  %561 = load i64, ptr %560, align 8
  %562 = icmp ugt i64 %561, %259
  br i1 %562, label %565, label %563, !prof !8

563:                                              ; preds = %559
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.7, i32 noundef 856) #7
  %564 = load i64, ptr %560, align 8
  br label %565

565:                                              ; preds = %563, %559
  %566 = phi i64 [ %564, %563 ], [ %561, %559 ]
  %567 = load ptr, ptr %258, align 8
  %568 = icmp eq ptr %567, %60
  br i1 %568, label %569, label %257

569:                                              ; preds = %565, %248
  %570 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 187
  call void @list_sort(ptr noundef %0, ptr noundef %570, ptr noundef nonnull @replay_entries_cmp) #7
  %571 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %572 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  %573 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 187, i32 1
  br label %574

574:                                              ; preds = %692, %569
  %575 = phi ptr [ %570, %569 ], [ %576, %692 ]
  %576 = load ptr, ptr %575, align 8
  %577 = icmp eq ptr %576, %570
  br i1 %577, label %695, label %578

578:                                              ; preds = %574
  %579 = getelementptr i8, ptr %576, i32 -24
  %580 = call i32 @__cond_resched() #7
  %581 = getelementptr i8, ptr %576, i32 8
  %582 = getelementptr i8, ptr %576, i32 12
  %583 = load i32, ptr %582, align 4
  %584 = and i32 %583, -1073741824
  %585 = icmp eq i32 %584, 1073741824
  %586 = getelementptr i8, ptr %576, i32 -12
  %587 = load i8, ptr %586, align 4
  %588 = and i8 %587, 1
  %589 = icmp eq i8 %588, 0
  br i1 %585, label %590, label %602

590:                                              ; preds = %578
  br i1 %589, label %594, label %591

591:                                              ; preds = %590
  %592 = getelementptr i8, ptr %576, i32 16
  %593 = call i32 @ubifs_tnc_remove_nm(ptr noundef %0, ptr noundef %581, ptr noundef %592) #7
  br label %692

594:                                              ; preds = %590
  %595 = load i32, ptr %579, align 8
  %596 = getelementptr i8, ptr %576, i32 -20
  %597 = load i32, ptr %596, align 4
  %598 = getelementptr i8, ptr %576, i32 -16
  %599 = load i32, ptr %598, align 8
  %600 = getelementptr i8, ptr %576, i32 16
  %601 = call i32 @ubifs_tnc_add_nm(ptr noundef %0, ptr noundef %581, i32 noundef %595, i32 noundef %597, i32 noundef %599, ptr noundef %586, ptr noundef %600) #7
  br label %692

602:                                              ; preds = %578
  br i1 %589, label %671, label %603

603:                                              ; preds = %602
  %604 = lshr i32 %583, 29
  switch i32 %604, label %669 [
    i32 0, label %605
    i32 4, label %642
  ]

605:                                              ; preds = %603
  %606 = load i32, ptr %581, align 8
  %607 = icmp ult i32 %583, 536870912
  br i1 %607, label %609, label %608, !prof !8

608:                                              ; preds = %605
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.7, i32 noundef 218) #7
  br label %609

609:                                              ; preds = %608, %605
  %610 = load ptr, ptr %573, align 4
  %611 = icmp eq ptr %610, %570
  br i1 %611, label %634, label %612

612:                                              ; preds = %609
  %613 = getelementptr i8, ptr %576, i32 -8
  br label %614

614:                                              ; preds = %630, %612
  %615 = phi ptr [ %610, %612 ], [ %632, %630 ]
  %616 = getelementptr i8, ptr %615, i32 -8
  %617 = load i64, ptr %616, align 8
  %618 = load i64, ptr %613, align 8
  %619 = icmp ult i64 %617, %618
  br i1 %619, label %620, label %621, !prof !9

620:                                              ; preds = %614
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.7, i32 noundef 225) #7
  br label %621

621:                                              ; preds = %620, %614
  %622 = getelementptr i8, ptr %615, i32 8
  %623 = load i32, ptr %622, align 8
  %624 = load i32, ptr %581, align 8
  %625 = icmp eq i32 %623, %624
  br i1 %625, label %626, label %630

626:                                              ; preds = %621
  %627 = getelementptr i8, ptr %615, i32 12
  %628 = load i32, ptr %627, align 4
  %629 = icmp ult i32 %628, 536870912
  br i1 %629, label %635, label %630

630:                                              ; preds = %626, %621
  %631 = getelementptr inbounds %struct.list_head, ptr %615, i32 0, i32 1
  %632 = load ptr, ptr %631, align 4
  %633 = icmp eq ptr %632, %570
  br i1 %633, label %634, label %614

634:                                              ; preds = %630, %609
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.7, i32 noundef 232) #7
  br label %640

635:                                              ; preds = %626
  %636 = getelementptr i8, ptr %615, i32 -12
  %637 = load i8, ptr %636, align 4
  %638 = and i8 %637, 1
  %639 = icmp eq i8 %638, 0
  br i1 %639, label %681, label %640

640:                                              ; preds = %635, %634
  %641 = call i32 @ubifs_tnc_remove_ino(ptr noundef %0, i32 noundef %606) #7
  br label %678

642:                                              ; preds = %603
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %643 = getelementptr i8, ptr %576, i32 16
  %644 = getelementptr i8, ptr %576, i32 24
  %645 = load i64, ptr %644, align 8
  %646 = sdiv i64 %645, 4096
  %647 = trunc i64 %646 to i32
  %648 = and i64 %645, 4095
  %649 = icmp ne i64 %648, 0
  %650 = zext i1 %649 to i32
  %651 = add i32 %650, %647
  %652 = load i64, ptr %643, align 8
  %653 = sdiv i64 %652, 4096
  %654 = trunc i64 %653 to i32
  %655 = and i64 %652, 4095
  %656 = icmp eq i64 %655, 0
  %657 = sext i1 %656 to i32
  %658 = add i32 %657, %654
  %659 = load i32, ptr %581, align 8
  %660 = icmp ult i32 %651, 536870912
  br i1 %660, label %662, label %661, !prof !8

661:                                              ; preds = %642
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 270) #7
  br label %662

662:                                              ; preds = %661, %642
  store i32 %659, ptr %2, align 8
  %663 = or i32 %651, 536870912
  store i32 %663, ptr %571, align 4
  %664 = icmp ult i32 %658, 536870912
  br i1 %664, label %666, label %665, !prof !8

665:                                              ; preds = %662
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 270) #7
  br label %666

666:                                              ; preds = %665, %662
  store i32 %659, ptr %3, align 8
  %667 = or i32 %658, 536870912
  store i32 %667, ptr %572, align 4
  %668 = call i32 @ubifs_tnc_remove_range(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  br label %678

669:                                              ; preds = %603
  %670 = call i32 @ubifs_tnc_remove(ptr noundef %0, ptr noundef %581) #7
  br label %678

671:                                              ; preds = %602
  %672 = load i32, ptr %579, align 8
  %673 = getelementptr i8, ptr %576, i32 -20
  %674 = load i32, ptr %673, align 4
  %675 = getelementptr i8, ptr %576, i32 -16
  %676 = load i32, ptr %675, align 8
  %677 = call i32 @ubifs_tnc_add(ptr noundef %0, ptr noundef %581, i32 noundef %672, i32 noundef %674, i32 noundef %676, ptr noundef %586) #7
  br label %678

678:                                              ; preds = %671, %669, %666, %640
  %679 = phi i32 [ %670, %669 ], [ %668, %666 ], [ %677, %671 ], [ %641, %640 ]
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %681, label %783

681:                                              ; preds = %678, %635
  %682 = load i8, ptr %46, align 4
  %683 = and i8 %682, 2
  %684 = icmp eq i8 %683, 0
  br i1 %684, label %692, label %685

685:                                              ; preds = %681
  %686 = load i8, ptr %586, align 4
  %687 = and i8 %686, 1
  %688 = zext i8 %687 to i32
  %689 = getelementptr i8, ptr %576, i32 24
  %690 = load i64, ptr %689, align 8
  %691 = call i32 @ubifs_recover_size_accum(ptr noundef %0, ptr noundef %581, i32 noundef %688, i64 noundef %690) #7
  br label %692

692:                                              ; preds = %685, %681, %594, %591
  %693 = phi i32 [ %593, %591 ], [ %601, %594 ], [ %691, %685 ], [ 0, %681 ]
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %574, label %783

695:                                              ; preds = %574
  %696 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %697 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  br label %698

698:                                              ; preds = %762, %695
  %699 = phi ptr [ %60, %695 ], [ %700, %762 ]
  %700 = load ptr, ptr %699, align 8
  %701 = icmp eq ptr %700, %60
  br i1 %701, label %764, label %702

702:                                              ; preds = %698
  call void @mutex_lock(ptr noundef %5) #7
  %703 = getelementptr inbounds %struct.bud_entry, ptr %700, i32 0, i32 1
  %704 = load ptr, ptr %703, align 8
  %705 = load i32, ptr %704, align 4
  %706 = call ptr @ubifs_lpt_lookup_dirty(ptr noundef %0, i32 noundef %705) #7
  %707 = icmp ugt ptr %706, inttoptr (i32 -4096 to ptr)
  br i1 %707, label %708, label %710

708:                                              ; preds = %702
  %709 = ptrtoint ptr %706 to i32
  br label %751

710:                                              ; preds = %702
  %711 = getelementptr inbounds %struct.ubifs_lprops, ptr %706, i32 0, i32 1
  %712 = load i32, ptr %711, align 4
  %713 = load ptr, ptr %703, align 8
  %714 = getelementptr inbounds %struct.ubifs_bud, ptr %713, i32 0, i32 1
  %715 = load i32, ptr %714, align 4
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %717, label %726

717:                                              ; preds = %710
  %718 = load i32, ptr %706, align 4
  %719 = load i32, ptr %39, align 8
  %720 = icmp eq i32 %718, %719
  %721 = icmp eq i32 %712, 0
  %722 = select i1 %720, i1 %721, i1 false
  br i1 %722, label %726, label %723

723:                                              ; preds = %717
  %724 = add i32 %718, %712
  %725 = sub i32 %724, %719
  br label %726

726:                                              ; preds = %723, %717, %710
  %727 = phi i32 [ %712, %710 ], [ 0, %717 ], [ %725, %723 ]
  %728 = getelementptr inbounds %struct.bud_entry, ptr %700, i32 0, i32 3
  %729 = load i32, ptr %728, align 8
  %730 = getelementptr inbounds %struct.bud_entry, ptr %700, i32 0, i32 4
  %731 = load i32, ptr %730, align 4
  %732 = add i32 %731, %727
  %733 = getelementptr inbounds %struct.ubifs_lprops, ptr %706, i32 0, i32 2
  %734 = load i32, ptr %733, align 4
  %735 = or i32 %734, 16
  %736 = call ptr @ubifs_change_lp(ptr noundef %0, ptr noundef %706, i32 noundef %729, i32 noundef %732, i32 noundef %735, i32 noundef 0) #7
  %737 = icmp ugt ptr %736, inttoptr (i32 -4096 to ptr)
  br i1 %737, label %738, label %740

738:                                              ; preds = %726
  %739 = ptrtoint ptr %736 to i32
  br label %751

740:                                              ; preds = %726
  %741 = load ptr, ptr %696, align 8
  %742 = load ptr, ptr %703, align 8
  %743 = getelementptr inbounds %struct.ubifs_bud, ptr %742, i32 0, i32 2
  %744 = load i32, ptr %743, align 4
  %745 = getelementptr %struct.ubifs_jhead, ptr %741, i32 %744
  %746 = load i32, ptr %742, align 4
  %747 = load i32, ptr %39, align 8
  %748 = load i32, ptr %728, align 8
  %749 = sub i32 %747, %748
  %750 = call i32 @ubifs_wbuf_seek_nolock(ptr noundef %745, i32 noundef %746, i32 noundef %749) #7
  br label %751

751:                                              ; preds = %740, %738, %708
  %752 = phi i32 [ %709, %708 ], [ %739, %738 ], [ %750, %740 ]
  %753 = call zeroext i1 @mutex_is_locked(ptr noundef %5) #7
  br i1 %753, label %755, label %754, !prof !8

754:                                              ; preds = %751
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 256) #7
  br label %755

755:                                              ; preds = %754, %751
  %756 = load i32, ptr %26, align 8
  %757 = icmp sgt i32 %756, -1
  br i1 %757, label %758, label %761, !prof !8

758:                                              ; preds = %755
  %759 = load i32, ptr %697, align 4
  %760 = icmp sgt i32 %756, %759
  br i1 %760, label %761, label %762, !prof !9

761:                                              ; preds = %758, %755
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef 258) #7
  br label %762

762:                                              ; preds = %761, %758
  call void @mutex_unlock(ptr noundef %5) #7
  %763 = icmp eq i32 %752, 0
  br i1 %763, label %698, label %783

764:                                              ; preds = %698
  %765 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 83
  %766 = load volatile i32, ptr %765, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 3
  %769 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 92
  %770 = load i32, ptr %769, align 4
  %771 = sext i32 %770 to i64
  %772 = mul nsw i64 %771, %767
  store i64 %772, ptr %768, align 8
  %773 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 16
  %774 = load i64, ptr %773, align 8
  %775 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 20
  %776 = load i64, ptr %775, align 8
  %777 = icmp sgt i64 %774, %776
  br i1 %777, label %778, label %783

778:                                              ; preds = %764
  %779 = load i8, ptr %46, align 4
  %780 = and i8 %779, 2
  %781 = icmp eq i8 %780, 0
  br i1 %781, label %782, label %783, !prof !9

782:                                              ; preds = %778
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 1242) #7
  br label %783

783:                                              ; preds = %782, %778, %764, %762, %692, %678, %556, %548, %238, %233, %224, %76
  %784 = phi i32 [ 0, %764 ], [ 0, %782 ], [ 0, %778 ], [ -22, %548 ], [ -22, %238 ], [ -22, %224 ], [ %752, %762 ], [ %693, %692 ], [ %679, %678 ], [ %557, %556 ], [ %234, %233 ], [ -117, %76 ]
  %785 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 187
  %786 = load ptr, ptr %785, align 8
  %787 = icmp eq ptr %786, %785
  br i1 %787, label %806, label %788

788:                                              ; preds = %800, %783
  %789 = phi ptr [ %791, %800 ], [ %786, %783 ]
  %790 = getelementptr i8, ptr %789, i32 -24
  %791 = load ptr, ptr %789, align 8
  %792 = getelementptr i8, ptr %789, i32 12
  %793 = load i32, ptr %792, align 4
  %794 = and i32 %793, -1073741824
  %795 = icmp eq i32 %794, 1073741824
  br i1 %795, label %796, label %800

796:                                              ; preds = %788
  %797 = getelementptr i8, ptr %789, i32 20
  %798 = load ptr, ptr %797, align 4
  call void @kfree(ptr noundef %798) #7
  %799 = load ptr, ptr %789, align 4
  br label %800

800:                                              ; preds = %796, %788
  %801 = phi ptr [ %799, %796 ], [ %791, %788 ]
  %802 = getelementptr inbounds %struct.list_head, ptr %789, i32 0, i32 1
  %803 = load ptr, ptr %802, align 4
  %804 = getelementptr inbounds %struct.list_head, ptr %801, i32 0, i32 1
  store ptr %803, ptr %804, align 4
  store volatile ptr %801, ptr %803, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %789, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %802, align 4
  call void @kfree(ptr noundef %790) #7
  %805 = icmp eq ptr %791, %785
  br i1 %805, label %806, label %788

806:                                              ; preds = %800, %783
  %807 = load volatile ptr, ptr %60, align 4
  %808 = icmp eq ptr %807, %60
  br i1 %808, label %817, label %809

809:                                              ; preds = %809, %806
  %810 = phi ptr [ %815, %809 ], [ %807, %806 ]
  %811 = getelementptr inbounds %struct.list_head, ptr %810, i32 0, i32 1
  %812 = load ptr, ptr %811, align 4
  %813 = load ptr, ptr %810, align 4
  %814 = getelementptr inbounds %struct.list_head, ptr %813, i32 0, i32 1
  store ptr %812, ptr %814, align 4
  store volatile ptr %813, ptr %812, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %810, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %811, align 4
  call void @kfree(ptr noundef %810) #7
  %815 = load volatile ptr, ptr %60, align 4
  %816 = icmp eq ptr %815, %60
  br i1 %816, label %817, label %809

817:                                              ; preds = %809, %806
  %818 = load i8, ptr %46, align 4
  %819 = and i8 %818, -5
  store i8 %819, ptr %46, align 4
  br label %820

820:                                              ; preds = %817, %43, %34
  %821 = phi i32 [ -22, %43 ], [ %784, %817 ], [ %22, %34 ]
  ret i32 %821
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_lpt_lookup_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_change_lp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_recover_log_leb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scan_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_search_bud(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_add_bud(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_recover_leb(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @replay_entries_cmp(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) #0 {
  %4 = tail call i32 @__cond_resched() #7
  %5 = icmp eq ptr %1, %2
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %1, i32 -8
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr i8, ptr %2, i32 -8
  %10 = load i64, ptr %9, align 8
  %11 = icmp eq i64 %8, %10
  br i1 %11, label %12, label %15, !prof !9

12:                                               ; preds = %6
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.7, i32 noundef 314) #7
  %13 = load i64, ptr %7, align 8
  %14 = load i64, ptr %9, align 8
  br label %15

15:                                               ; preds = %12, %6
  %16 = phi i64 [ %14, %12 ], [ %10, %6 ]
  %17 = phi i64 [ %13, %12 ], [ %8, %6 ]
  %18 = icmp ugt i64 %17, %16
  %19 = select i1 %18, i32 1, i32 -1
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi i32 [ 0, %3 ], [ %19, %15 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove_nm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_add_nm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove_ino(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_add(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_recover_size_accum(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_seek_nolock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
