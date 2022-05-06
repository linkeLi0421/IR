; ModuleID = '/llk/IR/fs/ubifs/orphan.c_pt.bc'
source_filename = "../fs/ubifs/orphan.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ubifs_global_debug_info = type { i8, [3 x i8] }
%union.ubifs_key = type { [1 x i64] }
%struct.fscrypt_name = type { ptr, %struct.fscrypt_str, i32, i32, %struct.fscrypt_str, i8 }
%struct.fscrypt_str = type { ptr, i32 }
%struct.ubifs_dent_node = type { %struct.ubifs_ch, [16 x i8], i64, i8, i8, i16, i32, [0 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_orphan = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.check_info = type { i32, i32, i32, i64, ptr, %struct.rb_root }
%struct.ubifs_orph_node = type { %struct.ubifs_ch, i64, [0 x i64] }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.check_orphan = type { %struct.rb_node, i32 }
%struct.ubifs_ino_node = type { %struct.ubifs_ch, [16 x i8], i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i16, [26 x i8], [0 x i8] }

@.str = private unnamed_addr constant [23 x i8] c"missing orphan ino %lu\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"orphan->new\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"fs/ubifs/orphan.c\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"!orphan->cmt\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"orphaned twice\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"c->cmt_orphans > 0\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"cnt == c->tot_orphans - c->new_orphans\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"out of space in orphan area\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"c->orph_buf\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"orphan->cmt\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"c->ohead_offs + len <= c->leb_size\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"c->ohead_lnum >= c->orph_first\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"c->ohead_lnum <= c->orph_last\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"c->ohead_offs == 0\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"!orphan->new\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"orphan->del\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"invalid node type %d in orphan area at %d:%d\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"out of order commit number %llu in orphan node at %d:%d\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"cannot scan TNC, error %d\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"%lu missing orphan(s)\00", align 1
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4
@.str.21 = private unnamed_addr constant [40 x i8] c"cannot allocate memory to check orphans\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"found orphan node ino %lu, type %d\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"node read failed, error %d\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"missing orphan, ino %lu\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_add_orphan(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %union.ubifs_key, align 8
  %4 = alloca %struct.fscrypt_name, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false)
  %5 = tail call fastcc ptr @orphan_add(ptr noundef %0, i32 noundef %1, ptr noundef null)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = ptrtoint ptr %5 to i32
  br label %44

9:                                                ; preds = %2
  store i32 %1, ptr %3, align 8
  %10 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  store i32 1610612736, ptr %10, align 4
  %11 = call ptr @ubifs_tnc_next_ent(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.fscrypt_name, ptr %4, i32 0, i32 1
  %15 = getelementptr inbounds %struct.fscrypt_name, ptr %4, i32 0, i32 1, i32 1
  br label %22

16:                                               ; preds = %36, %9
  %17 = phi ptr [ null, %9 ], [ %23, %36 ]
  %18 = phi ptr [ %11, %9 ], [ %41, %36 ]
  %19 = icmp eq ptr %18, inttoptr (i32 -2 to ptr)
  br i1 %19, label %43, label %20

20:                                               ; preds = %16
  %21 = ptrtoint ptr %18 to i32
  call void @kfree(ptr noundef %17) #8
  br label %44

22:                                               ; preds = %36, %13
  %23 = phi ptr [ %11, %13 ], [ %41, %36 ]
  %24 = phi ptr [ null, %13 ], [ %23, %36 ]
  %25 = getelementptr inbounds %struct.ubifs_dent_node, ptr %23, i32 0, i32 7
  store ptr %25, ptr %14, align 4
  %26 = getelementptr inbounds %struct.ubifs_dent_node, ptr %23, i32 0, i32 5
  %27 = load i16, ptr %26, align 1
  %28 = zext i16 %27 to i32
  store i32 %28, ptr %15, align 4
  %29 = getelementptr inbounds %struct.ubifs_dent_node, ptr %23, i32 0, i32 2
  %30 = load i64, ptr %29, align 1
  %31 = trunc i64 %30 to i32
  %32 = call fastcc ptr @orphan_add(ptr noundef %0, i32 noundef %31, ptr noundef %5)
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  call void @kfree(ptr noundef %24) #8
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  call void @kfree(ptr noundef %23) #8
  %35 = ptrtoint ptr %32 to i32
  br label %44

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.ubifs_dent_node, ptr %23, i32 0, i32 1
  %38 = load i32, ptr %37, align 8
  store i32 %38, ptr %3, align 8
  %39 = getelementptr %struct.ubifs_dent_node, ptr %23, i32 0, i32 1, i32 4
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %10, align 4
  %41 = call ptr @ubifs_tnc_next_ent(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %16, label %22

43:                                               ; preds = %16
  call void @kfree(ptr noundef %17) #8
  br label %44

44:                                               ; preds = %43, %34, %20, %7
  %45 = phi i32 [ %8, %7 ], [ 0, %43 ], [ %21, %20 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @orphan_add(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3392, i32 noundef 52) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %74, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ubifs_orphan, ptr %5, i32 0, i32 6
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ubifs_orphan, ptr %5, i32 0, i32 7
  %10 = load i8, ptr %9, align 8
  %11 = or i8 %10, 1
  store i8 %11, ptr %9, align 8
  %12 = getelementptr inbounds %struct.ubifs_orphan, ptr %5, i32 0, i32 3
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ubifs_orphan, ptr %5, i32 0, i32 3, i32 1
  store ptr %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %14) #8
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 112
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 113
  %18 = load i32, ptr %17, align 8
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %21 = load i16, ptr %14, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %74

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 103
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %41, %23
  %28 = phi ptr [ %43, %41 ], [ %25, %23 ]
  %29 = getelementptr inbounds %struct.ubifs_orphan, ptr %28, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = icmp ugt i32 %30, %1
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.rb_node, ptr %28, i32 0, i32 2
  br label %41

34:                                               ; preds = %27
  %35 = icmp ult i32 %30, %1
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.rb_node, ptr %28, i32 0, i32 1
  br label %41

38:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.4) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %39 = load i16, ptr %14, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %74

41:                                               ; preds = %36, %32
  %42 = phi ptr [ %33, %32 ], [ %37, %36 ]
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %27

45:                                               ; preds = %41
  %46 = ptrtoint ptr %28 to i32
  br label %47

47:                                               ; preds = %45, %23
  %48 = phi ptr [ %42, %45 ], [ %24, %23 ]
  %49 = phi i32 [ %46, %45 ], [ 0, %23 ]
  %50 = add i32 %16, 1
  store i32 %50, ptr %15, align 4
  %51 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 110
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  store i32 %49, ptr %5, align 8
  %54 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 1
  store ptr null, ptr %54, align 4
  %55 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2
  store ptr null, ptr %55, align 8
  store ptr %5, ptr %48, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %5, ptr noundef %24) #8
  %56 = getelementptr inbounds %struct.ubifs_orphan, ptr %5, i32 0, i32 1
  %57 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 104
  %58 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 104, i32 1
  %59 = load ptr, ptr %58, align 4
  store ptr %56, ptr %58, align 4
  store ptr %57, ptr %56, align 4
  %60 = getelementptr inbounds %struct.ubifs_orphan, ptr %5, i32 0, i32 1, i32 1
  store ptr %59, ptr %60, align 8
  store volatile ptr %56, ptr %59, align 4
  %61 = getelementptr inbounds %struct.ubifs_orphan, ptr %5, i32 0, i32 2
  %62 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 105
  %63 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 105, i32 1
  %64 = load ptr, ptr %63, align 4
  store ptr %61, ptr %63, align 4
  store ptr %62, ptr %61, align 4
  %65 = getelementptr inbounds %struct.ubifs_orphan, ptr %5, i32 0, i32 2, i32 1
  store ptr %64, ptr %65, align 8
  store volatile ptr %61, ptr %64, align 4
  %66 = icmp eq ptr %2, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %47
  %68 = getelementptr inbounds %struct.ubifs_orphan, ptr %2, i32 0, i32 3
  %69 = getelementptr inbounds %struct.ubifs_orphan, ptr %2, i32 0, i32 3, i32 1
  %70 = load ptr, ptr %69, align 4
  store ptr %12, ptr %69, align 4
  store ptr %68, ptr %12, align 4
  store ptr %70, ptr %13, align 8
  store volatile ptr %12, ptr %70, align 4
  br label %71

71:                                               ; preds = %67, %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %72 = load i16, ptr %14, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %74

74:                                               ; preds = %71, %38, %20, %3
  %75 = phi ptr [ inttoptr (i32 -23 to ptr), %20 ], [ inttoptr (i32 -22 to ptr), %38 ], [ %5, %71 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_tnc_next_ent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_delete_orphan(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 103
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %18, %2
  %8 = phi ptr [ %20, %18 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.ubifs_orphan, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  br label %18

14:                                               ; preds = %7
  %15 = icmp ult i32 %10, %1
  br i1 %15, label %16, label %25

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi ptr [ %13, %12 ], [ %17, %16 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7

22:                                               ; preds = %18, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %23 = load i16, ptr %3, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %1) #8
  tail call void @dump_stack() #10
  br label %113

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.ubifs_orphan, ptr %8, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 -28
  %29 = icmp eq ptr %28, %8
  br i1 %29, label %75, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 107
  %32 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 112
  %33 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 110
  br label %34

34:                                               ; preds = %72, %30
  %35 = phi ptr [ %28, %30 ], [ %73, %72 ]
  %36 = phi ptr [ %27, %30 ], [ %37, %72 ]
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  store volatile ptr %37, ptr %39, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %36, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %38, align 4
  %41 = getelementptr i8, ptr %36, i32 20
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, 4
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %34
  %46 = and i8 %42, 2
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = or i8 %42, 4
  store i8 %49, ptr %41, align 4
  %50 = load ptr, ptr %31, align 8
  %51 = getelementptr i8, ptr %36, i32 12
  store ptr %50, ptr %51, align 4
  store ptr %35, ptr %31, align 8
  br label %72

52:                                               ; preds = %45
  tail call void @rb_erase(ptr noundef %35, ptr noundef %4) #8
  %53 = getelementptr i8, ptr %36, i32 -16
  %54 = getelementptr i8, ptr %36, i32 -12
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %53, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %55, ptr %57, align 4
  store volatile ptr %56, ptr %55, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %53, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %54, align 4
  %58 = load i32, ptr %32, align 4
  %59 = add i32 %58, -1
  store i32 %59, ptr %32, align 4
  %60 = load i8, ptr %41, align 4
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %52
  %64 = getelementptr i8, ptr %36, i32 -8
  %65 = getelementptr i8, ptr %36, i32 -4
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %64, align 4
  %68 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  store ptr %66, ptr %68, align 4
  store volatile ptr %67, ptr %66, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %64, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %65, align 4
  %69 = load i32, ptr %33, align 4
  %70 = add i32 %69, -1
  store i32 %70, ptr %33, align 4
  br label %71

71:                                               ; preds = %63, %52
  tail call void @kfree(ptr noundef %35) #8
  br label %72

72:                                               ; preds = %71, %48, %34
  %73 = getelementptr i8, ptr %37, i32 -28
  %74 = icmp eq ptr %73, %8
  br i1 %74, label %75, label %34

75:                                               ; preds = %72, %25
  %76 = getelementptr inbounds %struct.ubifs_orphan, ptr %8, i32 0, i32 7
  %77 = load i8, ptr %76, align 4
  %78 = and i8 %77, 4
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %75
  %81 = and i8 %77, 2
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %80
  %84 = or i8 %77, 4
  store i8 %84, ptr %76, align 4
  %85 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 107
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.ubifs_orphan, ptr %8, i32 0, i32 5
  store ptr %86, ptr %87, align 4
  store ptr %8, ptr %85, align 8
  br label %110

88:                                               ; preds = %80
  tail call void @rb_erase(ptr noundef %8, ptr noundef %4) #8
  %89 = getelementptr inbounds %struct.ubifs_orphan, ptr %8, i32 0, i32 1
  %90 = getelementptr inbounds %struct.ubifs_orphan, ptr %8, i32 0, i32 1, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = load ptr, ptr %89, align 4
  %93 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  store ptr %91, ptr %93, align 4
  store volatile ptr %92, ptr %91, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %89, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %90, align 4
  %94 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 112
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, -1
  store i32 %96, ptr %94, align 4
  %97 = load i8, ptr %76, align 4
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %88
  %101 = getelementptr inbounds %struct.ubifs_orphan, ptr %8, i32 0, i32 2
  %102 = getelementptr inbounds %struct.ubifs_orphan, ptr %8, i32 0, i32 2, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = load ptr, ptr %101, align 4
  %105 = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  store ptr %103, ptr %105, align 4
  store volatile ptr %104, ptr %103, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %101, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %102, align 4
  %106 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 110
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, -1
  store i32 %108, ptr %106, align 4
  br label %109

109:                                              ; preds = %100, %88
  tail call void @kfree(ptr noundef %8) #8
  br label %110

110:                                              ; preds = %109, %83, %75
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %111 = load i16, ptr %3, align 4
  %112 = add i16 %111, 1
  store i16 %112, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %113

113:                                              ; preds = %110, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_orphan_start_commit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 106
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 105
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %30, label %7

7:                                                ; preds = %23, %1
  %8 = phi ptr [ %28, %23 ], [ %5, %1 ]
  %9 = phi ptr [ %27, %23 ], [ %3, %1 ]
  %10 = getelementptr i8, ptr %8, i32 -20
  %11 = getelementptr i8, ptr %8, i32 28
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17, !prof !12

15:                                               ; preds = %7
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 245) #8
  %16 = load i8, ptr %11, align 4
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi i8 [ %12, %7 ], [ %16, %15 ]
  %19 = and i8 %18, 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21, !prof !13

21:                                               ; preds = %17
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 246) #8
  %22 = load i8, ptr %11, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i8 [ %22, %21 ], [ %18, %17 ]
  %25 = and i8 %24, -4
  %26 = or i8 %25, 2
  store i8 %26, ptr %11, align 4
  store ptr %10, ptr %9, align 4
  %27 = getelementptr i8, ptr %8, i32 16
  %28 = load ptr, ptr %8, align 4
  %29 = icmp eq ptr %28, %4
  br i1 %29, label %30, label %7

30:                                               ; preds = %23, %1
  %31 = phi ptr [ %3, %1 ], [ %27, %23 ]
  store ptr null, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 110
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 111
  store i32 %33, ptr %34, align 8
  store i32 0, ptr %32, align 4
  store volatile ptr %4, ptr %4, align 4
  %35 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 105, i32 1
  store ptr %4, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 112
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 116
  store i32 %39, ptr %40, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %41 = load i16, ptr %2, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_orphan_end_commit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.check_info, align 8
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 111
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %217, label %6

6:                                                ; preds = %1
  %7 = icmp slt i32 %4, 1
  br i1 %7, label %8, label %10, !prof !12

8:                                                ; preds = %6
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 488) #8
  %9 = load i32, ptr %3, align 8
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %9, %8 ], [ %4, %6 ]
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 59
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 114
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 60
  %17 = load i32, ptr %16, align 4
  %18 = xor i32 %15, -1
  %19 = add i32 %13, %18
  %20 = add i32 %19, %17
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %22 = load i32, ptr %21, align 8
  %23 = add i32 %22, -32
  %24 = lshr i32 %23, 3
  %25 = mul i32 %24, %20
  %26 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 115
  %27 = load i32, ptr %26, align 8
  %28 = sub i32 %22, %27
  %29 = icmp ugt i32 %28, 39
  %30 = add i32 %28, -32
  %31 = lshr i32 %30, 3
  %32 = select i1 %29, i32 %31, i32 0
  %33 = add i32 %32, %25
  %34 = icmp slt i32 %33, %11
  br i1 %34, label %35, label %83

35:                                               ; preds = %10
  %36 = mul i32 %24, %13
  %37 = sdiv i32 %36, 2
  %38 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %38) #8
  %39 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 112
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 110
  %42 = load i32, ptr %41, align 4
  %43 = sub i32 %40, %42
  %44 = icmp sgt i32 %43, %37
  br i1 %44, label %78, label %45

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 106
  %47 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 104
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %68, label %50

50:                                               ; preds = %63, %45
  %51 = phi ptr [ %66, %63 ], [ %48, %45 ]
  %52 = phi ptr [ %65, %63 ], [ %46, %45 ]
  %53 = phi i32 [ %64, %63 ], [ 0, %45 ]
  %54 = getelementptr i8, ptr %51, i32 36
  %55 = load i8, ptr %54, align 4
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = getelementptr i8, ptr %51, i32 -12
  %60 = or i8 %55, 2
  store i8 %60, ptr %54, align 4
  store ptr %59, ptr %52, align 4
  %61 = getelementptr i8, ptr %51, i32 24
  %62 = add i32 %53, 1
  br label %63

63:                                               ; preds = %58, %50
  %64 = phi i32 [ %53, %50 ], [ %62, %58 ]
  %65 = phi ptr [ %52, %50 ], [ %61, %58 ]
  %66 = load ptr, ptr %51, align 4
  %67 = icmp eq ptr %66, %47
  br i1 %67, label %68, label %50

68:                                               ; preds = %63, %45
  %69 = phi i32 [ 0, %45 ], [ %64, %63 ]
  %70 = phi ptr [ %46, %45 ], [ %65, %63 ]
  store ptr null, ptr %70, align 4
  %71 = load i32, ptr %39, align 4
  %72 = load i32, ptr %41, align 4
  %73 = sub i32 %71, %72
  %74 = icmp eq i32 %69, %73
  br i1 %74, label %76, label %75, !prof !13

75:                                               ; preds = %68
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 461) #8
  br label %76

76:                                               ; preds = %75, %68
  store i32 %69, ptr %3, align 8
  %77 = load i32, ptr %16, align 4
  store i32 %77, ptr %14, align 4
  store i32 0, ptr %26, align 8
  br label %79

78:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.7) #8
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ 0, %76 ], [ -22, %78 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %81 = load i16, ptr %38, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br i1 %44, label %380, label %83

83:                                               ; preds = %79, %10
  %84 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 61
  %85 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 109
  %86 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 108
  %87 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 106
  %88 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 4
  %89 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  br label %90

90:                                               ; preds = %194, %83
  %91 = load i32, ptr %3, align 8
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %206

93:                                               ; preds = %90
  %94 = load i32, ptr %21, align 8
  %95 = load i32, ptr %26, align 8
  %96 = sub i32 %94, %95
  %97 = icmp ult i32 %96, 40
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i32, ptr %14, align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr %14, align 4
  store i32 0, ptr %26, align 8
  %101 = load i32, ptr %84, align 8
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.7) #8
  br label %380

104:                                              ; preds = %98, %93
  %105 = phi i32 [ %94, %98 ], [ %96, %93 ]
  %106 = add i32 %105, -32
  %107 = lshr i32 %106, 3
  %108 = tail call i32 @llvm.smin.i32(i32 %107, i32 %91) #8
  %109 = shl nuw i32 %108, 3
  %110 = add i32 %109, 32
  %111 = load ptr, ptr %85, align 8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %115, !prof !12

113:                                              ; preds = %104
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 368) #8
  %114 = load ptr, ptr %85, align 8
  br label %115

115:                                              ; preds = %113, %104
  %116 = phi ptr [ %114, %113 ], [ %111, %104 ]
  %117 = getelementptr inbounds %struct.ubifs_ch, ptr %116, i32 0, i32 4
  store i8 11, ptr %117, align 1
  tail call void @_raw_spin_lock(ptr noundef %86) #8
  %118 = load ptr, ptr %87, align 4
  %119 = icmp eq i32 %108, 0
  br i1 %119, label %139, label %120

120:                                              ; preds = %128, %115
  %121 = phi i32 [ %137, %128 ], [ 0, %115 ]
  %122 = phi ptr [ %136, %128 ], [ %118, %115 ]
  %123 = getelementptr inbounds %struct.ubifs_orphan, ptr %122, i32 0, i32 7
  %124 = load i8, ptr %123, align 4
  %125 = and i8 %124, 2
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %128, !prof !12

127:                                              ; preds = %120
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 375) #8
  br label %128

128:                                              ; preds = %127, %120
  %129 = getelementptr inbounds %struct.ubifs_orphan, ptr %122, i32 0, i32 6
  %130 = load i32, ptr %129, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr %struct.ubifs_orph_node, ptr %116, i32 0, i32 2, i32 %121
  store i64 %131, ptr %132, align 1
  %133 = load i8, ptr %123, align 4
  %134 = and i8 %133, -3
  store i8 %134, ptr %123, align 4
  %135 = getelementptr inbounds %struct.ubifs_orphan, ptr %122, i32 0, i32 4
  %136 = load ptr, ptr %135, align 4
  store ptr null, ptr %135, align 4
  %137 = add nuw nsw i32 %121, 1
  %138 = icmp eq i32 %137, %108
  br i1 %138, label %139, label %120

139:                                              ; preds = %128, %115
  %140 = phi ptr [ %118, %115 ], [ %136, %128 ]
  store ptr %140, ptr %87, align 4
  %141 = load i32, ptr %3, align 8
  %142 = sub i32 %141, %108
  store i32 %142, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %143 = load i16, ptr %86, align 4
  %144 = add i16 %143, 1
  store i16 %144, ptr %86, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  %145 = load i32, ptr %3, align 8
  %146 = icmp eq i32 %145, 0
  %147 = load i64, ptr %88, align 8
  %148 = or i64 %147, -9223372036854775808
  %149 = select i1 %146, i64 %148, i64 %147
  %150 = getelementptr inbounds %struct.ubifs_orph_node, ptr %116, i32 0, i32 1
  store i64 %149, ptr %150, align 1
  %151 = load i32, ptr %26, align 8
  %152 = add i32 %151, %110
  %153 = load i32, ptr %21, align 8
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %155, label %156, !prof !12

155:                                              ; preds = %139
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 389) #8
  br label %156

156:                                              ; preds = %155, %139
  %157 = load i32, ptr %14, align 4
  %158 = load i32, ptr %16, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %162, !prof !12

160:                                              ; preds = %156
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 390) #8
  %161 = load i32, ptr %14, align 4
  br label %162

162:                                              ; preds = %160, %156
  %163 = phi i32 [ %157, %156 ], [ %161, %160 ]
  %164 = load i32, ptr %84, align 8
  %165 = icmp sgt i32 %163, %164
  br i1 %165, label %166, label %167, !prof !12

166:                                              ; preds = %162
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, i32 noundef 391) #8
  br label %167

167:                                              ; preds = %166, %162
  %168 = load i32, ptr %26, align 8
  %169 = icmp eq i32 %168, 0
  br i1 %34, label %170, label %182

170:                                              ; preds = %167
  br i1 %169, label %172, label %171, !prof !13

171:                                              ; preds = %170
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 317) #8
  br label %172

172:                                              ; preds = %171, %170
  %173 = load ptr, ptr %85, align 8
  tail call void @ubifs_prepare_node(ptr noundef %0, ptr noundef %173, i32 noundef %110, i32 noundef 1) #8
  %174 = load i32, ptr %89, align 8
  %175 = add i32 %109, 31
  %176 = add i32 %175, %174
  %177 = sub i32 0, %174
  %178 = and i32 %176, %177
  %179 = load i32, ptr %14, align 4
  %180 = load ptr, ptr %85, align 8
  %181 = tail call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef %179, ptr noundef %180, i32 noundef %178) #8
  br label %194

182:                                              ; preds = %167
  br i1 %169, label %183, label %189

183:                                              ; preds = %182
  %184 = load i32, ptr %14, align 4
  %185 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %184) #8
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %183
  %188 = load i32, ptr %26, align 8
  br label %189

189:                                              ; preds = %187, %182
  %190 = phi i32 [ %188, %187 ], [ %168, %182 ]
  %191 = load ptr, ptr %85, align 8
  %192 = load i32, ptr %14, align 4
  %193 = tail call i32 @ubifs_write_node(ptr noundef %0, ptr noundef %191, i32 noundef %110, i32 noundef %192, i32 noundef %190) #8
  br label %194

194:                                              ; preds = %189, %183, %172
  %195 = phi i32 [ %185, %183 ], [ %181, %172 ], [ %193, %189 ]
  %196 = load i32, ptr %89, align 8
  %197 = add i32 %109, 31
  %198 = add i32 %197, %196
  %199 = sub i32 0, %196
  %200 = and i32 %198, %199
  %201 = load i32, ptr %26, align 8
  %202 = add i32 %201, 7
  %203 = add i32 %202, %200
  %204 = and i32 %203, -8
  store i32 %204, ptr %26, align 8
  %205 = icmp eq i32 %195, 0
  br i1 %205, label %90, label %380

206:                                              ; preds = %90
  br i1 %34, label %207, label %217

207:                                              ; preds = %206
  %208 = load i32, ptr %14, align 4
  br label %209

209:                                              ; preds = %214, %207
  %210 = phi i32 [ %208, %207 ], [ %211, %214 ]
  %211 = add i32 %210, 1
  %212 = load i32, ptr %84, align 8
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %217, label %214

214:                                              ; preds = %209
  %215 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %211) #8
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %209, label %380

217:                                              ; preds = %209, %206, %1
  %218 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %218) #8
  %219 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 107
  %220 = load ptr, ptr %219, align 8
  %221 = icmp eq ptr %220, null
  br i1 %221, label %249, label %222

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 103
  %224 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 112
  br label %225

225:                                              ; preds = %240, %222
  %226 = phi ptr [ %220, %222 ], [ %228, %240 ]
  %227 = getelementptr inbounds %struct.ubifs_orphan, ptr %226, i32 0, i32 5
  %228 = load ptr, ptr %227, align 4
  %229 = getelementptr inbounds %struct.ubifs_orphan, ptr %226, i32 0, i32 7
  %230 = load i8, ptr %229, align 4
  %231 = and i8 %230, 1
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %235, label %233, !prof !13

233:                                              ; preds = %225
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 519) #8
  %234 = load i8, ptr %229, align 4
  br label %235

235:                                              ; preds = %233, %225
  %236 = phi i8 [ %230, %225 ], [ %234, %233 ]
  %237 = and i8 %236, 4
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %240, !prof !12

239:                                              ; preds = %235
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 520) #8
  br label %240

240:                                              ; preds = %239, %235
  tail call void @rb_erase(ptr noundef nonnull %226, ptr noundef %223) #8
  %241 = getelementptr inbounds %struct.ubifs_orphan, ptr %226, i32 0, i32 1
  %242 = getelementptr inbounds %struct.ubifs_orphan, ptr %226, i32 0, i32 1, i32 1
  %243 = load ptr, ptr %242, align 4
  %244 = load ptr, ptr %241, align 4
  %245 = getelementptr inbounds %struct.list_head, ptr %244, i32 0, i32 1
  store ptr %243, ptr %245, align 4
  store volatile ptr %244, ptr %243, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %241, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %242, align 4
  %246 = load i32, ptr %224, align 4
  %247 = add i32 %246, -1
  store i32 %247, ptr %224, align 4
  tail call void @kfree(ptr noundef nonnull %226) #8
  %248 = icmp eq ptr %228, null
  br i1 %248, label %249, label %225

249:                                              ; preds = %240, %217
  store ptr null, ptr %219, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %250 = load i16, ptr %218, align 4
  %251 = add i16 %250, 1
  store i16 %251, ptr %218, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #8
  %252 = getelementptr inbounds i8, ptr %2, i32 8
  store i64 0, ptr %252, align 8, !annotation !14
  %253 = load i8, ptr @ubifs_dbg, align 4
  %254 = and i8 %253, 4
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %249
  %257 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %258 = load ptr, ptr %257, align 4
  %259 = getelementptr inbounds %struct.ubifs_debug_info, ptr %258, i32 0, i32 19
  %260 = load i8, ptr %259, align 4
  %261 = and i8 %260, 4
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %378, label %263

263:                                              ; preds = %256, %249
  store i32 0, ptr %2, align 8
  %264 = getelementptr inbounds %struct.check_info, ptr %2, i32 0, i32 1
  store i32 0, ptr %264, align 4
  %265 = getelementptr inbounds %struct.check_info, ptr %2, i32 0, i32 3
  store i64 0, ptr %265, align 8
  %266 = getelementptr inbounds %struct.check_info, ptr %2, i32 0, i32 5
  store ptr null, ptr %266, align 4
  %267 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %268 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %267, i32 noundef 3136, i32 noundef 4256) #9
  %269 = getelementptr inbounds %struct.check_info, ptr %2, i32 0, i32 4
  store ptr %268, ptr %269, align 8
  %270 = icmp eq ptr %268, null
  br i1 %270, label %271, label %272

271:                                              ; preds = %263
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.18) #8
  br label %378

272:                                              ; preds = %263
  %273 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 116
  %274 = load i32, ptr %273, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %360

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %278 = load i32, ptr %277, align 8
  %279 = tail call noalias ptr @__vmalloc(i32 noundef %278, i32 noundef 3136) #11
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %282

281:                                              ; preds = %276
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.21) #8
  br label %360

282:                                              ; preds = %276
  %283 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 60
  %284 = load i32, ptr %283, align 4
  %285 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 61
  %286 = load i32, ptr %285, align 8
  %287 = icmp sgt i32 %284, %286
  br i1 %287, label %357, label %288

288:                                              ; preds = %353, %282
  %289 = phi i32 [ %354, %353 ], [ %284, %282 ]
  %290 = call ptr @ubifs_scan(ptr noundef %0, i32 noundef %289, i32 noundef 0, ptr noundef nonnull %279, i32 noundef 0) #8
  %291 = icmp ugt ptr %290, inttoptr (i32 -4096 to ptr)
  br i1 %291, label %358, label %292

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %290, i32 0, i32 2
  %294 = load ptr, ptr %293, align 4
  %295 = icmp eq ptr %294, %293
  br i1 %295, label %353, label %296

296:                                              ; preds = %349, %292
  %297 = phi ptr [ %350, %349 ], [ %294, %292 ]
  %298 = call i32 @__cond_resched() #8
  %299 = getelementptr inbounds %struct.ubifs_scan_node, ptr %297, i32 0, i32 3
  %300 = load i32, ptr %299, align 8
  %301 = icmp eq i32 %300, 11
  br i1 %301, label %302, label %349

302:                                              ; preds = %296
  %303 = getelementptr inbounds %struct.ubifs_scan_node, ptr %297, i32 0, i32 6
  %304 = load ptr, ptr %303, align 4
  %305 = getelementptr inbounds %struct.ubifs_ch, ptr %304, i32 0, i32 3
  %306 = load i32, ptr %305, align 1
  %307 = add i32 %306, -32
  %308 = icmp ult i32 %307, 8
  br i1 %308, label %349, label %309

309:                                              ; preds = %302
  %310 = lshr i32 %307, 3
  br label %311

311:                                              ; preds = %346, %309
  %312 = phi i32 [ %347, %346 ], [ 0, %309 ]
  %313 = getelementptr %struct.ubifs_orph_node, ptr %304, i32 0, i32 2, i32 %312
  %314 = load i64, ptr %313, align 1
  %315 = trunc i64 %314 to i32
  %316 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %317 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %316, i32 noundef 3392, i32 noundef 16) #9
  %318 = icmp eq ptr %317, null
  br i1 %318, label %352, label %319

319:                                              ; preds = %311
  %320 = getelementptr inbounds %struct.check_orphan, ptr %317, i32 0, i32 1
  store i32 %315, ptr %320, align 4
  %321 = load ptr, ptr %266, align 4
  %322 = icmp eq ptr %321, null
  br i1 %322, label %341, label %323

323:                                              ; preds = %335, %319
  %324 = phi ptr [ %337, %335 ], [ %321, %319 ]
  %325 = getelementptr inbounds %struct.check_orphan, ptr %324, i32 0, i32 1
  %326 = load i32, ptr %325, align 4
  %327 = icmp ugt i32 %326, %315
  br i1 %327, label %328, label %330

328:                                              ; preds = %323
  %329 = getelementptr inbounds %struct.rb_node, ptr %324, i32 0, i32 2
  br label %335

330:                                              ; preds = %323
  %331 = icmp ult i32 %326, %315
  br i1 %331, label %332, label %334

332:                                              ; preds = %330
  %333 = getelementptr inbounds %struct.rb_node, ptr %324, i32 0, i32 1
  br label %335

334:                                              ; preds = %330
  call void @kfree(ptr noundef nonnull %317) #8
  br label %346

335:                                              ; preds = %332, %328
  %336 = phi ptr [ %329, %328 ], [ %333, %332 ]
  %337 = load ptr, ptr %336, align 4
  %338 = icmp eq ptr %337, null
  br i1 %338, label %339, label %323

339:                                              ; preds = %335
  %340 = ptrtoint ptr %324 to i32
  br label %341

341:                                              ; preds = %339, %319
  %342 = phi ptr [ %336, %339 ], [ %266, %319 ]
  %343 = phi i32 [ %340, %339 ], [ 0, %319 ]
  store i32 %343, ptr %317, align 8
  %344 = getelementptr inbounds %struct.rb_node, ptr %317, i32 0, i32 1
  store ptr null, ptr %344, align 4
  %345 = getelementptr inbounds %struct.rb_node, ptr %317, i32 0, i32 2
  store ptr null, ptr %345, align 8
  store ptr %317, ptr %342, align 4
  call void @rb_insert_color(ptr noundef nonnull %317, ptr noundef %266) #8
  br label %346

346:                                              ; preds = %341, %334
  %347 = add nuw nsw i32 %312, 1
  %348 = icmp eq i32 %347, %310
  br i1 %348, label %349, label %311

349:                                              ; preds = %346, %302, %296
  %350 = load ptr, ptr %297, align 4
  %351 = icmp eq ptr %350, %293
  br i1 %351, label %353, label %296

352:                                              ; preds = %311
  call void @ubifs_scan_destroy(ptr noundef %290) #8
  call void @vfree(ptr noundef nonnull %279) #8
  br label %368

353:                                              ; preds = %349, %292
  call void @ubifs_scan_destroy(ptr noundef %290) #8
  %354 = add i32 %289, 1
  %355 = load i32, ptr %285, align 8
  %356 = icmp sgt i32 %354, %355
  br i1 %356, label %357, label %288

357:                                              ; preds = %353, %282
  call void @vfree(ptr noundef nonnull %279) #8
  br label %360

358:                                              ; preds = %288
  %359 = ptrtoint ptr %290 to i32
  call void @vfree(ptr noundef nonnull %279) #8
  br label %368

360:                                              ; preds = %357, %281, %272
  %361 = call i32 @dbg_walk_index(ptr noundef %0, ptr noundef nonnull @dbg_orphan_check, ptr noundef null, ptr noundef nonnull %2) #8
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %364, label %363

363:                                              ; preds = %360
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %361) #8
  br label %368

364:                                              ; preds = %360
  %365 = load i32, ptr %252, align 8
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %368, label %367

367:                                              ; preds = %364
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %365) #8
  br label %368

368:                                              ; preds = %367, %364, %363, %358, %352
  %369 = phi i32 [ %359, %358 ], [ %361, %363 ], [ -22, %367 ], [ 0, %364 ], [ -12, %352 ]
  %370 = call ptr @rb_first_postorder(ptr noundef %266) #8
  %371 = icmp eq ptr %370, null
  br i1 %371, label %376, label %372

372:                                              ; preds = %372, %368
  %373 = phi ptr [ %374, %372 ], [ %370, %368 ]
  %374 = call ptr @rb_next_postorder(ptr noundef nonnull %373) #8
  call void @kfree(ptr noundef nonnull %373) #8
  %375 = icmp eq ptr %374, null
  br i1 %375, label %376, label %372

376:                                              ; preds = %372, %368
  %377 = load ptr, ptr %269, align 8
  call void @kfree(ptr noundef %377) #8
  br label %378

378:                                              ; preds = %376, %271, %256
  %379 = phi i32 [ %369, %376 ], [ -12, %271 ], [ 0, %256 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  br label %380

380:                                              ; preds = %378, %214, %194, %103, %79
  %381 = phi i32 [ %379, %378 ], [ -22, %103 ], [ %80, %79 ], [ %215, %214 ], [ %195, %194 ]
  ret i32 %381
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_clear_orphans(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 60
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 61
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %3, %5
  br i1 %6, label %17, label %11

7:                                                ; preds = %11
  %8 = add i32 %12, 1
  %9 = load i32, ptr %4, align 8
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %7, %1
  %12 = phi i32 [ %8, %7 ], [ %3, %1 ]
  %13 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %12) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %7, label %21

15:                                               ; preds = %7
  %16 = load i32, ptr %2, align 4
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi i32 [ %16, %15 ], [ %3, %1 ]
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 114
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 115
  store i32 0, ptr %20, align 8
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_mount_orphans(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %union.ubifs_key, align 8
  %5 = alloca %union.ubifs_key, align 8
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 59
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, -32
  %11 = lshr i32 %10, 3
  %12 = mul i32 %11, %7
  %13 = sdiv i32 %12, 2
  %14 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 113
  store i32 %13, ptr %14, align 8
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = tail call noalias ptr @vmalloc(i32 noundef %9) #11
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 109
  store ptr %17, ptr %18, align 8
  %19 = icmp eq ptr %17, null
  br i1 %19, label %224, label %20

20:                                               ; preds = %16
  %21 = icmp eq i32 %1, 0
  br i1 %21, label %204, label %24

22:                                               ; preds = %3
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %224, label %24

24:                                               ; preds = %22, %20
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 60
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 114
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 115
  store i32 0, ptr %28, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 116
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %224

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 61
  %34 = load i32, ptr %33, align 8
  %35 = icmp sgt i32 %26, %34
  br i1 %35, label %224, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 122
  %38 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 4
  %39 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %40 = getelementptr inbounds [2 x i32], ptr %5, i32 0, i32 1
  %41 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 103
  %42 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 112
  %43 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 104
  %44 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 104, i32 1
  %45 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 107
  br label %46

46:                                               ; preds = %200, %36
  %47 = phi i32 [ %26, %36 ], [ %201, %200 ]
  %48 = phi i32 [ 0, %36 ], [ %189, %200 ]
  %49 = phi i64 [ 0, %36 ], [ %188, %200 ]
  %50 = load ptr, ptr %37, align 8
  %51 = call ptr @ubifs_scan(ptr noundef %0, i32 noundef %47, i32 noundef 0, ptr noundef %50, i32 noundef 1) #8
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = icmp eq ptr %51, inttoptr (i32 -117 to ptr)
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = load ptr, ptr %37, align 8
  %57 = call ptr @ubifs_recover_leb(ptr noundef %0, i32 noundef %47, i32 noundef 0, ptr noundef %56, i32 noundef -1) #8
  br label %58

58:                                               ; preds = %55, %53
  %59 = phi ptr [ %57, %55 ], [ %51, %53 ]
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = ptrtoint ptr %59 to i32
  br label %224

63:                                               ; preds = %58, %46
  %64 = phi ptr [ %59, %58 ], [ %51, %46 ]
  %65 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %66 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3136, i32 noundef 4256) #9
  %67 = icmp eq ptr %66, null
  br i1 %67, label %196, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %64, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %69
  br i1 %71, label %187, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.ubifs_ino_node, ptr %66, i32 0, i32 10
  br label %74

74:                                               ; preds = %178, %72
  %75 = phi i64 [ %49, %72 ], [ %96, %178 ]
  %76 = phi i32 [ %48, %72 ], [ %181, %178 ]
  %77 = phi ptr [ %70, %72 ], [ %182, %178 ]
  %78 = phi i1 [ false, %72 ], [ true, %178 ]
  %79 = getelementptr inbounds %struct.ubifs_scan_node, ptr %77, i32 0, i32 3
  %80 = load i32, ptr %79, align 8
  %81 = icmp eq i32 %80, 11
  br i1 %81, label %91, label %82

82:                                               ; preds = %74
  %83 = load i32, ptr %64, align 4
  %84 = getelementptr inbounds %struct.ubifs_scan_node, ptr %77, i32 0, i32 4
  %85 = load i32, ptr %84, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %80, i32 noundef %83, i32 noundef %85) #8
  %86 = getelementptr inbounds %struct.ubifs_scan_node, ptr %77, i32 0, i32 6
  %87 = load ptr, ptr %86, align 4
  %88 = load i32, ptr %8, align 8
  %89 = load i32, ptr %84, align 4
  %90 = sub i32 %88, %89
  call void @ubifs_dump_node(ptr noundef %0, ptr noundef %87, i32 noundef %90) #8
  br label %194

91:                                               ; preds = %74
  %92 = getelementptr inbounds %struct.ubifs_scan_node, ptr %77, i32 0, i32 6
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.ubifs_orph_node, ptr %93, i32 0, i32 1
  %95 = load i64, ptr %94, align 1
  %96 = and i64 %95, 9223372036854775807
  %97 = load i64, ptr %38, align 8
  %98 = icmp ugt i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store i64 %96, ptr %38, align 8
  br label %100

100:                                              ; preds = %99, %91
  %101 = icmp uge i64 %96, %75
  %102 = icmp eq i32 %76, 0
  %103 = select i1 %101, i1 true, i1 %102
  br i1 %103, label %114, label %104

104:                                              ; preds = %100
  br i1 %78, label %105, label %194

105:                                              ; preds = %104
  %106 = getelementptr inbounds %struct.ubifs_scan_node, ptr %77, i32 0, i32 6
  %107 = load i32, ptr %64, align 4
  %108 = getelementptr inbounds %struct.ubifs_scan_node, ptr %77, i32 0, i32 4
  %109 = load i32, ptr %108, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.17, i64 noundef %96, i32 noundef %107, i32 noundef %109) #8
  %110 = load ptr, ptr %106, align 4
  %111 = load i32, ptr %8, align 8
  %112 = load i32, ptr %108, align 4
  %113 = sub i32 %111, %112
  call void @ubifs_dump_node(ptr noundef %0, ptr noundef %110, i32 noundef %113) #8
  br label %194

114:                                              ; preds = %100
  %115 = getelementptr inbounds %struct.ubifs_ch, ptr %93, i32 0, i32 3
  %116 = load i32, ptr %115, align 1
  %117 = add i32 %116, -32
  %118 = icmp ult i32 %117, 8
  br i1 %118, label %178, label %119

119:                                              ; preds = %114
  %120 = lshr i32 %117, 3
  br label %121

121:                                              ; preds = %175, %119
  %122 = phi i32 [ %176, %175 ], [ 0, %119 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 0, ptr %5, align 8, !annotation !14
  %123 = getelementptr %struct.ubifs_orph_node, ptr %93, i32 0, i32 2, i32 %122
  %124 = load i64, ptr %123, align 1
  %125 = trunc i64 %124 to i32
  store i32 %125, ptr %4, align 8
  store i32 0, ptr %39, align 4
  %126 = call i32 @ubifs_tnc_locate(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %66, ptr noundef null, ptr noundef null) #8
  switch i32 %126, label %193 [
    i32 0, label %127
    i32 -2, label %133
  ]

127:                                              ; preds = %121
  %128 = load i32, ptr %73, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  store i32 %125, ptr %4, align 8
  store i32 0, ptr %39, align 4
  store i32 %125, ptr %5, align 8
  store i32 -1, ptr %40, align 4
  %131 = call i32 @ubifs_tnc_remove_range(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %184

133:                                              ; preds = %130, %127, %121
  %134 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %135 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %134, i32 noundef 3520, i32 noundef 52) #9
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %194

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.ubifs_orphan, ptr %135, i32 0, i32 6
  store i32 %125, ptr %139, align 4
  %140 = load ptr, ptr %41, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %160, label %142

142:                                              ; preds = %154, %138
  %143 = phi ptr [ %156, %154 ], [ %140, %138 ]
  %144 = getelementptr inbounds %struct.ubifs_orphan, ptr %143, i32 0, i32 6
  %145 = load i32, ptr %144, align 4
  %146 = icmp ugt i32 %145, %125
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.rb_node, ptr %143, i32 0, i32 2
  br label %154

149:                                              ; preds = %142
  %150 = icmp ult i32 %145, %125
  br i1 %150, label %151, label %153

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.rb_node, ptr %143, i32 0, i32 1
  br label %154

153:                                              ; preds = %149
  call void @kfree(ptr noundef nonnull %135) #8
  br label %175

154:                                              ; preds = %151, %147
  %155 = phi ptr [ %148, %147 ], [ %152, %151 ]
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %142

158:                                              ; preds = %154
  %159 = ptrtoint ptr %143 to i32
  br label %160

160:                                              ; preds = %158, %138
  %161 = phi ptr [ %155, %158 ], [ %41, %138 ]
  %162 = phi i32 [ %159, %158 ], [ 0, %138 ]
  %163 = load i32, ptr %42, align 4
  %164 = add i32 %163, 1
  store i32 %164, ptr %42, align 4
  store i32 %162, ptr %135, align 8
  %165 = getelementptr inbounds %struct.rb_node, ptr %135, i32 0, i32 1
  store ptr null, ptr %165, align 4
  %166 = getelementptr inbounds %struct.rb_node, ptr %135, i32 0, i32 2
  store ptr null, ptr %166, align 8
  store ptr %135, ptr %161, align 4
  call void @rb_insert_color(ptr noundef nonnull %135, ptr noundef %41) #8
  %167 = getelementptr inbounds %struct.ubifs_orphan, ptr %135, i32 0, i32 1
  %168 = load ptr, ptr %44, align 4
  store ptr %167, ptr %44, align 4
  store ptr %43, ptr %167, align 4
  %169 = getelementptr inbounds %struct.ubifs_orphan, ptr %135, i32 0, i32 1, i32 1
  store ptr %168, ptr %169, align 8
  store volatile ptr %167, ptr %168, align 4
  %170 = getelementptr inbounds %struct.ubifs_orphan, ptr %135, i32 0, i32 7
  %171 = load i8, ptr %170, align 8
  %172 = or i8 %171, 4
  store i8 %172, ptr %170, align 8
  %173 = load ptr, ptr %45, align 8
  %174 = getelementptr inbounds %struct.ubifs_orphan, ptr %135, i32 0, i32 5
  store ptr %173, ptr %174, align 8
  store ptr %135, ptr %45, align 8
  br label %175

175:                                              ; preds = %160, %153
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  %176 = add nuw nsw i32 %122, 1
  %177 = icmp eq i32 %176, %120
  br i1 %177, label %178, label %121

178:                                              ; preds = %175, %114
  %179 = load i64, ptr %94, align 1
  %180 = lshr i64 %179, 63
  %181 = trunc i64 %180 to i32
  %182 = load ptr, ptr %77, align 4
  %183 = icmp eq ptr %182, %69
  br i1 %183, label %185, label %74

184:                                              ; preds = %130
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @ubifs_ro_mode(ptr noundef %0, i32 noundef %131) #8
  br label %194

185:                                              ; preds = %178
  %186 = trunc i64 %180 to i32
  br label %187

187:                                              ; preds = %185, %68
  %188 = phi i64 [ %49, %68 ], [ %96, %185 ]
  %189 = phi i32 [ %48, %68 ], [ %186, %185 ]
  call void @kfree(ptr noundef nonnull %66) #8
  %190 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %64, i32 0, i32 3
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %200, label %198

193:                                              ; preds = %121
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %194

194:                                              ; preds = %193, %184, %137, %105, %104, %82
  %195 = phi i32 [ -12, %137 ], [ %126, %193 ], [ 0, %104 ], [ -22, %82 ], [ -22, %105 ], [ %131, %184 ]
  call void @kfree(ptr noundef nonnull %66) #8
  br label %196

196:                                              ; preds = %194, %63
  %197 = phi i32 [ %195, %194 ], [ -12, %63 ]
  call void @ubifs_scan_destroy(ptr noundef %64) #8
  br label %224

198:                                              ; preds = %187
  store i32 %47, ptr %27, align 4
  %199 = load i32, ptr %190, align 4
  store i32 %199, ptr %28, align 8
  br label %200

200:                                              ; preds = %198, %187
  call void @ubifs_scan_destroy(ptr noundef %64) #8
  %201 = add i32 %47, 1
  %202 = load i32, ptr %33, align 8
  %203 = icmp sgt i32 %201, %202
  br i1 %203, label %224, label %46

204:                                              ; preds = %20
  %205 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 60
  %206 = load i32, ptr %205, align 4
  %207 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 61
  %208 = load i32, ptr %207, align 8
  %209 = icmp sgt i32 %206, %208
  br i1 %209, label %220, label %214

210:                                              ; preds = %214
  %211 = add i32 %215, 1
  %212 = load i32, ptr %207, align 8
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %218, label %214

214:                                              ; preds = %210, %204
  %215 = phi i32 [ %211, %210 ], [ %206, %204 ]
  %216 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %215) #8
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %210, label %224

218:                                              ; preds = %210
  %219 = load i32, ptr %205, align 4
  br label %220

220:                                              ; preds = %218, %204
  %221 = phi i32 [ %219, %218 ], [ %206, %204 ]
  %222 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 114
  store i32 %221, ptr %222, align 4
  %223 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 115
  store i32 0, ptr %223, align 8
  br label %224

224:                                              ; preds = %220, %214, %200, %196, %61, %32, %24, %22, %16
  %225 = phi i32 [ -12, %16 ], [ 0, %24 ], [ %197, %196 ], [ %62, %61 ], [ 0, %32 ], [ 0, %220 ], [ 0, %22 ], [ %216, %214 ], [ 0, %200 ]
  ret i32 %225
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_prepare_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_write_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_recover_leb(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scan_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ro_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_locate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_walk_index(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dbg_orphan_check(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = load i32, ptr %1, align 8
  %5 = load i32, ptr %2, align 8
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %75, label %7

7:                                                ; preds = %3
  %8 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, 536870912
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = lshr i32 %9, 29
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %4, i32 noundef %12) #8
  br label %13

13:                                               ; preds = %11, %7
  store i32 %4, ptr %2, align 8
  %14 = getelementptr inbounds %struct.check_info, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.check_info, ptr %2, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @ubifs_tnc_read_node(ptr noundef %0, ptr noundef %1, ptr noundef %18) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %19) #8
  br label %79

22:                                               ; preds = %13
  %23 = load ptr, ptr %17, align 8
  %24 = getelementptr inbounds %struct.ubifs_ino_node, ptr %23, i32 0, i32 10
  %25 = load i32, ptr %24, align 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.check_info, ptr %2, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %46, label %31

31:                                               ; preds = %42, %27
  %32 = phi ptr [ %44, %42 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.check_orphan, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp ugt i32 %34, %4
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rb_node, ptr %32, i32 0, i32 2
  br label %42

38:                                               ; preds = %31
  %39 = icmp ult i32 %34, %4
  br i1 %39, label %40, label %75

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.rb_node, ptr %32, i32 0, i32 1
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi ptr [ %37, %36 ], [ %41, %40 ]
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %31

46:                                               ; preds = %42, %27
  %47 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %47) #8
  %48 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 103
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %66, label %51

51:                                               ; preds = %62, %46
  %52 = phi ptr [ %64, %62 ], [ %49, %46 ]
  %53 = getelementptr inbounds %struct.ubifs_orphan, ptr %52, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %54, %4
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.rb_node, ptr %52, i32 0, i32 2
  br label %62

58:                                               ; preds = %51
  %59 = icmp ult i32 %54, %4
  br i1 %59, label %60, label %66

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.rb_node, ptr %52, i32 0, i32 1
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi ptr [ %57, %56 ], [ %61, %60 ]
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %51

66:                                               ; preds = %62, %58, %46
  %67 = phi ptr [ null, %46 ], [ null, %62 ], [ %52, %58 ]
  %68 = icmp eq ptr %67, null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %69 = load i16, ptr %47, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %47, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br i1 %68, label %71, label %75

71:                                               ; preds = %66
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %4) #8
  %72 = getelementptr inbounds %struct.check_info, ptr %2, i32 0, i32 2
  %73 = load i32, ptr %72, align 8
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 8
  br label %75

75:                                               ; preds = %71, %66, %38, %22, %3
  %76 = getelementptr inbounds %struct.check_info, ptr %2, i32 0, i32 3
  %77 = load i64, ptr %76, align 8
  %78 = add i64 %77, 1
  store i64 %78, ptr %76, align 8
  br label %79

79:                                               ; preds = %75, %21
  %80 = phi i32 [ %19, %21 ], [ 0, %75 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_read_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

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
!8 = !{i64 2149099618}
!9 = !{i64 2149095442}
!10 = !{i64 2149095517, i64 2149095544, i64 2149095591, i64 2149095613, i64 2149095641, i64 2149095661}
!11 = !{i64 2149122621}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"auto-init"}
