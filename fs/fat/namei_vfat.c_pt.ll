; ModuleID = '/llk/IR/fs/fat/namei_vfat.c_pt.bc'
source_filename = "../fs/fat/namei_vfat.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.atomic_t = type { i32 }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i32, i32, i16, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fat_slot_info = type { i64, i64, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, ptr, ptr }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.60 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.62 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.63 }
%union.anon.63 = type { i64 }
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.anon = type { i32, i32 }
%struct.msdos_dir_entry = type { [11 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32 }
%struct.shortname_info = type { i8 }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msdos_dir_slot = type { i8, [10 x i8], i8, i8, i8, [12 x i8], i16, [4 x i8] }

@__UNIQUE_ID_alias236 = internal constant [19 x i8] c"vfat.alias=fs-vfat\00", section ".modinfo", align 1
@vfat_fs_type = internal global %struct.file_system_type { ptr @.str, i32 33, ptr null, ptr null, ptr @vfat_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@__UNIQUE_ID_file237 = internal constant [22 x i8] c"vfat.file=fs/fat/vfat\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [17 x i8] c"vfat.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [41 x i8] c"vfat.description=VFAT filesystem support\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [27 x i8] c"vfat.author=Gordon Chaffee\00", section ".modinfo", align 1
@__initcall__kmod_vfat__241_1084_init_vfat_fs6 = internal global ptr @init_vfat_fs, section ".initcall6.init", align 4
@__exitcall_exit_vfat_fs = internal global ptr @exit_vfat_fs, section ".exitcall.exit", align 4
@.str = private unnamed_addr constant [5 x i8] c"vfat\00", align 1
@vfat_dir_inode_operations = internal constant %struct.inode_operations { ptr @vfat_lookup, ptr null, ptr null, ptr null, ptr null, ptr @vfat_create, ptr null, ptr @vfat_unlink, ptr null, ptr @vfat_mkdir, ptr @vfat_rmdir, ptr null, ptr @vfat_rename, ptr @fat_setattr, ptr @fat_getattr, ptr null, ptr null, ptr @fat_update_time, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@vfat_ci_dentry_ops = internal constant %struct.dentry_operations { ptr @vfat_revalidate_ci, ptr null, ptr @vfat_hashi, ptr @vfat_cmpi, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [12 x i8] undef }, align 64
@vfat_dentry_ops = internal constant %struct.dentry_operations { ptr @vfat_revalidate, ptr null, ptr @vfat_hash, ptr @vfat_cmp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [12 x i8] undef }, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.1 = private unnamed_addr constant [5 x i8] c"%04X\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: Filesystem corrupted (i_pos %lld)\00", align 1
@__func__.vfat_rename = private unnamed_addr constant [12 x i8] c"vfat_rename\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_exit_vfat_fs, ptr @__initcall__kmod_vfat__241_1084_init_vfat_fs6, ptr @exit_vfat_fs], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exit_vfat_fs() #0 section ".exit.text" {
  %1 = tail call i32 @unregister_filesystem(ptr noundef nonnull @vfat_fs_type) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_vfat_fs() #0 section ".init.text" {
  %1 = tail call i32 @register_filesystem(ptr noundef nonnull @vfat_fs_type) #18
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vfat_mount(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = tail call ptr @mount_bdev(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @vfat_fill_super) #18
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfat_fill_super(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call i32 @fat_fill_super(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, ptr noundef nonnull @setup) #18
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_fill_super(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @setup(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 22
  store ptr @vfat_dir_inode_operations, ptr %4, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 19, i32 8
  %7 = load i8, ptr %6, align 2
  %8 = icmp eq i8 %7, 115
  %9 = select i1 %8, ptr @vfat_dentry_ops, ptr @vfat_ci_dentry_ops
  %10 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 39
  store ptr %9, ptr %10, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vfat_lookup(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.fat_slot_info, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msdos_sb_info, ptr %8, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %9) #18
  %10 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %11 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %14 = load ptr, ptr %13, align 8
  br label %15

15:                                               ; preds = %18, %3
  %16 = phi i32 [ %12, %3 ], [ %19, %18 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %56, label %18

18:                                               ; preds = %15
  %19 = add i32 %16, -1
  %20 = getelementptr i8, ptr %14, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 46
  br i1 %22, label %15, label %23

23:                                               ; preds = %18
  %24 = call i32 @fat_search_long(ptr noundef %0, ptr noundef %14, i32 noundef %16, ptr noundef nonnull %4) #18
  switch i32 %24, label %89 [
    i32 0, label %25
    i32 -2, label %56
  ]

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.fat_slot_info, ptr %4, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = load i64, ptr %4, align 8
  %29 = call ptr @fat_build_inode(ptr noundef %6, ptr noundef %27, i64 noundef %28) #18
  %30 = getelementptr inbounds %struct.fat_slot_info, ptr %4, i32 0, i32 4
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  call void @__brelse(ptr noundef nonnull %31) #18
  br label %34

34:                                               ; preds = %33, %25
  %35 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = ptrtoint ptr %29 to i32
  br label %89

38:                                               ; preds = %34
  %39 = call ptr @d_find_alias(ptr noundef %29) #18
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.dentry, ptr %39, i32 0, i32 3
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %43, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i16, ptr %29, align 8
  %49 = and i16 %48, -4096
  %50 = icmp eq i16 %49, 16384
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  call void @d_move(ptr noundef nonnull %39, ptr noundef %1) #18
  br label %52

52:                                               ; preds = %51, %47
  call void @iput(ptr noundef %29) #18
  %53 = load ptr, ptr %7, align 4
  %54 = getelementptr inbounds %struct.msdos_sb_info, ptr %53, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %54) #18
  br label %94

55:                                               ; preds = %41, %38
  call void @dput(ptr noundef %39) #18
  br label %56

56:                                               ; preds = %55, %23, %15
  %57 = phi ptr [ %29, %55 ], [ null, %23 ], [ null, %15 ]
  %58 = load ptr, ptr %7, align 4
  %59 = getelementptr inbounds %struct.msdos_sb_info, ptr %58, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %59) #18
  %60 = icmp eq ptr %57, null
  br i1 %60, label %61, label %87

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 33
  %63 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %62, ptr elementtype(i64) %62) #18, !srcloc !9
  br label %64

64:                                               ; preds = %77, %61
  %65 = phi i64 [ %63, %61 ], [ %78, %77 ]
  %66 = and i64 %65, 1
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %69 = lshr i64 %65, 1
  %70 = trunc i64 %69 to i32
  br label %83

71:                                               ; preds = %64
  %72 = or i64 %65, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #18, !srcloc !12
  br label %73

73:                                               ; preds = %73, %71
  %74 = call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %62, ptr %62, i64 %65, i64 %72, ptr elementtype(i64) %62) #18, !srcloc !13
  %75 = extractvalue { i32, i64 } %74, 0
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %73

77:                                               ; preds = %73
  %78 = extractvalue { i32, i64 } %74, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  %79 = icmp eq i64 %78, %65
  br i1 %79, label %80, label %64, !prof !15

80:                                               ; preds = %77
  %81 = lshr i64 %65, 1
  %82 = trunc i64 %81 to i32
  br label %83

83:                                               ; preds = %80, %68
  %84 = phi i32 [ %82, %80 ], [ %70, %68 ]
  %85 = inttoptr i32 %84 to ptr
  %86 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  store ptr %85, ptr %86, align 4
  br label %87

87:                                               ; preds = %83, %56
  %88 = call ptr @d_splice_alias(ptr noundef %57, ptr noundef %1) #18
  br label %94

89:                                               ; preds = %36, %23
  %90 = phi i32 [ %37, %36 ], [ %24, %23 ]
  %91 = load ptr, ptr %7, align 4
  %92 = getelementptr inbounds %struct.msdos_sb_info, ptr %91, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %92) #18
  %93 = inttoptr i32 %90 to ptr
  br label %94

94:                                               ; preds = %89, %87, %52
  %95 = phi ptr [ %88, %87 ], [ %93, %89 ], [ %39, %52 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  ret ptr %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfat_create(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i1 noundef zeroext %4) #2 {
  %6 = alloca %struct.fat_slot_info, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false), !annotation !8
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msdos_sb_info, ptr %11, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %12) #18
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %7, ptr noundef %1) #18
  %13 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %14 = call fastcc i32 @vfat_add_entry(ptr noundef %1, ptr noundef %13, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %6)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %59

16:                                               ; preds = %5
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !16
  %17 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 33
  %18 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %17, ptr elementtype(i64) %17) #18, !srcloc !9
  br label %19

19:                                               ; preds = %27, %16
  %20 = phi i64 [ %18, %16 ], [ %28, %27 ]
  %21 = add i64 %20, 2
  %22 = and i64 %21, -2
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #18, !srcloc !12
  br label %23

23:                                               ; preds = %23, %19
  %24 = call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %17, ptr %17, i64 %20, i64 %22, ptr elementtype(i64) %17) #18, !srcloc !13
  %25 = extractvalue { i32, i64 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %23

27:                                               ; preds = %23
  %28 = extractvalue { i32, i64 } %24, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %30, label %19, !prof !15

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.fat_slot_info, ptr %6, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = load i64, ptr %6, align 8
  %34 = call ptr @fat_build_inode(ptr noundef %9, ptr noundef %32, i64 noundef %33) #18
  %35 = getelementptr inbounds %struct.fat_slot_info, ptr %6, i32 0, i32 4
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  call void @__brelse(ptr noundef nonnull %36) #18
  br label %39

39:                                               ; preds = %38, %30
  %40 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = ptrtoint ptr %34 to i32
  br label %59

43:                                               ; preds = %39
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !16
  %44 = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 33
  %45 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %44, ptr elementtype(i64) %44) #18, !srcloc !9
  br label %46

46:                                               ; preds = %54, %43
  %47 = phi i64 [ %45, %43 ], [ %55, %54 ]
  %48 = add i64 %47, 2
  %49 = and i64 %48, -2
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #18, !srcloc !12
  br label %50

50:                                               ; preds = %50, %46
  %51 = call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %44, ptr %44, i64 %47, i64 %49, ptr elementtype(i64) %44) #18, !srcloc !13
  %52 = extractvalue { i32, i64 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %50

54:                                               ; preds = %50
  %55 = extractvalue { i32, i64 } %51, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  %56 = icmp eq i64 %55, %47
  br i1 %56, label %57, label %46, !prof !15

57:                                               ; preds = %54
  %58 = call i32 @fat_truncate_time(ptr noundef %34, ptr noundef nonnull %7, i32 noundef 7) #18
  call void @d_instantiate(ptr noundef %2, ptr noundef %34) #18
  br label %59

59:                                               ; preds = %57, %41, %5
  %60 = phi i32 [ %14, %5 ], [ %42, %41 ], [ 0, %57 ]
  %61 = load ptr, ptr %10, align 4
  %62 = getelementptr inbounds %struct.msdos_sb_info, ptr %61, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %62) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfat_unlink(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca %struct.fat_slot_info, align 8
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %10) #18
  %11 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %12 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %15 = load ptr, ptr %14, align 8
  br label %16

16:                                               ; preds = %19, %2
  %17 = phi i32 [ %13, %2 ], [ %20, %19 ]
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %57, label %19

19:                                               ; preds = %16
  %20 = add i32 %17, -1
  %21 = getelementptr i8, ptr %15, i32 %20
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 46
  br i1 %23, label %16, label %24

24:                                               ; preds = %19
  %25 = call i32 @fat_search_long(ptr noundef %0, ptr noundef %15, i32 noundef %17, ptr noundef nonnull %3) #18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %24
  %28 = call i32 @fat_remove_entries(ptr noundef %0, ptr noundef nonnull %3) #18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %27
  call void @clear_nlink(ptr noundef %5) #18
  %31 = call i32 @fat_truncate_time(ptr noundef %5, ptr noundef null, i32 noundef 3) #18
  call void @fat_detach(ptr noundef %5) #18
  %32 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 33
  %33 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %32, ptr elementtype(i64) %32) #18, !srcloc !9
  br label %34

34:                                               ; preds = %47, %30
  %35 = phi i64 [ %33, %30 ], [ %48, %47 ]
  %36 = and i64 %35, 1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %39 = lshr i64 %35, 1
  %40 = trunc i64 %39 to i32
  br label %53

41:                                               ; preds = %34
  %42 = or i64 %35, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #18, !srcloc !12
  br label %43

43:                                               ; preds = %43, %41
  %44 = call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %32, ptr %32, i64 %35, i64 %42, ptr elementtype(i64) %32) #18, !srcloc !13
  %45 = extractvalue { i32, i64 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %43

47:                                               ; preds = %43
  %48 = extractvalue { i32, i64 } %44, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  %49 = icmp eq i64 %48, %35
  br i1 %49, label %50, label %34, !prof !15

50:                                               ; preds = %47
  %51 = lshr i64 %35, 1
  %52 = trunc i64 %51 to i32
  br label %53

53:                                               ; preds = %50, %38
  %54 = phi i32 [ %52, %50 ], [ %40, %38 ]
  %55 = inttoptr i32 %54 to ptr
  %56 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  store ptr %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %53, %27, %24, %16
  %58 = phi i32 [ %25, %24 ], [ %28, %27 ], [ 0, %53 ], [ -2, %16 ]
  %59 = load ptr, ptr %8, align 4
  %60 = getelementptr inbounds %struct.msdos_sb_info, ptr %59, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %60) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfat_mkdir(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.fat_slot_info, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msdos_sb_info, ptr %10, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %11) #18
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %6, ptr noundef %1) #18
  %12 = call i32 @fat_alloc_new_dir(ptr noundef %1, ptr noundef nonnull %6) #18
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %63, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %16 = call fastcc i32 @vfat_add_entry(ptr noundef %1, ptr noundef %15, i32 noundef 1, i32 noundef %12, ptr noundef nonnull %6, ptr noundef nonnull %5)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %14
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !16
  %19 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 33
  %20 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %19, ptr elementtype(i64) %19) #18, !srcloc !9
  br label %21

21:                                               ; preds = %29, %18
  %22 = phi i64 [ %20, %18 ], [ %30, %29 ]
  %23 = add i64 %22, 2
  %24 = and i64 %23, -2
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #18, !srcloc !12
  br label %25

25:                                               ; preds = %25, %21
  %26 = call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %19, ptr %19, i64 %22, i64 %24, ptr elementtype(i64) %19) #18, !srcloc !13
  %27 = extractvalue { i32, i64 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %25

29:                                               ; preds = %25
  %30 = extractvalue { i32, i64 } %26, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %21, !prof !15

32:                                               ; preds = %29
  call void @inc_nlink(ptr noundef %1) #18
  %33 = getelementptr inbounds %struct.fat_slot_info, ptr %5, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = load i64, ptr %5, align 8
  %36 = call ptr @fat_build_inode(ptr noundef %8, ptr noundef %34, i64 noundef %35) #18
  %37 = getelementptr inbounds %struct.fat_slot_info, ptr %5, i32 0, i32 4
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  call void @__brelse(ptr noundef nonnull %38) #18
  br label %41

41:                                               ; preds = %40, %32
  %42 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = ptrtoint ptr %36 to i32
  br label %63

45:                                               ; preds = %41
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !16
  %46 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 33
  %47 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %46, ptr elementtype(i64) %46) #18, !srcloc !9
  br label %48

48:                                               ; preds = %56, %45
  %49 = phi i64 [ %47, %45 ], [ %57, %56 ]
  %50 = add i64 %49, 2
  %51 = and i64 %50, -2
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #18, !srcloc !12
  br label %52

52:                                               ; preds = %52, %48
  %53 = call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %46, ptr %46, i64 %49, i64 %51, ptr elementtype(i64) %46) #18, !srcloc !13
  %54 = extractvalue { i32, i64 } %53, 0
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %52

56:                                               ; preds = %52
  %57 = extractvalue { i32, i64 } %53, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  %58 = icmp eq i64 %57, %49
  br i1 %58, label %59, label %48, !prof !15

59:                                               ; preds = %56
  call void @set_nlink(ptr noundef %36, i32 noundef 2) #18
  %60 = call i32 @fat_truncate_time(ptr noundef %36, ptr noundef nonnull %6, i32 noundef 7) #18
  call void @d_instantiate(ptr noundef %2, ptr noundef %36) #18
  br label %63

61:                                               ; preds = %14
  %62 = call i32 @fat_free_clusters(ptr noundef %1, i32 noundef %12) #18
  br label %63

63:                                               ; preds = %61, %59, %43, %4
  %64 = phi i32 [ 0, %59 ], [ %16, %61 ], [ %44, %43 ], [ %12, %4 ]
  %65 = load ptr, ptr %9, align 4
  %66 = getelementptr inbounds %struct.msdos_sb_info, ptr %65, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %66) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfat_rmdir(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca %struct.fat_slot_info, align 8
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %10) #18
  %11 = tail call i32 @fat_dir_empty(ptr noundef %5) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %15 = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %18 = load ptr, ptr %17, align 8
  br label %19

19:                                               ; preds = %22, %13
  %20 = phi i32 [ %16, %13 ], [ %23, %22 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %60, label %22

22:                                               ; preds = %19
  %23 = add i32 %20, -1
  %24 = getelementptr i8, ptr %18, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 46
  br i1 %26, label %19, label %27

27:                                               ; preds = %22
  %28 = call i32 @fat_search_long(ptr noundef %0, ptr noundef %18, i32 noundef %20, ptr noundef nonnull %3) #18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %27
  %31 = call i32 @fat_remove_entries(ptr noundef %0, ptr noundef nonnull %3) #18
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %30
  call void @drop_nlink(ptr noundef %0) #18
  call void @clear_nlink(ptr noundef %5) #18
  %34 = call i32 @fat_truncate_time(ptr noundef %5, ptr noundef null, i32 noundef 3) #18
  call void @fat_detach(ptr noundef %5) #18
  %35 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 33
  %36 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %35, ptr elementtype(i64) %35) #18, !srcloc !9
  br label %37

37:                                               ; preds = %50, %33
  %38 = phi i64 [ %36, %33 ], [ %51, %50 ]
  %39 = and i64 %38, 1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %42 = lshr i64 %38, 1
  %43 = trunc i64 %42 to i32
  br label %56

44:                                               ; preds = %37
  %45 = or i64 %38, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #18, !srcloc !12
  br label %46

46:                                               ; preds = %46, %44
  %47 = call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %35, ptr %35, i64 %38, i64 %45, ptr elementtype(i64) %35) #18, !srcloc !13
  %48 = extractvalue { i32, i64 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %46

50:                                               ; preds = %46
  %51 = extractvalue { i32, i64 } %47, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  %52 = icmp eq i64 %51, %38
  br i1 %52, label %53, label %37, !prof !15

53:                                               ; preds = %50
  %54 = lshr i64 %38, 1
  %55 = trunc i64 %54 to i32
  br label %56

56:                                               ; preds = %53, %41
  %57 = phi i32 [ %55, %53 ], [ %43, %41 ]
  %58 = inttoptr i32 %57 to ptr
  %59 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  store ptr %58, ptr %59, align 4
  br label %60

60:                                               ; preds = %56, %30, %27, %19, %2
  %61 = phi i32 [ %11, %2 ], [ %28, %27 ], [ %31, %30 ], [ 0, %56 ], [ -2, %19 ]
  %62 = load ptr, ptr %8, align 4
  %63 = getelementptr inbounds %struct.msdos_sb_info, ptr %62, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %63) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfat_rename(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) #2 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.fat_slot_info, align 8
  %10 = alloca %struct.fat_slot_info, align 8
  %11 = alloca %struct.timespec64, align 8
  %12 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  store ptr null, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i32 16, i1 false), !annotation !8
  %13 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %14 = icmp ult i32 %5, 2
  br i1 %14, label %15, label %200

15:                                               ; preds = %6
  %16 = load ptr, ptr %13, align 4
  store ptr null, ptr %7, align 4
  %17 = getelementptr inbounds %struct.fat_slot_info, ptr %10, i32 0, i32 4
  store ptr null, ptr %17, align 8
  %18 = getelementptr inbounds %struct.fat_slot_info, ptr %9, i32 0, i32 4
  store ptr null, ptr %18, align 8
  %19 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 27
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.msdos_sb_info, ptr %24, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %25) #18
  %26 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %27 = getelementptr inbounds %struct.anon, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4, i32 1
  %30 = load ptr, ptr %29, align 8
  br label %31

31:                                               ; preds = %34, %15
  %32 = phi i32 [ %28, %15 ], [ %35, %34 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %151, label %34

34:                                               ; preds = %31
  %35 = add i32 %32, -1
  %36 = getelementptr i8, ptr %30, i32 %35
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, 46
  br i1 %38, label %31, label %39

39:                                               ; preds = %34
  %40 = call i32 @fat_search_long(ptr noundef %1, ptr noundef %30, i32 noundef %32, ptr noundef nonnull %9) #18
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %151

42:                                               ; preds = %39
  %43 = load i16, ptr %20, align 8
  %44 = and i16 %43, -4096
  %45 = icmp eq i16 %44, 16384
  %46 = zext i1 %45 to i32
  %47 = icmp ne ptr %1, %3
  %48 = and i1 %47, %45
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = call i32 @fat_get_dotdot_entry(ptr noundef %20, ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %151

52:                                               ; preds = %49, %42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #18
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %12, ptr noundef %1) #18
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #18
  %53 = icmp eq ptr %22, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %52
  br i1 %45, label %55, label %58

55:                                               ; preds = %54
  %56 = call i32 @fat_dir_empty(ptr noundef nonnull %22) #18
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %151

58:                                               ; preds = %55, %54
  %59 = getelementptr i8, ptr %22, i32 -48
  %60 = load i64, ptr %59, align 8
  call void @fat_detach(ptr noundef nonnull %22) #18
  br label %67

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 4
  %63 = call fastcc i32 @vfat_add_entry(ptr noundef %3, ptr noundef %62, i32 noundef %46, i32 noundef 0, ptr noundef nonnull %11, ptr noundef nonnull %10)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %151

65:                                               ; preds = %61
  %66 = load i64, ptr %10, align 8
  br label %67

67:                                               ; preds = %65, %58
  %68 = phi i64 [ %60, %58 ], [ %66, %65 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !16
  %69 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 33
  %70 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %69, ptr elementtype(i64) %69) #18, !srcloc !9
  br label %71

71:                                               ; preds = %79, %67
  %72 = phi i64 [ %70, %67 ], [ %80, %79 ]
  %73 = add i64 %72, 2
  %74 = and i64 %73, -2
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %69) #18, !srcloc !12
  br label %75

75:                                               ; preds = %75, %71
  %76 = call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %69, ptr %69, i64 %72, i64 %74, ptr elementtype(i64) %69) #18, !srcloc !13
  %77 = extractvalue { i32, i64 } %76, 0
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %75

79:                                               ; preds = %75
  %80 = extractvalue { i32, i64 } %76, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  %81 = icmp eq i64 %80, %72
  br i1 %81, label %82, label %71, !prof !15

82:                                               ; preds = %79
  call void @fat_detach(ptr noundef %20) #18
  call void @fat_attach(ptr noundef %20, i64 noundef %68) #18
  %83 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.super_block, ptr %84, i32 0, i32 10
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 144
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 65
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %89, %82
  %95 = call i32 @fat_sync_inode(ptr noundef %20) #18
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %182

97:                                               ; preds = %89
  call void @__mark_inode_dirty(ptr noundef %20, i32 noundef 7) #18
  br label %98

98:                                               ; preds = %97, %94
  br i1 %48, label %99, label %128

99:                                               ; preds = %98
  %100 = load ptr, ptr %8, align 4
  %101 = getelementptr i8, ptr %3, i32 -60
  %102 = load i32, ptr %101, align 4
  %103 = trunc i32 %102 to i16
  %104 = getelementptr inbounds %struct.msdos_dir_entry, ptr %100, i32 0, i32 10
  store i16 %103, ptr %104, align 2
  %105 = lshr i32 %102, 16
  %106 = trunc i32 %105 to i16
  %107 = getelementptr inbounds %struct.msdos_dir_entry, ptr %100, i32 0, i32 7
  store i16 %106, ptr %107, align 4
  %108 = load ptr, ptr %7, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %108, ptr noundef %20) #18
  %109 = load ptr, ptr %83, align 4
  %110 = getelementptr inbounds %struct.super_block, ptr %109, i32 0, i32 10
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, 144
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %99
  %115 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %116, 65
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %114, %99
  %120 = load ptr, ptr %7, align 4
  %121 = call i32 @sync_dirty_buffer(ptr noundef %120) #18
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %168

123:                                              ; preds = %119, %114
  call void @drop_nlink(ptr noundef %1) #18
  br i1 %53, label %124, label %125

124:                                              ; preds = %123
  call void @inc_nlink(ptr noundef %3) #18
  br label %125

125:                                              ; preds = %124, %123
  %126 = call i32 @fat_remove_entries(ptr noundef %1, ptr noundef nonnull %9) #18
  store ptr null, ptr %18, align 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %168

128:                                              ; preds = %98
  %129 = call i32 @fat_remove_entries(ptr noundef %1, ptr noundef nonnull %9) #18
  store ptr null, ptr %18, align 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %182

131:                                              ; preds = %128, %125
  call fastcc void @inode_inc_iversion(ptr noundef %1)
  %132 = call i32 @fat_truncate_time(ptr noundef %1, ptr noundef nonnull %11, i32 noundef 6) #18
  %133 = load ptr, ptr %13, align 4
  %134 = getelementptr inbounds %struct.super_block, ptr %133, i32 0, i32 10
  %135 = load i32, ptr %134, align 4
  %136 = and i32 %135, 144
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %140 = load i32, ptr %139, align 4
  %141 = and i32 %140, 65
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %138, %131
  %144 = call i32 @fat_sync_inode(ptr noundef %1) #18
  br label %146

145:                                              ; preds = %138
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #18
  br label %146

146:                                              ; preds = %145, %143
  br i1 %53, label %151, label %147

147:                                              ; preds = %146
  call void @drop_nlink(ptr noundef nonnull %22) #18
  br i1 %45, label %148, label %149

148:                                              ; preds = %147
  call void @drop_nlink(ptr noundef nonnull %22) #18
  br label %149

149:                                              ; preds = %148, %147
  %150 = call i32 @fat_truncate_time(ptr noundef nonnull %22, ptr noundef nonnull %11, i32 noundef 4) #18
  br label %151

151:                                              ; preds = %197, %193, %186, %149, %146, %61, %55, %49, %39, %31
  %152 = phi i32 [ %183, %186 ], [ -5, %49 ], [ %63, %61 ], [ 0, %146 ], [ 0, %149 ], [ %183, %193 ], [ %183, %197 ], [ %56, %55 ], [ %40, %39 ], [ -2, %31 ]
  %153 = load ptr, ptr %17, align 8
  %154 = icmp eq ptr %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %151
  call void @__brelse(ptr noundef nonnull %153) #18
  br label %156

156:                                              ; preds = %190, %155, %151
  %157 = phi i32 [ %152, %151 ], [ %152, %155 ], [ %183, %190 ]
  %158 = load ptr, ptr %7, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %156
  call void @__brelse(ptr noundef nonnull %158) #18
  br label %161

161:                                              ; preds = %160, %156
  %162 = load ptr, ptr %18, align 8
  %163 = icmp eq ptr %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  call void @__brelse(ptr noundef nonnull %162) #18
  br label %165

165:                                              ; preds = %164, %161
  %166 = load ptr, ptr %23, align 4
  %167 = getelementptr inbounds %struct.msdos_sb_info, ptr %166, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %167) #18
  br label %200

168:                                              ; preds = %125, %119
  %169 = phi i32 [ %121, %119 ], [ %126, %125 ]
  %170 = load ptr, ptr %8, align 4
  %171 = getelementptr i8, ptr %1, i32 -60
  %172 = load i32, ptr %171, align 4
  %173 = trunc i32 %172 to i16
  %174 = getelementptr inbounds %struct.msdos_dir_entry, ptr %170, i32 0, i32 10
  store i16 %173, ptr %174, align 2
  %175 = lshr i32 %172, 16
  %176 = trunc i32 %175 to i16
  %177 = getelementptr inbounds %struct.msdos_dir_entry, ptr %170, i32 0, i32 7
  store i16 %176, ptr %177, align 4
  %178 = load ptr, ptr %7, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %178, ptr noundef %20) #18
  %179 = load ptr, ptr %7, align 4
  %180 = call i32 @sync_dirty_buffer(ptr noundef %179) #18
  %181 = or i32 %180, 1
  br label %182

182:                                              ; preds = %168, %128, %94
  %183 = phi i32 [ %95, %94 ], [ %169, %168 ], [ %129, %128 ]
  %184 = phi i32 [ 0, %94 ], [ %181, %168 ], [ 1, %128 ]
  call void @fat_detach(ptr noundef %20) #18
  %185 = load i64, ptr %9, align 8
  call void @fat_attach(ptr noundef %20, i64 noundef %185) #18
  br i1 %53, label %190, label %186

186:                                              ; preds = %182
  call void @fat_attach(ptr noundef nonnull %22, i64 noundef %68) #18
  %187 = icmp eq i32 %184, 0
  br i1 %187, label %151, label %188

188:                                              ; preds = %186
  %189 = call i32 @fat_sync_inode(ptr noundef nonnull %22) #18
  br label %193

190:                                              ; preds = %182
  %191 = call i32 @fat_remove_entries(ptr noundef %3, ptr noundef nonnull %10) #18
  %192 = icmp eq i32 %184, 0
  store ptr null, ptr %17, align 8
  br i1 %192, label %156, label %193

193:                                              ; preds = %190, %188
  %194 = phi i32 [ %189, %188 ], [ %191, %190 ]
  %195 = or i32 %194, %184
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %151

197:                                              ; preds = %193
  %198 = load ptr, ptr %83, align 4
  %199 = load i64, ptr %10, align 8
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %198, i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.vfat_rename, i64 noundef %199) #19
  br label %151

200:                                              ; preds = %165, %6
  %201 = phi i32 [ %157, %165 ], [ -22, %6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  ret i32 %201
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_setattr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_update_time(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fat_build_inode(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_alias(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_move(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_search_long(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vfat_add_entry(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 {
  %7 = alloca %struct.fat_slot_info, align 8
  %8 = alloca %struct.fat_slot_info, align 8
  %9 = alloca %struct.fat_slot_info, align 8
  %10 = alloca %struct.fat_slot_info, align 8
  %11 = alloca [9 x i8], align 1
  %12 = alloca [4 x i8], align 4
  %13 = alloca [5 x i8], align 4
  %14 = alloca [6 x i8], align 1
  %15 = alloca %struct.shortname_info, align 1
  %16 = alloca %struct.shortname_info, align 1
  %17 = alloca [2 x i8], align 2
  %18 = alloca [11 x i8], align 1
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i8, align 1
  %22 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.qstr, ptr %1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  br label %26

26:                                               ; preds = %29, %6
  %27 = phi i32 [ %23, %6 ], [ %30, %29 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %591, label %29

29:                                               ; preds = %26
  %30 = add i32 %27, -1
  %31 = getelementptr i8, ptr %25, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 46
  br i1 %33, label %26, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %36 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3136, i32 noundef 672) #20
  %37 = icmp eq ptr %36, null
  br i1 %37, label %591, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %24, align 8
  %40 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 27
  %43 = load ptr, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %18) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %18, i8 0, i32 11, i1 false) #18, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #18
  store i16 0, ptr %19, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #18
  store i16 0, ptr %20, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #18
  store i8 0, ptr %21, align 1, !annotation !8
  %44 = load ptr, ptr @names_cachep, align 4
  %45 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %44, i32 noundef 3264) #18
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %18) #18
  br label %589

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.msdos_sb_info, ptr %43, i32 0, i32 19, i32 12
  %50 = load i16, ptr %49, align 4
  %51 = getelementptr inbounds %struct.msdos_sb_info, ptr %43, i32 0, i32 21
  %52 = load ptr, ptr %51, align 4
  %53 = and i16 %50, 32
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = icmp sgt i32 %27, 0
  br i1 %56, label %57, label %140

57:                                               ; preds = %55
  %58 = and i16 %50, 64
  %59 = icmp eq i16 %58, 0
  %60 = add nsw i32 %27, -5
  %61 = getelementptr inbounds [2 x i8], ptr %17, i32 0, i32 1
  %62 = getelementptr inbounds %struct.nls_table, ptr %52, i32 0, i32 3
  br label %71

63:                                               ; preds = %48
  %64 = tail call i32 @utf8s_to_utf16s(ptr noundef %39, i32 noundef %27, i32 noundef 0, ptr noundef nonnull %45, i32 noundef 257) #18
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %545, label %66

66:                                               ; preds = %63
  %67 = icmp ugt i32 %64, 255
  br i1 %67, label %545, label %68

68:                                               ; preds = %66
  %69 = shl nuw nsw i32 %64, 1
  %70 = getelementptr i8, ptr %45, i32 %69
  br label %111

71:                                               ; preds = %105, %57
  %72 = phi i32 [ 0, %57 ], [ %109, %105 ]
  %73 = phi i32 [ 0, %57 ], [ %107, %105 ]
  %74 = phi ptr [ %45, %57 ], [ %108, %105 ]
  %75 = phi ptr [ %39, %57 ], [ %106, %105 ]
  %76 = icmp eq i32 %72, 255
  br i1 %76, label %545, label %77

77:                                               ; preds = %71
  br i1 %59, label %97, label %78

78:                                               ; preds = %77
  %79 = load i8, ptr %75, align 1
  %80 = icmp eq i8 %79, 58
  br i1 %80, label %81, label %97

81:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #18
  store i16 0, ptr %17, align 2, !annotation !8
  %82 = icmp sgt i32 %73, %60
  br i1 %82, label %87, label %83

83:                                               ; preds = %81
  %84 = getelementptr i8, ptr %75, i32 1
  %85 = call i32 @hex2bin(ptr noundef nonnull %17, ptr noundef %84, i32 noundef 2) #18
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %81
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #18
  br label %545

88:                                               ; preds = %83
  %89 = load i8, ptr %17, align 2
  %90 = zext i8 %89 to i16
  %91 = shl nuw i16 %90, 8
  %92 = load i8, ptr %61, align 1
  %93 = zext i8 %92 to i16
  %94 = or i16 %91, %93
  store i16 %94, ptr %74, align 2
  %95 = getelementptr i8, ptr %75, i32 5
  %96 = add i32 %73, 5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #18
  br label %105

97:                                               ; preds = %78, %77
  %98 = load ptr, ptr %62, align 4
  %99 = sub i32 %27, %73
  %100 = call i32 %98(ptr noundef %75, i32 noundef %99, ptr noundef %74) #18
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %545, label %102

102:                                              ; preds = %97
  %103 = getelementptr i8, ptr %75, i32 %100
  %104 = add i32 %100, %73
  br label %105

105:                                              ; preds = %102, %88
  %106 = phi ptr [ %95, %88 ], [ %103, %102 ]
  %107 = phi i32 [ %96, %88 ], [ %104, %102 ]
  %108 = getelementptr i8, ptr %74, i32 2
  %109 = add nuw nsw i32 %72, 1
  %110 = icmp slt i32 %107, %27
  br i1 %110, label %71, label %111

111:                                              ; preds = %105, %68
  %112 = phi i32 [ %64, %68 ], [ %109, %105 ]
  %113 = phi ptr [ %70, %68 ], [ %108, %105 ]
  %114 = srem i32 %112, 13
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %111
  %117 = getelementptr i8, ptr %113, i32 1
  store i8 0, ptr %113, align 1
  store i8 0, ptr %117, align 1
  %118 = add i32 %112, 1
  %119 = srem i32 %118, 13
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = sub nsw i32 13, %119
  %123 = getelementptr i8, ptr %113, i32 2
  %124 = shl nuw nsw i32 %122, 1
  call void @llvm.memset.p0.i32(ptr align 1 %123, i8 -1, i32 %124, i1 false) #18
  %125 = add i32 %122, %118
  br label %126

126:                                              ; preds = %121, %116, %111
  %127 = phi i32 [ %112, %111 ], [ %118, %116 ], [ %125, %121 ]
  %128 = icmp sgt i32 %112, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %135, %126
  %130 = phi i32 [ %136, %135 ], [ 0, %126 ]
  %131 = getelementptr i16, ptr %45, i32 %130
  %132 = load i16, ptr %131, align 2
  %133 = icmp ult i16 %132, 32
  br i1 %133, label %545, label %134

134:                                              ; preds = %129
  switch i16 %132, label %135 [
    i16 124, label %545
    i16 63, label %545
    i16 62, label %545
    i16 60, label %545
    i16 58, label %545
    i16 47, label %545
    i16 42, label %545
    i16 34, label %545
    i16 92, label %545
  ]

135:                                              ; preds = %134
  %136 = add nuw nsw i32 %130, 1
  %137 = icmp eq i32 %136, %112
  br i1 %137, label %138, label %129

138:                                              ; preds = %135
  %139 = add i32 %112, -1
  br label %140

140:                                              ; preds = %138, %126, %55
  %141 = phi i32 [ %127, %126 ], [ %127, %138 ], [ 0, %55 ]
  %142 = phi i32 [ %112, %126 ], [ %112, %138 ], [ 0, %55 ]
  %143 = phi i32 [ -1, %126 ], [ %139, %138 ], [ -1, %55 ]
  %144 = getelementptr i16, ptr %45, i32 %143
  %145 = load i16, ptr %144, align 2
  %146 = icmp eq i16 %145, 32
  br i1 %146, label %545, label %147

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.msdos_sb_info, ptr %43, i32 0, i32 20
  %149 = load ptr, ptr %148, align 4
  %150 = load ptr, ptr %40, align 4
  %151 = getelementptr inbounds %struct.super_block, ptr %150, i32 0, i32 27
  %152 = load ptr, ptr %151, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %11) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %11, i8 0, i32 9, i1 false) #18, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #18
  store i32 0, ptr %12, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %13) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(5) %13, i8 0, i32 5, i1 false) #18, !annotation !8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %14) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %14, i8 0, i32 6, i1 false) #18, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #18
  store i8 7, ptr %15, align 1
  store i8 7, ptr %16, align 1
  %153 = getelementptr i16, ptr %45, i32 %142
  br label %154

154:                                              ; preds = %158, %147
  %155 = phi ptr [ %153, %147 ], [ %156, %158 ]
  %156 = getelementptr i16, ptr %155, i32 -1
  %157 = icmp ult ptr %156, %45
  br i1 %157, label %165, label %158

158:                                              ; preds = %154
  %159 = load i16, ptr %156, align 2
  %160 = icmp eq i16 %159, 46
  br i1 %160, label %161, label %154

161:                                              ; preds = %158
  %162 = icmp eq ptr %155, %153
  %163 = select i1 %162, ptr null, ptr %156
  %164 = select i1 %162, i32 %142, i32 0
  br label %165

165:                                              ; preds = %161, %154
  %166 = phi ptr [ %163, %161 ], [ %156, %154 ]
  %167 = phi i32 [ %164, %161 ], [ 0, %154 ]
  %168 = getelementptr i16, ptr %45, i32 -1
  %169 = icmp eq ptr %166, %168
  br i1 %169, label %189, label %170

170:                                              ; preds = %165
  %171 = icmp eq ptr %166, null
  br i1 %171, label %189, label %172

172:                                              ; preds = %170
  %173 = icmp ugt ptr %166, %45
  br i1 %173, label %174, label %180

174:                                              ; preds = %177, %172
  %175 = phi ptr [ %178, %177 ], [ %45, %172 ]
  %176 = load i16, ptr %175, align 2
  switch i16 %176, label %180 [
    i16 46, label %177
    i16 32, label %177
  ]

177:                                              ; preds = %174, %174
  %178 = getelementptr i16, ptr %175, i32 1
  %179 = icmp ult ptr %178, %166
  br i1 %179, label %174, label %180

180:                                              ; preds = %177, %174, %172
  %181 = phi ptr [ %45, %172 ], [ %175, %174 ], [ %178, %177 ]
  %182 = icmp eq ptr %181, %166
  br i1 %182, label %189, label %183

183:                                              ; preds = %180
  %184 = ptrtoint ptr %166 to i32
  %185 = ptrtoint ptr %45 to i32
  %186 = sub i32 %184, %185
  %187 = ashr exact i32 %186, 1
  %188 = getelementptr i16, ptr %166, i32 1
  br label %189

189:                                              ; preds = %183, %180, %170, %165
  %190 = phi ptr [ %188, %183 ], [ null, %170 ], [ null, %165 ], [ null, %180 ]
  %191 = phi i32 [ %187, %183 ], [ %167, %170 ], [ %142, %165 ], [ %142, %180 ]
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %468

193:                                              ; preds = %240, %189
  %194 = phi i32 [ %244, %240 ], [ 2, %189 ]
  %195 = phi i32 [ %243, %240 ], [ 6, %189 ]
  %196 = phi i32 [ %245, %240 ], [ 0, %189 ]
  %197 = phi i32 [ %242, %240 ], [ 0, %189 ]
  %198 = phi ptr [ %241, %240 ], [ %11, %189 ]
  %199 = phi ptr [ %246, %240 ], [ %45, %189 ]
  %200 = call fastcc i32 @to_shortname_char(ptr noundef %149, ptr noundef nonnull %14, ptr noundef %199, ptr noundef nonnull %15) #18
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %240, label %202

202:                                              ; preds = %193
  %203 = icmp slt i32 %197, 2
  %204 = add i32 %200, %197
  %205 = icmp sgt i32 %204, 2
  %206 = select i1 %203, i1 %205, i1 false
  %207 = select i1 %206, i32 %197, i32 %194
  %208 = icmp slt i32 %197, 6
  %209 = icmp sgt i32 %204, 6
  %210 = select i1 %208, i1 %209, i1 false
  %211 = select i1 %210, i32 %197, i32 %195
  %212 = icmp sgt i32 %200, 0
  br i1 %212, label %213, label %225

213:                                              ; preds = %221, %202
  %214 = phi i32 [ %219, %221 ], [ %197, %202 ]
  %215 = phi i32 [ %223, %221 ], [ 0, %202 ]
  %216 = phi ptr [ %222, %221 ], [ %198, %202 ]
  %217 = getelementptr [6 x i8], ptr %14, i32 0, i32 %215
  %218 = load i8, ptr %217, align 1
  store i8 %218, ptr %216, align 1
  %219 = add i32 %214, 1
  %220 = icmp sgt i32 %219, 7
  br i1 %220, label %227, label %221

221:                                              ; preds = %213
  %222 = getelementptr i8, ptr %216, i32 1
  %223 = add nuw nsw i32 %215, 1
  %224 = icmp eq i32 %223, %200
  br i1 %224, label %240, label %213

225:                                              ; preds = %202
  %226 = icmp sgt i32 %197, 7
  br i1 %226, label %227, label %240

227:                                              ; preds = %225, %213
  %228 = phi i32 [ %215, %213 ], [ 0, %225 ]
  %229 = phi i32 [ %219, %213 ], [ %197, %225 ]
  %230 = add i32 %200, -1
  %231 = icmp sge i32 %228, %230
  %232 = getelementptr i16, ptr %199, i32 1
  %233 = ptrtoint ptr %232 to i32
  %234 = ptrtoint ptr %45 to i32
  %235 = sub i32 %233, %234
  %236 = ashr exact i32 %235, 1
  %237 = icmp sge i32 %236, %191
  %238 = select i1 %231, i1 %237, i1 false
  %239 = zext i1 %238 to i32
  br label %250

240:                                              ; preds = %225, %221, %193
  %241 = phi ptr [ %198, %193 ], [ %198, %225 ], [ %222, %221 ]
  %242 = phi i32 [ %197, %193 ], [ %197, %225 ], [ %219, %221 ]
  %243 = phi i32 [ %195, %193 ], [ %211, %225 ], [ %211, %221 ]
  %244 = phi i32 [ %194, %193 ], [ %207, %225 ], [ %207, %221 ]
  %245 = add nuw nsw i32 %196, 1
  %246 = getelementptr i16, ptr %199, i32 1
  %247 = icmp eq i32 %245, %191
  br i1 %247, label %248, label %193

248:                                              ; preds = %240
  %249 = icmp eq i32 %242, 0
  br i1 %249, label %468, label %250

250:                                              ; preds = %248, %227
  %251 = phi i32 [ %239, %227 ], [ 1, %248 ]
  %252 = phi i32 [ %207, %227 ], [ %244, %248 ]
  %253 = phi i32 [ %211, %227 ], [ %243, %248 ]
  %254 = phi i32 [ %229, %227 ], [ %242, %248 ]
  %255 = icmp ne ptr %190, null
  %256 = icmp ult ptr %190, %153
  %257 = and i1 %255, %256
  br i1 %257, label %258, label %290

258:                                              ; preds = %285, %250
  %259 = phi i32 [ %287, %285 ], [ 0, %250 ]
  %260 = phi ptr [ %286, %285 ], [ %12, %250 ]
  %261 = phi ptr [ %288, %285 ], [ %190, %250 ]
  %262 = call fastcc i32 @to_shortname_char(ptr noundef %149, ptr noundef nonnull %14, ptr noundef %261, ptr noundef nonnull %16) #18
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %285, label %264

264:                                              ; preds = %258
  %265 = add i32 %262, %259
  %266 = icmp sgt i32 %265, 3
  br i1 %266, label %290, label %267

267:                                              ; preds = %264
  %268 = icmp sgt i32 %262, 0
  br i1 %268, label %269, label %277

269:                                              ; preds = %269, %267
  %270 = phi i32 [ %275, %269 ], [ 0, %267 ]
  %271 = phi ptr [ %274, %269 ], [ %260, %267 ]
  %272 = getelementptr [6 x i8], ptr %14, i32 0, i32 %270
  %273 = load i8, ptr %272, align 1
  %274 = getelementptr i8, ptr %271, i32 1
  store i8 %273, ptr %271, align 1
  %275 = add nuw nsw i32 %270, 1
  %276 = icmp eq i32 %275, %262
  br i1 %276, label %277, label %269

277:                                              ; preds = %269, %267
  %278 = phi ptr [ %260, %267 ], [ %274, %269 ]
  %279 = phi i32 [ %259, %267 ], [ %265, %269 ]
  %280 = icmp sgt i32 %279, 2
  br i1 %280, label %281, label %285

281:                                              ; preds = %277
  %282 = getelementptr i16, ptr %261, i32 1
  %283 = icmp eq ptr %282, %153
  %284 = select i1 %283, i32 %251, i32 0
  br label %290

285:                                              ; preds = %277, %258
  %286 = phi ptr [ %260, %258 ], [ %278, %277 ]
  %287 = phi i32 [ %259, %258 ], [ %279, %277 ]
  %288 = getelementptr i16, ptr %261, i32 1
  %289 = icmp ult ptr %288, %153
  br i1 %289, label %258, label %290

290:                                              ; preds = %285, %281, %264, %250
  %291 = phi i32 [ 0, %250 ], [ %279, %281 ], [ %287, %285 ], [ %259, %264 ]
  %292 = phi i32 [ %251, %250 ], [ %284, %281 ], [ %251, %285 ], [ 0, %264 ]
  %293 = getelementptr [4 x i8], ptr %12, i32 0, i32 %291
  store i8 0, ptr %293, align 1
  %294 = getelementptr [9 x i8], ptr %11, i32 0, i32 %254
  store i8 0, ptr %294, align 1
  %295 = load i8, ptr %11, align 1
  %296 = icmp eq i8 %295, -27
  %297 = select i1 %296, i8 5, i8 %295
  store i8 %297, ptr %11, align 1
  %298 = icmp ugt i32 %254, 10
  %299 = sub i32 11, %254
  %300 = select i1 %298, i32 0, i32 %299
  %301 = getelementptr i8, ptr %18, i32 %254
  call void @llvm.memset.p0.i32(ptr align 1 %301, i8 32, i32 %300, i1 false) #18
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %18, ptr nonnull align 1 %11, i32 %254, i1 false) #18
  %302 = getelementptr inbounds i8, ptr %18, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %302, ptr nonnull align 4 %12, i32 %291, i1 false) #18
  %303 = icmp eq i32 %292, 0
  br i1 %303, label %343, label %304

304:                                              ; preds = %290
  %305 = load i8, ptr %15, align 1
  %306 = and i8 %305, 4
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %343, label %308

308:                                              ; preds = %304
  %309 = load i8, ptr %16, align 1
  %310 = and i8 %309, 4
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %343, label %312

312:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i32 32, i1 false) #18, !annotation !8
  %313 = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %18, ptr noundef nonnull %10) #18
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %312
  %316 = getelementptr inbounds %struct.fat_slot_info, ptr %10, i32 0, i32 4
  %317 = load ptr, ptr %316, align 8
  %318 = icmp eq ptr %317, null
  br i1 %318, label %320, label %319

319:                                              ; preds = %315
  call void @__brelse(ptr noundef nonnull %317) #18
  br label %320

320:                                              ; preds = %319, %315
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #18
  br label %468

321:                                              ; preds = %312
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #18
  %322 = getelementptr inbounds %struct.msdos_sb_info, ptr %152, i32 0, i32 19, i32 7
  %323 = load i16, ptr %322, align 4
  %324 = zext i16 %323 to i32
  %325 = and i32 %324, 256
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %471

327:                                              ; preds = %321
  %328 = and i32 %324, 512
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %342, label %330

330:                                              ; preds = %327
  %331 = and i8 %305, 3
  %332 = icmp eq i8 %331, 0
  %333 = and i8 %309, 3
  %334 = icmp eq i8 %333, 0
  %335 = select i1 %332, i1 true, i1 %334
  br i1 %335, label %470, label %336

336:                                              ; preds = %330
  %337 = icmp eq i8 %331, 1
  %338 = select i1 %337, i8 8, i8 0
  %339 = icmp eq i8 %333, 1
  %340 = or i8 %338, 16
  %341 = select i1 %339, i8 %340, i8 %338
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %11) #18
  br label %548

342:                                              ; preds = %327
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/namei_vfat.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 464, 0\0A.popsection", ""() #18, !srcloc !17
  unreachable

343:                                              ; preds = %308, %304, %290
  %344 = getelementptr inbounds %struct.msdos_sb_info, ptr %152, i32 0, i32 19, i32 12
  %345 = load i16, ptr %344, align 4
  %346 = and i16 %345, 128
  %347 = icmp eq i16 %346, 0
  br i1 %347, label %348, label %358

348:                                              ; preds = %343
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i32 32, i1 false) #18, !annotation !8
  %349 = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %18, ptr noundef nonnull %9) #18
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %348
  %352 = getelementptr inbounds %struct.fat_slot_info, ptr %9, i32 0, i32 4
  %353 = load ptr, ptr %352, align 8
  %354 = icmp eq ptr %353, null
  br i1 %354, label %356, label %355

355:                                              ; preds = %351
  call void @__brelse(ptr noundef nonnull %353) #18
  br label %356

356:                                              ; preds = %355, %351
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  br label %358

357:                                              ; preds = %348
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  br label %470

358:                                              ; preds = %356, %343
  %359 = icmp sgt i32 %254, 6
  br i1 %359, label %360, label %362

360:                                              ; preds = %358
  %361 = getelementptr inbounds i8, ptr %18, i32 7
  store i8 32, ptr %361, align 1
  br label %362

362:                                              ; preds = %360, %358
  %363 = phi i32 [ %253, %360 ], [ %254, %358 ]
  %364 = getelementptr i8, ptr %18, i32 %363
  store i8 126, ptr %364, align 1
  %365 = add i32 %363, 1
  %366 = getelementptr i8, ptr %18, i32 %365
  %367 = getelementptr inbounds %struct.fat_slot_info, ptr %8, i32 0, i32 4
  store i8 49, ptr %366, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i32 32, i1 false) #18, !annotation !8
  %368 = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %18, ptr noundef nonnull %8) #18
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %374

370:                                              ; preds = %362
  %371 = load ptr, ptr %367, align 8
  %372 = icmp eq ptr %371, null
  br i1 %372, label %375, label %373

373:                                              ; preds = %370
  call void @__brelse(ptr noundef nonnull %371) #18
  br label %375

374:                                              ; preds = %424, %417, %410, %403, %396, %389, %382, %375, %362
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  br label %470

375:                                              ; preds = %373, %370
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  store i8 50, ptr %366, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i32 32, i1 false) #18, !annotation !8
  %376 = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %18, ptr noundef nonnull %8) #18
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %374

378:                                              ; preds = %375
  %379 = load ptr, ptr %367, align 8
  %380 = icmp eq ptr %379, null
  br i1 %380, label %382, label %381

381:                                              ; preds = %378
  call void @__brelse(ptr noundef nonnull %379) #18
  br label %382

382:                                              ; preds = %381, %378
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  store i8 51, ptr %366, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i32 32, i1 false) #18, !annotation !8
  %383 = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %18, ptr noundef nonnull %8) #18
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %374

385:                                              ; preds = %382
  %386 = load ptr, ptr %367, align 8
  %387 = icmp eq ptr %386, null
  br i1 %387, label %389, label %388

388:                                              ; preds = %385
  call void @__brelse(ptr noundef nonnull %386) #18
  br label %389

389:                                              ; preds = %388, %385
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  store i8 52, ptr %366, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i32 32, i1 false) #18, !annotation !8
  %390 = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %18, ptr noundef nonnull %8) #18
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %374

392:                                              ; preds = %389
  %393 = load ptr, ptr %367, align 8
  %394 = icmp eq ptr %393, null
  br i1 %394, label %396, label %395

395:                                              ; preds = %392
  call void @__brelse(ptr noundef nonnull %393) #18
  br label %396

396:                                              ; preds = %395, %392
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  store i8 53, ptr %366, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i32 32, i1 false) #18, !annotation !8
  %397 = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %18, ptr noundef nonnull %8) #18
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %374

399:                                              ; preds = %396
  %400 = load ptr, ptr %367, align 8
  %401 = icmp eq ptr %400, null
  br i1 %401, label %403, label %402

402:                                              ; preds = %399
  call void @__brelse(ptr noundef nonnull %400) #18
  br label %403

403:                                              ; preds = %402, %399
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  store i8 54, ptr %366, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i32 32, i1 false) #18, !annotation !8
  %404 = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %18, ptr noundef nonnull %8) #18
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %374

406:                                              ; preds = %403
  %407 = load ptr, ptr %367, align 8
  %408 = icmp eq ptr %407, null
  br i1 %408, label %410, label %409

409:                                              ; preds = %406
  call void @__brelse(ptr noundef nonnull %407) #18
  br label %410

410:                                              ; preds = %409, %406
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  store i8 55, ptr %366, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i32 32, i1 false) #18, !annotation !8
  %411 = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %18, ptr noundef nonnull %8) #18
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %374

413:                                              ; preds = %410
  %414 = load ptr, ptr %367, align 8
  %415 = icmp eq ptr %414, null
  br i1 %415, label %417, label %416

416:                                              ; preds = %413
  call void @__brelse(ptr noundef nonnull %414) #18
  br label %417

417:                                              ; preds = %416, %413
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  store i8 56, ptr %366, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i32 32, i1 false) #18, !annotation !8
  %418 = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %18, ptr noundef nonnull %8) #18
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %374

420:                                              ; preds = %417
  %421 = load ptr, ptr %367, align 8
  %422 = icmp eq ptr %421, null
  br i1 %422, label %424, label %423

423:                                              ; preds = %420
  call void @__brelse(ptr noundef nonnull %421) #18
  br label %424

424:                                              ; preds = %423, %420
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  store i8 57, ptr %366, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i32 32, i1 false) #18, !annotation !8
  %425 = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %18, ptr noundef nonnull %8) #18
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %374

427:                                              ; preds = %424
  %428 = load ptr, ptr %367, align 8
  %429 = icmp eq ptr %428, null
  br i1 %429, label %431, label %430

430:                                              ; preds = %427
  call void @__brelse(ptr noundef nonnull %428) #18
  br label %431

431:                                              ; preds = %430, %427
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  %432 = load volatile i32, ptr @jiffies, align 64
  %433 = load volatile i32, ptr @jiffies, align 64
  %434 = lshr i32 %433, 16
  %435 = icmp sgt i32 %363, 2
  br i1 %435, label %436, label %438

436:                                              ; preds = %431
  %437 = getelementptr inbounds i8, ptr %18, i32 7
  store i8 32, ptr %437, align 1
  br label %438

438:                                              ; preds = %436, %431
  %439 = phi i32 [ %252, %436 ], [ %363, %431 ]
  %440 = add i32 %439, 4
  %441 = getelementptr i8, ptr %18, i32 %440
  store i8 126, ptr %441, align 1
  %442 = trunc i32 %434 to i8
  %443 = and i8 %442, 7
  %444 = add nuw nsw i8 %443, 49
  %445 = add i32 %439, 5
  %446 = getelementptr i8, ptr %18, i32 %445
  store i8 %444, ptr %446, align 1
  %447 = and i32 %432, 65535
  %448 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %13, i32 noundef 5, ptr noundef nonnull @.str.1, i32 noundef %447) #18
  %449 = getelementptr i8, ptr %18, i32 %439
  %450 = load i32, ptr %13, align 4
  store i32 %450, ptr %449, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i32 32, i1 false) #18, !annotation !8
  %451 = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %18, ptr noundef nonnull %7) #18
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %460

453:                                              ; preds = %438
  %454 = getelementptr inbounds %struct.fat_slot_info, ptr %7, i32 0, i32 4
  br label %455

455:                                              ; preds = %461, %453
  %456 = phi i32 [ %432, %453 ], [ %462, %461 ]
  %457 = load ptr, ptr %454, align 8
  %458 = icmp eq ptr %457, null
  br i1 %458, label %461, label %459

459:                                              ; preds = %455
  call void @__brelse(ptr noundef nonnull %457) #18
  br label %461

460:                                              ; preds = %461, %438
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  br label %470

461:                                              ; preds = %459, %455
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  %462 = add i32 %456, -11
  %463 = and i32 %462, 65535
  %464 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %13, i32 noundef 5, ptr noundef nonnull @.str.1, i32 noundef %463) #18
  %465 = load i32, ptr %13, align 4
  store i32 %465, ptr %449, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i32 32, i1 false) #18, !annotation !8
  %466 = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %18, ptr noundef nonnull %7) #18
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %455, label %460

468:                                              ; preds = %320, %248, %189
  %469 = phi i32 [ -22, %248 ], [ -17, %320 ], [ -22, %189 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %11) #18
  br label %545

470:                                              ; preds = %460, %374, %357, %330
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %11) #18
  br label %477

471:                                              ; preds = %321
  %472 = and i8 %305, 2
  %473 = icmp ne i8 %472, 0
  %474 = and i8 %309, 2
  %475 = icmp ne i8 %474, 0
  %476 = select i1 %473, i1 %475, i1 false
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %11) #18
  br i1 %476, label %548, label %477

477:                                              ; preds = %471, %470
  %478 = load i8, ptr %18, align 1
  %479 = call i8 @llvm.fshl.i8(i8 %478, i8 %478, i8 7) #18
  %480 = getelementptr inbounds i8, ptr %18, i32 1
  %481 = load i8, ptr %480, align 1
  %482 = add i8 %479, %481
  %483 = call i8 @llvm.fshl.i8(i8 %482, i8 %482, i8 7) #18
  %484 = getelementptr inbounds i8, ptr %18, i32 2
  %485 = load i8, ptr %484, align 1
  %486 = add i8 %483, %485
  %487 = call i8 @llvm.fshl.i8(i8 %486, i8 %486, i8 7) #18
  %488 = getelementptr inbounds i8, ptr %18, i32 3
  %489 = load i8, ptr %488, align 1
  %490 = add i8 %487, %489
  %491 = call i8 @llvm.fshl.i8(i8 %490, i8 %490, i8 7) #18
  %492 = getelementptr inbounds i8, ptr %18, i32 4
  %493 = load i8, ptr %492, align 1
  %494 = add i8 %491, %493
  %495 = call i8 @llvm.fshl.i8(i8 %494, i8 %494, i8 7) #18
  %496 = getelementptr inbounds i8, ptr %18, i32 5
  %497 = load i8, ptr %496, align 1
  %498 = add i8 %495, %497
  %499 = call i8 @llvm.fshl.i8(i8 %498, i8 %498, i8 7) #18
  %500 = getelementptr inbounds i8, ptr %18, i32 6
  %501 = load i8, ptr %500, align 1
  %502 = add i8 %499, %501
  %503 = call i8 @llvm.fshl.i8(i8 %502, i8 %502, i8 7) #18
  %504 = getelementptr inbounds i8, ptr %18, i32 7
  %505 = load i8, ptr %504, align 1
  %506 = add i8 %503, %505
  %507 = call i8 @llvm.fshl.i8(i8 %506, i8 %506, i8 7) #18
  %508 = load i8, ptr %302, align 1
  %509 = add i8 %507, %508
  %510 = call i8 @llvm.fshl.i8(i8 %509, i8 %509, i8 7) #18
  %511 = getelementptr inbounds i8, ptr %18, i32 9
  %512 = load i8, ptr %511, align 1
  %513 = add i8 %510, %512
  %514 = call i8 @llvm.fshl.i8(i8 %513, i8 %513, i8 7) #18
  %515 = getelementptr inbounds i8, ptr %18, i32 10
  %516 = load i8, ptr %515, align 1
  %517 = add i8 %514, %516
  %518 = sdiv i32 %141, 13
  %519 = icmp sgt i32 %141, 12
  br i1 %519, label %520, label %540

520:                                              ; preds = %520, %477
  %521 = phi i32 [ %537, %520 ], [ %518, %477 ]
  %522 = phi ptr [ %538, %520 ], [ %36, %477 ]
  %523 = trunc i32 %521 to i8
  store i8 %523, ptr %522, align 2
  %524 = getelementptr inbounds %struct.msdos_dir_slot, ptr %522, i32 0, i32 2
  store i8 15, ptr %524, align 1
  %525 = getelementptr inbounds %struct.msdos_dir_slot, ptr %522, i32 0, i32 3
  store i8 0, ptr %525, align 2
  %526 = getelementptr inbounds %struct.msdos_dir_slot, ptr %522, i32 0, i32 4
  store i8 %517, ptr %526, align 1
  %527 = getelementptr inbounds %struct.msdos_dir_slot, ptr %522, i32 0, i32 6
  store i16 0, ptr %527, align 2
  %528 = mul i32 %521, 13
  %529 = add i32 %528, -13
  %530 = getelementptr inbounds %struct.msdos_dir_slot, ptr %522, i32 0, i32 1
  %531 = getelementptr i16, ptr %45, i32 %529
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %530, ptr noundef align 2 dereferenceable(10) %531, i32 10, i1 false) #18
  %532 = getelementptr inbounds %struct.msdos_dir_slot, ptr %522, i32 0, i32 5
  %533 = getelementptr i16, ptr %531, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %532, ptr noundef align 2 dereferenceable(12) %533, i32 12, i1 false) #18
  %534 = getelementptr inbounds %struct.msdos_dir_slot, ptr %522, i32 0, i32 7
  %535 = getelementptr i16, ptr %531, i32 11
  %536 = load i32, ptr %535, align 2
  store i32 %536, ptr %534, align 1
  %537 = add nsw i32 %521, -1
  %538 = getelementptr %struct.msdos_dir_slot, ptr %522, i32 1
  %539 = icmp sgt i32 %521, 1
  br i1 %539, label %520, label %540

540:                                              ; preds = %520, %477
  %541 = phi ptr [ %36, %477 ], [ %538, %520 ]
  %542 = load i8, ptr %36, align 8
  %543 = or i8 %542, 64
  store i8 %543, ptr %36, align 8
  %544 = add nsw i32 %518, 1
  br label %548

545:                                              ; preds = %468, %140, %134, %134, %134, %134, %134, %134, %134, %134, %134, %129, %97, %87, %71, %66, %63
  %546 = phi i32 [ -22, %140 ], [ %64, %63 ], [ -36, %66 ], [ -22, %87 ], [ %469, %468 ], [ -22, %129 ], [ -22, %134 ], [ -22, %134 ], [ -22, %134 ], [ -22, %134 ], [ -22, %134 ], [ -22, %134 ], [ -22, %134 ], [ -22, %134 ], [ -22, %134 ], [ -36, %71 ], [ -22, %97 ]
  %547 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %547, ptr noundef nonnull %45) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %18) #18
  br label %589

548:                                              ; preds = %540, %471, %336
  %549 = phi i32 [ %544, %540 ], [ 1, %336 ], [ 1, %471 ]
  %550 = phi i8 [ 0, %540 ], [ %341, %336 ], [ 0, %471 ]
  %551 = phi ptr [ %541, %540 ], [ %36, %336 ], [ %36, %471 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(11) %551, ptr noundef nonnull align 1 dereferenceable(11) %18, i32 11, i1 false) #18
  %552 = icmp eq i32 %2, 0
  %553 = select i1 %552, i8 32, i8 16
  %554 = getelementptr inbounds %struct.msdos_dir_entry, ptr %551, i32 0, i32 1
  store i8 %553, ptr %554, align 1
  %555 = getelementptr inbounds %struct.msdos_dir_entry, ptr %551, i32 0, i32 2
  store i8 %550, ptr %555, align 4
  call void @fat_time_unix2fat(ptr noundef %43, ptr noundef %4, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21) #18
  %556 = load i16, ptr %19, align 2
  %557 = getelementptr inbounds %struct.msdos_dir_entry, ptr %551, i32 0, i32 4
  store i16 %556, ptr %557, align 2
  %558 = getelementptr inbounds %struct.msdos_dir_entry, ptr %551, i32 0, i32 8
  store i16 %556, ptr %558, align 2
  %559 = load i16, ptr %20, align 2
  %560 = getelementptr inbounds %struct.msdos_dir_entry, ptr %551, i32 0, i32 6
  store i16 %559, ptr %560, align 2
  %561 = getelementptr inbounds %struct.msdos_dir_entry, ptr %551, i32 0, i32 5
  store i16 %559, ptr %561, align 4
  %562 = getelementptr inbounds %struct.msdos_dir_entry, ptr %551, i32 0, i32 9
  store i16 %559, ptr %562, align 4
  %563 = load i8, ptr %21, align 1
  %564 = getelementptr inbounds %struct.msdos_dir_entry, ptr %551, i32 0, i32 3
  store i8 %563, ptr %564, align 1
  %565 = trunc i32 %3 to i16
  %566 = getelementptr inbounds %struct.msdos_dir_entry, ptr %551, i32 0, i32 10
  store i16 %565, ptr %566, align 2
  %567 = lshr i32 %3, 16
  %568 = trunc i32 %567 to i16
  %569 = getelementptr inbounds %struct.msdos_dir_entry, ptr %551, i32 0, i32 7
  store i16 %568, ptr %569, align 4
  %570 = getelementptr inbounds %struct.msdos_dir_entry, ptr %551, i32 0, i32 11
  store i32 0, ptr %570, align 4
  %571 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %571, ptr noundef nonnull %45) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %18) #18
  %572 = call i32 @fat_add_entries(ptr noundef %0, ptr noundef nonnull %36, i32 noundef %549, ptr noundef %5) #18
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %574, label %589

574:                                              ; preds = %548
  %575 = call i32 @fat_truncate_time(ptr noundef %0, ptr noundef %4, i32 noundef 6) #18
  %576 = load ptr, ptr %40, align 4
  %577 = getelementptr inbounds %struct.super_block, ptr %576, i32 0, i32 10
  %578 = load i32, ptr %577, align 4
  %579 = and i32 %578, 144
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %581, label %586

581:                                              ; preds = %574
  %582 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %583 = load i32, ptr %582, align 4
  %584 = and i32 %583, 65
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %588, label %586

586:                                              ; preds = %581, %574
  %587 = call i32 @fat_sync_inode(ptr noundef %0) #18
  br label %589

588:                                              ; preds = %581
  call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 7) #18
  br label %589

589:                                              ; preds = %588, %586, %548, %545, %47
  %590 = phi i32 [ %572, %548 ], [ 0, %586 ], [ 0, %588 ], [ -12, %47 ], [ %546, %545 ]
  call void @kfree(ptr noundef nonnull %36) #18
  br label %591

591:                                              ; preds = %589, %34, %26
  %592 = phi i32 [ %590, %589 ], [ -12, %34 ], [ -2, %26 ]
  ret i32 %592
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @inode_inc_iversion(ptr noundef %0) unnamed_addr #7 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !16
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 33
  %3 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %2, ptr elementtype(i64) %2) #18, !srcloc !9
  br label %4

4:                                                ; preds = %12, %1
  %5 = phi i64 [ %3, %1 ], [ %13, %12 ]
  %6 = add i64 %5, 2
  %7 = and i64 %6, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #18, !srcloc !12
  br label %8

8:                                                ; preds = %8, %4
  %9 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %2, ptr %2, i64 %5, i64 %7, ptr elementtype(i64) %2) #18, !srcloc !13
  %10 = extractvalue { i32, i64 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i64 } %9, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %15, label %4, !prof !15

15:                                               ; preds = %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_truncate_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_add_entries(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_sync_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_time_unix2fat(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8s_to_utf16s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @to_shortname_char(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #7 {
  %5 = load i16, ptr %2, align 2
  switch i16 %5, label %12 [
    i16 46, label %6
    i16 32, label %6
    i16 93, label %9
    i16 91, label %9
    i16 59, label %9
    i16 44, label %9
    i16 43, label %9
    i16 61, label %9
  ]

6:                                                ; preds = %4, %4
  %7 = load i8, ptr %3, align 1
  %8 = and i8 %7, -5
  store i8 %8, ptr %3, align 1
  br label %53

9:                                                ; preds = %4, %4, %4, %4, %4, %4
  %10 = load i8, ptr %3, align 1
  %11 = and i8 %10, -5
  store i8 %11, ptr %3, align 1
  store i8 95, ptr %1, align 1
  br label %53

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.nls_table, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(i16 noundef zeroext %5, ptr noundef %1, i32 noundef 6) #18
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i8, ptr %3, align 1
  %19 = and i8 %18, -5
  store i8 %19, ptr %3, align 1
  store i8 95, ptr %1, align 1
  br label %53

20:                                               ; preds = %12
  %21 = icmp eq i32 %15, 1
  br i1 %21, label %22, label %50

22:                                               ; preds = %20
  %23 = load i8, ptr %1, align 1
  %24 = icmp ugt i8 %23, 126
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8, ptr %3, align 1
  %27 = and i8 %26, -4
  store i8 %27, ptr %3, align 1
  %28 = load i8, ptr %1, align 1
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i8 [ %28, %25 ], [ %23, %22 ]
  %31 = getelementptr inbounds %struct.nls_table, ptr %0, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = zext i8 %30 to i32
  %34 = getelementptr i8, ptr %32, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %36, i8 %30, i8 %35
  store i8 %37, ptr %1, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %38
  %40 = load i8, ptr %39, align 1
  %41 = and i8 %40, 3
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %29
  %44 = icmp eq i8 %37, %23
  %45 = load i8, ptr %3, align 1
  br i1 %44, label %46, label %48

46:                                               ; preds = %43
  %47 = and i8 %45, -2
  store i8 %47, ptr %3, align 1
  br label %53

48:                                               ; preds = %43
  %49 = and i8 %45, -3
  store i8 %49, ptr %3, align 1
  br label %53

50:                                               ; preds = %20
  %51 = load i8, ptr %3, align 1
  %52 = and i8 %51, -4
  store i8 %52, ptr %3, align 1
  br label %53

53:                                               ; preds = %50, %48, %46, %29, %17, %9, %6
  %54 = phi i32 [ 0, %6 ], [ 1, %9 ], [ 1, %17 ], [ %15, %50 ], [ 1, %46 ], [ 1, %48 ], [ 1, %29 ]
  ret i32 %54
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_remove_entries(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_alloc_new_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_free_clusters(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_dir_empty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_get_dotdot_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_attach(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__fat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfat_revalidate_ci(ptr noundef %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 64
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %31

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %5
  %10 = icmp ne i32 %1, 0
  %11 = and i32 %1, 2560
  %12 = icmp eq i32 %11, 0
  %13 = and i1 %10, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %15) #18
  %16 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 33
  %25 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %24, ptr elementtype(i64) %24) #18, !srcloc !9
  %26 = lshr i64 %25, 1
  %27 = icmp eq i64 %26, %23
  %28 = zext i1 %27 to i32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !18
  %29 = load i16, ptr %15, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !21
  br label %31

31:                                               ; preds = %14, %9, %5, %2
  %32 = phi i32 [ %28, %14 ], [ -10, %2 ], [ 1, %5 ], [ 0, %9 ]
  ret i32 %32
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfat_hashi(ptr noundef %0, ptr nocapture noundef %1) #11 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.qstr, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %18, %2
  %14 = phi i32 [ %12, %2 ], [ %19, %18 ]
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = ptrtoint ptr %0 to i32
  br label %46

18:                                               ; preds = %13
  %19 = add i32 %14, -1
  %20 = getelementptr i8, ptr %10, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 46
  br i1 %22, label %13, label %23

23:                                               ; preds = %18
  %24 = ptrtoint ptr %0 to i32
  %25 = getelementptr inbounds %struct.nls_table, ptr %8, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %27, %23
  %28 = phi i32 [ %24, %23 ], [ %44, %27 ]
  %29 = phi i32 [ %14, %23 ], [ %31, %27 ]
  %30 = phi ptr [ %10, %23 ], [ %32, %27 ]
  %31 = add i32 %29, -1
  %32 = getelementptr i8, ptr %30, i32 1
  %33 = load i8, ptr %30, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr i8, ptr %26, i32 %34
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, i8 %33, i8 %36
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 4
  %41 = add i32 %40, %28
  %42 = lshr i32 %39, 4
  %43 = add i32 %41, %42
  %44 = mul i32 %43, 11
  %45 = icmp eq i32 %31, 0
  br i1 %45, label %46, label %27

46:                                               ; preds = %27, %16
  %47 = phi i32 [ %17, %16 ], [ %44, %27 ]
  %48 = mul i32 %47, 1640531527
  store i32 %48, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @vfat_cmpi(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #12 {
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msdos_sb_info, ptr %8, i32 0, i32 21
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.qstr, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  br label %15

15:                                               ; preds = %18, %4
  %16 = phi i32 [ %12, %4 ], [ %19, %18 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = add i32 %16, -1
  %20 = getelementptr i8, ptr %14, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 46
  br i1 %22, label %15, label %23

23:                                               ; preds = %18, %15
  br label %24

24:                                               ; preds = %27, %23
  %25 = phi i32 [ %28, %27 ], [ %1, %23 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = add i32 %25, -1
  %29 = getelementptr i8, ptr %2, i32 %28
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 46
  br i1 %31, label %24, label %32

32:                                               ; preds = %27, %24
  %33 = icmp eq i32 %16, %25
  br i1 %33, label %34, label %59

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.nls_table, ptr %10, i32 0, i32 4
  br label %36

36:                                               ; preds = %41, %34
  %37 = phi ptr [ %14, %34 ], [ %43, %41 ]
  %38 = phi ptr [ %2, %34 ], [ %51, %41 ]
  %39 = phi i32 [ %16, %34 ], [ %42, %41 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %36
  %42 = add i32 %39, -1
  %43 = getelementptr i8, ptr %37, i32 1
  %44 = load i8, ptr %37, align 1
  %45 = load ptr, ptr %35, align 4
  %46 = zext i8 %44 to i32
  %47 = getelementptr i8, ptr %45, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, i8 %44, i8 %48
  %51 = getelementptr i8, ptr %38, i32 1
  %52 = load i8, ptr %38, align 1
  %53 = zext i8 %52 to i32
  %54 = getelementptr i8, ptr %45, i32 %53
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, 0
  %57 = select i1 %56, i8 %52, i8 %55
  %58 = icmp eq i8 %50, %57
  br i1 %58, label %36, label %59

59:                                               ; preds = %41, %36, %32
  %60 = phi i32 [ 1, %32 ], [ 0, %36 ], [ 1, %41 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfat_revalidate(ptr noundef %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 64
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %10) #18
  %11 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 33
  %20 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %19, ptr elementtype(i64) %19) #18, !srcloc !9
  %21 = lshr i64 %20, 1
  %22 = icmp eq i64 %21, %18
  %23 = zext i1 %22 to i32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !18
  %24 = load i16, ptr %10, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !21
  br label %26

26:                                               ; preds = %9, %5, %2
  %27 = phi i32 [ %23, %9 ], [ -10, %2 ], [ 1, %5 ]
  ret i32 %27
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfat_hash(ptr noundef %0, ptr nocapture noundef %1) #13 {
  %3 = getelementptr inbounds %struct.qstr, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %10, %2
  %8 = phi i32 [ %6, %2 ], [ %11, %10 ]
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = add i32 %8, -1
  %12 = getelementptr i8, ptr %4, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 46
  br i1 %14, label %7, label %15

15:                                               ; preds = %10, %7
  %16 = tail call i32 @full_name_hash(ptr noundef %0, ptr noundef %4, i32 noundef %8) #21
  store i32 %16, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @vfat_cmp(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #14 {
  %5 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.qstr, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %12, %4
  %10 = phi i32 [ %6, %4 ], [ %13, %12 ]
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = add i32 %10, -1
  %14 = getelementptr i8, ptr %8, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 46
  br i1 %16, label %9, label %17

17:                                               ; preds = %12, %9
  br label %18

18:                                               ; preds = %21, %17
  %19 = phi i32 [ %22, %21 ], [ %1, %17 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = add i32 %19, -1
  %23 = getelementptr i8, ptr %2, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 46
  br i1 %25, label %18, label %26

26:                                               ; preds = %21, %18
  %27 = icmp eq i32 %10, %19
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = tail call i32 @strncmp(ptr noundef %8, ptr noundef %2, i32 noundef %10)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %26
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i32 [ 1, %31 ], [ 0, %28 ]
  ret i32 %33
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #17

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readonly willreturn }

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
!9 = !{i64 555538, i64 555559}
!10 = !{i64 2151720930}
!11 = !{i64 2148225755}
!12 = !{i64 565924, i64 2148055895, i64 2148055921, i64 2148055968, i64 2148055990, i64 2148056018, i64 2148056038}
!13 = !{i64 559153, i64 559179, i64 559207, i64 559225, i64 559243, i64 559265}
!14 = !{i64 2148225957}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2151719703}
!17 = !{i64 2152726470, i64 2152726954, i64 2152726507, i64 2152726563, i64 2152726597, i64 2152726621, i64 2152726662, i64 2152726683, i64 2152726711, i64 2152726745}
!18 = !{i64 2148950449}
!19 = !{i64 2148946273}
!20 = !{i64 2148946348, i64 2148946375, i64 2148946422, i64 2148946444, i64 2148946472, i64 2148946492}
!21 = !{i64 2148973452}
