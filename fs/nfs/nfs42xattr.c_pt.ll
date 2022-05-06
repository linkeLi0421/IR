; ModuleID = '/llk/IR/fs/nfs/nfs42xattr.c_pt.bc'
source_filename = "../fs/nfs/nfs42xattr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_lru = type { ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nfs4_xattr_bucket = type { %struct.spinlock, %struct.hlist_head, ptr, i8 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.nfs4_xattr_entry = type { %struct.kref, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.nfs4_xattr_cache = type { %struct.kref, [64 x %struct.nfs4_xattr_bucket], %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.151, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.152, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.153, ptr, %struct.address_space, %struct.list_head, %union.anon.154, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.151 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.152 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.153 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.154 = type { ptr }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [23 x i8] c"nfs4_xattr_cache_cache\00", align 1
@nfs4_xattr_cache_cachep = internal unnamed_addr global ptr null, align 4
@nfs4_xattr_large_entry_lru = internal global %struct.list_lru zeroinitializer, align 4
@nfs4_xattr_large_entry_shrinker = internal global %struct.shrinker { ptr @nfs4_xattr_entry_count, ptr @nfs4_xattr_entry_scan, i32 512, i32 1, i32 4, %struct.list_head zeroinitializer, ptr null }, align 4
@nfs4_xattr_entry_lru = internal global %struct.list_lru zeroinitializer, align 4
@nfs4_xattr_entry_shrinker = internal global %struct.shrinker { ptr @nfs4_xattr_entry_count, ptr @nfs4_xattr_entry_scan, i32 512, i32 2, i32 4, %struct.list_head zeroinitializer, ptr null }, align 4
@nfs4_xattr_cache_lru = internal global %struct.list_lru zeroinitializer, align 4
@nfs4_xattr_cache_shrinker = internal global %struct.shrinker { ptr @nfs4_xattr_cache_count, ptr @nfs4_xattr_cache_scan, i32 0, i32 2, i32 4, %struct.list_head zeroinitializer, ptr null }, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"fs/nfs/nfs42xattr.c\00", align 1
@sysctl_vfs_cache_pressure = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_xattr_cache_get(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @nfs4_xattr_get_cache(ptr noundef %0, i32 noundef 0)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %97, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @nfs4_xattr_hash_bucket(ptr noundef nonnull %5, ptr noundef %1) #10
  tail call void @_raw_spin_lock(ptr noundef %8) #10
  %9 = getelementptr inbounds %struct.nfs4_xattr_bucket, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = getelementptr i8, ptr %10, i32 -4
  %13 = icmp eq ptr %12, null
  %14 = or i1 %11, %13
  br i1 %14, label %38, label %15

15:                                               ; preds = %21, %7
  %16 = phi ptr [ %25, %21 ], [ %12, %7 ]
  %17 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @strcmp(ptr noundef %18, ptr noundef %1) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %16, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  %25 = getelementptr i8, ptr %23, i32 -4
  %26 = icmp eq ptr %25, null
  %27 = or i1 %24, %26
  br i1 %27, label %38, label %15

28:                                               ; preds = %15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %16) #10, !srcloc !8
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %16, ptr nonnull %16, i32 1, ptr nonnull elementtype(i32) %16) #10, !srcloc !9
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32, !prof !10

32:                                               ; preds = %28
  %33 = add i32 %30, 1
  %34 = or i32 %33, %30
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %38, label %36, !prof !11

36:                                               ; preds = %32, %28
  %37 = phi i32 [ 2, %28 ], [ 1, %32 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %16, i32 noundef %37) #10
  br label %38

38:                                               ; preds = %36, %32, %21, %7
  %39 = phi ptr [ %16, %32 ], [ %16, %36 ], [ null, %7 ], [ null, %21 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %40 = load i16, ptr %8, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %42 = icmp eq ptr %39, null
  br i1 %42, label %75, label %43

43:                                               ; preds = %38
  %44 = icmp eq i32 %3, 0
  %45 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %39, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  br i1 %44, label %53, label %47

47:                                               ; preds = %43
  %48 = icmp ugt i32 %46, %3
  br i1 %48, label %53, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %39, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 1 %51, i32 %46, i1 false)
  %52 = load i32, ptr %45, align 4
  br label %53

53:                                               ; preds = %49, %47, %43
  %54 = phi i32 [ %52, %49 ], [ -34, %47 ], [ %46, %43 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %39) #10, !srcloc !8
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %39, ptr nonnull %39, i32 1, ptr nonnull elementtype(i32) %39) #10, !srcloc !17
  %56 = extractvalue { i32, i32, i32 } %55, 0
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = icmp sgt i32 %56, 0
  br i1 %59, label %75, label %60, !prof !11

60:                                               ; preds = %58
  tail call void @refcount_warn_saturate(ptr noundef nonnull %39, i32 noundef 3) #10
  br label %75

61:                                               ; preds = %53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %62 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %39, i32 0, i32 2
  %63 = load volatile ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %62
  br i1 %64, label %66, label %65, !prof !11

65:                                               ; preds = %61
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 261, i32 noundef 9, ptr noundef null) #10
  br label %75

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %39, i32 0, i32 8
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %39, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  tail call void @kvfree(ptr noundef %73) #10
  br label %74

74:                                               ; preds = %71, %66
  tail call void @kfree(ptr noundef nonnull %39) #10
  br label %75

75:                                               ; preds = %74, %65, %60, %58, %38
  %76 = phi i32 [ -2, %38 ], [ %54, %74 ], [ %54, %65 ], [ %54, %58 ], [ %54, %60 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #10, !srcloc !8
  %77 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #10, !srcloc !17
  %78 = extractvalue { i32, i32, i32 } %77, 0
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = icmp sgt i32 %78, 0
  br i1 %81, label %97, label %82, !prof !11

82:                                               ; preds = %80
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #10
  br label %97

83:                                               ; preds = %75
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  br label %84

84:                                               ; preds = %90, %83
  %85 = phi i32 [ 0, %83 ], [ %92, %90 ]
  %86 = getelementptr %struct.nfs4_xattr_cache, ptr %5, i32 0, i32 1, i32 %85, i32 1
  %87 = load volatile ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89, !prof !11

89:                                               ; preds = %84
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %97

90:                                               ; preds = %84
  %91 = getelementptr %struct.nfs4_xattr_cache, ptr %5, i32 0, i32 1, i32 %85, i32 3
  store i8 0, ptr %91, align 4
  %92 = add nuw nsw i32 %85, 1
  %93 = icmp eq i32 %92, 64
  br i1 %93, label %94, label %84

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %5, i32 0, i32 7
  store ptr null, ptr %95, align 4
  %96 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %96, ptr noundef nonnull %5) #10
  br label %97

97:                                               ; preds = %94, %89, %82, %80, %4
  %98 = phi i32 [ -2, %4 ], [ %76, %94 ], [ %76, %89 ], [ %76, %80 ], [ %76, %82 ]
  ret i32 %98
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nfs4_xattr_get_cache(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %4 = getelementptr i8, ptr %0, i32 -152
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 32768
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr i8, ptr %0, i32 392
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %7, label %20, label %11

11:                                               ; preds = %2
  br i1 %10, label %17, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %9, i32 0, i32 2
  %14 = tail call zeroext i1 @list_lru_del(ptr noundef nonnull @nfs4_xattr_cache_lru, ptr noundef %13) #10
  %15 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %9, i32 0, i32 6
  store ptr null, ptr %15, align 4
  %16 = load i32, ptr %4, align 8
  br label %17

17:                                               ; preds = %12, %11
  %18 = phi i32 [ %16, %12 ], [ %5, %11 ]
  store ptr null, ptr %8, align 8
  %19 = and i32 %18, -32769
  store i32 %19, ptr %4, align 8
  br label %31

20:                                               ; preds = %2
  br i1 %10, label %31, label %21

21:                                               ; preds = %20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #10, !srcloc !8
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #10, !srcloc !9
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !10

25:                                               ; preds = %21
  %26 = add i32 %23, 1
  %27 = or i32 %26, %23
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %31, label %29, !prof !11

29:                                               ; preds = %25, %21
  %30 = phi i32 [ 2, %21 ], [ 1, %25 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %9, i32 noundef %30) #10
  br label %31

31:                                               ; preds = %29, %25, %20, %17
  %32 = phi i1 [ true, %17 ], [ true, %20 ], [ false, %25 ], [ false, %29 ]
  %33 = phi ptr [ %9, %17 ], [ null, %20 ], [ null, %25 ], [ null, %29 ]
  %34 = phi ptr [ null, %17 ], [ null, %20 ], [ %9, %25 ], [ %9, %29 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %35 = load i16, ptr %3, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %37 = icmp ne i32 %1, 0
  %38 = and i1 %37, %32
  br i1 %38, label %39, label %127

39:                                               ; preds = %31
  %40 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %40, i32 noundef 4197568) #10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %127, label %43

43:                                               ; preds = %39
  store volatile i32 1, ptr %41, align 8
  %44 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %41, i32 0, i32 4
  store volatile i32 0, ptr %44, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %45 = load i32, ptr %4, align 8
  %46 = and i32 %45, 32768
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %71, label %48

48:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %49 = load i16, ptr %3, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %41) #10, !srcloc !8
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %41, ptr nonnull %41, i32 1, ptr nonnull elementtype(i32) %41) #10, !srcloc !17
  %52 = extractvalue { i32, i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = icmp sgt i32 %52, 0
  br i1 %55, label %127, label %56, !prof !11

56:                                               ; preds = %54
  tail call void @refcount_warn_saturate(ptr noundef nonnull %41, i32 noundef 3) #10
  br label %127

57:                                               ; preds = %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  br label %58

58:                                               ; preds = %64, %57
  %59 = phi i32 [ 0, %57 ], [ %66, %64 ]
  %60 = getelementptr %struct.nfs4_xattr_cache, ptr %41, i32 0, i32 1, i32 %59, i32 1
  %61 = load volatile ptr, ptr %60, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63, !prof !11

63:                                               ; preds = %58
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %127

64:                                               ; preds = %58
  %65 = getelementptr %struct.nfs4_xattr_cache, ptr %41, i32 0, i32 1, i32 %59, i32 3
  store i8 0, ptr %65, align 8
  %66 = add nuw nsw i32 %59, 1
  %67 = icmp eq i32 %66, 64
  br i1 %67, label %68, label %58

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %41, i32 0, i32 7
  store ptr null, ptr %69, align 8
  %70 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %70, ptr noundef %41) #10
  br label %127

71:                                               ; preds = %43
  %72 = getelementptr i8, ptr %0, i32 392
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %87, label %75

75:                                               ; preds = %71
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %73) #10, !srcloc !8
  %76 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %73, ptr nonnull %73, i32 1, ptr nonnull elementtype(i32) %73) #10, !srcloc !9
  %77 = extractvalue { i32, i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79, !prof !10

79:                                               ; preds = %75
  %80 = add i32 %77, 1
  %81 = or i32 %80, %77
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %103, label %83, !prof !11

83:                                               ; preds = %79, %75
  %84 = phi i32 [ 2, %75 ], [ 1, %79 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %73, i32 noundef %84) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %85 = load i16, ptr %3, align 4
  %86 = add i16 %85, 1
  store i16 %86, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %106

87:                                               ; preds = %71
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %41) #10, !srcloc !8
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %41, ptr nonnull %41, i32 1, ptr nonnull elementtype(i32) %41) #10, !srcloc !9
  %89 = extractvalue { i32, i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91, !prof !10

91:                                               ; preds = %87
  %92 = add i32 %89, 1
  %93 = or i32 %92, %89
  %94 = icmp sgt i32 %93, -1
  br i1 %94, label %97, label %95, !prof !11

95:                                               ; preds = %91, %87
  %96 = phi i32 [ 2, %87 ], [ 1, %91 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %41, i32 noundef %96) #10
  br label %97

97:                                               ; preds = %95, %91
  store ptr %41, ptr %72, align 8
  %98 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %41, i32 0, i32 6
  store ptr %0, ptr %98, align 4
  %99 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %41, i32 0, i32 2
  %100 = tail call zeroext i1 @list_lru_add(ptr noundef nonnull @nfs4_xattr_cache_lru, ptr noundef %99) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %101 = load i16, ptr %3, align 4
  %102 = add i16 %101, 1
  store i16 %102, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %127

103:                                              ; preds = %79
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %104 = load i16, ptr %3, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %106

106:                                              ; preds = %103, %83
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %41) #10, !srcloc !8
  %107 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %41, ptr nonnull %41, i32 1, ptr nonnull elementtype(i32) %41) #10, !srcloc !17
  %108 = extractvalue { i32, i32, i32 } %107, 0
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = icmp sgt i32 %108, 0
  br i1 %111, label %127, label %112, !prof !11

112:                                              ; preds = %110
  tail call void @refcount_warn_saturate(ptr noundef nonnull %41, i32 noundef 3) #10
  br label %127

113:                                              ; preds = %106
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  br label %114

114:                                              ; preds = %120, %113
  %115 = phi i32 [ 0, %113 ], [ %122, %120 ]
  %116 = getelementptr %struct.nfs4_xattr_cache, ptr %41, i32 0, i32 1, i32 %115, i32 1
  %117 = load volatile ptr, ptr %116, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119, !prof !11

119:                                              ; preds = %114
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %127

120:                                              ; preds = %114
  %121 = getelementptr %struct.nfs4_xattr_cache, ptr %41, i32 0, i32 1, i32 %115, i32 3
  store i8 0, ptr %121, align 8
  %122 = add nuw nsw i32 %115, 1
  %123 = icmp eq i32 %122, 64
  br i1 %123, label %124, label %114

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %41, i32 0, i32 7
  store ptr null, ptr %125, align 8
  %126 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %126, ptr noundef %41) #10
  br label %127

127:                                              ; preds = %124, %119, %112, %110, %97, %68, %63, %56, %54, %39, %31
  %128 = phi ptr [ %34, %31 ], [ null, %68 ], [ null, %63 ], [ null, %54 ], [ null, %56 ], [ %73, %124 ], [ %73, %119 ], [ %73, %110 ], [ %73, %112 ], [ null, %39 ], [ %41, %97 ]
  %129 = icmp eq ptr %33, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  tail call fastcc void @nfs4_xattr_discard_cache(ptr noundef nonnull %33)
  br label %131

131:                                              ; preds = %130, %127
  ret ptr %128
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_xattr_cache_list(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @nfs4_xattr_get_cache(ptr noundef %0, i32 noundef 0)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %4, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %4, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  switch i32 %10, label %11 [
    i32 0, label %21
    i32 -116, label %21
  ]

11:                                               ; preds = %6
  %12 = icmp eq i32 %2, 0
  %13 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %9, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  br i1 %12, label %21, label %15

15:                                               ; preds = %11
  %16 = icmp ugt i32 %14, %2
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %9, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %19, i32 %14, i1 false)
  %20 = load i32, ptr %13, align 4
  br label %21

21:                                               ; preds = %17, %15, %11, %6, %6
  %22 = phi i32 [ %20, %17 ], [ -34, %15 ], [ -2, %6 ], [ -2, %6 ], [ %14, %11 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %23 = load i16, ptr %7, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #10, !srcloc !8
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #10, !srcloc !17
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = icmp sgt i32 %26, 0
  br i1 %29, label %44, label %30, !prof !11

30:                                               ; preds = %28
  tail call void @refcount_warn_saturate(ptr noundef nonnull %4, i32 noundef 3) #10
  br label %44

31:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  br label %32

32:                                               ; preds = %38, %31
  %33 = phi i32 [ 0, %31 ], [ %40, %38 ]
  %34 = getelementptr %struct.nfs4_xattr_cache, ptr %4, i32 0, i32 1, i32 %33, i32 1
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37, !prof !11

37:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %44

38:                                               ; preds = %32
  %39 = getelementptr %struct.nfs4_xattr_cache, ptr %4, i32 0, i32 1, i32 %33, i32 3
  store i8 0, ptr %39, align 4
  %40 = add nuw nsw i32 %33, 1
  %41 = icmp eq i32 %40, 64
  br i1 %41, label %42, label %32

42:                                               ; preds = %38
  store ptr null, ptr %8, align 4
  %43 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %43, ptr noundef nonnull %4) #10
  br label %44

44:                                               ; preds = %42, %37, %30, %28, %3
  %45 = phi i32 [ -2, %3 ], [ %22, %42 ], [ %22, %37 ], [ %22, %28 ], [ %22, %30 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_xattr_cache_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @nfs4_xattr_get_cache(ptr noundef %0, i32 noundef 1)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %147, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @nfs4_xattr_alloc_entry(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %126, label %11

11:                                               ; preds = %8
  %12 = tail call fastcc i32 @nfs4_xattr_set_listcache(ptr noundef nonnull %6, ptr noundef null)
  %13 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %9, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call fastcc ptr @nfs4_xattr_hash_bucket(ptr noundef nonnull %6, ptr noundef %14) #10
  %16 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %9, i32 0, i32 7
  store ptr %15, ptr %16, align 4
  tail call void @_raw_spin_lock(ptr noundef %15) #10
  %17 = getelementptr inbounds %struct.nfs4_xattr_bucket, ptr %15, i32 0, i32 3
  %18 = load i8, ptr %17, align 4, !range !19
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %78

20:                                               ; preds = %11
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr inbounds %struct.nfs4_xattr_bucket, ptr %15, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  %25 = getelementptr i8, ptr %23, i32 -4
  %26 = icmp eq ptr %25, null
  %27 = or i1 %24, %26
  br i1 %27, label %59, label %28

28:                                               ; preds = %35, %20
  %29 = phi ptr [ %38, %35 ], [ %25, %20 ]
  %30 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %29, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @strcmp(ptr noundef %31, ptr noundef %21) #10
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %29, i32 0, i32 1
  br i1 %33, label %41, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr %34, align 4
  %37 = icmp eq ptr %36, null
  %38 = getelementptr i8, ptr %36, i32 -4
  %39 = icmp eq ptr %38, null
  %40 = or i1 %37, %39
  br i1 %40, label %59, label %28

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %29, i32 0, i32 1, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %34, align 4
  store volatile ptr %46, ptr %43, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.hlist_node, ptr %46, i32 0, i32 1
  store volatile ptr %43, ptr %49, align 4
  br label %50

50:                                               ; preds = %48, %45
  store ptr null, ptr %34, align 4
  store ptr null, ptr %42, align 4
  br label %51

51:                                               ; preds = %50, %41
  %52 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %29, i32 0, i32 8
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, ptr @nfs4_xattr_entry_lru, ptr @nfs4_xattr_large_entry_lru
  %57 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %29, i32 0, i32 2
  %58 = tail call zeroext i1 @list_lru_del(ptr noundef nonnull %56, ptr noundef %57) #10
  br label %62

59:                                               ; preds = %35, %20
  %60 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %6, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #10, !srcloc !8
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #10, !srcloc !20
  br label %62

62:                                               ; preds = %59, %51
  %63 = phi ptr [ null, %59 ], [ %29, %51 ]
  %64 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %9, i32 0, i32 1
  %65 = load ptr, ptr %22, align 4
  store volatile ptr %65, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.hlist_node, ptr %65, i32 0, i32 1
  store volatile ptr %64, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %62
  store volatile ptr %64, ptr %22, align 4
  %70 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %9, i32 0, i32 1, i32 1
  store volatile ptr %22, ptr %70, align 4
  %71 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %9, i32 0, i32 8
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, ptr @nfs4_xattr_entry_lru, ptr @nfs4_xattr_large_entry_lru
  %76 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %9, i32 0, i32 2
  %77 = tail call zeroext i1 @list_lru_add(ptr noundef nonnull %75, ptr noundef %76) #10
  br label %78

78:                                               ; preds = %69, %11
  %79 = phi ptr [ %63, %69 ], [ null, %11 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %80 = load i16, ptr %15, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %82 = icmp eq ptr %79, null
  br i1 %82, label %104, label %83

83:                                               ; preds = %78
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %79) #10, !srcloc !8
  %84 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %79, ptr nonnull %79, i32 1, ptr nonnull elementtype(i32) %79) #10, !srcloc !17
  %85 = extractvalue { i32, i32, i32 } %84, 0
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = icmp sgt i32 %85, 0
  br i1 %88, label %104, label %89, !prof !11

89:                                               ; preds = %87
  tail call void @refcount_warn_saturate(ptr noundef nonnull %79, i32 noundef 3) #10
  br label %104

90:                                               ; preds = %83
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %91 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %79, i32 0, i32 2
  %92 = load volatile ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, %91
  br i1 %93, label %95, label %94, !prof !11

94:                                               ; preds = %90
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 261, i32 noundef 9, ptr noundef null) #10
  br label %104

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %79, i32 0, i32 8
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %79, i32 0, i32 5
  %102 = load ptr, ptr %101, align 4
  tail call void @kvfree(ptr noundef %102) #10
  br label %103

103:                                              ; preds = %100, %95
  tail call void @kfree(ptr noundef nonnull %79) #10
  br label %104

104:                                              ; preds = %103, %94, %89, %87, %78
  br i1 %19, label %126, label %105

105:                                              ; preds = %104
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #10, !srcloc !8
  %106 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #10, !srcloc !17
  %107 = extractvalue { i32, i32, i32 } %106, 0
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = icmp sgt i32 %107, 0
  br i1 %110, label %126, label %111, !prof !11

111:                                              ; preds = %109
  tail call void @refcount_warn_saturate(ptr noundef nonnull %9, i32 noundef 3) #10
  br label %126

112:                                              ; preds = %105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %113 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %9, i32 0, i32 2
  %114 = load volatile ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, %113
  br i1 %115, label %117, label %116, !prof !11

116:                                              ; preds = %112
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 261, i32 noundef 9, ptr noundef null) #10
  br label %126

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %9, i32 0, i32 8
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %9, i32 0, i32 5
  %124 = load ptr, ptr %123, align 4
  tail call void @kvfree(ptr noundef %124) #10
  br label %125

125:                                              ; preds = %122, %117
  tail call void @kfree(ptr noundef nonnull %9) #10
  br label %126

126:                                              ; preds = %125, %116, %111, %109, %104, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %6) #10, !srcloc !8
  %127 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %6, ptr nonnull %6, i32 1, ptr nonnull elementtype(i32) %6) #10, !srcloc !17
  %128 = extractvalue { i32, i32, i32 } %127, 0
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = icmp sgt i32 %128, 0
  br i1 %131, label %147, label %132, !prof !11

132:                                              ; preds = %130
  tail call void @refcount_warn_saturate(ptr noundef nonnull %6, i32 noundef 3) #10
  br label %147

133:                                              ; preds = %126
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  br label %134

134:                                              ; preds = %140, %133
  %135 = phi i32 [ 0, %133 ], [ %142, %140 ]
  %136 = getelementptr %struct.nfs4_xattr_cache, ptr %6, i32 0, i32 1, i32 %135, i32 1
  %137 = load volatile ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %140, label %139, !prof !11

139:                                              ; preds = %134
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %147

140:                                              ; preds = %134
  %141 = getelementptr %struct.nfs4_xattr_cache, ptr %6, i32 0, i32 1, i32 %135, i32 3
  store i8 0, ptr %141, align 4
  %142 = add nuw nsw i32 %135, 1
  %143 = icmp eq i32 %142, 64
  br i1 %143, label %144, label %134

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %6, i32 0, i32 7
  store ptr null, ptr %145, align 4
  %146 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %146, ptr noundef nonnull %6) #10
  br label %147

147:                                              ; preds = %144, %139, %132, %130, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nfs4_xattr_alloc_entry(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @strlen(ptr noundef nonnull %0)
  %8 = add i32 %7, 1
  %9 = add i32 %7, 49
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i32 [ %9, %6 ], [ 48, %4 ]
  %12 = phi i32 [ %8, %6 ], [ 0, %4 ]
  %13 = add i32 %11, %3
  %14 = icmp ult i32 %13, 4097
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = select i1 %14, i32 %13, i32 %11
  %18 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 4197568) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %53, label %20

20:                                               ; preds = %10
  br i1 %5, label %23, label %21

21:                                               ; preds = %20
  %22 = getelementptr i8, ptr %18, i32 48
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 16 %22, ptr nonnull align 1 %0, i32 %12, i1 false)
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi ptr [ %22, %21 ], [ null, %20 ]
  br i1 %14, label %29, label %25

25:                                               ; preds = %23
  %26 = tail call noalias ptr @kvmalloc_node(i32 noundef %3, i32 noundef 4197568, i32 noundef -1) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  tail call void @kfree(ptr noundef nonnull %18) #10
  br label %53

29:                                               ; preds = %23
  %30 = icmp eq i32 %3, 0
  %31 = getelementptr i8, ptr %18, i32 48
  %32 = getelementptr i8, ptr %31, i32 %12
  %33 = icmp eq ptr %32, null
  %34 = select i1 %30, i1 true, i1 %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %29, %25
  %36 = phi ptr [ %26, %25 ], [ %32, %29 ]
  %37 = icmp eq ptr %1, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %36, ptr nonnull align 1 %1, i32 %3, i1 false)
  br label %40

39:                                               ; preds = %35
  tail call void @_copy_from_pages(ptr noundef nonnull %36, ptr noundef %2, i32 noundef 0, i32 noundef %3) #10
  br label %40

40:                                               ; preds = %39, %38, %29
  %41 = phi ptr [ %36, %38 ], [ %36, %39 ], [ null, %29 ]
  %42 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %18, i32 0, i32 8
  store i32 %16, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %18, i32 0, i32 5
  store ptr %41, ptr %43, align 32
  store volatile i32 1, ptr %18, align 64
  %44 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %18, i32 0, i32 4
  store ptr %24, ptr %44, align 4
  %45 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %18, i32 0, i32 6
  store i32 %3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %18, i32 0, i32 7
  store ptr null, ptr %46, align 8
  %47 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %18, i32 0, i32 2
  store volatile ptr %47, ptr %47, align 4
  %48 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %18, i32 0, i32 2, i32 1
  store ptr %47, ptr %48, align 16
  %49 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %18, i32 0, i32 3
  store volatile ptr %49, ptr %49, align 4
  %50 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %18, i32 0, i32 3, i32 1
  store ptr %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %18, i32 0, i32 1
  store ptr null, ptr %51, align 4
  %52 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %18, i32 0, i32 1, i32 1
  store ptr null, ptr %52, align 8
  br label %53

53:                                               ; preds = %40, %28, %10
  %54 = phi ptr [ null, %28 ], [ %18, %40 ], [ null, %10 ]
  ret ptr %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_xattr_set_listcache(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, inttoptr (i32 -116 to ptr)
  br i1 %6, label %45, label %7

7:                                                ; preds = %2
  store ptr %1, ptr %4, align 4
  %8 = ptrtoint ptr %1 to i32
  switch i32 %8, label %9 [
    i32 0, label %17
    i32 -116, label %17
  ]

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %1, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr @nfs4_xattr_entry_lru, ptr @nfs4_xattr_large_entry_lru
  %15 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %1, i32 0, i32 2
  %16 = tail call zeroext i1 @list_lru_add(ptr noundef nonnull %14, ptr noundef %15) #10
  br label %17

17:                                               ; preds = %9, %7, %7
  %18 = icmp eq ptr %5, null
  br i1 %18, label %45, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %5, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, ptr @nfs4_xattr_entry_lru, ptr @nfs4_xattr_large_entry_lru
  %25 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %5, i32 0, i32 2
  %26 = tail call zeroext i1 @list_lru_del(ptr noundef nonnull %24, ptr noundef %25) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #10, !srcloc !8
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #10, !srcloc !17
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %45, label %32, !prof !11

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #10
  br label %45

33:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %34 = load volatile ptr, ptr %25, align 4
  %35 = icmp eq ptr %34, %25
  br i1 %35, label %37, label %36, !prof !11

36:                                               ; preds = %33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 261, i32 noundef 9, ptr noundef null) #10
  br label %45

37:                                               ; preds = %33
  %38 = load i32, ptr %20, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %5, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  tail call void @kvfree(ptr noundef %43) #10
  br label %44

44:                                               ; preds = %41, %37
  tail call void @kfree(ptr noundef nonnull %5) #10
  br label %45

45:                                               ; preds = %44, %36, %32, %30, %17, %2
  %46 = phi i32 [ 1, %17 ], [ 0, %2 ], [ 1, %44 ], [ 1, %36 ], [ 1, %30 ], [ 1, %32 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %47 = load i16, ptr %3, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_xattr_cache_remove(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @nfs4_xattr_get_cache(ptr noundef %0, i32 noundef 0)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %91, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @nfs4_xattr_set_listcache(ptr noundef nonnull %3, ptr noundef null)
  %7 = tail call fastcc ptr @nfs4_xattr_hash_bucket(ptr noundef nonnull %3, ptr noundef %1) #10
  tail call void @_raw_spin_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.nfs4_xattr_bucket, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr i8, ptr %9, i32 -4
  %12 = icmp eq ptr %11, null
  %13 = or i1 %10, %12
  br i1 %13, label %67, label %14

14:                                               ; preds = %21, %5
  %15 = phi ptr [ %24, %21 ], [ %11, %5 ]
  %16 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @strcmp(ptr noundef %17, ptr noundef %1) #10
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %15, i32 0, i32 1
  br i1 %19, label %27, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %20, align 4
  %23 = icmp eq ptr %22, null
  %24 = getelementptr i8, ptr %22, i32 -4
  %25 = icmp eq ptr %24, null
  %26 = or i1 %23, %25
  br i1 %26, label %67, label %14

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %15, i32 0, i32 1, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %20, align 4
  store volatile ptr %32, ptr %29, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  store volatile ptr %29, ptr %35, align 4
  br label %36

36:                                               ; preds = %34, %31
  store ptr null, ptr %20, align 4
  store ptr null, ptr %28, align 4
  br label %37

37:                                               ; preds = %36, %27
  %38 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %15, i32 0, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, ptr @nfs4_xattr_entry_lru, ptr @nfs4_xattr_large_entry_lru
  %43 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %15, i32 0, i32 2
  %44 = tail call zeroext i1 @list_lru_del(ptr noundef nonnull %42, ptr noundef %43) #10
  %45 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %3, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #10, !srcloc !8
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #10, !srcloc !21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %47 = load i16, ptr %7, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %15) #10, !srcloc !8
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 1, ptr nonnull elementtype(i32) %15) #10, !srcloc !17
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %37
  %53 = icmp sgt i32 %50, 0
  br i1 %53, label %70, label %54, !prof !11

54:                                               ; preds = %52
  tail call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef 3) #10
  br label %70

55:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %56 = load volatile ptr, ptr %43, align 4
  %57 = icmp eq ptr %56, %43
  br i1 %57, label %59, label %58, !prof !11

58:                                               ; preds = %55
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 261, i32 noundef 9, ptr noundef null) #10
  br label %70

59:                                               ; preds = %55
  %60 = load i32, ptr %38, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %15, i32 0, i32 5
  %65 = load ptr, ptr %64, align 4
  tail call void @kvfree(ptr noundef %65) #10
  br label %66

66:                                               ; preds = %63, %59
  tail call void @kfree(ptr noundef nonnull %15) #10
  br label %70

67:                                               ; preds = %21, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %68 = load i16, ptr %7, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %70

70:                                               ; preds = %67, %66, %58, %54, %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %3) #10, !srcloc !8
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #10, !srcloc !17
  %72 = extractvalue { i32, i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = icmp sgt i32 %72, 0
  br i1 %75, label %91, label %76, !prof !11

76:                                               ; preds = %74
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 3) #10
  br label %91

77:                                               ; preds = %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  br label %78

78:                                               ; preds = %84, %77
  %79 = phi i32 [ 0, %77 ], [ %86, %84 ]
  %80 = getelementptr %struct.nfs4_xattr_cache, ptr %3, i32 0, i32 1, i32 %79, i32 1
  %81 = load volatile ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83, !prof !11

83:                                               ; preds = %78
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %91

84:                                               ; preds = %78
  %85 = getelementptr %struct.nfs4_xattr_cache, ptr %3, i32 0, i32 1, i32 %79, i32 3
  store i8 0, ptr %85, align 4
  %86 = add nuw nsw i32 %79, 1
  %87 = icmp eq i32 %86, 64
  br i1 %87, label %88, label %78

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %3, i32 0, i32 7
  store ptr null, ptr %89, align 4
  %90 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %90, ptr noundef nonnull %3) #10
  br label %91

91:                                               ; preds = %88, %83, %76, %74, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_xattr_cache_set_list(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @nfs4_xattr_get_cache(ptr noundef %0, i32 noundef 1)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %56, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @nfs4_xattr_alloc_entry(ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef %2)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %4, i32 0, i32 1
  %11 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %7, i32 0, i32 7
  store ptr %10, ptr %11, align 4
  %12 = tail call fastcc i32 @nfs4_xattr_set_listcache(ptr noundef nonnull %4, ptr noundef nonnull %7)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #10, !srcloc !8
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #10, !srcloc !17
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = icmp sgt i32 %16, 0
  br i1 %19, label %35, label %20, !prof !11

20:                                               ; preds = %18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #10
  br label %35

21:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %22 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %7, i32 0, i32 2
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %26, label %25, !prof !11

25:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 261, i32 noundef 9, ptr noundef null) #10
  br label %35

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %7, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %7, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  tail call void @kvfree(ptr noundef %33) #10
  br label %34

34:                                               ; preds = %31, %26
  tail call void @kfree(ptr noundef nonnull %7) #10
  br label %35

35:                                               ; preds = %34, %25, %20, %18, %9, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #10, !srcloc !8
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #10, !srcloc !17
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = icmp sgt i32 %37, 0
  br i1 %40, label %56, label %41, !prof !11

41:                                               ; preds = %39
  tail call void @refcount_warn_saturate(ptr noundef nonnull %4, i32 noundef 3) #10
  br label %56

42:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  br label %43

43:                                               ; preds = %49, %42
  %44 = phi i32 [ 0, %42 ], [ %51, %49 ]
  %45 = getelementptr %struct.nfs4_xattr_cache, ptr %4, i32 0, i32 1, i32 %44, i32 1
  %46 = load volatile ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48, !prof !11

48:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %56

49:                                               ; preds = %43
  %50 = getelementptr %struct.nfs4_xattr_cache, ptr %4, i32 0, i32 1, i32 %44, i32 3
  store i8 0, ptr %50, align 4
  %51 = add nuw nsw i32 %44, 1
  %52 = icmp eq i32 %51, 64
  br i1 %52, label %53, label %43

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %4, i32 0, i32 7
  store ptr null, ptr %54, align 4
  %55 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %55, ptr noundef nonnull %4) #10
  br label %56

56:                                               ; preds = %53, %48, %41, %39, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_xattr_cache_zap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %2) #10
  %3 = getelementptr i8, ptr %0, i32 392
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %4, i32 0, i32 2
  %8 = tail call zeroext i1 @list_lru_del(ptr noundef nonnull @nfs4_xattr_cache_lru, ptr noundef %7) #10
  %9 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %4, i32 0, i32 6
  store ptr null, ptr %9, align 4
  br label %10

10:                                               ; preds = %6, %1
  store ptr null, ptr %3, align 8
  %11 = getelementptr i8, ptr %0, i32 -152
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, -32769
  store i32 %13, ptr %11, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %14 = load i16, ptr %2, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br i1 %5, label %17, label %16

16:                                               ; preds = %10
  tail call fastcc void @nfs4_xattr_discard_cache(ptr noundef nonnull %4)
  br label %17

17:                                               ; preds = %16, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs4_xattr_discard_cache(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @nfs4_xattr_set_listcache(ptr noundef %0, ptr noundef nonnull inttoptr (i32 -116 to ptr))
  br label %3

3:                                                ; preds = %57, %1
  %4 = phi i32 [ 0, %1 ], [ %60, %57 ]
  %5 = getelementptr %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 1, i32 %4
  tail call void @_raw_spin_lock(ptr noundef %5) #10
  %6 = getelementptr %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 1, i32 %4, i32 3
  store i8 1, ptr %6, align 4
  %7 = getelementptr %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 1, i32 %4, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = getelementptr i8, ptr %8, i32 -4
  %11 = icmp eq ptr %10, null
  %12 = or i1 %9, %11
  br i1 %12, label %57, label %13

13:                                               ; preds = %52, %3
  %14 = phi ptr [ %54, %52 ], [ %10, %3 ]
  %15 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %14, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @nfs4_xattr_entry_lru, ptr @nfs4_xattr_large_entry_lru
  %22 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %14, i32 0, i32 2
  %23 = tail call zeroext i1 @list_lru_del(ptr noundef nonnull %21, ptr noundef %22) #10
  %24 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %14, i32 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %13
  %28 = load ptr, ptr %15, align 4
  store volatile ptr %28, ptr %25, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  store volatile ptr %25, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %27
  store ptr null, ptr %15, align 4
  store ptr null, ptr %24, align 4
  br label %33

33:                                               ; preds = %32, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %14) #10, !srcloc !8
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %14, ptr nonnull %14, i32 1, ptr nonnull elementtype(i32) %14) #10, !srcloc !17
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %52, label %39, !prof !11

39:                                               ; preds = %37
  tail call void @refcount_warn_saturate(ptr noundef nonnull %14, i32 noundef 3) #10
  br label %52

40:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %41 = load volatile ptr, ptr %22, align 4
  %42 = icmp eq ptr %41, %22
  br i1 %42, label %44, label %43, !prof !11

43:                                               ; preds = %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 261, i32 noundef 9, ptr noundef null) #10
  br label %52

44:                                               ; preds = %40
  %45 = load i32, ptr %17, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.nfs4_xattr_entry, ptr %14, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  tail call void @kvfree(ptr noundef %50) #10
  br label %51

51:                                               ; preds = %48, %44
  tail call void @kfree(ptr noundef nonnull %14) #10
  br label %52

52:                                               ; preds = %51, %43, %39, %37
  %53 = icmp eq ptr %16, null
  %54 = getelementptr i8, ptr %16, i32 -4
  %55 = icmp eq ptr %54, null
  %56 = or i1 %53, %55
  br i1 %56, label %57, label %13

57:                                               ; preds = %52, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %58 = load i16, ptr %5, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %60 = add nuw nsw i32 %4, 1
  %61 = icmp eq i32 %60, 64
  br i1 %61, label %62, label %3

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 4
  store volatile i32 0, ptr %63, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #10, !srcloc !8
  %64 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #10, !srcloc !17
  %65 = extractvalue { i32, i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = icmp sgt i32 %65, 0
  br i1 %68, label %84, label %69, !prof !11

69:                                               ; preds = %67
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #10
  br label %84

70:                                               ; preds = %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  br label %71

71:                                               ; preds = %77, %70
  %72 = phi i32 [ 0, %70 ], [ %79, %77 ]
  %73 = getelementptr %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 1, i32 %72, i32 1
  %74 = load volatile ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76, !prof !11

76:                                               ; preds = %71
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %84

77:                                               ; preds = %71
  %78 = getelementptr %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 1, i32 %72, i32 3
  store i8 0, ptr %78, align 4
  %79 = add nuw nsw i32 %72, 1
  %80 = icmp eq i32 %79, 64
  br i1 %80, label %81, label %71

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 7
  store ptr null, ptr %82, align 4
  %83 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %83, ptr noundef %0) #10
  br label %84

84:                                               ; preds = %81, %76, %69, %67
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @nfs4_xattr_cache_init() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 1060, i32 noundef 0, i32 noundef 1179648, ptr noundef nonnull @nfs4_xattr_cache_init_once) #10
  store ptr %1, ptr @nfs4_xattr_cache_cachep, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @__list_lru_init(ptr noundef nonnull @nfs4_xattr_large_entry_lru, i1 noundef zeroext true, ptr noundef null, ptr noundef nonnull @nfs4_xattr_large_entry_shrinker) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = tail call i32 @__list_lru_init(ptr noundef nonnull @nfs4_xattr_entry_lru, i1 noundef zeroext true, ptr noundef null, ptr noundef nonnull @nfs4_xattr_entry_shrinker) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %6
  %10 = tail call i32 @__list_lru_init(ptr noundef nonnull @nfs4_xattr_cache_lru, i1 noundef zeroext true, ptr noundef null, ptr noundef nonnull @nfs4_xattr_cache_shrinker) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = tail call i32 @register_shrinker(ptr noundef nonnull @nfs4_xattr_cache_shrinker) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = tail call i32 @register_shrinker(ptr noundef nonnull @nfs4_xattr_entry_shrinker) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = tail call i32 @register_shrinker(ptr noundef nonnull @nfs4_xattr_large_entry_shrinker) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %18
  tail call void @unregister_shrinker(ptr noundef nonnull @nfs4_xattr_entry_shrinker) #10
  br label %22

22:                                               ; preds = %21, %15
  %23 = phi i32 [ %16, %15 ], [ %19, %21 ]
  tail call void @unregister_shrinker(ptr noundef nonnull @nfs4_xattr_cache_shrinker) #10
  br label %24

24:                                               ; preds = %22, %12
  %25 = phi i32 [ %13, %12 ], [ %23, %22 ]
  tail call void @list_lru_destroy(ptr noundef nonnull @nfs4_xattr_cache_lru) #10
  br label %26

26:                                               ; preds = %24, %9
  %27 = phi i32 [ %10, %9 ], [ %25, %24 ]
  tail call void @list_lru_destroy(ptr noundef nonnull @nfs4_xattr_entry_lru) #10
  br label %28

28:                                               ; preds = %26, %6
  %29 = phi i32 [ %7, %6 ], [ %27, %26 ]
  tail call void @list_lru_destroy(ptr noundef nonnull @nfs4_xattr_large_entry_lru) #10
  br label %30

30:                                               ; preds = %28, %3
  %31 = phi i32 [ %4, %3 ], [ %29, %28 ]
  %32 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %32) #10
  br label %33

33:                                               ; preds = %30, %18, %0
  %34 = phi i32 [ %31, %30 ], [ -12, %0 ], [ 0, %18 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xattr_cache_init_once(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 5
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 4
  store volatile i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i32 [ 0, %1 ], [ %10, %4 ]
  %6 = getelementptr %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 1, i32 %5
  %7 = getelementptr %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 1, i32 %5, i32 1
  store ptr null, ptr %7, align 4
  store i32 0, ptr %6, align 4
  %8 = getelementptr %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 1, i32 %5, i32 2
  store ptr %0, ptr %8, align 4
  %9 = getelementptr %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 1, i32 %5, i32 3
  store i8 0, ptr %9, align 4
  %10 = add nuw nsw i32 %5, 1
  %11 = icmp eq i32 %10, 64
  br i1 %11, label %12, label %4

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 7
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 2
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 2, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 3
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 3, i32 1
  store ptr %16, ptr %17, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__list_lru_init(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_xattr_cache_exit() local_unnamed_addr #0 {
  tail call void @unregister_shrinker(ptr noundef nonnull @nfs4_xattr_large_entry_shrinker) #10
  tail call void @unregister_shrinker(ptr noundef nonnull @nfs4_xattr_entry_shrinker) #10
  tail call void @unregister_shrinker(ptr noundef nonnull @nfs4_xattr_cache_shrinker) #10
  tail call void @list_lru_destroy(ptr noundef nonnull @nfs4_xattr_large_entry_lru) #10
  tail call void @list_lru_destroy(ptr noundef nonnull @nfs4_xattr_entry_lru) #10
  tail call void @list_lru_destroy(ptr noundef nonnull @nfs4_xattr_cache_lru) #10
  %1 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc ptr @nfs4_xattr_hash_bucket(ptr noundef readnone %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = tail call i32 @strlen(ptr noundef %1)
  %4 = add i32 %3, -559038737
  %5 = icmp ugt i32 %3, 12
  br i1 %5, label %6, label %47

6:                                                ; preds = %6, %2
  %7 = phi ptr [ %45, %6 ], [ %1, %2 ]
  %8 = phi i32 [ %42, %6 ], [ %4, %2 ]
  %9 = phi i32 [ %43, %6 ], [ %4, %2 ]
  %10 = phi i32 [ %39, %6 ], [ %4, %2 ]
  %11 = phi i32 [ %44, %6 ], [ %3, %2 ]
  %12 = load i32, ptr %7, align 1
  %13 = add i32 %12, %10
  %14 = getelementptr i8, ptr %7, i32 4
  %15 = load i32, ptr %14, align 1
  %16 = add i32 %15, %9
  %17 = getelementptr i8, ptr %7, i32 8
  %18 = load i32, ptr %17, align 1
  %19 = add i32 %18, %8
  %20 = sub i32 %13, %19
  %21 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 4) #10
  %22 = xor i32 %20, %21
  %23 = add i32 %19, %16
  %24 = sub i32 %16, %22
  %25 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 6) #10
  %26 = xor i32 %24, %25
  %27 = add i32 %22, %23
  %28 = sub i32 %23, %26
  %29 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 8) #10
  %30 = xor i32 %28, %29
  %31 = add i32 %26, %27
  %32 = sub i32 %27, %30
  %33 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 16) #10
  %34 = xor i32 %32, %33
  %35 = add i32 %30, %31
  %36 = sub i32 %31, %34
  %37 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 19) #10
  %38 = xor i32 %36, %37
  %39 = add i32 %34, %35
  %40 = sub i32 %35, %38
  %41 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 4) #10
  %42 = xor i32 %40, %41
  %43 = add i32 %38, %39
  %44 = add i32 %11, -12
  %45 = getelementptr i8, ptr %7, i32 12
  %46 = icmp ugt i32 %44, 12
  br i1 %46, label %6, label %47

47:                                               ; preds = %6, %2
  %48 = phi i32 [ %3, %2 ], [ %44, %6 ]
  %49 = phi i32 [ %4, %2 ], [ %39, %6 ]
  %50 = phi i32 [ %4, %2 ], [ %43, %6 ]
  %51 = phi i32 [ %4, %2 ], [ %42, %6 ]
  %52 = phi ptr [ %1, %2 ], [ %45, %6 ]
  switch i32 %48, label %163 [
    i32 12, label %53
    i32 11, label %59
    i32 10, label %66
    i32 9, label %73
    i32 8, label %79
    i32 7, label %86
    i32 6, label %94
    i32 5, label %102
    i32 4, label %109
    i32 3, label %117
    i32 2, label %126
    i32 1, label %135
  ]

53:                                               ; preds = %47
  %54 = getelementptr i8, ptr %52, i32 11
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw i32 %56, 24
  %58 = add i32 %57, %51
  br label %59

59:                                               ; preds = %53, %47
  %60 = phi i32 [ %51, %47 ], [ %58, %53 ]
  %61 = getelementptr i8, ptr %52, i32 10
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 16
  %65 = add i32 %64, %60
  br label %66

66:                                               ; preds = %59, %47
  %67 = phi i32 [ %51, %47 ], [ %65, %59 ]
  %68 = getelementptr i8, ptr %52, i32 9
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 8
  %72 = add i32 %71, %67
  br label %73

73:                                               ; preds = %66, %47
  %74 = phi i32 [ %51, %47 ], [ %72, %66 ]
  %75 = getelementptr i8, ptr %52, i32 8
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = add i32 %74, %77
  br label %79

79:                                               ; preds = %73, %47
  %80 = phi i32 [ %51, %47 ], [ %78, %73 ]
  %81 = getelementptr i8, ptr %52, i32 7
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = shl nuw i32 %83, 24
  %85 = add i32 %84, %50
  br label %86

86:                                               ; preds = %79, %47
  %87 = phi i32 [ %50, %47 ], [ %85, %79 ]
  %88 = phi i32 [ %51, %47 ], [ %80, %79 ]
  %89 = getelementptr i8, ptr %52, i32 6
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl nuw nsw i32 %91, 16
  %93 = add i32 %92, %87
  br label %94

94:                                               ; preds = %86, %47
  %95 = phi i32 [ %50, %47 ], [ %93, %86 ]
  %96 = phi i32 [ %51, %47 ], [ %88, %86 ]
  %97 = getelementptr i8, ptr %52, i32 5
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = shl nuw nsw i32 %99, 8
  %101 = add i32 %100, %95
  br label %102

102:                                              ; preds = %94, %47
  %103 = phi i32 [ %50, %47 ], [ %101, %94 ]
  %104 = phi i32 [ %51, %47 ], [ %96, %94 ]
  %105 = getelementptr i8, ptr %52, i32 4
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = add i32 %103, %107
  br label %109

109:                                              ; preds = %102, %47
  %110 = phi i32 [ %50, %47 ], [ %108, %102 ]
  %111 = phi i32 [ %51, %47 ], [ %104, %102 ]
  %112 = getelementptr i8, ptr %52, i32 3
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = shl nuw i32 %114, 24
  %116 = add i32 %115, %49
  br label %117

117:                                              ; preds = %109, %47
  %118 = phi i32 [ %49, %47 ], [ %116, %109 ]
  %119 = phi i32 [ %50, %47 ], [ %110, %109 ]
  %120 = phi i32 [ %51, %47 ], [ %111, %109 ]
  %121 = getelementptr i8, ptr %52, i32 2
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = shl nuw nsw i32 %123, 16
  %125 = add i32 %124, %118
  br label %126

126:                                              ; preds = %117, %47
  %127 = phi i32 [ %49, %47 ], [ %125, %117 ]
  %128 = phi i32 [ %50, %47 ], [ %119, %117 ]
  %129 = phi i32 [ %51, %47 ], [ %120, %117 ]
  %130 = getelementptr i8, ptr %52, i32 1
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = shl nuw nsw i32 %132, 8
  %134 = add i32 %133, %127
  br label %135

135:                                              ; preds = %126, %47
  %136 = phi i32 [ %49, %47 ], [ %134, %126 ]
  %137 = phi i32 [ %50, %47 ], [ %128, %126 ]
  %138 = phi i32 [ %51, %47 ], [ %129, %126 ]
  %139 = load i8, ptr %52, align 1
  %140 = zext i8 %139 to i32
  %141 = add i32 %136, %140
  %142 = xor i32 %138, %137
  %143 = tail call i32 @llvm.fshl.i32(i32 %137, i32 %137, i32 14) #10
  %144 = sub i32 %142, %143
  %145 = xor i32 %141, %144
  %146 = tail call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 11) #10
  %147 = sub i32 %145, %146
  %148 = xor i32 %147, %137
  %149 = tail call i32 @llvm.fshl.i32(i32 %147, i32 %147, i32 25) #10
  %150 = sub i32 %148, %149
  %151 = xor i32 %150, %144
  %152 = tail call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 16) #10
  %153 = sub i32 %151, %152
  %154 = xor i32 %153, %147
  %155 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 4) #10
  %156 = sub i32 %154, %155
  %157 = xor i32 %156, %150
  %158 = lshr i32 %156, 18
  %159 = sub i32 %157, %158
  %160 = xor i32 %159, %153
  %161 = lshr i32 %159, 8
  %162 = sub i32 %160, %161
  br label %163

163:                                              ; preds = %135, %47
  %164 = phi i32 [ %51, %47 ], [ %162, %135 ]
  %165 = and i32 %164, 63
  %166 = getelementptr %struct.nfs4_xattr_cache, ptr %0, i32 0, i32 1, i32 %165
  ret ptr %166
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_copy_from_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_del(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xattr_entry_count(ptr noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp eq ptr %0, @nfs4_xattr_large_entry_shrinker
  %4 = select i1 %3, ptr @nfs4_xattr_large_entry_lru, ptr @nfs4_xattr_entry_lru
  %5 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @list_lru_count_one(ptr noundef nonnull %4, i32 noundef %6, ptr noundef %8) #10
  %10 = freeze i32 %9
  %11 = udiv i32 %10, 100
  %12 = mul i32 %11, 100
  %13 = sub i32 %10, %12
  %14 = load i32, ptr @sysctl_vfs_cache_pressure, align 4
  %15 = mul i32 %14, %11
  %16 = mul i32 %14, %13
  %17 = udiv i32 %16, 100
  %18 = add i32 %17, %15
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xattr_entry_scan(ptr noundef readnone %0, ptr noundef %1) #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %0, @nfs4_xattr_large_entry_shrinker
  %6 = select i1 %5, ptr @nfs4_xattr_large_entry_lru, ptr @nfs4_xattr_entry_lru
  %7 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 2
  %12 = call i32 @list_lru_walk_one(ptr noundef nonnull %6, i32 noundef %8, ptr noundef %10, ptr noundef nonnull @entry_lru_isolate, ptr noundef nonnull %3, ptr noundef %11) #10
  %13 = load volatile ptr, ptr %3, align 8
  %14 = icmp eq ptr %13, %3
  br i1 %14, label %66, label %15

15:                                               ; preds = %63, %2
  %16 = phi ptr [ %64, %63 ], [ %13, %2 ]
  %17 = getelementptr i8, ptr %16, i32 -20
  %18 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store volatile ptr %16, ptr %16, align 4
  store ptr %16, ptr %18, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #10, !srcloc !8
  %22 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #10, !srcloc !17
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = icmp sgt i32 %23, 0
  br i1 %26, label %42, label %27, !prof !11

27:                                               ; preds = %25
  call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 3) #10
  br label %42

28:                                               ; preds = %15
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %29 = getelementptr i8, ptr %16, i32 -8
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %33, label %32, !prof !11

32:                                               ; preds = %28
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 261, i32 noundef 9, ptr noundef null) #10
  br label %42

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %16, i32 24
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = getelementptr i8, ptr %16, i32 12
  %40 = load ptr, ptr %39, align 4
  call void @kvfree(ptr noundef %40) #10
  br label %41

41:                                               ; preds = %38, %33
  call void @kfree(ptr noundef %17) #10
  br label %42

42:                                               ; preds = %41, %32, %27, %25
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #10, !srcloc !8
  %43 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #10, !srcloc !17
  %44 = extractvalue { i32, i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = icmp sgt i32 %44, 0
  br i1 %47, label %63, label %48, !prof !11

48:                                               ; preds = %46
  call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 3) #10
  br label %63

49:                                               ; preds = %42
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %50 = getelementptr i8, ptr %16, i32 -8
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %54, label %53, !prof !11

53:                                               ; preds = %49
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 261, i32 noundef 9, ptr noundef null) #10
  br label %63

54:                                               ; preds = %49
  %55 = getelementptr i8, ptr %16, i32 24
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = getelementptr i8, ptr %16, i32 12
  %61 = load ptr, ptr %60, align 4
  call void @kvfree(ptr noundef %61) #10
  br label %62

62:                                               ; preds = %59, %54
  call void @kfree(ptr noundef %17) #10
  br label %63

63:                                               ; preds = %62, %53, %48, %46
  %64 = load volatile ptr, ptr %3, align 8
  %65 = icmp eq ptr %64, %3
  br i1 %65, label %66, label %15

66:                                               ; preds = %63, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_count_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @entry_lru_isolate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -12
  %6 = getelementptr i8, ptr %0, i32 28
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs4_xattr_bucket, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %4
  %14 = tail call i32 @_raw_spin_trylock(ptr noundef %7) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %65, label %16

16:                                               ; preds = %13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #10, !srcloc !8
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #10, !srcloc !9
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !10

20:                                               ; preds = %16
  %21 = add i32 %18, 1
  %22 = or i32 %21, %18
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %26, label %24, !prof !11

24:                                               ; preds = %20, %16
  %25 = phi i32 [ 2, %16 ], [ 1, %20 ]
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef %25) #10
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr i8, ptr %0, i32 -8
  %28 = getelementptr i8, ptr %0, i32 -4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %27, align 4
  store volatile ptr %32, ptr %29, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  store volatile ptr %29, ptr %35, align 4
  br label %36

36:                                               ; preds = %34, %31
  store ptr null, ptr %27, align 4
  store ptr null, ptr %28, align 4
  br label %37

37:                                               ; preds = %36, %26
  %38 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %9, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #10, !srcloc !8
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #10, !srcloc !21
  tail call void @list_lru_isolate(ptr noundef %1, ptr noundef %0) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %40 = load i16, ptr %7, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %60

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %9, i32 0, i32 5
  %44 = tail call i32 @_raw_spin_trylock(ptr noundef %43) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #10, !srcloc !8
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #10, !srcloc !9
  %48 = extractvalue { i32, i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50, !prof !10

50:                                               ; preds = %46
  %51 = add i32 %48, 1
  %52 = or i32 %51, %48
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %56, label %54, !prof !11

54:                                               ; preds = %50, %46
  %55 = phi i32 [ 2, %46 ], [ 1, %50 ]
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef %55) #10
  br label %56

56:                                               ; preds = %54, %50
  %57 = getelementptr inbounds %struct.nfs4_xattr_cache, ptr %9, i32 0, i32 7
  store ptr null, ptr %57, align 4
  tail call void @list_lru_isolate(ptr noundef %1, ptr noundef %0) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %58 = load i16, ptr %43, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %60

60:                                               ; preds = %56, %37
  %61 = getelementptr i8, ptr %0, i32 8
  %62 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  store ptr %61, ptr %62, align 4
  store ptr %3, ptr %61, align 4
  %64 = getelementptr i8, ptr %0, i32 12
  store ptr %63, ptr %64, align 4
  store volatile ptr %61, ptr %63, align 4
  br label %65

65:                                               ; preds = %60, %42, %13
  %66 = phi i32 [ 0, %60 ], [ 3, %13 ], [ 3, %42 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_walk_one(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_isolate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xattr_cache_count(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @list_lru_count_one(ptr noundef nonnull @nfs4_xattr_cache_lru, i32 noundef %4, ptr noundef %6) #10
  %8 = freeze i32 %7
  %9 = udiv i32 %8, 100
  %10 = mul i32 %9, 100
  %11 = sub i32 %8, %10
  %12 = load i32, ptr @sysctl_vfs_cache_pressure, align 4
  %13 = mul i32 %12, %9
  %14 = mul i32 %12, %11
  %15 = udiv i32 %14, 100
  %16 = add i32 %15, %13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xattr_cache_scan(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 2
  %10 = call i32 @list_lru_walk_one(ptr noundef nonnull @nfs4_xattr_cache_lru, i32 noundef %6, ptr noundef %8, ptr noundef nonnull @cache_lru_isolate, ptr noundef nonnull %3, ptr noundef %9) #10
  %11 = load volatile ptr, ptr %3, align 8
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %43, label %13

13:                                               ; preds = %40, %2
  %14 = phi ptr [ %41, %40 ], [ %11, %2 ]
  %15 = getelementptr i8, ptr %14, i32 -1036
  %16 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store volatile ptr %14, ptr %14, align 4
  store ptr %14, ptr %16, align 4
  call fastcc void @nfs4_xattr_discard_cache(ptr noundef %15)
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #10, !srcloc !8
  %20 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #10, !srcloc !17
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = icmp sgt i32 %21, 0
  br i1 %24, label %40, label %25, !prof !11

25:                                               ; preds = %23
  call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #10
  br label %40

26:                                               ; preds = %13
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  br label %27

27:                                               ; preds = %33, %26
  %28 = phi i32 [ 0, %26 ], [ %35, %33 ]
  %29 = getelementptr %struct.nfs4_xattr_cache, ptr %15, i32 0, i32 1, i32 %28, i32 1
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32, !prof !11

32:                                               ; preds = %27
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %40

33:                                               ; preds = %27
  %34 = getelementptr %struct.nfs4_xattr_cache, ptr %15, i32 0, i32 1, i32 %28, i32 3
  store i8 0, ptr %34, align 4
  %35 = add nuw nsw i32 %28, 1
  %36 = icmp eq i32 %35, 64
  br i1 %36, label %37, label %27

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %14, i32 20
  store ptr null, ptr %38, align 4
  %39 = load ptr, ptr @nfs4_xattr_cache_cachep, align 4
  call void @kmem_cache_free(ptr noundef %39, ptr noundef %15) #10
  br label %40

40:                                               ; preds = %37, %32, %25, %23
  %41 = load volatile ptr, ptr %3, align 8
  %42 = icmp eq ptr %41, %3
  br i1 %42, label %43, label %13

43:                                               ; preds = %40, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cache_lru_isolate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -1028
  %6 = getelementptr i8, ptr %0, i32 16
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %36, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 24
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 17
  %13 = tail call i32 @_raw_spin_trylock(ptr noundef %12) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #10, !srcloc !8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #10, !srcloc !9
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !10

19:                                               ; preds = %15
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23, !prof !11

23:                                               ; preds = %19, %15
  %24 = phi i32 [ 2, %15 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef %24) #10
  br label %25

25:                                               ; preds = %23, %19
  store ptr null, ptr %10, align 4
  %26 = getelementptr i8, ptr %11, i32 392
  store ptr null, ptr %26, align 8
  %27 = getelementptr i8, ptr %11, i32 -152
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, -32769
  store i32 %29, ptr %27, align 8
  tail call void @list_lru_isolate(ptr noundef %1, ptr noundef %0) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %30 = load i16, ptr %12, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %32 = getelementptr i8, ptr %0, i32 8
  %33 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  store ptr %32, ptr %33, align 4
  store ptr %3, ptr %32, align 4
  %35 = getelementptr i8, ptr %0, i32 12
  store ptr %34, ptr %35, align 4
  store volatile ptr %32, ptr %34, align 4
  br label %36

36:                                               ; preds = %25, %9, %4
  %37 = phi i32 [ 0, %25 ], [ 3, %4 ], [ 3, %9 ]
  ret i32 %37
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
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
!8 = !{i64 517396, i64 2148007367, i64 2148007393, i64 2148007440, i64 2148007462, i64 2148007490, i64 2148007510}
!9 = !{i64 2148021037, i64 2148021069, i64 2148021098, i64 2148021132, i64 2148021163, i64 2148021186}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148962088}
!13 = !{i64 2148957912}
!14 = !{i64 2148957987, i64 2148958014, i64 2148958061, i64 2148958083, i64 2148958111, i64 2148958131}
!15 = !{i64 2148985091}
!16 = !{i64 2148121235}
!17 = !{i64 2148023394, i64 2148023426, i64 2148023455, i64 2148023489, i64 2148023520, i64 2148023543}
!18 = !{i64 2149030076}
!19 = !{i8 0, i8 2}
!20 = !{i64 2148019579, i64 2148019605, i64 2148019634, i64 2148019668, i64 2148019699, i64 2148019722}
!21 = !{i64 2148021936, i64 2148021962, i64 2148021991, i64 2148022025, i64 2148022056, i64 2148022079}
