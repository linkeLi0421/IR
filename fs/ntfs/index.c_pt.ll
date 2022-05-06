; ModuleID = '/llk/IR/fs/ntfs/index.c_pt.bc'
source_filename = "../fs/ntfs/index.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ntfs_index_context = type { ptr, ptr, ptr, i16, i8, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.3, %union.anon.18, %struct.atomic_t }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.18 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct._ntfs_inode = type { %struct.rwlock_t, i64, i64, i32, i32, i16, %struct.atomic_t, ptr, i32, ptr, i32, %struct.runlist, %struct.mutex, ptr, i32, i32, ptr, %struct.runlist, %union.anon.67, %struct.mutex, i32, %union.anon.70 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.runlist = type { ptr, %struct.rw_semaphore }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%union.anon.67 = type { %struct.anon.69 }
%struct.anon.69 = type { i64, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%union.anon.70 = type { ptr }
%struct.ntfs_attr_search_ctx = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ATTR_RECORD = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.79 }
%union.anon.79 = type { %struct.anon.81 }
%struct.anon.81 = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.anon.80 = type { i32, i16, i8, i8 }
%struct.INDEX_ROOT = type { i32, i32, i32, i8, [3 x i8], %struct.INDEX_HEADER }
%struct.INDEX_HEADER = type { i32, i32, i32, i8, [3 x i8] }
%struct.INDEX_ENTRY = type <{ %union.anon.71, i16, i16, i16, i16, %union.anon.74 }>
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { i64 }
%union.anon.74 = type <{ %struct.GUID, [50 x i8] }>
%struct.GUID = type { i32, i16, i16, [8 x i8] }
%struct.anon.73 = type { i16, i16, i32 }
%struct.big_ntfs_inode = type { %struct._ntfs_inode, %struct.inode }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.34, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.35, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.36, ptr, %struct.address_space, %struct.list_head, %union.anon.37, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.34 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.35 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.36 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.37 = type { ptr }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, ptr, ptr, %struct.rw_semaphore, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr }
%struct.INDEX_BLOCK = type { i32, i16, i16, i64, i64, %struct.INDEX_HEADER }

@ntfs_index_ctx_cache = external dso_local local_unnamed_addr global ptr, align 4
@__func__.ntfs_index_lookup = private unnamed_addr constant [18 x i8] c"ntfs_index_lookup\00", align 1
@.str = private unnamed_addr constant [62 x i8] c"Index uses unsupported collation rule 0x%x.  Aborting lookup.\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"map_mft_record() failed with error code %ld.\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Index root attribute missing in inode 0x%lx.\00", align 1
@.str.3 = private unnamed_addr constant [99 x i8] c"No index allocation attribute but index entry requires one.  Inode 0x%lx is corrupt or driver bug.\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to map index page, error %ld.\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"Out of bounds check failed.  Corrupt inode 0x%lx or driver bug.\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"Index record with vcn 0x%llx is corrupt.  Corrupt inode 0x%lx.  Run chkdsk.\00", align 1
@.str.7 = private unnamed_addr constant [116 x i8] c"Actual VCN (0x%llx) of index buffer is different from expected VCN (0x%llx).  Inode 0x%lx is corrupt or driver bug.\00", align 1
@.str.8 = private unnamed_addr constant [136 x i8] c"Index buffer (VCN 0x%llx) of inode 0x%lx has a size (%u) differing from the index specified size (%u).  Inode is corrupt or driver bug.\00", align 1
@.str.9 = private unnamed_addr constant [132 x i8] c"Index buffer (VCN 0x%llx) of inode 0x%lx crosses page boundary.  Impossible!  Cannot access!  This is probably a bug in the driver.\00", align 1
@.str.10 = private unnamed_addr constant [71 x i8] c"Size of index buffer (VCN 0x%llx) of inode 0x%lx exceeds maximum size.\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Index entry out of bounds in inode 0x%lx.\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"Index entry with child node found in a leaf node in inode 0x%lx.\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"Negative child node vcn in inode 0x%lx.\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Corrupt index.  Aborting lookup.\00", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @ntfs_index_ctx_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @ntfs_index_ctx_cache, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3136) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  store ptr %0, ptr %3, align 8
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false)
  br label %7

7:                                                ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ntfs_index_ctx_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ntfs_index_context, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %65, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ntfs_index_context, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 2, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ntfs_index_context, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %11) #5
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.ntfs_index_context, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %65, label %18

18:                                               ; preds = %14
  tail call void @unmap_mft_record(ptr noundef nonnull %16) #5
  br label %65

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.ntfs_index_context, ptr %0, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %65, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28, !prof !9

28:                                               ; preds = %23
  %29 = add i32 %25, -1
  br label %32

30:                                               ; preds = %23
  %31 = ptrtoint ptr %21 to i32
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = inttoptr i32 %33 to ptr
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39, !prof !10

38:                                               ; preds = %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/index.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #5, !srcloc !11
  unreachable

39:                                               ; preds = %32
  tail call void @unlock_page(ptr noundef nonnull %21) #5
  %40 = load i32, ptr %21, align 4
  %41 = lshr i32 %40, 30
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = icmp ne i32 %41, 3
  %45 = load i32, ptr @movable_zone, align 4
  %46 = icmp ne i32 %45, 2
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %49, label %48

48:                                               ; preds = %43, %39
  tail call void @kunmap_high(ptr noundef nonnull %21) #5
  br label %49

49:                                               ; preds = %48, %43
  %50 = load volatile i32, ptr %24, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53, !prof !9

53:                                               ; preds = %49
  %54 = add i32 %50, -1
  br label %57

55:                                               ; preds = %49
  %56 = ptrtoint ptr %21 to i32
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = inttoptr i32 %58 to ptr
  %60 = getelementptr inbounds %struct.page, ptr %59, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #5, !srcloc !13
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #5, !srcloc !14
  %62 = extractvalue { i32, i32 } %61, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  tail call void @__put_page(ptr noundef %59) #5
  br label %65

65:                                               ; preds = %64, %57, %19, %18, %14, %1
  %66 = load ptr, ptr @ntfs_index_ctx_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %66, ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_attr_put_search_ctx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mft_record(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ntfs_unmap_page(ptr noundef %0) unnamed_addr #2 {
  %2 = load i32, ptr %0, align 4
  %3 = lshr i32 %2, 30
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = icmp ne i32 %3, 3
  %7 = load i32, ptr @movable_zone, align 4
  %8 = icmp ne i32 %7, 2
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %5, %1
  tail call void @kunmap_high(ptr noundef %0) #5
  br label %11

11:                                               ; preds = %10, %5
  %12 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !9

16:                                               ; preds = %11
  %17 = add i32 %13, -1
  br label %20

18:                                               ; preds = %11
  %19 = ptrtoint ptr %0 to i32
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #5, !srcloc !13
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #5, !srcloc !14
  %25 = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  tail call void @__put_page(ptr noundef %22) #5
  br label %28

28:                                               ; preds = %27, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ntfs_index_lookup(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 21
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 3
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !10

14:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/index.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #5, !srcloc !16
  unreachable

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 160
  br i1 %18, label %20, label %19, !prof !9

19:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/index.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #5, !srcloc !17
  unreachable

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 20
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %25, label %24, !prof !9

24:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/index.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

25:                                               ; preds = %20
  %26 = icmp eq ptr %9, null
  br i1 %26, label %27, label %28, !prof !10

27:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/index.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 127, 0\0A.popsection", ""() #5, !srcloc !19
  unreachable

28:                                               ; preds = %25
  %29 = icmp eq ptr %0, null
  br i1 %29, label %30, label %31, !prof !10

30:                                               ; preds = %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/index.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 128, 0\0A.popsection", ""() #5, !srcloc !20
  unreachable

31:                                               ; preds = %28
  %32 = icmp slt i32 %1, 1
  br i1 %32, label %33, label %34, !prof !10

33:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/index.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 129, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 18
  %36 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 18, i32 0, i32 1
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, -17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45, !prof !9

40:                                               ; preds = %34
  %41 = icmp ult i32 %37, 3
  %42 = and i32 %37, -4
  %43 = icmp eq i32 %42, 16
  %44 = or i1 %41, %43
  br i1 %44, label %46, label %45, !prof !9

45:                                               ; preds = %40, %34
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %37) #5
  br label %419

46:                                               ; preds = %40
  %47 = tail call ptr @map_mft_record(ptr noundef nonnull %9) #5
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = ptrtoint ptr %47 to i32
  %51 = sub i32 0, %50
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef %51) #5
  br label %419

52:                                               ; preds = %46
  %53 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef nonnull %9, ptr noundef %47) #5
  %54 = icmp eq ptr %53, null
  br i1 %54, label %413, label %55, !prof !10

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 9
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 10
  %59 = load i32, ptr %58, align 4
  %60 = tail call i32 @ntfs_attr_lookup(i32 noundef 144, ptr noundef %57, i32 noundef %59, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %53) #5
  switch i32 %60, label %396 [
    i32 0, label %64
    i32 -2, label %61
  ], !prof !22

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef %63) #5
  br label %409

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %53, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.ATTR_RECORD, ptr %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.anon.80, ptr %67, i32 0, i32 1
  %69 = load i16, ptr %68, align 1
  %70 = zext i16 %69 to i32
  %71 = getelementptr i8, ptr %66, i32 %70
  %72 = getelementptr inbounds %struct.INDEX_ROOT, ptr %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.INDEX_HEADER, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 1
  %75 = getelementptr i8, ptr %72, i32 %74
  %76 = load i32, ptr %72, align 1
  %77 = getelementptr i8, ptr %72, i32 %76
  %78 = load ptr, ptr %53, align 4
  %79 = icmp ult ptr %77, %78
  %80 = getelementptr i8, ptr %77, i32 16
  %81 = icmp ugt ptr %80, %75
  %82 = select i1 %79, i1 true, i1 %81
  br i1 %82, label %418, label %83

83:                                               ; preds = %145, %64
  %84 = phi ptr [ %148, %145 ], [ %77, %64 ]
  %85 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %84, i32 0, i32 1
  %86 = load i16, ptr %85, align 1
  %87 = zext i16 %86 to i32
  %88 = getelementptr i8, ptr %84, i32 %87
  %89 = icmp ugt ptr %88, %75
  br i1 %89, label %418, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %84, i32 0, i32 3
  %92 = load i16, ptr %91, align 1
  %93 = and i16 %92, 2
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %95, label %154

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %84, i32 0, i32 2
  %97 = load i16, ptr %96, align 1
  %98 = zext i16 %97 to i32
  %99 = add nuw nsw i32 %98, 16
  %100 = load i16, ptr %84, align 1
  %101 = zext i16 %100 to i32
  %102 = icmp ugt i32 %99, %101
  br i1 %102, label %418, label %103

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.anon.73, ptr %84, i32 0, i32 1
  %105 = load i16, ptr %104, align 1
  %106 = zext i16 %105 to i32
  %107 = add nuw nsw i32 %106, %101
  %108 = icmp ugt i32 %107, %87
  br i1 %108, label %418, label %109

109:                                              ; preds = %103
  %110 = icmp eq i32 %98, %1
  br i1 %110, label %111, label %138

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %84, i32 0, i32 5
  %113 = tail call i32 @bcmp(ptr nonnull %0, ptr %112, i32 %1)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %154, %138, %111
  %116 = phi i32 [ -2, %154 ], [ %141, %138 ], [ 0, %111 ]
  %117 = getelementptr inbounds %struct.ntfs_index_context, ptr %2, i32 0, i32 4
  store i8 1, ptr %117, align 2
  %118 = getelementptr inbounds %struct.ntfs_index_context, ptr %2, i32 0, i32 5
  store ptr %71, ptr %118, align 4
  br label %119

119:                                              ; preds = %341, %115
  %120 = phi ptr [ null, %341 ], [ %53, %115 ]
  %121 = phi ptr [ null, %341 ], [ %9, %115 ]
  %122 = phi ptr [ %252, %341 ], [ null, %115 ]
  %123 = phi ptr [ %183, %341 ], [ null, %115 ]
  %124 = phi ptr [ %304, %341 ], [ %84, %115 ]
  %125 = phi i32 [ %342, %341 ], [ %116, %115 ]
  %126 = getelementptr inbounds %struct.ntfs_index_context, ptr %2, i32 0, i32 6
  store ptr %120, ptr %126, align 4
  %127 = getelementptr inbounds %struct.ntfs_index_context, ptr %2, i32 0, i32 7
  store ptr %121, ptr %127, align 4
  %128 = getelementptr inbounds %struct.ntfs_index_context, ptr %2, i32 0, i32 8
  store ptr %122, ptr %128, align 4
  %129 = getelementptr inbounds %struct.ntfs_index_context, ptr %2, i32 0, i32 9
  store ptr %123, ptr %129, align 4
  %130 = getelementptr inbounds %struct.ntfs_index_context, ptr %2, i32 0, i32 1
  store ptr %124, ptr %130, align 4
  %131 = load i16, ptr %124, align 1
  %132 = zext i16 %131 to i32
  %133 = getelementptr i8, ptr %124, i32 %132
  %134 = getelementptr inbounds %struct.ntfs_index_context, ptr %2, i32 0, i32 2
  store ptr %133, ptr %134, align 4
  %135 = getelementptr inbounds %struct.anon.73, ptr %124, i32 0, i32 1
  %136 = load i16, ptr %135, align 1
  %137 = getelementptr inbounds %struct.ntfs_index_context, ptr %2, i32 0, i32 3
  store i16 %136, ptr %137, align 4
  br label %419

138:                                              ; preds = %111, %109
  %139 = load i32, ptr %36, align 8
  %140 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %84, i32 0, i32 5
  %141 = tail call i32 @ntfs_collate(ptr noundef %6, i32 noundef %139, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %140, i32 noundef %98) #5
  switch i32 %141, label %145 [
    i32 -1, label %142
    i32 0, label %115
  ]

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %84, i32 0, i32 3
  %144 = load i16, ptr %143, align 1
  br label %154

145:                                              ; preds = %138
  %146 = load i16, ptr %85, align 1
  %147 = zext i16 %146 to i32
  %148 = getelementptr i8, ptr %84, i32 %147
  %149 = load ptr, ptr %53, align 4
  %150 = icmp ult ptr %148, %149
  %151 = getelementptr i8, ptr %148, i32 16
  %152 = icmp ugt ptr %151, %75
  %153 = select i1 %150, i1 true, i1 %152
  br i1 %153, label %418, label %83

154:                                              ; preds = %142, %90
  %155 = phi i16 [ %144, %142 ], [ %92, %90 ]
  %156 = and i16 %155, 1
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %115, label %158

158:                                              ; preds = %154
  %159 = load volatile i32, ptr %10, align 4
  %160 = and i32 %159, 32
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 4
  %164 = load i32, ptr %163, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef %164) #5
  br label %401

165:                                              ; preds = %158
  %166 = load i16, ptr %85, align 1
  %167 = zext i16 %166 to i32
  %168 = getelementptr i8, ptr %84, i32 %167
  %169 = getelementptr i8, ptr %168, i32 -8
  %170 = load i64, ptr %169, align 8
  %171 = getelementptr inbounds %struct.big_ntfs_inode, ptr %4, i32 0, i32 1, i32 9
  %172 = load ptr, ptr %171, align 8
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %53) #5
  tail call void @unmap_mft_record(ptr noundef nonnull %9) #5
  %173 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 18, i32 0, i32 3
  %174 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 13
  %175 = load i8, ptr %173, align 1
  %176 = zext i8 %175 to i64
  %177 = shl i64 %170, %176
  %178 = lshr i64 %177, 12
  %179 = trunc i64 %178 to i32
  %180 = tail call ptr @read_cache_page(ptr noundef %172, i32 noundef %179, ptr noundef null, ptr noundef null) #5
  %181 = icmp ugt ptr %180, inttoptr (i32 -4096 to ptr)
  br i1 %181, label %238, label %182

182:                                              ; preds = %384, %165
  %183 = phi ptr [ %390, %384 ], [ %180, %165 ]
  %184 = phi i64 [ %376, %384 ], [ %170, %165 ]
  %185 = load i32, ptr %183, align 4
  %186 = lshr i32 %185, 30
  %187 = icmp eq i32 %186, 2
  br i1 %187, label %195, label %188

188:                                              ; preds = %182
  %189 = icmp ne i32 %186, 3
  %190 = load i32, ptr @movable_zone, align 4
  %191 = icmp ne i32 %190, 2
  %192 = select i1 %189, i1 true, i1 %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = tail call ptr @page_address(ptr noundef %183) #5
  br label %197

195:                                              ; preds = %188, %182
  %196 = tail call ptr @kmap_high(ptr noundef %183) #5
  br label %197

197:                                              ; preds = %195, %193
  %198 = getelementptr inbounds %struct.page, ptr %183, i32 0, i32 1
  %199 = load volatile i32, ptr %198, align 4
  %200 = and i32 %199, 1
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %204, label %202, !prof !9

202:                                              ; preds = %197
  %203 = add i32 %199, -1
  br label %206

204:                                              ; preds = %197
  %205 = ptrtoint ptr %183 to i32
  br label %206

206:                                              ; preds = %204, %202
  %207 = phi i32 [ %203, %202 ], [ %205, %204 ]
  %208 = inttoptr i32 %207 to ptr
  %209 = load volatile i32, ptr %208, align 4
  %210 = and i32 %209, 256
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %242, label %212

212:                                              ; preds = %206
  %213 = load i32, ptr %183, align 4
  %214 = lshr i32 %213, 30
  %215 = icmp eq i32 %214, 2
  br i1 %215, label %221, label %216

216:                                              ; preds = %212
  %217 = icmp ne i32 %214, 3
  %218 = load i32, ptr @movable_zone, align 4
  %219 = icmp ne i32 %218, 2
  %220 = select i1 %217, i1 true, i1 %219
  br i1 %220, label %222, label %221

221:                                              ; preds = %216, %212
  tail call void @kunmap_high(ptr noundef %183) #5
  br label %222

222:                                              ; preds = %221, %216
  %223 = load volatile i32, ptr %198, align 4
  %224 = and i32 %223, 1
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %228, label %226, !prof !9

226:                                              ; preds = %222
  %227 = add i32 %223, -1
  br label %230

228:                                              ; preds = %222
  %229 = ptrtoint ptr %183 to i32
  br label %230

230:                                              ; preds = %228, %226
  %231 = phi i32 [ %227, %226 ], [ %229, %228 ]
  %232 = inttoptr i32 %231 to ptr
  %233 = getelementptr inbounds %struct.page, ptr %232, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %233) #5, !srcloc !13
  %234 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %233, ptr %233, i32 1, ptr elementtype(i32) %233) #5, !srcloc !14
  %235 = extractvalue { i32, i32 } %234, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %230
  tail call void @__put_page(ptr noundef %232) #5
  br label %238

238:                                              ; preds = %384, %237, %230, %165
  %239 = phi ptr [ inttoptr (i32 -5 to ptr), %230 ], [ inttoptr (i32 -5 to ptr), %237 ], [ %180, %165 ], [ %390, %384 ]
  %240 = ptrtoint ptr %239 to i32
  %241 = sub i32 0, %240
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %7, ptr noundef nonnull @.str.4, i32 noundef %241) #5
  br label %396

242:                                              ; preds = %206
  tail call fastcc void @lock_page(ptr noundef %183)
  %243 = tail call ptr @page_address(ptr noundef %183) #5
  %244 = getelementptr i8, ptr %243, i32 4096
  br label %245

245:                                              ; preds = %378, %242
  %246 = phi i64 [ %184, %242 ], [ %376, %378 ]
  %247 = load i8, ptr %173, align 1
  %248 = zext i8 %247 to i64
  %249 = shl i64 %246, %248
  %250 = trunc i64 %249 to i32
  %251 = and i32 %250, 4095
  %252 = getelementptr i8, ptr %243, i32 %251
  %253 = icmp ult ptr %252, %243
  %254 = icmp ugt ptr %252, %244
  %255 = or i1 %253, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %245
  %257 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 4
  %258 = load i32, ptr %257, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %7, ptr noundef nonnull @.str.5, i32 noundef %258) #5
  br label %395

259:                                              ; preds = %245
  %260 = load i32, ptr %252, align 1
  %261 = icmp eq i32 %260, 1480871497
  br i1 %261, label %265, label %262, !prof !9

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 4
  %264 = load i32, ptr %263, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %7, ptr noundef nonnull @.str.6, i64 noundef %246, i32 noundef %264) #5
  br label %395

265:                                              ; preds = %259
  %266 = getelementptr inbounds %struct.INDEX_BLOCK, ptr %252, i32 0, i32 4
  %267 = load i64, ptr %266, align 1
  %268 = icmp eq i64 %267, %246
  br i1 %268, label %272, label %269

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 4
  %271 = load i32, ptr %270, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %7, ptr noundef nonnull @.str.7, i64 noundef %267, i64 noundef %246, i32 noundef %271) #5
  br label %395

272:                                              ; preds = %265
  %273 = getelementptr inbounds %struct.INDEX_BLOCK, ptr %252, i32 0, i32 5
  %274 = getelementptr inbounds %struct.INDEX_HEADER, ptr %273, i32 0, i32 2
  %275 = load i32, ptr %274, align 1
  %276 = add i32 %275, 24
  %277 = load i32, ptr %35, align 8
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %282, label %279

279:                                              ; preds = %272
  %280 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 4
  %281 = load i32, ptr %280, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %7, ptr noundef nonnull @.str.8, i64 noundef %246, i32 noundef %281, i32 noundef %276, i32 noundef %277) #5
  br label %395

282:                                              ; preds = %272
  %283 = getelementptr i8, ptr %252, i32 %276
  %284 = icmp ugt ptr %283, %244
  br i1 %284, label %285, label %288

285:                                              ; preds = %282
  %286 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 4
  %287 = load i32, ptr %286, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %7, ptr noundef nonnull @.str.9, i64 noundef %246, i32 noundef %287) #5
  br label %395

288:                                              ; preds = %282
  %289 = getelementptr inbounds %struct.INDEX_HEADER, ptr %273, i32 0, i32 1
  %290 = load i32, ptr %289, align 1
  %291 = getelementptr i8, ptr %273, i32 %290
  %292 = icmp ugt ptr %291, %283
  br i1 %292, label %293, label %296

293:                                              ; preds = %288
  %294 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 4
  %295 = load i32, ptr %294, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %7, ptr noundef nonnull @.str.10, i64 noundef %246, i32 noundef %295) #5
  br label %395

296:                                              ; preds = %288
  %297 = load i32, ptr %273, align 1
  %298 = getelementptr i8, ptr %273, i32 %297
  %299 = icmp ult ptr %298, %252
  %300 = getelementptr i8, ptr %298, i32 16
  %301 = icmp ugt ptr %300, %291
  %302 = select i1 %299, i1 true, i1 %301
  br i1 %302, label %310, label %303

303:                                              ; preds = %351, %296
  %304 = phi ptr [ %354, %351 ], [ %298, %296 ]
  %305 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %304, i32 0, i32 1
  %306 = load i16, ptr %305, align 1
  %307 = zext i16 %306 to i32
  %308 = getelementptr i8, ptr %304, i32 %307
  %309 = icmp ugt ptr %308, %291
  br i1 %309, label %310, label %313

310:                                              ; preds = %351, %303, %296
  %311 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 4
  %312 = load i32, ptr %311, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %7, ptr noundef nonnull @.str.11, i32 noundef %312) #5
  br label %395

313:                                              ; preds = %303
  %314 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %304, i32 0, i32 3
  %315 = load i16, ptr %314, align 1
  %316 = and i16 %315, 2
  %317 = icmp eq i16 %316, 0
  br i1 %317, label %318, label %359

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %304, i32 0, i32 2
  %320 = load i16, ptr %319, align 1
  %321 = zext i16 %320 to i32
  %322 = add nuw nsw i32 %321, 16
  %323 = load i16, ptr %304, align 1
  %324 = zext i16 %323 to i32
  %325 = icmp ugt i32 %322, %324
  br i1 %325, label %332, label %326

326:                                              ; preds = %318
  %327 = getelementptr inbounds %struct.anon.73, ptr %304, i32 0, i32 1
  %328 = load i16, ptr %327, align 1
  %329 = zext i16 %328 to i32
  %330 = add nuw nsw i32 %329, %324
  %331 = icmp ugt i32 %330, %307
  br i1 %331, label %332, label %335

332:                                              ; preds = %326, %318
  %333 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 4
  %334 = load i32, ptr %333, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %7, ptr noundef nonnull @.str.11, i32 noundef %334) #5
  br label %395

335:                                              ; preds = %326
  %336 = icmp eq i32 %321, %1
  br i1 %336, label %337, label %344

337:                                              ; preds = %335
  %338 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %304, i32 0, i32 5
  %339 = tail call i32 @bcmp(ptr nonnull %0, ptr %338, i32 %1)
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %359, %344, %337
  %342 = phi i32 [ %347, %344 ], [ 0, %337 ], [ -2, %359 ]
  %343 = getelementptr inbounds %struct.ntfs_index_context, ptr %2, i32 0, i32 4
  store i8 0, ptr %343, align 2
  br label %119

344:                                              ; preds = %337, %335
  %345 = load i32, ptr %36, align 8
  %346 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %304, i32 0, i32 5
  %347 = tail call i32 @ntfs_collate(ptr noundef %6, i32 noundef %345, ptr noundef nonnull %0, i32 noundef %1, ptr noundef %346, i32 noundef %321) #5
  switch i32 %347, label %351 [
    i32 -1, label %348
    i32 0, label %341
  ]

348:                                              ; preds = %344
  %349 = getelementptr inbounds %struct.INDEX_ENTRY, ptr %304, i32 0, i32 3
  %350 = load i16, ptr %349, align 1
  br label %359

351:                                              ; preds = %344
  %352 = load i16, ptr %305, align 1
  %353 = zext i16 %352 to i32
  %354 = getelementptr i8, ptr %304, i32 %353
  %355 = icmp ult ptr %354, %252
  %356 = getelementptr i8, ptr %354, i32 16
  %357 = icmp ugt ptr %356, %291
  %358 = select i1 %355, i1 true, i1 %357
  br i1 %358, label %310, label %303

359:                                              ; preds = %348, %313
  %360 = phi i16 [ %350, %348 ], [ %315, %313 ]
  %361 = and i16 %360, 1
  %362 = icmp eq i16 %361, 0
  br i1 %362, label %341, label %363

363:                                              ; preds = %359
  %364 = getelementptr inbounds %struct.INDEX_HEADER, ptr %273, i32 0, i32 3
  %365 = load i8, ptr %364, align 1
  %366 = and i8 %365, 1
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %363
  %369 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 4
  %370 = load i32, ptr %369, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %7, ptr noundef nonnull @.str.12, i32 noundef %370) #5
  br label %395

371:                                              ; preds = %363
  %372 = load i16, ptr %305, align 1
  %373 = zext i16 %372 to i32
  %374 = getelementptr i8, ptr %304, i32 -8
  %375 = getelementptr i8, ptr %374, i32 %373
  %376 = load i64, ptr %375, align 8
  %377 = icmp sgt i64 %376, -1
  br i1 %377, label %378, label %392

378:                                              ; preds = %371
  %379 = load i8, ptr %174, align 8
  %380 = zext i8 %379 to i64
  %381 = xor i64 %376, %246
  %382 = shl i64 %381, %380
  %383 = icmp ult i64 %382, 4096
  br i1 %383, label %245, label %384

384:                                              ; preds = %378
  tail call void @unlock_page(ptr noundef %183) #5
  tail call fastcc void @ntfs_unmap_page(ptr noundef %183)
  %385 = load i8, ptr %173, align 1
  %386 = zext i8 %385 to i64
  %387 = shl i64 %376, %386
  %388 = lshr i64 %387, 12
  %389 = trunc i64 %388 to i32
  %390 = tail call ptr @read_cache_page(ptr noundef %172, i32 noundef %389, ptr noundef null, ptr noundef null) #5
  %391 = icmp ugt ptr %390, inttoptr (i32 -4096 to ptr)
  br i1 %391, label %238, label %182

392:                                              ; preds = %371
  %393 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 4
  %394 = load i32, ptr %393, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef %394) #5
  br label %395

395:                                              ; preds = %392, %368, %332, %310, %293, %285, %279, %269, %262, %256
  tail call void @unlock_page(ptr noundef %183) #5
  tail call fastcc void @ntfs_unmap_page(ptr noundef %183)
  br label %401

396:                                              ; preds = %238, %55
  %397 = phi ptr [ null, %238 ], [ %47, %55 ]
  %398 = phi ptr [ null, %238 ], [ %53, %55 ]
  %399 = phi i32 [ %240, %238 ], [ %60, %55 ]
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %418, %396, %395, %162
  %402 = phi ptr [ %398, %396 ], [ %53, %162 ], [ null, %395 ], [ %53, %418 ]
  %403 = phi ptr [ %397, %396 ], [ %47, %162 ], [ null, %395 ], [ %47, %418 ]
  br label %404

404:                                              ; preds = %401, %396
  %405 = phi ptr [ %402, %401 ], [ %398, %396 ]
  %406 = phi ptr [ %403, %401 ], [ %397, %396 ]
  %407 = phi i32 [ -5, %401 ], [ %399, %396 ]
  %408 = icmp eq ptr %405, null
  br i1 %408, label %413, label %409

409:                                              ; preds = %404, %61
  %410 = phi i32 [ -5, %61 ], [ %407, %404 ]
  %411 = phi ptr [ %47, %61 ], [ %406, %404 ]
  %412 = phi ptr [ %53, %61 ], [ %405, %404 ]
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %412) #5
  br label %413

413:                                              ; preds = %409, %404, %52
  %414 = phi i32 [ %410, %409 ], [ %407, %404 ], [ -12, %52 ]
  %415 = phi ptr [ %411, %409 ], [ %406, %404 ], [ %47, %52 ]
  %416 = icmp eq ptr %415, null
  br i1 %416, label %419, label %417

417:                                              ; preds = %413
  tail call void @unmap_mft_record(ptr noundef nonnull %9) #5
  br label %419

418:                                              ; preds = %145, %103, %95, %83, %64
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_index_lookup, ptr noundef %7, ptr noundef nonnull @.str.14) #5
  br label %401

419:                                              ; preds = %417, %413, %119, %49, %45
  %420 = phi i32 [ %50, %49 ], [ %125, %119 ], [ -95, %45 ], [ %414, %417 ], [ %414, %413 ]
  ret i32 %420
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_mft_record(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_get_search_ctx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_lookup(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_collate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lock_page(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !9

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #5, !srcloc !13
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #5, !srcloc !23
  %18 = extractvalue { i32, i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !24
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %10
  tail call void @__folio_lock(ptr noundef %12) #5
  br label %22

22:                                               ; preds = %21, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind readonly willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2152817876, i64 2152818355, i64 2152817913, i64 2152817969, i64 2152818003, i64 2152818027, i64 2152818068, i64 2152818089, i64 2152818117, i64 2152818151}
!12 = !{i64 2148370183}
!13 = !{i64 768118, i64 2148258089, i64 2148258115, i64 2148258162, i64 2148258184, i64 2148258212, i64 2148258232}
!14 = !{i64 2148272545, i64 2148272577, i64 2148272606, i64 2148272640, i64 2148272671, i64 2148272694}
!15 = !{i64 2148370386}
!16 = !{i64 2152819277, i64 2152819757, i64 2152819314, i64 2152819370, i64 2152819404, i64 2152819428, i64 2152819469, i64 2152819490, i64 2152819518, i64 2152819552}
!17 = !{i64 2152820327, i64 2152820807, i64 2152820364, i64 2152820420, i64 2152820454, i64 2152820478, i64 2152820519, i64 2152820540, i64 2152820568, i64 2152820602}
!18 = !{i64 2152821355, i64 2152821835, i64 2152821392, i64 2152821448, i64 2152821482, i64 2152821506, i64 2152821547, i64 2152821568, i64 2152821596, i64 2152821630}
!19 = !{i64 2152822351, i64 2152822831, i64 2152822388, i64 2152822444, i64 2152822478, i64 2152822502, i64 2152822543, i64 2152822564, i64 2152822592, i64 2152822626}
!20 = !{i64 2152823339, i64 2152823819, i64 2152823376, i64 2152823432, i64 2152823466, i64 2152823490, i64 2152823531, i64 2152823552, i64 2152823580, i64 2152823614}
!21 = !{i64 2152824343, i64 2152824823, i64 2152824380, i64 2152824436, i64 2152824470, i64 2152824494, i64 2152824535, i64 2152824556, i64 2152824584, i64 2152824618}
!22 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!23 = !{i64 2148277966, i64 2148277998, i64 2148278027, i64 2148278061, i64 2148278092, i64 2148278115}
!24 = !{i64 2148379306}
