; ModuleID = '/llk/IR/fs/ntfs/attrib.c_pt.bc'
source_filename = "../fs/ntfs/attrib.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct._ntfs_inode = type { %struct.rwlock_t, i64, i64, i32, i32, i16, %struct.atomic_t, ptr, i32, ptr, i32, %struct.runlist, %struct.mutex, ptr, i32, i32, ptr, %struct.runlist, %union.anon.71, %struct.mutex, i32, %union.anon.74 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic_t = type { i32 }
%struct.runlist = type { ptr, %struct.rw_semaphore }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { %struct.anon.73 }
%struct.anon.73 = type { i64, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%union.anon.74 = type { ptr }
%struct.MFT_RECORD = type { i32, i16, i16, i64, i16, i16, i16, i16, i32, i32, i64, i16, i16, i32 }
%struct.ntfs_attr_search_ctx = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ATTR_RECORD = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.75 }
%union.anon.75 = type { %struct.anon.77 }
%struct.anon.77 = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, ptr, ptr, %struct.rw_semaphore, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.page = type { i32, %union.anon.15, %union.anon.30, %struct.atomic_t }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.30 = type { %struct.atomic_t }
%struct.ATTR_LIST_ENTRY = type <{ i32, i16, i8, i8, i64, i64, i16, [0 x i16] }>
%struct.anon.76 = type { i32, i16, i8, i8 }
%struct.runlist_element = type { i64, i64, i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
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
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }

@__func__.ntfs_attr_vcn_to_lcn_nolock = private unnamed_addr constant [28 x i8] c"ntfs_attr_vcn_to_lcn_nolock\00", align 1
@.str = private unnamed_addr constant [29 x i8] c"Failed with error code %lli.\00", align 1
@__func__.ntfs_attr_find_vcn_nolock = private unnamed_addr constant [26 x i8] c"ntfs_attr_find_vcn_nolock\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed with error code %i.\00", align 1
@__func__.load_attribute_list = private unnamed_addr constant [20 x i8] c"load_attribute_list\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Cannot read attribute list since runlist is missing.\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"ntfs_rl_vcn_to_lcn() failed.  Cannot read attribute list.\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"sb_bread() failed. Cannot read attribute list.\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"Attribute list buffer overflow. Read attribute list is truncated.\00", align 1
@ntfs_attr_ctx_cache = external dso_local local_unnamed_addr global ptr, align 4
@__func__.ntfs_attr_find = private unnamed_addr constant [15 x i8] c"ntfs_attr_find\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Inode is corrupt.  Run chkdsk.\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c" Unmount and run chkdsk.\00", align 1
@__func__.ntfs_external_attr_find = private unnamed_addr constant [24 x i8] c"ntfs_external_attr_find\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"Found stale mft reference in attribute list of base inode 0x%lx.%s\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"Failed to map extent mft record 0x%lx of base inode 0x%lx.%s\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"Base inode 0x%lx contains corrupt attribute list attribute.%s\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ntfs_map_runlist_nolock(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 3
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 21
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi ptr [ %10, %8 ], [ %0, %3 ]
  %13 = icmp eq ptr %2, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = tail call ptr @map_mft_record(ptr noundef %12) #8
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = ptrtoint ptr %15 to i32
  br label %302

19:                                               ; preds = %14
  %20 = load ptr, ptr @ntfs_attr_ctx_cache, align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %20, i32 noundef 3136) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %214, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.MFT_RECORD, ptr %15, i32 0, i32 6
  %25 = load i16, ptr %24, align 1
  %26 = zext i16 %25 to i32
  %27 = getelementptr i8, ptr %15, i32 %26
  store ptr %15, ptr %21, align 8
  %28 = getelementptr inbounds i8, ptr %21, i32 4
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds i8, ptr %21, i32 8
  store i8 1, ptr %29, align 8
  %30 = getelementptr inbounds i8, ptr %21, i32 12
  store ptr %12, ptr %30, align 4
  %31 = getelementptr inbounds i8, ptr %21, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false) #8
  br label %143

32:                                               ; preds = %11
  %33 = load ptr, ptr %2, align 4
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %36, !prof !8

35:                                               ; preds = %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 102, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %2, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ATTR_RECORD, ptr %38, i32 0, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %43, !prof !8

42:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 104, 0\0A.popsection", ""() #8, !srcloc !10
  unreachable

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.ATTR_RECORD, ptr %38, i32 0, i32 7
  %45 = getelementptr inbounds %struct.ATTR_RECORD, ptr %38, i32 0, i32 7, i32 0, i32 1
  %46 = load i64, ptr %45, align 1
  %47 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %0) #8
  %48 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 2
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 7
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.ntfs_volume, ptr %51, i32 0, i32 13
  %53 = load i8, ptr %52, align 8
  %54 = zext i8 %53 to i64
  %55 = ashr i64 %49, %54
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %0, i32 noundef %47) #8
  %56 = load i64, ptr %44, align 1
  %57 = icmp eq i64 %56, 0
  %58 = icmp slt i64 %46, 1
  %59 = select i1 %57, i1 %58, i1 false
  %60 = add i64 %55, -1
  %61 = select i1 %59, i64 %60, i64 %46
  %62 = icmp sgt i64 %55, %1
  br i1 %62, label %63, label %171

63:                                               ; preds = %43
  %64 = load i32, ptr %38, align 1
  %65 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 8
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.ATTR_RECORD, ptr %38, i32 0, i32 3
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 10
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, %71
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.ATTR_RECORD, ptr %38, i32 0, i32 4
  %77 = load i16, ptr %76, align 1
  %78 = zext i16 %77 to i32
  %79 = getelementptr i8, ptr %38, i32 %78
  %80 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 9
  %81 = load ptr, ptr %80, align 8
  %82 = tail call i32 @bcmp(ptr %79, ptr %81, i32 %71)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = icmp sgt i64 %56, %1
  %86 = icmp slt i64 %61, %1
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %88, label %171

88:                                               ; preds = %84, %75, %68, %63
  %89 = load ptr, ptr %2, align 4
  %90 = load ptr, ptr %37, align 4
  %91 = getelementptr inbounds i8, ptr %2, i32 8
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds i8, ptr %2, i32 12
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds i8, ptr %2, i32 16
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds i8, ptr %2, i32 20
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds i8, ptr %2, i32 24
  %100 = load i64, ptr %99, align 4
  %101 = icmp eq ptr %98, null
  %102 = icmp eq ptr %94, %98
  %103 = select i1 %101, i1 true, i1 %102
  br i1 %103, label %121, label %104

104:                                              ; preds = %88
  %105 = getelementptr inbounds %struct._ntfs_inode, ptr %94, i32 0, i32 13
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.page, ptr %106, i32 0, i32 1
  %108 = load volatile i32, ptr %107, align 4
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111, !prof !11

111:                                              ; preds = %104
  %112 = add i32 %108, -1
  br label %115

113:                                              ; preds = %104
  %114 = ptrtoint ptr %106 to i32
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = inttoptr i32 %116 to ptr
  %118 = getelementptr inbounds %struct.page, ptr %117, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %118) #8, !srcloc !12
  %119 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %118, ptr %118, i32 1, ptr elementtype(i32) %118) #8, !srcloc !13
  %120 = load ptr, ptr %97, align 4
  br label %121

121:                                              ; preds = %115, %88
  %122 = phi ptr [ %120, %115 ], [ %98, %88 ]
  %123 = phi ptr [ %106, %115 ], [ null, %88 ]
  %124 = icmp eq ptr %122, null
  br i1 %124, label %125, label %131, !prof !11

125:                                              ; preds = %121
  store i8 1, ptr %91, align 4
  %126 = load ptr, ptr %2, align 4
  %127 = getelementptr inbounds %struct.MFT_RECORD, ptr %126, i32 0, i32 6
  %128 = load i16, ptr %127, align 1
  %129 = zext i16 %128 to i32
  %130 = getelementptr i8, ptr %126, i32 %129
  store ptr %130, ptr %37, align 4
  store ptr null, ptr %95, align 4
  br label %143

131:                                              ; preds = %121
  %132 = load ptr, ptr %93, align 4
  %133 = icmp eq ptr %132, %122
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  tail call void @unmap_mft_record(ptr noundef %132) #8
  %135 = load ptr, ptr %97, align 4
  br label %136

136:                                              ; preds = %134, %131
  %137 = phi ptr [ %135, %134 ], [ %122, %131 ]
  %138 = load ptr, ptr %99, align 4
  %139 = getelementptr inbounds %struct.MFT_RECORD, ptr %138, i32 0, i32 6
  %140 = load i16, ptr %139, align 1
  %141 = zext i16 %140 to i32
  %142 = getelementptr i8, ptr %138, i32 %141
  store ptr %138, ptr %2, align 4
  store ptr %142, ptr %37, align 4
  store i8 1, ptr %91, align 4
  store ptr %137, ptr %93, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %95, i8 0, i64 16, i1 false) #8
  br label %143

143:                                              ; preds = %136, %125, %23
  %144 = phi i64 [ %100, %136 ], [ %100, %125 ], [ 0, %23 ]
  %145 = phi ptr [ %123, %136 ], [ %123, %125 ], [ null, %23 ]
  %146 = phi ptr [ %89, %136 ], [ %89, %125 ], [ null, %23 ]
  %147 = phi ptr [ %90, %136 ], [ %90, %125 ], [ null, %23 ]
  %148 = phi i32 [ %92, %136 ], [ %92, %125 ], [ 0, %23 ]
  %149 = phi ptr [ %94, %136 ], [ %94, %125 ], [ null, %23 ]
  %150 = phi ptr [ %96, %136 ], [ %96, %125 ], [ null, %23 ]
  %151 = phi ptr [ %98, %136 ], [ %98, %125 ], [ null, %23 ]
  %152 = phi ptr [ %2, %136 ], [ %2, %125 ], [ %21, %23 ]
  %153 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 8
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 9
  %156 = load ptr, ptr %155, align 8
  %157 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 10
  %158 = load i32, ptr %157, align 4
  %159 = tail call i32 @ntfs_attr_lookup(i32 noundef %154, ptr noundef %156, i32 noundef %158, i32 noundef 0, i64 noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull %152)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %164, label %161, !prof !11

161:                                              ; preds = %143
  %162 = icmp eq i32 %159, -2
  %163 = select i1 %162, i32 -5, i32 %159
  br i1 %13, label %201, label %218

164:                                              ; preds = %143
  %165 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %152, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.ATTR_RECORD, ptr %166, i32 0, i32 2
  %168 = load i8, ptr %167, align 1
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %171, !prof !8

170:                                              ; preds = %164
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 159, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

171:                                              ; preds = %164, %84, %43
  %172 = phi ptr [ %152, %164 ], [ %2, %43 ], [ %2, %84 ]
  %173 = phi ptr [ %151, %164 ], [ null, %43 ], [ null, %84 ]
  %174 = phi ptr [ %150, %164 ], [ null, %43 ], [ null, %84 ]
  %175 = phi ptr [ %149, %164 ], [ null, %43 ], [ null, %84 ]
  %176 = phi i32 [ %148, %164 ], [ 0, %43 ], [ 0, %84 ]
  %177 = phi ptr [ %147, %164 ], [ null, %43 ], [ null, %84 ]
  %178 = phi ptr [ %146, %164 ], [ null, %43 ], [ null, %84 ]
  %179 = phi i1 [ true, %164 ], [ false, %43 ], [ false, %84 ]
  %180 = phi ptr [ %145, %164 ], [ null, %43 ], [ null, %84 ]
  %181 = phi i64 [ %144, %164 ], [ 0, %43 ], [ 0, %84 ]
  %182 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %172, i32 0, i32 1
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.ATTR_RECORD, ptr %183, i32 0, i32 7, i32 0, i32 1
  %185 = load i64, ptr %184, align 1
  %186 = add i64 %185, 1
  %187 = icmp ne i64 %1, 0
  %188 = icmp sle i64 %186, %1
  %189 = select i1 %187, i1 %188, i1 false
  br i1 %189, label %200, label %190, !prof !8

190:                                              ; preds = %171
  %191 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 7
  %192 = load ptr, ptr %191, align 8
  %193 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 11
  %194 = load ptr, ptr %193, align 8
  %195 = tail call ptr @ntfs_mapping_pairs_decompress(ptr noundef %192, ptr noundef %183, ptr noundef %194) #8
  %196 = icmp ugt ptr %195, inttoptr (i32 -4096 to ptr)
  br i1 %196, label %197, label %199

197:                                              ; preds = %190
  %198 = ptrtoint ptr %195 to i32
  br i1 %13, label %201, label %216

199:                                              ; preds = %190
  store ptr %195, ptr %193, align 8
  br i1 %13, label %201, label %216

200:                                              ; preds = %171
  br i1 %13, label %201, label %216

201:                                              ; preds = %200, %199, %197, %161
  %202 = phi ptr [ %172, %199 ], [ %172, %197 ], [ %152, %161 ], [ %172, %200 ]
  %203 = phi i32 [ 0, %199 ], [ %198, %197 ], [ %163, %161 ], [ -2, %200 ]
  %204 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %202, i32 0, i32 5
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %212, label %207

207:                                              ; preds = %201
  %208 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %202, i32 0, i32 3
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, %205
  br i1 %210, label %212, label %211

211:                                              ; preds = %207
  tail call void @unmap_mft_record(ptr noundef %209) #8
  br label %212

212:                                              ; preds = %211, %207, %201
  %213 = load ptr, ptr @ntfs_attr_ctx_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %213, ptr noundef nonnull %202) #8
  br label %214

214:                                              ; preds = %212, %19
  %215 = phi i32 [ %203, %212 ], [ -12, %19 ]
  tail call void @unmap_mft_record(ptr noundef %12) #8
  br label %302

216:                                              ; preds = %200, %199, %197
  %217 = phi i32 [ -2, %200 ], [ %198, %197 ], [ 0, %199 ]
  br i1 %179, label %218, label %302

218:                                              ; preds = %216, %161
  %219 = phi i64 [ %181, %216 ], [ %144, %161 ]
  %220 = phi ptr [ %180, %216 ], [ %145, %161 ]
  %221 = phi i32 [ %217, %216 ], [ %163, %161 ]
  %222 = phi ptr [ %178, %216 ], [ %146, %161 ]
  %223 = phi ptr [ %177, %216 ], [ %147, %161 ]
  %224 = phi i32 [ %176, %216 ], [ %148, %161 ]
  %225 = phi ptr [ %175, %216 ], [ %149, %161 ]
  %226 = phi ptr [ %174, %216 ], [ %150, %161 ]
  %227 = phi ptr [ %173, %216 ], [ %151, %161 ]
  %228 = phi ptr [ %172, %216 ], [ %152, %161 ]
  %229 = getelementptr inbounds %struct._ntfs_inode, ptr %12, i32 0, i32 3
  %230 = load volatile i32, ptr %229, align 4
  %231 = and i32 %230, 2
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %274, label %233

233:                                              ; preds = %218
  %234 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %228, i32 0, i32 3
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, %225
  br i1 %236, label %261, label %237

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %228, i32 0, i32 5
  %239 = load ptr, ptr %238, align 4
  %240 = icmp eq ptr %239, null
  %241 = icmp eq ptr %235, %239
  %242 = select i1 %240, i1 true, i1 %241
  br i1 %242, label %248, label %243

243:                                              ; preds = %237
  tail call void @unmap_mft_record(ptr noundef %235) #8
  %244 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %228, i32 0, i32 6
  %245 = load ptr, ptr %244, align 4
  store ptr %245, ptr %228, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %248, !prof !8

247:                                              ; preds = %243
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #8, !srcloc !15
  unreachable

248:                                              ; preds = %243, %237
  %249 = icmp eq ptr %227, null
  %250 = icmp eq ptr %225, %227
  %251 = select i1 %249, i1 true, i1 %250
  br i1 %251, label %261, label %252

252:                                              ; preds = %248
  %253 = tail call ptr @map_mft_record(ptr noundef %225) #8
  store ptr %253, ptr %228, align 4
  %254 = icmp ugt ptr %253, inttoptr (i32 -4096 to ptr)
  br i1 %254, label %255, label %263

255:                                              ; preds = %258, %252
  %256 = phi ptr [ %259, %258 ], [ %253, %252 ]
  %257 = icmp eq ptr %256, inttoptr (i32 -12 to ptr)
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  tail call void @schedule() #8
  %259 = tail call ptr @map_mft_record(ptr noundef %225) #8
  store ptr %259, ptr %228, align 4
  %260 = icmp ugt ptr %259, inttoptr (i32 -4096 to ptr)
  br i1 %260, label %255, label %263

261:                                              ; preds = %248, %233
  %262 = load ptr, ptr %228, align 4
  br label %263

263:                                              ; preds = %261, %258, %255, %252
  %264 = phi ptr [ %262, %261 ], [ %253, %252 ], [ %259, %258 ], [ %256, %255 ]
  %265 = phi ptr [ %225, %261 ], [ %225, %252 ], [ %225, %258 ], [ %227, %255 ]
  %266 = icmp eq ptr %264, %222
  br i1 %266, label %274, label %267

267:                                              ; preds = %263
  %268 = icmp ugt ptr %264, inttoptr (i32 -4096 to ptr)
  br i1 %268, label %274, label %269

269:                                              ; preds = %267
  %270 = ptrtoint ptr %223 to i32
  %271 = ptrtoint ptr %222 to i32
  %272 = sub i32 %270, %271
  %273 = getelementptr i8, ptr %264, i32 %272
  br label %274

274:                                              ; preds = %269, %267, %263, %218
  %275 = phi ptr [ %222, %263 ], [ %222, %218 ], [ %264, %269 ], [ %264, %267 ]
  %276 = phi ptr [ %223, %263 ], [ %223, %218 ], [ %273, %269 ], [ %223, %267 ]
  %277 = phi ptr [ %265, %263 ], [ %225, %218 ], [ %265, %269 ], [ %265, %267 ]
  store ptr %275, ptr %228, align 4
  %278 = getelementptr inbounds i8, ptr %228, i32 4
  store ptr %276, ptr %278, align 4
  %279 = getelementptr inbounds i8, ptr %228, i32 8
  store i32 %224, ptr %279, align 4
  %280 = getelementptr inbounds i8, ptr %228, i32 12
  store ptr %277, ptr %280, align 4
  %281 = getelementptr inbounds i8, ptr %228, i32 16
  store ptr %226, ptr %281, align 4
  %282 = getelementptr inbounds i8, ptr %228, i32 20
  store ptr %227, ptr %282, align 4
  %283 = getelementptr inbounds i8, ptr %228, i32 24
  store i64 %219, ptr %283, align 4
  %284 = icmp eq ptr %220, null
  br i1 %284, label %302, label %285

285:                                              ; preds = %274
  %286 = getelementptr inbounds %struct.page, ptr %220, i32 0, i32 1
  %287 = load volatile i32, ptr %286, align 4
  %288 = and i32 %287, 1
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %292, label %290, !prof !11

290:                                              ; preds = %285
  %291 = add i32 %287, -1
  br label %294

292:                                              ; preds = %285
  %293 = ptrtoint ptr %220 to i32
  br label %294

294:                                              ; preds = %292, %290
  %295 = phi i32 [ %291, %290 ], [ %293, %292 ]
  %296 = inttoptr i32 %295 to ptr
  %297 = getelementptr inbounds %struct.page, ptr %296, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %297) #8, !srcloc !12
  %298 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %297, ptr %297, i32 1, ptr elementtype(i32) %297) #8, !srcloc !17
  %299 = extractvalue { i32, i32 } %298, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %294
  tail call void @__put_page(ptr noundef %296) #8
  br label %302

302:                                              ; preds = %301, %294, %274, %216, %214, %17
  %303 = phi i32 [ %18, %17 ], [ %217, %216 ], [ %221, %274 ], [ %215, %214 ], [ %221, %294 ], [ %221, %301 ]
  ret i32 %303
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_mft_record(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @ntfs_attr_get_search_ctx(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @ntfs_attr_ctx_cache, align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3136) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MFT_RECORD, ptr %1, i32 0, i32 6
  %8 = load i16, ptr %7, align 1
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %1, i32 %9
  store ptr %1, ptr %4, align 8
  %11 = getelementptr inbounds i8, ptr %4, i32 4
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds i8, ptr %4, i32 8
  store i8 1, ptr %12, align 8
  %13 = getelementptr inbounds i8, ptr %4, i32 12
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %4, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false) #8
  br label %15

15:                                               ; preds = %6, %2
  ret ptr %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ntfs_attr_reinit_search_ctx(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %14, !prof !11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %0, i32 0, i32 2
  store i8 1, ptr %6, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.MFT_RECORD, ptr %7, i32 0, i32 6
  %9 = load i16, ptr %8, align 1
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %0, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %0, i32 0, i32 4
  store ptr null, ptr %13, align 4
  br label %31

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %3
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  tail call void @unmap_mft_record(ptr noundef %16) #8
  %19 = load ptr, ptr %2, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %19, %18 ], [ %3, %14 ]
  %22 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.MFT_RECORD, ptr %23, i32 0, i32 6
  %25 = load i16, ptr %24, align 1
  %26 = zext i16 %25 to i32
  %27 = getelementptr i8, ptr %23, i32 %26
  store ptr %23, ptr %0, align 4
  %28 = getelementptr inbounds i8, ptr %0, i32 4
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds i8, ptr %0, i32 8
  store i8 1, ptr %29, align 4
  store ptr %21, ptr %15, align 4
  %30 = getelementptr inbounds i8, ptr %0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %30, i8 0, i64 16, i1 false) #8
  br label %31

31:                                               ; preds = %20, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ntfs_attr_lookup(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1181, 0\0A.popsection", ""() #8, !srcloc !19
  unreachable

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !8

21:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1187, 0\0A.popsection", ""() #8, !srcloc !20
  unreachable

22:                                               ; preds = %17, %13
  %23 = phi ptr [ %19, %17 ], [ %15, %13 ]
  %24 = getelementptr inbounds %struct._ntfs_inode, ptr %23, i32 0, i32 3
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = icmp eq i32 %0, 32
  %29 = or i1 %28, %27
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = tail call fastcc i32 @ntfs_attr_find(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5, i32 noundef %6, ptr noundef %7)
  br label %344

32:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  %33 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  store ptr %34, ptr %9, align 4
  br i1 %16, label %35, label %37

35:                                               ; preds = %32
  store ptr %34, ptr %14, align 4
  %36 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 6
  store ptr %10, ptr %36, align 4
  br label %39

37:                                               ; preds = %32
  %38 = icmp eq ptr %34, %15
  br i1 %38, label %39, label %43

39:                                               ; preds = %37, %35
  %40 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 7
  store ptr %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi ptr [ %34, %39 ], [ %15, %37 ]
  %45 = icmp eq i32 %0, -1
  br i1 %45, label %300, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct._ntfs_inode, ptr %44, i32 0, i32 7
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct._ntfs_inode, ptr %44, i32 0, i32 16
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct._ntfs_inode, ptr %44, i32 0, i32 15
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr i8, ptr %50, i32 %52
  %54 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  store ptr %50, ptr %54, align 4
  br label %58

58:                                               ; preds = %57, %46
  %59 = phi ptr [ %50, %57 ], [ %55, %46 ]
  %60 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 2
  %61 = load i8, ptr %60, align 4, !range !21
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store i8 0, ptr %60, align 4
  br label %69

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %59, i32 0, i32 1
  %66 = load i16, ptr %65, align 1
  %67 = zext i16 %66 to i32
  %68 = getelementptr i8, ptr %59, i32 %67
  br label %69

69:                                               ; preds = %64, %63
  %70 = phi ptr [ %59, %63 ], [ %68, %64 ]
  %71 = load ptr, ptr %49, align 4
  %72 = icmp ult ptr %70, %71
  %73 = icmp ugt ptr %70, %53
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %272, label %75

75:                                               ; preds = %69
  %76 = icmp eq ptr %1, null
  %77 = getelementptr inbounds %struct.ntfs_volume, ptr %48, i32 0, i32 25
  %78 = getelementptr inbounds %struct.ntfs_volume, ptr %48, i32 0, i32 24
  %79 = icmp ne i64 %4, 0
  br label %80

80:                                               ; preds = %269, %75
  %81 = phi ptr [ %70, %75 ], [ %92, %269 ]
  store ptr %81, ptr %54, align 4
  %82 = icmp eq ptr %81, %53
  br i1 %82, label %327, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %81, i32 0, i32 1
  %85 = load i16, ptr %84, align 1
  %86 = icmp eq i16 %85, 0
  %87 = getelementptr i8, ptr %81, i32 6
  %88 = icmp ugt ptr %87, %53
  %89 = select i1 %86, i1 true, i1 %88
  br i1 %89, label %272, label %90

90:                                               ; preds = %83
  %91 = zext i16 %85 to i32
  %92 = getelementptr i8, ptr %81, i32 %91
  %93 = icmp ugt ptr %92, %53
  br i1 %93, label %272, label %94

94:                                               ; preds = %90
  %95 = load i32, ptr %81, align 1
  %96 = icmp ugt i32 %95, %0
  br i1 %96, label %327, label %97

97:                                               ; preds = %94
  %98 = icmp eq i32 %95, %0
  br i1 %98, label %99, label %269

99:                                               ; preds = %97
  %100 = load i8, ptr %87, align 1
  %101 = zext i8 %100 to i32
  %102 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %81, i32 0, i32 3
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = getelementptr i8, ptr %81, i32 %104
  br i1 %76, label %106, label %108

106:                                              ; preds = %99
  %107 = icmp eq i8 %100, 0
  br i1 %107, label %120, label %327

108:                                              ; preds = %99
  %109 = load ptr, ptr %77, align 4
  %110 = load i32, ptr %78, align 8
  %111 = tail call zeroext i1 @ntfs_are_names_equal(ptr noundef %105, i32 noundef %101, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef %109, i32 noundef %110) #8
  br i1 %111, label %120, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %77, align 4
  %114 = load i32, ptr %78, align 8
  %115 = tail call i32 @ntfs_collate_names(ptr noundef nonnull %1, i32 noundef %2, ptr noundef %105, i32 noundef %101, i32 noundef 1, i32 noundef 1, ptr noundef %113, i32 noundef %114) #8
  switch i32 %115, label %269 [
    i32 -1, label %327
    i32 0, label %116
  ]

116:                                              ; preds = %112
  %117 = load ptr, ptr %77, align 4
  %118 = load i32, ptr %78, align 8
  %119 = tail call i32 @ntfs_collate_names(ptr noundef nonnull %1, i32 noundef %2, ptr noundef %105, i32 noundef %101, i32 noundef 1, i32 noundef 0, ptr noundef %117, i32 noundef %118) #8
  switch i32 %119, label %269 [
    i32 -1, label %327
    i32 0, label %120
  ]

120:                                              ; preds = %116, %108, %106
  %121 = icmp uge ptr %92, %50
  %122 = select i1 %79, i1 %121, i1 false
  %123 = getelementptr i8, ptr %92, i32 6
  %124 = icmp ult ptr %123, %53
  %125 = select i1 %122, i1 %124, i1 false
  br i1 %125, label %126, label %151

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %92, i32 0, i32 1
  %128 = load i16, ptr %127, align 1
  %129 = zext i16 %128 to i32
  %130 = getelementptr i8, ptr %92, i32 %129
  %131 = icmp ugt ptr %130, %53
  br i1 %131, label %151, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %92, i32 0, i32 4
  %134 = load i64, ptr %133, align 1
  %135 = icmp sgt i64 %134, %4
  br i1 %135, label %151, label %136

136:                                              ; preds = %132
  %137 = load i32, ptr %92, align 1
  %138 = load i32, ptr %81, align 1
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %136
  %141 = load i8, ptr %123, align 1
  %142 = icmp eq i8 %141, %100
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %92, i32 0, i32 3
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i32
  %147 = getelementptr i8, ptr %92, i32 %146
  %148 = load ptr, ptr %77, align 4
  %149 = load i32, ptr %78, align 8
  %150 = tail call zeroext i1 @ntfs_are_names_equal(ptr noundef %147, i32 noundef %101, ptr noundef %105, i32 noundef %101, i32 noundef 0, ptr noundef %148, i32 noundef %149) #8
  br i1 %150, label %269, label %151

151:                                              ; preds = %143, %140, %136, %132, %126, %120
  %152 = zext i8 %100 to i32
  %153 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %81, i32 0, i32 5
  %154 = load i64, ptr %153, align 1
  %155 = trunc i64 %154 to i32
  %156 = getelementptr inbounds %struct._ntfs_inode, ptr %34, i32 0, i32 4
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %157, %155
  br i1 %158, label %159, label %174

159:                                              ; preds = %151
  %160 = lshr i64 %154, 48
  %161 = trunc i64 %160 to i32
  %162 = getelementptr inbounds %struct._ntfs_inode, ptr %34, i32 0, i32 5
  %163 = load i16, ptr %162, align 8
  %164 = zext i16 %163 to i32
  %165 = icmp eq i32 %161, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = load ptr, ptr %7, align 4
  br label %207

170:                                              ; preds = %159
  %171 = load ptr, ptr %48, align 8
  %172 = getelementptr inbounds %struct._ntfs_inode, ptr %44, i32 0, i32 4
  %173 = load i32, ptr %172, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_external_attr_find, ptr noundef %171, ptr noundef nonnull @.str.8, i32 noundef %173, ptr noundef nonnull @.str.7) #8
  br label %277

174:                                              ; preds = %151
  %175 = icmp eq ptr %34, %44
  br i1 %175, label %179, label %176

176:                                              ; preds = %174
  tail call void @unmap_mft_record(ptr noundef %34) #8
  %177 = load i64, ptr %153, align 1
  %178 = trunc i64 %177 to i32
  br label %179

179:                                              ; preds = %176, %174
  %180 = phi i32 [ %178, %176 ], [ %155, %174 ]
  %181 = phi i64 [ %177, %176 ], [ %154, %174 ]
  %182 = getelementptr inbounds %struct._ntfs_inode, ptr %44, i32 0, i32 4
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, %180
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  store ptr %44, ptr %33, align 4
  store ptr %44, ptr %9, align 4
  %186 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 6
  %187 = load ptr, ptr %186, align 4
  store ptr %187, ptr %7, align 4
  br label %200

188:                                              ; preds = %179
  %189 = call ptr @map_extent_mft_record(ptr noundef %44, i64 noundef %181, ptr noundef nonnull %9) #8
  store ptr %189, ptr %7, align 4
  %190 = icmp ugt ptr %189, inttoptr (i32 -4096 to ptr)
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load ptr, ptr %48, align 8
  %193 = load i64, ptr %153, align 1
  %194 = trunc i64 %193 to i32
  %195 = load i32, ptr %182, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_external_attr_find, ptr noundef %192, ptr noundef nonnull @.str.9, i32 noundef %194, i32 noundef %195, ptr noundef nonnull @.str.7) #8
  %196 = load ptr, ptr %7, align 4
  store ptr null, ptr %9, align 4
  %197 = ptrtoint ptr %196 to i32
  switch i32 %197, label %282 [
    i32 -2, label %280
    i32 0, label %272
  ]

198:                                              ; preds = %188
  %199 = load ptr, ptr %9, align 4
  store ptr %199, ptr %33, align 4
  br label %200

200:                                              ; preds = %198, %185
  %201 = phi ptr [ %189, %198 ], [ %187, %185 ]
  %202 = getelementptr inbounds %struct.MFT_RECORD, ptr %201, i32 0, i32 6
  %203 = load i16, ptr %202, align 1
  %204 = zext i16 %203 to i32
  %205 = getelementptr i8, ptr %201, i32 %204
  %206 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 1
  store ptr %205, ptr %206, align 4
  br label %207

207:                                              ; preds = %200, %166
  %208 = phi ptr [ %169, %166 ], [ %201, %200 ]
  %209 = phi ptr [ %168, %166 ], [ %205, %200 ]
  %210 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 1
  %211 = icmp ult ptr %209, %208
  br i1 %211, label %272, label %212

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %81, i32 0, i32 6
  %214 = icmp eq ptr %5, null
  br label %215

215:                                              ; preds = %264, %212
  %216 = phi ptr [ %208, %212 ], [ %267, %264 ]
  %217 = phi ptr [ %209, %212 ], [ %266, %264 ]
  %218 = getelementptr inbounds %struct.MFT_RECORD, ptr %216, i32 0, i32 9
  %219 = load i32, ptr %218, align 1
  %220 = getelementptr i8, ptr %216, i32 %219
  %221 = icmp ugt ptr %217, %220
  br i1 %221, label %272, label %222

222:                                              ; preds = %215
  %223 = load i32, ptr %217, align 1
  %224 = icmp eq i32 %223, -1
  br i1 %224, label %272, label %225

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.ATTR_RECORD, ptr %217, i32 0, i32 1
  %227 = load i32, ptr %226, align 1
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %272, label %229

229:                                              ; preds = %225
  %230 = load i16, ptr %213, align 1
  %231 = getelementptr inbounds %struct.ATTR_RECORD, ptr %217, i32 0, i32 6
  %232 = load i16, ptr %231, align 1
  %233 = icmp eq i16 %230, %232
  br i1 %233, label %234, label %264

234:                                              ; preds = %229
  %235 = load i32, ptr %81, align 1
  %236 = icmp eq i32 %235, %223
  br i1 %236, label %237, label %272

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.ATTR_RECORD, ptr %217, i32 0, i32 4
  %239 = load i16, ptr %238, align 1
  %240 = zext i16 %239 to i32
  %241 = getelementptr i8, ptr %217, i32 %240
  %242 = getelementptr inbounds %struct.ATTR_RECORD, ptr %217, i32 0, i32 3
  %243 = load i8, ptr %242, align 1
  %244 = zext i8 %243 to i32
  %245 = load ptr, ptr %77, align 4
  %246 = load i32, ptr %78, align 8
  %247 = call zeroext i1 @ntfs_are_names_equal(ptr noundef %241, i32 noundef %244, ptr noundef %105, i32 noundef %152, i32 noundef 0, ptr noundef %245, i32 noundef %246) #8
  br i1 %247, label %248, label %272

248:                                              ; preds = %237
  store ptr %217, ptr %210, align 4
  br i1 %214, label %342, label %249

249:                                              ; preds = %248
  %250 = getelementptr inbounds %struct.ATTR_RECORD, ptr %217, i32 0, i32 2
  %251 = load i8, ptr %250, align 1
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %264

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.ATTR_RECORD, ptr %217, i32 0, i32 7
  %255 = load i32, ptr %254, align 1
  %256 = icmp eq i32 %255, %6
  br i1 %256, label %257, label %264

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.anon.76, ptr %254, i32 0, i32 1
  %259 = load i16, ptr %258, align 1
  %260 = zext i16 %259 to i32
  %261 = getelementptr i8, ptr %217, i32 %260
  %262 = call i32 @bcmp(ptr %261, ptr nonnull %5, i32 %6) #8
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %342, label %264

264:                                              ; preds = %257, %253, %249, %229
  %265 = load i32, ptr %226, align 1
  %266 = getelementptr i8, ptr %217, i32 %265
  %267 = load ptr, ptr %7, align 4
  %268 = icmp ult ptr %266, %267
  br i1 %268, label %272, label %215

269:                                              ; preds = %143, %116, %112, %97
  %270 = load ptr, ptr %49, align 4
  %271 = icmp ult ptr %92, %270
  br i1 %271, label %272, label %80

272:                                              ; preds = %269, %264, %237, %234, %225, %222, %215, %207, %191, %90, %83, %69
  %273 = load ptr, ptr %48, align 8
  %274 = getelementptr inbounds %struct._ntfs_inode, ptr %44, i32 0, i32 4
  %275 = load i32, ptr %274, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_external_attr_find, ptr noundef %273, ptr noundef nonnull @.str.10, i32 noundef %275, ptr noundef nonnull @.str.7) #8
  %276 = load ptr, ptr %9, align 4
  br label %277

277:                                              ; preds = %272, %170
  %278 = phi ptr [ %276, %272 ], [ %34, %170 ]
  %279 = icmp eq ptr %278, %44
  br i1 %279, label %297, label %284

280:                                              ; preds = %191
  %281 = icmp eq ptr %44, null
  br i1 %281, label %297, label %287

282:                                              ; preds = %191
  %283 = icmp eq ptr %44, null
  br i1 %283, label %294, label %287

284:                                              ; preds = %277
  %285 = icmp eq ptr %278, null
  br i1 %285, label %287, label %286

286:                                              ; preds = %284
  call void @unmap_mft_record(ptr noundef nonnull %278) #8
  br label %287

287:                                              ; preds = %286, %284, %282, %280
  %288 = phi i32 [ -5, %286 ], [ -5, %284 ], [ %197, %282 ], [ -5, %280 ]
  store ptr %44, ptr %33, align 4
  %289 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 6
  %290 = load ptr, ptr %289, align 4
  store ptr %290, ptr %7, align 4
  %291 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 7
  %292 = load ptr, ptr %291, align 4
  %293 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 1
  store ptr %292, ptr %293, align 4
  br label %294

294:                                              ; preds = %287, %282
  %295 = phi i32 [ %197, %282 ], [ %288, %287 ]
  %296 = icmp eq i32 %295, -12
  br i1 %296, label %342, label %297

297:                                              ; preds = %294, %280, %277
  %298 = phi i32 [ %295, %294 ], [ -5, %277 ], [ -5, %280 ]
  %299 = getelementptr inbounds %struct.ntfs_volume, ptr %48, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %299) #8
  br label %342

300:                                              ; preds = %43
  %301 = icmp eq ptr %44, null
  br i1 %301, label %302, label %310, !prof !11

302:                                              ; preds = %300
  %303 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 2
  store i8 1, ptr %303, align 4
  %304 = getelementptr inbounds %struct.MFT_RECORD, ptr %10, i32 0, i32 6
  %305 = load i16, ptr %304, align 1
  %306 = zext i16 %305 to i32
  %307 = getelementptr i8, ptr %10, i32 %306
  %308 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 1
  store ptr %307, ptr %308, align 4
  %309 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 4
  store ptr null, ptr %309, align 4
  br label %325

310:                                              ; preds = %300
  %311 = icmp eq ptr %34, %44
  br i1 %311, label %314, label %312

312:                                              ; preds = %310
  tail call void @unmap_mft_record(ptr noundef %34) #8
  %313 = load ptr, ptr %14, align 4
  br label %314

314:                                              ; preds = %312, %310
  %315 = phi ptr [ %313, %312 ], [ %34, %310 ]
  %316 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 6
  %317 = load ptr, ptr %316, align 4
  %318 = getelementptr inbounds %struct.MFT_RECORD, ptr %317, i32 0, i32 6
  %319 = load i16, ptr %318, align 1
  %320 = zext i16 %319 to i32
  %321 = getelementptr i8, ptr %317, i32 %320
  store ptr %317, ptr %7, align 4
  %322 = getelementptr inbounds i8, ptr %7, i32 4
  store ptr %321, ptr %322, align 4
  %323 = getelementptr inbounds i8, ptr %7, i32 8
  store i8 1, ptr %323, align 4
  store ptr %315, ptr %33, align 4
  %324 = getelementptr inbounds i8, ptr %7, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %324, i8 0, i64 16, i1 false) #8
  br label %325

325:                                              ; preds = %314, %302
  %326 = tail call fastcc i32 @ntfs_attr_find(i32 noundef -1, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5, i32 noundef %6, ptr noundef %7) #8
  br label %342

327:                                              ; preds = %116, %112, %106, %94, %80
  %328 = icmp eq ptr %34, %44
  br i1 %328, label %330, label %329

329:                                              ; preds = %327
  tail call void @unmap_mft_record(ptr noundef %34) #8
  br label %330

330:                                              ; preds = %329, %327
  %331 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 6
  %332 = load ptr, ptr %331, align 4
  store ptr %332, ptr %7, align 4
  %333 = getelementptr inbounds %struct.MFT_RECORD, ptr %332, i32 0, i32 6
  %334 = load i16, ptr %333, align 1
  %335 = zext i16 %334 to i32
  %336 = getelementptr i8, ptr %332, i32 %335
  %337 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 1
  store ptr %336, ptr %337, align 4
  store i8 1, ptr %60, align 4
  store ptr %44, ptr %33, align 4
  store ptr null, ptr %14, align 4
  store ptr null, ptr %331, align 4
  %338 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %7, i32 0, i32 7
  store ptr null, ptr %338, align 4
  br label %339

339:                                              ; preds = %339, %330
  %340 = tail call fastcc i32 @ntfs_attr_find(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5, i32 noundef %6, ptr noundef %7) #8
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %339, label %342

342:                                              ; preds = %339, %325, %297, %294, %257, %248
  %343 = phi i32 [ %326, %325 ], [ %298, %297 ], [ -12, %294 ], [ %340, %339 ], [ 0, %257 ], [ 0, %248 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  br label %344

344:                                              ; preds = %342, %30
  %345 = phi i32 [ %31, %30 ], [ %343, %342 ]
  ret i32 %345
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_mapping_pairs_decompress(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ntfs_attr_put_search_ctx(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @unmap_mft_record(ptr noundef %7) #8
  br label %10

10:                                               ; preds = %9, %5, %1
  %11 = load ptr, ptr @ntfs_attr_ctx_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %11, ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mft_record(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ntfs_map_runlist(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 11
  %4 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 11, i32 1
  tail call void @down_write(ptr noundef %4) #8
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i64 @ntfs_rl_vcn_to_lcn(ptr noundef %5, i64 noundef %1) #8
  %7 = icmp slt i64 %6, -1
  br i1 %7, label %8, label %10, !prof !11

8:                                                ; preds = %2
  %9 = tail call i32 @ntfs_map_runlist_nolock(ptr noundef %0, i64 noundef %1, ptr noundef null)
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ 0, %2 ]
  tail call void @up_write(ptr noundef %4) #8
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntfs_rl_vcn_to_lcn(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ntfs_attr_vcn_to_lcn_nolock(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 334, 0\0A.popsection", ""() #8, !srcloc !22
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 3
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 338, 0\0A.popsection", ""() #8, !srcloc !23
  unreachable

12:                                               ; preds = %6
  %13 = icmp slt i64 %1, 0
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 339, 0\0A.popsection", ""() #8, !srcloc !24
  unreachable

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 11
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull %0) #8
  %21 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = icmp eq i64 %22, 0
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull %0, i32 noundef %20) #8
  br i1 %23, label %60, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %16, align 8
  br label %26

26:                                               ; preds = %24, %15
  %27 = phi ptr [ %25, %24 ], [ %17, %15 ]
  %28 = tail call i64 @ntfs_rl_vcn_to_lcn(ptr noundef %27, i64 noundef %1) #8
  %29 = icmp sgt i64 %28, -2
  br i1 %29, label %60, label %30, !prof !11

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 11, i32 1
  br label %32

32:                                               ; preds = %48, %30
  %33 = phi i64 [ %28, %30 ], [ %51, %48 ]
  %34 = phi i1 [ false, %30 ], [ %49, %48 ]
  switch i64 %33, label %53 [
    i64 -2, label %35
    i64 -3, label %60
  ]

35:                                               ; preds = %32
  br i1 %34, label %53, label %36

36:                                               ; preds = %35
  br i1 %2, label %37, label %39

37:                                               ; preds = %36
  %38 = tail call i32 @ntfs_map_runlist_nolock(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null)
  br label %46

39:                                               ; preds = %36
  tail call void @up_read(ptr noundef %31) #8
  tail call void @down_write(ptr noundef %31) #8
  %40 = load ptr, ptr %16, align 8
  %41 = tail call i64 @ntfs_rl_vcn_to_lcn(ptr noundef %40, i64 noundef %1) #8
  %42 = icmp eq i64 %41, -2
  br i1 %42, label %44, label %43, !prof !11

43:                                               ; preds = %39
  tail call void @up_write(ptr noundef %31) #8
  tail call void @down_read(ptr noundef %31) #8
  br label %48

44:                                               ; preds = %39
  %45 = tail call i32 @ntfs_map_runlist_nolock(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null)
  tail call void @up_write(ptr noundef %31) #8
  tail call void @down_read(ptr noundef %31) #8
  br label %46

46:                                               ; preds = %44, %37
  %47 = phi i32 [ %38, %37 ], [ %45, %44 ]
  switch i32 %47, label %55 [
    i32 0, label %48
    i32 -2, label %60
    i32 -12, label %53
  ], !prof !25

48:                                               ; preds = %46, %43
  %49 = phi i1 [ false, %43 ], [ true, %46 ]
  %50 = load ptr, ptr %16, align 8
  %51 = tail call i64 @ntfs_rl_vcn_to_lcn(ptr noundef %50, i64 noundef %1) #8
  %52 = icmp sgt i64 %51, -2
  br i1 %52, label %60, label %32, !prof !11

53:                                               ; preds = %46, %35, %32
  %54 = phi i64 [ -5, %32 ], [ -4, %46 ], [ -2, %35 ]
  br label %55

55:                                               ; preds = %53, %46
  %56 = phi i64 [ %54, %53 ], [ -5, %46 ]
  %57 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 7
  %58 = load ptr, ptr %57, align 8
  %59 = load ptr, ptr %58, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_vcn_to_lcn_nolock, ptr noundef %59, ptr noundef nonnull @.str, i64 noundef %56) #8
  br label %60

60:                                               ; preds = %55, %48, %46, %32, %26, %19
  %61 = phi i64 [ %56, %55 ], [ %28, %26 ], [ -3, %19 ], [ %51, %48 ], [ -3, %46 ], [ %33, %32 ]
  ret i64 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ntfs_attr_find_vcn_nolock(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 458, 0\0A.popsection", ""() #8, !srcloc !26
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 3
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !27
  unreachable

12:                                               ; preds = %6
  %13 = icmp slt i64 %1, 0
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 462, 0\0A.popsection", ""() #8, !srcloc !28
  unreachable

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 11
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull %0) #8
  %21 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = icmp eq i64 %22, 0
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull %0, i32 noundef %20) #8
  br i1 %23, label %93, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %16, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %49, label %27, !prof !8

27:                                               ; preds = %24, %15
  %28 = phi ptr [ %25, %24 ], [ %17, %15 ]
  %29 = load i64, ptr %28, align 8
  %30 = icmp sgt i64 %29, %1
  br i1 %30, label %49, label %31, !prof !8

31:                                               ; preds = %36, %27
  %32 = phi ptr [ %37, %36 ], [ %28, %27 ]
  %33 = getelementptr inbounds %struct.runlist_element, ptr %32, i32 0, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %44, label %36, !prof !8

36:                                               ; preds = %31
  %37 = getelementptr %struct.runlist_element, ptr %32, i32 1
  %38 = load i64, ptr %37, align 8
  %39 = icmp sgt i64 %38, %1
  br i1 %39, label %40, label %31, !prof !8

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.runlist_element, ptr %32, i32 0, i32 1
  %42 = load i64, ptr %41, align 8
  %43 = icmp sgt i64 %42, -2
  br i1 %43, label %93, label %47, !prof !11

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.runlist_element, ptr %32, i32 0, i32 1
  %46 = load i64, ptr %45, align 8
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i64 [ %46, %44 ], [ %42, %40 ]
  switch i64 %48, label %85 [
    i64 -2, label %49
    i64 -3, label %90
  ], !prof !29

49:                                               ; preds = %47, %27, %24
  %50 = load ptr, ptr %2, align 4
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = ptrtoint ptr %50 to i32
  br label %82

54:                                               ; preds = %49
  %55 = tail call i32 @ntfs_map_runlist_nolock(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %82, !prof !11

57:                                               ; preds = %54
  %58 = load ptr, ptr %16, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %85, label %60, !prof !8

60:                                               ; preds = %57
  %61 = load i64, ptr %58, align 8
  %62 = icmp sgt i64 %61, %1
  br i1 %62, label %85, label %63, !prof !8

63:                                               ; preds = %68, %60
  %64 = phi ptr [ %69, %68 ], [ %58, %60 ]
  %65 = getelementptr inbounds %struct.runlist_element, ptr %64, i32 0, i32 2
  %66 = load i64, ptr %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %76, label %68, !prof !8

68:                                               ; preds = %63
  %69 = getelementptr %struct.runlist_element, ptr %64, i32 1
  %70 = load i64, ptr %69, align 8
  %71 = icmp sgt i64 %70, %1
  br i1 %71, label %72, label %63, !prof !8

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.runlist_element, ptr %64, i32 0, i32 1
  %74 = load i64, ptr %73, align 8
  %75 = icmp sgt i64 %74, -2
  br i1 %75, label %93, label %79, !prof !11

76:                                               ; preds = %63
  %77 = getelementptr inbounds %struct.runlist_element, ptr %64, i32 0, i32 1
  %78 = load i64, ptr %77, align 8
  br label %79

79:                                               ; preds = %76, %72
  %80 = phi i64 [ %78, %76 ], [ %74, %72 ]
  %81 = icmp eq i64 %80, -3
  br i1 %81, label %90, label %85, !prof !30

82:                                               ; preds = %54, %52
  %83 = phi i32 [ %53, %52 ], [ %55, %54 ]
  switch i32 %83, label %84 [
    i32 -22, label %85
    i32 -2, label %90
  ]

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %84, %82, %79, %60, %57, %47
  %86 = phi i32 [ -5, %82 ], [ -5, %47 ], [ -5, %57 ], [ -5, %60 ], [ -5, %79 ], [ %83, %84 ]
  %87 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 7
  %88 = load ptr, ptr %87, align 8
  %89 = load ptr, ptr %88, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_find_vcn_nolock, ptr noundef %89, ptr noundef nonnull @.str.1, i32 noundef %86) #8
  br label %90

90:                                               ; preds = %85, %82, %79, %47
  %91 = phi i32 [ %86, %85 ], [ -2, %79 ], [ -2, %47 ], [ %83, %82 ]
  %92 = inttoptr i32 %91 to ptr
  br label %93

93:                                               ; preds = %90, %72, %40, %19
  %94 = phi ptr [ %92, %90 ], [ %32, %40 ], [ %64, %72 ], [ inttoptr (i32 -2 to ptr), %19 ]
  ret ptr %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @load_attribute_list(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = trunc i64 %4 to i32
  %7 = getelementptr i8, ptr %2, i32 %6
  %8 = icmp ne ptr %0, null
  %9 = icmp ne ptr %1, null
  %10 = and i1 %8, %9
  %11 = icmp ne ptr %2, null
  %12 = and i1 %10, %11
  %13 = xor i1 %12, true
  %14 = icmp slt i64 %3, 1
  %15 = or i1 %14, %13
  %16 = icmp slt i64 %4, 0
  %17 = or i1 %15, %16
  %18 = icmp slt i64 %3, %4
  %19 = or i1 %18, %17
  br i1 %19, label %100, label %20

20:                                               ; preds = %5
  %21 = icmp eq i64 %4, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = trunc i64 %3 to i32
  tail call void @llvm.memset.p0.i32(ptr align 1 %2, i8 0, i32 %23, i1 false)
  br label %100

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 16
  %28 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 2
  %29 = load i8, ptr %28, align 4
  %30 = getelementptr inbounds %struct.runlist, ptr %1, i32 0, i32 1
  tail call void @down_read(ptr noundef %30) #8
  %31 = load ptr, ptr %1, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.runlist_element, ptr %31, i32 0, i32 2
  %35 = load i64, ptr %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %83, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 13
  %39 = zext i8 %29 to i64
  %40 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 20
  br label %42

41:                                               ; preds = %24
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_attribute_list, ptr noundef %25, ptr noundef nonnull @.str.2) #8
  br label %88

42:                                               ; preds = %78, %37
  %43 = phi ptr [ %34, %37 ], [ %80, %78 ]
  %44 = phi ptr [ %31, %37 ], [ %79, %78 ]
  %45 = phi ptr [ %2, %37 ], [ %71, %78 ]
  %46 = load i64, ptr %44, align 8
  %47 = tail call i64 @ntfs_rl_vcn_to_lcn(ptr noundef %44, i64 noundef %46) #8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_attribute_list, ptr noundef %25, ptr noundef nonnull @.str.3) #8
  br label %88

50:                                               ; preds = %42
  %51 = load i8, ptr %38, align 8
  %52 = zext i8 %51 to i64
  %53 = shl i64 %47, %52
  %54 = ashr i64 %53, %39
  %55 = trunc i64 %54 to i32
  %56 = load i64, ptr %43, align 8
  %57 = shl i64 %56, %52
  %58 = ashr i64 %57, %39
  %59 = add i64 %54, %58
  %60 = trunc i64 %59 to i32
  br label %61

61:                                               ; preds = %73, %50
  %62 = phi ptr [ %45, %50 ], [ %71, %73 ]
  %63 = phi i32 [ %55, %50 ], [ %76, %73 ]
  %64 = zext i32 %63 to i64
  %65 = load ptr, ptr %40, align 4
  %66 = load i32, ptr %26, align 16
  %67 = tail call ptr @__bread_gfp(ptr noundef %65, i64 noundef %64, i32 noundef %66, i32 noundef 8) #8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_attribute_list, ptr noundef %25, ptr noundef nonnull @.str.4) #8
  br label %88

70:                                               ; preds = %61
  %71 = getelementptr i8, ptr %62, i32 %27
  %72 = icmp ult ptr %71, %7
  br i1 %72, label %73, label %90

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.buffer_head, ptr %67, i32 0, i32 5
  %75 = load ptr, ptr %74, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %62, ptr align 1 %75, i32 %27, i1 false)
  tail call void @__brelse(ptr noundef nonnull %67) #8
  %76 = add i32 %63, 1
  %77 = icmp ult i32 %76, %60
  br i1 %77, label %61, label %78

78:                                               ; preds = %73
  %79 = getelementptr %struct.runlist_element, ptr %44, i32 1
  %80 = getelementptr %struct.runlist_element, ptr %44, i32 1, i32 2
  %81 = load i64, ptr %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %42

83:                                               ; preds = %78, %33
  %84 = icmp sgt i64 %3, %4
  br i1 %84, label %85, label %88

85:                                               ; preds = %92, %83
  %86 = sub i64 %3, %4
  %87 = trunc i64 %86 to i32
  tail call void @llvm.memset.p0.i32(ptr align 1 %7, i8 0, i32 %87, i1 false)
  br label %88

88:                                               ; preds = %99, %92, %85, %83, %69, %49, %41
  %89 = phi i32 [ 0, %85 ], [ 0, %92 ], [ 0, %83 ], [ -5, %99 ], [ -5, %69 ], [ -5, %49 ], [ -5, %41 ]
  tail call void @up_read(ptr noundef %30) #8
  br label %100

90:                                               ; preds = %70
  %91 = icmp ult ptr %62, %7
  br i1 %91, label %92, label %99

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.buffer_head, ptr %67, i32 0, i32 5
  %94 = load ptr, ptr %93, align 4
  %95 = ptrtoint ptr %7 to i32
  %96 = ptrtoint ptr %62 to i32
  %97 = sub i32 %95, %96
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %62, ptr align 1 %94, i32 %97, i1 false)
  tail call void @__brelse(ptr noundef nonnull %67) #8
  %98 = icmp sgt i64 %3, %4
  br i1 %98, label %85, label %88

99:                                               ; preds = %90
  tail call void @__brelse(ptr noundef nonnull %67) #8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_attribute_list, ptr noundef %25, ptr noundef nonnull @.str.5) #8
  br label %88

100:                                              ; preds = %88, %22, %5
  %101 = phi i32 [ %89, %88 ], [ 0, %22 ], [ -22, %5 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_attr_find(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4, i32 noundef %5, ptr nocapture noundef %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %6, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct._ntfs_inode, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ntfs_volume, ptr %11, i32 0, i32 25
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ntfs_volume, ptr %11, i32 0, i32 24
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %6, i32 0, i32 2
  %17 = load i8, ptr %16, align 4, !range !21
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %6, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  br i1 %18, label %22, label %21

21:                                               ; preds = %7
  store i8 0, ptr %16, align 4
  br label %26

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.ATTR_RECORD, ptr %20, i32 0, i32 1
  %24 = load i32, ptr %23, align 1
  %25 = getelementptr i8, ptr %20, i32 %24
  br label %26

26:                                               ; preds = %22, %21
  %27 = phi ptr [ %20, %21 ], [ %25, %22 ]
  %28 = load ptr, ptr %6, align 4
  %29 = icmp ult ptr %27, %28
  br i1 %29, label %101, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %6, i32 0, i32 1
  %32 = icmp eq ptr %1, null
  %33 = icmp eq ptr %4, null
  br label %34

34:                                               ; preds = %96, %30
  %35 = phi ptr [ %28, %30 ], [ %99, %96 ]
  %36 = phi ptr [ %27, %30 ], [ %98, %96 ]
  %37 = getelementptr inbounds %struct.MFT_RECORD, ptr %35, i32 0, i32 9
  %38 = load i32, ptr %37, align 1
  %39 = getelementptr i8, ptr %35, i32 %38
  %40 = icmp ugt ptr %36, %39
  br i1 %40, label %101, label %41

41:                                               ; preds = %34
  store ptr %36, ptr %31, align 4
  %42 = load i32, ptr %36, align 1
  %43 = icmp ugt i32 %42, %0
  %44 = icmp eq i32 %42, -1
  %45 = or i1 %43, %44
  br i1 %45, label %109, label %46, !prof !8

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.ATTR_RECORD, ptr %36, i32 0, i32 1
  %48 = load i32, ptr %47, align 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %101, label %50, !prof !8

50:                                               ; preds = %46
  %51 = icmp eq i32 %42, %0
  br i1 %51, label %52, label %96

52:                                               ; preds = %50
  br i1 %32, label %53, label %58

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.ATTR_RECORD, ptr %36, i32 0, i32 3
  %55 = load i8, ptr %54, align 1
  %56 = icmp ne i8 %55, 0
  %57 = or i1 %56, %33
  br i1 %57, label %104, label %82

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.ATTR_RECORD, ptr %36, i32 0, i32 4
  %60 = load i16, ptr %59, align 1
  %61 = zext i16 %60 to i32
  %62 = getelementptr i8, ptr %36, i32 %61
  %63 = getelementptr inbounds %struct.ATTR_RECORD, ptr %36, i32 0, i32 3
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = tail call zeroext i1 @ntfs_are_names_equal(ptr noundef nonnull %1, i32 noundef %2, ptr noundef %62, i32 noundef %65, i32 noundef %3, ptr noundef %13, i32 noundef %15) #8
  br i1 %66, label %81, label %67

67:                                               ; preds = %58
  %68 = load i16, ptr %59, align 1
  %69 = zext i16 %68 to i32
  %70 = getelementptr i8, ptr %36, i32 %69
  %71 = load i8, ptr %63, align 1
  %72 = zext i8 %71 to i32
  %73 = tail call i32 @ntfs_collate_names(ptr noundef nonnull %1, i32 noundef %2, ptr noundef %70, i32 noundef %72, i32 noundef 1, i32 noundef 1, ptr noundef %13, i32 noundef %15) #8
  switch i32 %73, label %96 [
    i32 -1, label %109
    i32 0, label %74
  ]

74:                                               ; preds = %67
  %75 = load i16, ptr %59, align 1
  %76 = zext i16 %75 to i32
  %77 = getelementptr i8, ptr %36, i32 %76
  %78 = load i8, ptr %63, align 1
  %79 = zext i8 %78 to i32
  %80 = tail call i32 @ntfs_collate_names(ptr noundef nonnull %1, i32 noundef %2, ptr noundef %77, i32 noundef %79, i32 noundef 1, i32 noundef 0, ptr noundef %13, i32 noundef %15) #8
  switch i32 %80, label %96 [
    i32 -1, label %109
    i32 0, label %81
  ]

81:                                               ; preds = %74, %58
  br i1 %33, label %109, label %82

82:                                               ; preds = %81, %53
  %83 = getelementptr inbounds %struct.ATTR_RECORD, ptr %36, i32 0, i32 7
  %84 = getelementptr inbounds %struct.anon.76, ptr %83, i32 0, i32 1
  %85 = load i16, ptr %84, align 1
  %86 = zext i16 %85 to i32
  %87 = getelementptr i8, ptr %36, i32 %86
  %88 = load i32, ptr %83, align 1
  %89 = tail call i32 @llvm.umin.i32(i32 %88, i32 %5)
  %90 = tail call i32 @memcmp(ptr noundef nonnull %4, ptr noundef %87, i32 noundef %89)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = icmp ult i32 %88, %5
  br i1 %93, label %96, label %106

94:                                               ; preds = %82
  %95 = icmp slt i32 %90, 0
  br i1 %95, label %109, label %96

96:                                               ; preds = %94, %92, %74, %67, %50
  %97 = load i32, ptr %47, align 1
  %98 = getelementptr i8, ptr %36, i32 %97
  %99 = load ptr, ptr %6, align 4
  %100 = icmp ult ptr %98, %99
  br i1 %100, label %101, label %34

101:                                              ; preds = %96, %46, %34, %26
  %102 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_find, ptr noundef %102, ptr noundef nonnull @.str.6) #8
  %103 = getelementptr inbounds %struct.ntfs_volume, ptr %11, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %103) #8
  br label %109

104:                                              ; preds = %53
  %105 = select i1 %56, i32 -2, i32 0
  br label %109

106:                                              ; preds = %92
  %107 = icmp eq i32 %88, %5
  %108 = select i1 %107, i32 0, i32 -2
  br label %109

109:                                              ; preds = %106, %104, %101, %94, %81, %74, %67, %41
  %110 = phi i32 [ -5, %101 ], [ %105, %104 ], [ %108, %106 ], [ -2, %94 ], [ -2, %74 ], [ -2, %67 ], [ 0, %81 ], [ -2, %41 ]
  ret i32 %110
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ntfs_are_names_equal(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_collate_names(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_extent_mft_record(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

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
!9 = !{i64 2153631460, i64 2153631941, i64 2153631497, i64 2153631553, i64 2153631587, i64 2153631611, i64 2153631652, i64 2153631673, i64 2153631701, i64 2153631735}
!10 = !{i64 2153632475, i64 2153632956, i64 2153632512, i64 2153632568, i64 2153632602, i64 2153632626, i64 2153632667, i64 2153632688, i64 2153632716, i64 2153632750}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 930284, i64 2148420255, i64 2148420281, i64 2148420328, i64 2148420350, i64 2148420378, i64 2148420398}
!13 = !{i64 2148431670, i64 2148431696, i64 2148431725, i64 2148431759, i64 2148431790, i64 2148431813}
!14 = !{i64 2153634093, i64 2153634574, i64 2153634130, i64 2153634186, i64 2153634220, i64 2153634244, i64 2153634285, i64 2153634306, i64 2153634334, i64 2153634368}
!15 = !{i64 2153635178, i64 2153635659, i64 2153635215, i64 2153635271, i64 2153635305, i64 2153635329, i64 2153635370, i64 2153635391, i64 2153635419, i64 2153635453}
!16 = !{i64 2148532349}
!17 = !{i64 2148434711, i64 2148434743, i64 2148434772, i64 2148434806, i64 2148434837, i64 2148434860}
!18 = !{i64 2148532552}
!19 = !{i64 2153656613, i64 2153657095, i64 2153656650, i64 2153656706, i64 2153656740, i64 2153656764, i64 2153656805, i64 2153656826, i64 2153656854, i64 2153656888}
!20 = !{i64 2153657615, i64 2153658097, i64 2153657652, i64 2153657708, i64 2153657742, i64 2153657766, i64 2153657807, i64 2153657828, i64 2153657856, i64 2153657890}
!21 = !{i8 0, i8 2}
!22 = !{i64 2153636273, i64 2153636754, i64 2153636310, i64 2153636366, i64 2153636400, i64 2153636424, i64 2153636465, i64 2153636486, i64 2153636514, i64 2153636548}
!23 = !{i64 2153638167, i64 2153638648, i64 2153638204, i64 2153638260, i64 2153638294, i64 2153638318, i64 2153638359, i64 2153638380, i64 2153638408, i64 2153638442}
!24 = !{i64 2153639164, i64 2153639645, i64 2153639201, i64 2153639257, i64 2153639291, i64 2153639315, i64 2153639356, i64 2153639377, i64 2153639405, i64 2153639439}
!25 = !{!"branch_weights", i32 1, i32 8000, i32 2, i32 1}
!26 = !{i64 2153641645, i64 2153642126, i64 2153641682, i64 2153641738, i64 2153641772, i64 2153641796, i64 2153641837, i64 2153641858, i64 2153641886, i64 2153641920}
!27 = !{i64 2153643472, i64 2153643953, i64 2153643509, i64 2153643565, i64 2153643599, i64 2153643623, i64 2153643664, i64 2153643685, i64 2153643713, i64 2153643747}
!28 = !{i64 2153644469, i64 2153644950, i64 2153644506, i64 2153644562, i64 2153644596, i64 2153644620, i64 2153644661, i64 2153644682, i64 2153644710, i64 2153644744}
!29 = !{!"branch_weights", i32 2000, i32 2001, i32 4000000}
!30 = !{!"branch_weights", i32 4000000, i32 4001}
