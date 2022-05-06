; ModuleID = '/llk/IR/fs/ntfs/compress.c_pt.bc'
source_filename = "../fs/ntfs/compress.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.page = type { i32, %union.anon, %union.anon.64, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.64 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, ptr, ptr, %struct.rw_semaphore, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.runlist_element = type { i64, i64, i64 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }

@ntfs_compression_buffer = internal unnamed_addr global ptr null, align 4
@__func__.ntfs_read_compressed_block = private unnamed_addr constant [27 x i8] c"ntfs_read_compressed_block\00", align 1
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate internal buffers.\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"Buffer is unlocked but not uptodate! Unplugging the disk queue and rescheduling.\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Buffer is now uptodate. Good.\00", align 1
@ntfs_cb_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [93 x i8] c"ntfs_decompress() failed in inode 0x%lx with error code %i. Skipping this compression block.\00", align 1
@.str.4 = private unnamed_addr constant [96 x i8] c"Still have pages left! Terminating them with extreme prejudice.  Inode 0x%lx, page index 0x%lx.\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"IO error while reading compressed data.\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"ntfs_map_runlist() failed. Cannot read compression block.\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"ntfs_rl_vcn_to_lcn() failed. Cannot read compression block.\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"getblk() failed. Cannot read compression block.\00", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__func__.ntfs_decompress = private unnamed_addr constant [16 x i8] c"ntfs_decompress\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Failed. Returning -EOVERFLOW.\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @allocate_compression_buffers() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ntfs_compression_buffer, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !8

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 63, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4:                                                ; preds = %0
  %5 = tail call noalias ptr @vmalloc(i32 noundef 65536) #7
  store ptr %5, ptr @ntfs_compression_buffer, align 4
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, i32 -12, i32 0
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_compression_buffers() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ntfs_compression_buffer, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !10

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 78, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

4:                                                ; preds = %0
  tail call void @vfree(ptr noundef nonnull %1) #6
  store ptr null, ptr @ntfs_compression_buffer, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ntfs_read_compressed_block(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -200
  %6 = getelementptr i8, ptr %4, i32 -160
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 16
  %11 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %4, i32 -40
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, -1
  %18 = zext i32 %17 to i64
  %19 = zext i32 %14 to i64
  %20 = shl nuw nsw i64 %19, 12
  %21 = xor i64 %18, -1
  %22 = and i64 %20, %21
  %23 = getelementptr inbounds %struct.ntfs_volume, ptr %7, i32 0, i32 13
  %24 = load i8, ptr %23, align 8
  %25 = zext i8 %24 to i64
  %26 = lshr i64 %22, %25
  %27 = add i32 %14, 1
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 12
  %30 = zext i32 %16 to i64
  %31 = add nsw i64 %30, -1
  %32 = add nsw i64 %31, %29
  %33 = and i64 %32, %21
  %34 = lshr i64 %33, %25
  %35 = sub i64 %34, %26
  %36 = shl i64 %35, %25
  %37 = getelementptr i8, ptr %4, i32 -36
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i64
  %40 = ashr i64 %36, %39
  %41 = trunc i64 %40 to i32
  %42 = lshr i64 %36, 12
  %43 = trunc i64 %42 to i32
  %44 = getelementptr i8, ptr %4, i32 -156
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 128
  br i1 %46, label %48, label %47, !prof !8

47:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 512, 0\0A.popsection", ""() #6, !srcloc !12
  unreachable

48:                                               ; preds = %1
  %49 = getelementptr i8, ptr %4, i32 -148
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52, !prof !8

52:                                               ; preds = %48
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 513, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

53:                                               ; preds = %48
  %54 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %43, i32 4) #6
  %55 = extractvalue { i32, i1 } %54, 1
  br i1 %55, label %59, label %56, !prof !10

56:                                               ; preds = %53
  %57 = extractvalue { i32, i1 } %54, 0
  %58 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %57, i32 noundef 3136) #7
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi ptr [ %58, %56 ], [ null, %53 ]
  %61 = add i32 %43, 1
  %62 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %61, i32 4) #6
  %63 = extractvalue { i32, i1 } %62, 1
  br i1 %63, label %67, label %64, !prof !10

64:                                               ; preds = %59
  %65 = extractvalue { i32, i1 } %62, 0
  %66 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %65, i32 noundef 3136) #7
  br label %67

67:                                               ; preds = %64, %59
  %68 = phi ptr [ %66, %64 ], [ null, %59 ]
  %69 = udiv i32 %16, %10
  %70 = shl i32 %69, 2
  %71 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %70, i32 noundef 3136) #7
  %72 = icmp eq ptr %60, null
  %73 = icmp eq ptr %71, null
  %74 = select i1 %72, i1 true, i1 %73
  %75 = icmp eq ptr %68, null
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %77, label %79, !prof !10

77:                                               ; preds = %67
  tail call void @kfree(ptr noundef %71) #6
  tail call void @kfree(ptr noundef %60) #6
  tail call void @kfree(ptr noundef %68) #6
  tail call void @unlock_page(ptr noundef %0) #6
  %78 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef %78, ptr noundef nonnull @.str) #6
  br label %1060

79:                                               ; preds = %67
  %80 = load i8, ptr %23, align 8
  %81 = zext i8 %80 to i64
  %82 = shl i64 %26, %81
  %83 = lshr i64 %82, 12
  %84 = trunc i64 %83 to i32
  %85 = sub i32 %14, %84
  %86 = getelementptr ptr, ptr %60, i32 %85
  store ptr %0, ptr %86, align 4
  %87 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %5) #6
  %88 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 22
  %89 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 13
  br label %90

90:                                               ; preds = %98, %79
  %91 = load volatile i32, ptr %88, align 4
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %94, %90
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !15
  %95 = load volatile i32, ptr %88, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %94

98:                                               ; preds = %94, %90
  %99 = phi i32 [ %91, %90 ], [ %95, %94 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  %100 = load i64, ptr %89, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  %101 = load volatile i32, ptr %88, align 4
  %102 = icmp eq i32 %101, %99
  br i1 %102, label %103, label %90

103:                                              ; preds = %98
  %104 = getelementptr i8, ptr %4, i32 -192
  %105 = load i64, ptr %104, align 8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %5, i32 noundef %87) #6
  %106 = add i64 %100, 4095
  %107 = lshr i64 %106, 12
  %108 = sub nsw i64 %107, %83
  %109 = trunc i64 %108 to i32
  %110 = icmp ult i32 %85, %109
  br i1 %110, label %112, label %111

111:                                              ; preds = %103
  tail call void @kfree(ptr noundef %71) #6
  tail call void @kfree(ptr noundef %60) #6
  tail call void @kfree(ptr noundef %68) #6
  tail call void @zero_user_segments(ptr noundef %0, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #6
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %0) #6
  tail call void @unlock_page(ptr noundef %0) #6
  br label %1060

112:                                              ; preds = %103
  %113 = tail call i32 @llvm.umin.i32(i32 %43, i32 %109)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %218, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 3
  br label %117

117:                                              ; preds = %214, %115
  %118 = phi i32 [ 0, %115 ], [ %215, %214 ]
  %119 = phi i32 [ %84, %115 ], [ %216, %214 ]
  %120 = icmp eq i32 %118, %85
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load ptr, ptr %86, align 4
  br label %127

123:                                              ; preds = %117
  %124 = load i32, ptr %116, align 4
  %125 = tail call ptr @pagecache_get_page(ptr noundef %3, i32 noundef %119, i32 noundef 54, i32 noundef %124) #6
  %126 = getelementptr ptr, ptr %60, i32 %118
  store ptr %125, ptr %126, align 4
  br label %127

127:                                              ; preds = %123, %121
  %128 = phi ptr [ %122, %121 ], [ %125, %123 ]
  %129 = getelementptr ptr, ptr %60, i32 %118
  %130 = icmp eq ptr %128, null
  br i1 %130, label %214, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.page, ptr %128, i32 0, i32 1
  %133 = load volatile i32, ptr %132, align 4
  %134 = and i32 %133, 1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136, !prof !8

136:                                              ; preds = %131
  %137 = add i32 %133, -1
  br label %140

138:                                              ; preds = %131
  %139 = ptrtoint ptr %128 to i32
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %137, %136 ], [ %139, %138 ]
  %142 = inttoptr i32 %141 to ptr
  %143 = load volatile i32, ptr %142, align 4
  %144 = and i32 %143, 8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %197

146:                                              ; preds = %140
  %147 = load volatile i32, ptr %132, align 4
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150, !prof !8

150:                                              ; preds = %146
  %151 = add i32 %147, -1
  br label %154

152:                                              ; preds = %146
  %153 = ptrtoint ptr %128 to i32
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  %156 = inttoptr i32 %155 to ptr
  %157 = load volatile i32, ptr %156, align 4
  %158 = and i32 %157, 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %174, label %160

160:                                              ; preds = %154
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  %161 = load volatile i32, ptr %132, align 4
  %162 = and i32 %161, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164, !prof !8

164:                                              ; preds = %160
  %165 = add i32 %161, -1
  br label %168

166:                                              ; preds = %160
  %167 = ptrtoint ptr %128 to i32
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ]
  %170 = inttoptr i32 %169 to ptr
  %171 = load volatile i32, ptr %170, align 4
  %172 = and i32 %171, 256
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %197, label %174

174:                                              ; preds = %168, %154
  %175 = load volatile i32, ptr %132, align 4
  %176 = and i32 %175, 1
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %180, label %178, !prof !8

178:                                              ; preds = %174
  %179 = add i32 %175, -1
  br label %182

180:                                              ; preds = %174
  %181 = ptrtoint ptr %128 to i32
  br label %182

182:                                              ; preds = %180, %178
  %183 = phi i32 [ %179, %178 ], [ %181, %180 ]
  %184 = inttoptr i32 %183 to ptr
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %184) #6
  %185 = load i32, ptr %128, align 4
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
  %194 = tail call ptr @page_address(ptr noundef nonnull %128) #6
  br label %214

195:                                              ; preds = %188, %182
  %196 = tail call ptr @kmap_high(ptr noundef nonnull %128) #6
  br label %214

197:                                              ; preds = %168, %140
  tail call void @unlock_page(ptr noundef nonnull %128) #6
  %198 = load volatile i32, ptr %132, align 4
  %199 = and i32 %198, 1
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %203, label %201, !prof !8

201:                                              ; preds = %197
  %202 = add i32 %198, -1
  br label %205

203:                                              ; preds = %197
  %204 = ptrtoint ptr %128 to i32
  br label %205

205:                                              ; preds = %203, %201
  %206 = phi i32 [ %202, %201 ], [ %204, %203 ]
  %207 = inttoptr i32 %206 to ptr
  %208 = getelementptr inbounds %struct.page, ptr %207, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %208) #6, !srcloc !21
  %209 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %208, ptr %208, i32 1, ptr elementtype(i32) %208) #6, !srcloc !22
  %210 = extractvalue { i32, i32 } %209, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %205
  tail call void @__put_page(ptr noundef %207) #6
  br label %213

213:                                              ; preds = %212, %205
  store ptr null, ptr %129, align 4
  br label %214

214:                                              ; preds = %213, %195, %193, %127
  %215 = add nuw i32 %118, 1
  %216 = add i32 %119, 1
  %217 = icmp eq i32 %215, %113
  br i1 %217, label %218, label %117

218:                                              ; preds = %214, %112
  %219 = getelementptr i8, ptr %4, i32 -35
  %220 = load i8, ptr %219, align 1
  %221 = zext i8 %220 to i64
  %222 = getelementptr i8, ptr %4, i32 -144
  %223 = getelementptr i8, ptr %4, i32 -140
  %224 = zext i8 %12 to i32
  %225 = zext i8 %12 to i64
  %226 = getelementptr inbounds %struct.ntfs_volume, ptr %7, i32 0, i32 11
  %227 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 20
  %228 = ashr i64 %105, 12
  %229 = icmp slt i64 %105, %100
  %230 = trunc i64 %105 to i32
  %231 = and i32 %230, 4095
  %232 = sub nuw nsw i32 4096, %231
  %233 = getelementptr i8, ptr %4, i32 -172
  br label %234

234:                                              ; preds = %954, %218
  %235 = phi i32 [ 0, %218 ], [ %941, %954 ]
  %236 = phi i32 [ 0, %218 ], [ %942, %954 ]
  %237 = phi i8 [ 0, %218 ], [ %943, %954 ]
  %238 = phi i64 [ %26, %218 ], [ %242, %954 ]
  %239 = phi i32 [ %41, %218 ], [ %241, %954 ]
  %240 = phi i32 [ 0, %218 ], [ %944, %954 ]
  %241 = add i32 %239, -1
  %242 = add i64 %238, %221
  %243 = icmp slt i64 %238, %242
  br i1 %243, label %244, label %370

244:                                              ; preds = %300, %234
  %245 = phi i32 [ %297, %300 ], [ 0, %234 ]
  %246 = phi i64 [ %301, %300 ], [ %238, %234 ]
  %247 = phi ptr [ %257, %300 ], [ null, %234 ]
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %253

249:                                              ; preds = %275, %244
  %250 = phi i1 [ true, %275 ], [ false, %244 ]
  tail call void @down_read(ptr noundef %223) #6
  %251 = load ptr, ptr %222, align 8
  %252 = icmp eq ptr %251, null
  br i1 %252, label %270, label %253, !prof !10

253:                                              ; preds = %249, %244
  %254 = phi i1 [ %250, %249 ], [ false, %244 ]
  %255 = phi ptr [ %251, %249 ], [ %247, %244 ]
  br label %256

256:                                              ; preds = %261, %253
  %257 = phi ptr [ %262, %261 ], [ %255, %253 ]
  %258 = getelementptr inbounds %struct.runlist_element, ptr %257, i32 0, i32 2
  %259 = load i64, ptr %258, align 8
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %265, label %261

261:                                              ; preds = %256
  %262 = getelementptr %struct.runlist_element, ptr %257, i32 1
  %263 = load i64, ptr %262, align 8
  %264 = icmp sgt i64 %263, %246
  br i1 %264, label %265, label %256

265:                                              ; preds = %261, %256
  %266 = tail call i64 @ntfs_rl_vcn_to_lcn(ptr noundef %257, i64 noundef %246) #6
  %267 = icmp slt i64 %266, 0
  br i1 %267, label %268, label %278

268:                                              ; preds = %265
  %269 = icmp eq i64 %266, -1
  br i1 %269, label %303, label %270

270:                                              ; preds = %268, %249
  %271 = phi i1 [ %254, %268 ], [ %250, %249 ]
  %272 = phi i64 [ %266, %268 ], [ -2, %249 ]
  %273 = icmp ne i64 %272, -2
  %274 = select i1 %271, i1 true, i1 %273
  br i1 %274, label %1015, label %275

275:                                              ; preds = %270
  tail call void @up_read(ptr noundef %223) #6
  %276 = tail call i32 @ntfs_map_runlist(ptr noundef %5, i64 noundef %246) #6
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %249, label %1017

278:                                              ; preds = %265
  %279 = load i8, ptr %23, align 8
  %280 = zext i8 %279 to i64
  %281 = shl i64 %266, %280
  %282 = ashr i64 %281, %225
  %283 = trunc i64 %282 to i32
  %284 = load i32, ptr %226, align 8
  %285 = lshr i32 %284, %224
  %286 = add i32 %285, %283
  br label %287

287:                                              ; preds = %296, %278
  %288 = phi i32 [ %283, %278 ], [ %298, %296 ]
  %289 = phi i32 [ %245, %278 ], [ %297, %296 ]
  %290 = sext i32 %288 to i64
  %291 = load ptr, ptr %227, align 4
  %292 = load i32, ptr %9, align 16
  %293 = tail call ptr @__getblk_gfp(ptr noundef %291, i64 noundef %290, i32 noundef %292, i32 noundef 8) #6
  %294 = getelementptr ptr, ptr %71, i32 %289
  store ptr %293, ptr %294, align 4
  %295 = icmp eq ptr %293, null
  br i1 %295, label %1015, label %296, !prof !10

296:                                              ; preds = %287
  %297 = add i32 %289, 1
  %298 = add i32 %288, 1
  %299 = icmp slt i32 %298, %286
  br i1 %299, label %287, label %300

300:                                              ; preds = %296
  %301 = add i64 %246, 1
  %302 = icmp slt i64 %301, %242
  br i1 %302, label %244, label %303

303:                                              ; preds = %300, %268
  %304 = phi i64 [ %301, %300 ], [ %246, %268 ]
  %305 = phi i32 [ %297, %300 ], [ %245, %268 ]
  %306 = icmp eq ptr %257, null
  br i1 %306, label %308, label %307

307:                                              ; preds = %303
  tail call void @up_read(ptr noundef %223) #6
  br label %308

308:                                              ; preds = %307, %303
  %309 = icmp eq i32 %305, 0
  br i1 %309, label %365, label %311

310:                                              ; preds = %333
  br i1 %309, label %365, label %336

311:                                              ; preds = %333, %308
  %312 = phi i32 [ %334, %333 ], [ 0, %308 ]
  %313 = getelementptr ptr, ptr %71, i32 %312
  %314 = load ptr, ptr %313, align 4
  %315 = load volatile i32, ptr %314, align 4
  %316 = and i32 %315, 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %333

318:                                              ; preds = %311
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %314) #6, !srcloc !21
  %319 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %314, ptr %314, i32 4, ptr elementtype(i32) %314) #6, !srcloc !24
  %320 = extractvalue { i32, i32, i32 } %319, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !25
  %321 = and i32 %320, 4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %333

323:                                              ; preds = %318
  %324 = load volatile i32, ptr %314, align 4
  %325 = and i32 %324, 1
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %328, label %327, !prof !8

327:                                              ; preds = %323
  tail call void @unlock_buffer(ptr noundef %314) #6
  br label %333

328:                                              ; preds = %323
  %329 = getelementptr inbounds %struct.buffer_head, ptr %314, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %329) #6, !srcloc !21
  %330 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %329, ptr %329, i32 1, ptr elementtype(i32) %329) #6, !srcloc !26
  %331 = getelementptr inbounds %struct.buffer_head, ptr %314, i32 0, i32 7
  store ptr @end_buffer_read_sync, ptr %331, align 4
  %332 = tail call i32 @submit_bh(i32 noundef 0, i32 noundef 0, ptr noundef %314) #6
  br label %333

333:                                              ; preds = %328, %327, %318, %311
  %334 = add nuw i32 %312, 1
  %335 = icmp eq i32 %334, %305
  br i1 %335, label %310, label %311

336:                                              ; preds = %362, %310
  %337 = phi i32 [ %363, %362 ], [ 0, %310 ]
  %338 = getelementptr ptr, ptr %71, i32 %337
  %339 = load ptr, ptr %338, align 4
  %340 = load volatile i32, ptr %339, align 4
  %341 = and i32 %340, 1
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %362

343:                                              ; preds = %336
  %344 = load volatile i32, ptr %339, align 4
  %345 = and i32 %344, 4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %348, label %347

347:                                              ; preds = %343
  tail call void @__wait_on_buffer(ptr noundef %339) #6
  br label %348

348:                                              ; preds = %347, %343
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !27
  %349 = load volatile i32, ptr %339, align 4
  %350 = and i32 %349, 1
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %362, !prof !10

352:                                              ; preds = %348
  %353 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef %353, ptr noundef nonnull @.str.1) #6
  %354 = getelementptr inbounds %struct.buffer_head, ptr %339, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %354) #6, !srcloc !21
  %355 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %354, ptr %354, i32 1, ptr elementtype(i32) %354) #6, !srcloc !26
  tail call void @io_schedule() #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %354) #6, !srcloc !21
  %356 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %354, ptr %354, i32 1, ptr elementtype(i32) %354) #6, !srcloc !29
  %357 = load volatile i32, ptr %339, align 4
  %358 = and i32 %357, 1
  %359 = icmp eq i32 %358, 0
  %360 = load ptr, ptr %7, align 8
  br i1 %359, label %1004, label %361, !prof !10

361:                                              ; preds = %352
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef %360, ptr noundef nonnull @.str.2) #6
  br label %362

362:                                              ; preds = %361, %348, %336
  %363 = add nuw i32 %337, 1
  %364 = icmp eq i32 %363, %305
  br i1 %364, label %365, label %336

365:                                              ; preds = %362, %310, %308
  %366 = phi i1 [ true, %310 ], [ true, %308 ], [ %309, %362 ]
  %367 = phi i32 [ %305, %310 ], [ 0, %308 ], [ %305, %362 ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @ntfs_cb_lock) #6
  %368 = load ptr, ptr @ntfs_compression_buffer, align 4
  %369 = icmp eq ptr %368, null
  br i1 %369, label %373, label %374, !prof !10

370:                                              ; preds = %234
  tail call void @_raw_spin_lock(ptr noundef nonnull @ntfs_cb_lock) #6
  %371 = load ptr, ptr @ntfs_compression_buffer, align 4
  %372 = icmp eq ptr %371, null
  br i1 %372, label %373, label %385, !prof !10

373:                                              ; preds = %370, %365
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/compress.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 700, 0\0A.popsection", ""() #6, !srcloc !30
  unreachable

374:                                              ; preds = %365
  br i1 %366, label %385, label %375

375:                                              ; preds = %375, %374
  %376 = phi i32 [ %383, %375 ], [ 0, %374 ]
  %377 = phi ptr [ %382, %375 ], [ %368, %374 ]
  %378 = getelementptr ptr, ptr %71, i32 %376
  %379 = load ptr, ptr %378, align 4
  %380 = getelementptr inbounds %struct.buffer_head, ptr %379, i32 0, i32 5
  %381 = load ptr, ptr %380, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %377, ptr align 1 %381, i32 %10, i1 false)
  %382 = getelementptr i8, ptr %377, i32 %10
  %383 = add nuw i32 %376, 1
  %384 = icmp eq i32 %383, %367
  br i1 %384, label %385, label %375

385:                                              ; preds = %375, %374, %370
  %386 = phi i64 [ %304, %374 ], [ %238, %370 ], [ %304, %375 ]
  %387 = phi i1 [ true, %374 ], [ true, %370 ], [ %366, %375 ]
  %388 = phi ptr [ %368, %374 ], [ %371, %370 ], [ %368, %375 ]
  %389 = phi i32 [ %367, %374 ], [ 0, %370 ], [ %367, %375 ]
  %390 = phi ptr [ %368, %374 ], [ %371, %370 ], [ %382, %375 ]
  %391 = getelementptr i8, ptr %388, i32 %16
  %392 = getelementptr i8, ptr %390, i32 2
  %393 = icmp ugt ptr %392, %391
  br i1 %393, label %395, label %394

394:                                              ; preds = %385
  store i16 0, ptr %390, align 2
  br label %395

395:                                              ; preds = %394, %385
  %396 = shl i32 %235, 12
  %397 = add i32 %236, %16
  %398 = add i32 %397, %396
  %399 = and i32 %398, 4095
  %400 = ashr i32 %398, 12
  %401 = tail call i32 @llvm.umin.i32(i32 %400, i32 %113)
  %402 = icmp eq i64 %386, %238
  br i1 %402, label %403, label %479

403:                                              ; preds = %395
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !31
  %404 = load i16, ptr @ntfs_cb_lock, align 4
  %405 = add i16 %404, 1
  store i16 %405, ptr @ntfs_cb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !34
  %406 = icmp ne i32 %399, 0
  %407 = sext i1 %406 to i32
  %408 = add i32 %401, %407
  %409 = icmp ult i32 %235, %408
  br i1 %409, label %410, label %464

410:                                              ; preds = %461, %403
  %411 = phi ptr [ %459, %461 ], [ %388, %403 ]
  %412 = phi i8 [ %457, %461 ], [ %237, %403 ]
  %413 = phi i32 [ 0, %461 ], [ %236, %403 ]
  %414 = phi i32 [ %462, %461 ], [ %235, %403 ]
  %415 = getelementptr ptr, ptr %60, i32 %414
  %416 = load ptr, ptr %415, align 4
  %417 = icmp eq ptr %416, null
  br i1 %417, label %456, label %418

418:                                              ; preds = %410
  %419 = icmp eq i32 %413, 0
  %420 = tail call ptr @page_address(ptr noundef nonnull %416) #6
  br i1 %419, label %421, label %422, !prof !8

421:                                              ; preds = %418
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %420, i8 0, i32 4096, i1 false)
  br label %425

422:                                              ; preds = %418
  %423 = getelementptr i8, ptr %420, i32 %413
  %424 = sub i32 4096, %413
  tail call void @llvm.memset.p0.i32(ptr align 1 %423, i8 0, i32 %424, i1 false)
  br label %425

425:                                              ; preds = %422, %421
  tail call void @flush_dcache_page(ptr noundef nonnull %416) #6
  %426 = load i32, ptr %416, align 4
  %427 = lshr i32 %426, 30
  %428 = icmp eq i32 %427, 2
  br i1 %428, label %434, label %429

429:                                              ; preds = %425
  %430 = icmp ne i32 %427, 3
  %431 = load i32, ptr @movable_zone, align 4
  %432 = icmp ne i32 %431, 2
  %433 = select i1 %430, i1 true, i1 %432
  br i1 %433, label %435, label %434

434:                                              ; preds = %429, %425
  tail call void @kunmap_high(ptr noundef nonnull %416) #6
  br label %435

435:                                              ; preds = %434, %429
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !18
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %416) #6
  tail call void @unlock_page(ptr noundef nonnull %416) #6
  %436 = icmp eq i32 %414, %85
  br i1 %436, label %454, label %437

437:                                              ; preds = %435
  %438 = getelementptr inbounds %struct.page, ptr %416, i32 0, i32 1
  %439 = load volatile i32, ptr %438, align 4
  %440 = and i32 %439, 1
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %444, label %442, !prof !8

442:                                              ; preds = %437
  %443 = add i32 %439, -1
  br label %446

444:                                              ; preds = %437
  %445 = ptrtoint ptr %416 to i32
  br label %446

446:                                              ; preds = %444, %442
  %447 = phi i32 [ %443, %442 ], [ %445, %444 ]
  %448 = inttoptr i32 %447 to ptr
  %449 = getelementptr inbounds %struct.page, ptr %448, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %449) #6, !srcloc !21
  %450 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %449, ptr %449, i32 1, ptr elementtype(i32) %449) #6, !srcloc !22
  %451 = extractvalue { i32, i32 } %450, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %446
  tail call void @__put_page(ptr noundef %448) #6
  br label %454

454:                                              ; preds = %453, %446, %435
  %455 = phi i8 [ 1, %435 ], [ %412, %446 ], [ %412, %453 ]
  store ptr null, ptr %415, align 4
  br label %456

456:                                              ; preds = %454, %410
  %457 = phi i8 [ %412, %410 ], [ %455, %454 ]
  %458 = sub i32 4096, %413
  %459 = getelementptr i8, ptr %411, i32 %458
  %460 = icmp ult ptr %459, %391
  br i1 %460, label %461, label %464

461:                                              ; preds = %456
  %462 = add nuw i32 %414, 1
  %463 = icmp eq i32 %462, %408
  br i1 %463, label %464, label %410

464:                                              ; preds = %461, %456, %403
  %465 = phi i32 [ %235, %403 ], [ %414, %456 ], [ %408, %461 ]
  %466 = phi i32 [ %236, %403 ], [ 0, %456 ], [ 0, %461 ]
  %467 = phi i8 [ %237, %403 ], [ %457, %456 ], [ %457, %461 ]
  %468 = phi ptr [ %388, %403 ], [ %459, %456 ], [ %459, %461 ]
  %469 = icmp ult ptr %468, %391
  %470 = select i1 %406, i1 %469, i1 false
  br i1 %470, label %471, label %940

471:                                              ; preds = %464
  %472 = getelementptr ptr, ptr %60, i32 %465
  %473 = load ptr, ptr %472, align 4
  %474 = icmp eq ptr %473, null
  br i1 %474, label %940, label %475

475:                                              ; preds = %471
  %476 = tail call ptr @page_address(ptr noundef nonnull %473) #6
  %477 = getelementptr i8, ptr %476, i32 %466
  %478 = sub i32 %399, %466
  tail call void @llvm.memset.p0.i32(ptr align 1 %477, i8 0, i32 %478, i1 false)
  br label %940

479:                                              ; preds = %395
  %480 = icmp eq i64 %386, %242
  br i1 %480, label %481, label %642

481:                                              ; preds = %479
  %482 = icmp ne i32 %399, 0
  %483 = sext i1 %482 to i32
  %484 = add i32 %401, %483
  %485 = icmp ult i32 %235, %484
  br i1 %485, label %486, label %506

486:                                              ; preds = %503, %481
  %487 = phi ptr [ %501, %503 ], [ %388, %481 ]
  %488 = phi i32 [ 0, %503 ], [ %236, %481 ]
  %489 = phi i32 [ %504, %503 ], [ %235, %481 ]
  %490 = getelementptr ptr, ptr %60, i32 %489
  %491 = load ptr, ptr %490, align 4
  %492 = icmp eq ptr %491, null
  br i1 %492, label %493, label %495

493:                                              ; preds = %486
  %494 = sub i32 4096, %488
  br label %499

495:                                              ; preds = %486
  %496 = tail call ptr @page_address(ptr noundef nonnull %491) #6
  %497 = getelementptr i8, ptr %496, i32 %488
  %498 = sub i32 4096, %488
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %497, ptr align 1 %487, i32 %498, i1 false)
  br label %499

499:                                              ; preds = %495, %493
  %500 = phi i32 [ %494, %493 ], [ %498, %495 ]
  %501 = getelementptr i8, ptr %487, i32 %500
  %502 = icmp ult ptr %501, %391
  br i1 %502, label %503, label %506

503:                                              ; preds = %499
  %504 = add nuw i32 %489, 1
  %505 = icmp eq i32 %504, %484
  br i1 %505, label %506, label %486

506:                                              ; preds = %503, %499, %481
  %507 = phi i32 [ %235, %481 ], [ %489, %499 ], [ %484, %503 ]
  %508 = phi i32 [ %236, %481 ], [ 0, %499 ], [ 0, %503 ]
  %509 = phi ptr [ %388, %481 ], [ %501, %499 ], [ %501, %503 ]
  %510 = icmp ult ptr %509, %391
  %511 = select i1 %482, i1 %510, i1 false
  br i1 %511, label %512, label %520

512:                                              ; preds = %506
  %513 = getelementptr ptr, ptr %60, i32 %507
  %514 = load ptr, ptr %513, align 4
  %515 = icmp eq ptr %514, null
  br i1 %515, label %520, label %516

516:                                              ; preds = %512
  %517 = tail call ptr @page_address(ptr noundef nonnull %514) #6
  %518 = getelementptr i8, ptr %517, i32 %508
  %519 = sub i32 %399, %508
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %518, ptr align 1 %509, i32 %519, i1 false)
  br label %520

520:                                              ; preds = %516, %512, %506
  %521 = phi i32 [ %508, %506 ], [ %399, %516 ], [ %399, %512 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !31
  %522 = load i16, ptr @ntfs_cb_lock, align 4
  %523 = add i16 %522, 1
  store i16 %523, ptr @ntfs_cb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !34
  br i1 %485, label %524, label %940

524:                                              ; preds = %520
  %525 = getelementptr ptr, ptr %60, i32 %235
  %526 = load ptr, ptr %525, align 4
  %527 = icmp eq ptr %526, null
  br i1 %527, label %574, label %528

528:                                              ; preds = %524
  %529 = getelementptr inbounds %struct.page, ptr %526, i32 0, i32 1, i32 0, i32 2
  %530 = load i32, ptr %529, align 4
  %531 = zext i32 %530 to i64
  %532 = icmp sle i64 %228, %531
  %533 = and i1 %229, %532
  br i1 %533, label %534, label %543

534:                                              ; preds = %528
  %535 = tail call ptr @page_address(ptr noundef nonnull %526) #6
  %536 = load i32, ptr %529, align 4
  %537 = zext i32 %536 to i64
  %538 = shl nuw nsw i64 %537, 12
  %539 = icmp slt i64 %538, %105
  br i1 %539, label %541, label %540

540:                                              ; preds = %534
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %535, i8 0, i32 4096, i1 false) #6
  br label %543

541:                                              ; preds = %534
  %542 = getelementptr i8, ptr %535, i32 %231
  tail call void @llvm.memset.p0.i32(ptr align 1 %542, i8 0, i32 %232, i1 false) #6
  br label %543

543:                                              ; preds = %541, %540, %528
  tail call void @flush_dcache_page(ptr noundef nonnull %526) #6
  %544 = load i32, ptr %526, align 4
  %545 = lshr i32 %544, 30
  %546 = icmp eq i32 %545, 2
  br i1 %546, label %552, label %547

547:                                              ; preds = %543
  %548 = icmp ne i32 %545, 3
  %549 = load i32, ptr @movable_zone, align 4
  %550 = icmp ne i32 %549, 2
  %551 = select i1 %548, i1 true, i1 %550
  br i1 %551, label %553, label %552

552:                                              ; preds = %547, %543
  tail call void @kunmap_high(ptr noundef nonnull %526) #6
  br label %553

553:                                              ; preds = %552, %547
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !18
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %526) #6
  tail call void @unlock_page(ptr noundef nonnull %526) #6
  %554 = icmp eq i32 %235, %85
  br i1 %554, label %572, label %555

555:                                              ; preds = %553
  %556 = getelementptr inbounds %struct.page, ptr %526, i32 0, i32 1
  %557 = load volatile i32, ptr %556, align 4
  %558 = and i32 %557, 1
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %562, label %560, !prof !8

560:                                              ; preds = %555
  %561 = add i32 %557, -1
  br label %564

562:                                              ; preds = %555
  %563 = ptrtoint ptr %526 to i32
  br label %564

564:                                              ; preds = %562, %560
  %565 = phi i32 [ %561, %560 ], [ %563, %562 ]
  %566 = inttoptr i32 %565 to ptr
  %567 = getelementptr inbounds %struct.page, ptr %566, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %567) #6, !srcloc !21
  %568 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %567, ptr %567, i32 1, ptr elementtype(i32) %567) #6, !srcloc !22
  %569 = extractvalue { i32, i32 } %568, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %572

571:                                              ; preds = %564
  tail call void @__put_page(ptr noundef %566) #6
  br label %572

572:                                              ; preds = %571, %564, %553
  %573 = phi i8 [ 1, %553 ], [ %237, %564 ], [ %237, %571 ]
  store ptr null, ptr %525, align 4
  br label %574

574:                                              ; preds = %572, %524
  %575 = phi i8 [ %237, %524 ], [ %573, %572 ]
  %576 = sub i32 4096, %236
  %577 = getelementptr i8, ptr %388, i32 %576
  %578 = icmp ult ptr %577, %391
  %579 = add nuw i32 %235, 1
  %580 = icmp ult i32 %579, %484
  %581 = select i1 %578, i1 %580, i1 false
  br i1 %581, label %582, label %940

582:                                              ; preds = %635, %574
  %583 = phi ptr [ %637, %635 ], [ %577, %574 ]
  %584 = phi i32 [ %639, %635 ], [ %579, %574 ]
  %585 = phi i8 [ %636, %635 ], [ %575, %574 ]
  %586 = getelementptr ptr, ptr %60, i32 %584
  %587 = load ptr, ptr %586, align 4
  %588 = icmp eq ptr %587, null
  br i1 %588, label %635, label %589

589:                                              ; preds = %582
  %590 = getelementptr inbounds %struct.page, ptr %587, i32 0, i32 1, i32 0, i32 2
  %591 = load i32, ptr %590, align 4
  %592 = zext i32 %591 to i64
  %593 = icmp sle i64 %228, %592
  %594 = and i1 %229, %593
  br i1 %594, label %595, label %604

595:                                              ; preds = %589
  %596 = tail call ptr @page_address(ptr noundef nonnull %587) #6
  %597 = load i32, ptr %590, align 4
  %598 = zext i32 %597 to i64
  %599 = shl nuw nsw i64 %598, 12
  %600 = icmp slt i64 %599, %105
  br i1 %600, label %602, label %601

601:                                              ; preds = %595
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %596, i8 0, i32 4096, i1 false) #6
  br label %604

602:                                              ; preds = %595
  %603 = getelementptr i8, ptr %596, i32 %231
  tail call void @llvm.memset.p0.i32(ptr align 1 %603, i8 0, i32 %232, i1 false) #6
  br label %604

604:                                              ; preds = %602, %601, %589
  tail call void @flush_dcache_page(ptr noundef nonnull %587) #6
  %605 = load i32, ptr %587, align 4
  %606 = lshr i32 %605, 30
  %607 = icmp eq i32 %606, 2
  br i1 %607, label %613, label %608

608:                                              ; preds = %604
  %609 = icmp ne i32 %606, 3
  %610 = load i32, ptr @movable_zone, align 4
  %611 = icmp ne i32 %610, 2
  %612 = select i1 %609, i1 true, i1 %611
  br i1 %612, label %614, label %613

613:                                              ; preds = %608, %604
  tail call void @kunmap_high(ptr noundef nonnull %587) #6
  br label %614

614:                                              ; preds = %613, %608
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !18
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %587) #6
  tail call void @unlock_page(ptr noundef nonnull %587) #6
  %615 = icmp eq i32 %584, %85
  br i1 %615, label %633, label %616

616:                                              ; preds = %614
  %617 = getelementptr inbounds %struct.page, ptr %587, i32 0, i32 1
  %618 = load volatile i32, ptr %617, align 4
  %619 = and i32 %618, 1
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %623, label %621, !prof !8

621:                                              ; preds = %616
  %622 = add i32 %618, -1
  br label %625

623:                                              ; preds = %616
  %624 = ptrtoint ptr %587 to i32
  br label %625

625:                                              ; preds = %623, %621
  %626 = phi i32 [ %622, %621 ], [ %624, %623 ]
  %627 = inttoptr i32 %626 to ptr
  %628 = getelementptr inbounds %struct.page, ptr %627, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %628) #6, !srcloc !21
  %629 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %628, ptr %628, i32 1, ptr elementtype(i32) %628) #6, !srcloc !22
  %630 = extractvalue { i32, i32 } %629, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %632, label %633

632:                                              ; preds = %625
  tail call void @__put_page(ptr noundef %627) #6
  br label %633

633:                                              ; preds = %632, %625, %614
  %634 = phi i8 [ 1, %614 ], [ %585, %625 ], [ %585, %632 ]
  store ptr null, ptr %586, align 4
  br label %635

635:                                              ; preds = %633, %582
  %636 = phi i8 [ %585, %582 ], [ %634, %633 ]
  %637 = getelementptr i8, ptr %583, i32 4096
  %638 = icmp ult ptr %637, %391
  %639 = add nuw i32 %584, 1
  %640 = icmp ult i32 %639, %484
  %641 = select i1 %638, i1 %640, i1 false
  br i1 %641, label %582, label %940, !llvm.loop !35

642:                                              ; preds = %479
  %643 = icmp eq ptr %391, %388
  br i1 %643, label %659, label %644

644:                                              ; preds = %772, %642
  %645 = phi i32 [ %773, %772 ], [ %235, %642 ]
  %646 = phi i32 [ %774, %772 ], [ %236, %642 ]
  %647 = phi i32 [ %776, %772 ], [ 0, %642 ]
  %648 = phi ptr [ %775, %772 ], [ %388, %642 ]
  br label %649

649:                                              ; preds = %747, %644
  %650 = phi i32 [ %645, %644 ], [ %748, %747 ]
  %651 = phi i32 [ %646, %644 ], [ %749, %747 ]
  %652 = phi ptr [ %648, %644 ], [ %735, %747 ]
  %653 = load i16, ptr %652, align 2
  %654 = icmp eq i16 %653, 0
  br i1 %654, label %659, label %655

655:                                              ; preds = %649
  %656 = icmp eq i32 %650, %401
  %657 = icmp eq i32 %651, %399
  %658 = select i1 %656, i1 %657, i1 false
  br i1 %658, label %659, label %722

659:                                              ; preds = %891, %772, %747, %655, %649, %642
  %660 = phi i32 [ %235, %642 ], [ %892, %891 ], [ %748, %747 ], [ %401, %655 ], [ %650, %649 ], [ %773, %772 ]
  %661 = phi i32 [ %236, %642 ], [ %893, %891 ], [ %749, %747 ], [ %399, %655 ], [ %651, %649 ], [ %774, %772 ]
  %662 = phi i32 [ 0, %642 ], [ %894, %891 ], [ %647, %649 ], [ %647, %655 ], [ %647, %747 ], [ %776, %772 ]
  %663 = phi i1 [ true, %642 ], [ false, %891 ], [ true, %649 ], [ true, %655 ], [ true, %747 ], [ true, %772 ]
  %664 = phi i32 [ 0, %642 ], [ -75, %891 ], [ 0, %649 ], [ 0, %655 ], [ 0, %747 ], [ 0, %772 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !31
  %665 = load i16, ptr @ntfs_cb_lock, align 4
  %666 = add i16 %665, 1
  store i16 %666, ptr @ntfs_cb_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !34
  %667 = icmp sgt i32 %662, 0
  br i1 %667, label %668, label %895

668:                                              ; preds = %718, %659
  %669 = phi i8 [ %719, %718 ], [ %237, %659 ]
  %670 = phi i32 [ %720, %718 ], [ 0, %659 ]
  %671 = getelementptr i32, ptr %68, i32 %670
  %672 = load i32, ptr %671, align 4
  %673 = getelementptr ptr, ptr %60, i32 %672
  %674 = load ptr, ptr %673, align 4
  %675 = getelementptr inbounds %struct.page, ptr %674, i32 0, i32 1, i32 0, i32 2
  %676 = load i32, ptr %675, align 4
  %677 = zext i32 %676 to i64
  %678 = icmp sle i64 %228, %677
  %679 = and i1 %229, %678
  br i1 %679, label %680, label %689

680:                                              ; preds = %668
  %681 = tail call ptr @page_address(ptr noundef %674) #6
  %682 = load i32, ptr %675, align 4
  %683 = zext i32 %682 to i64
  %684 = shl nuw nsw i64 %683, 12
  %685 = icmp slt i64 %684, %105
  br i1 %685, label %687, label %686

686:                                              ; preds = %680
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %681, i8 0, i32 4096, i1 false) #6
  br label %689

687:                                              ; preds = %680
  %688 = getelementptr i8, ptr %681, i32 %231
  tail call void @llvm.memset.p0.i32(ptr align 1 %688, i8 0, i32 %232, i1 false) #6
  br label %689

689:                                              ; preds = %687, %686, %668
  tail call void @flush_dcache_page(ptr noundef %674) #6
  %690 = load i32, ptr %674, align 4
  %691 = lshr i32 %690, 30
  %692 = icmp eq i32 %691, 2
  br i1 %692, label %698, label %693

693:                                              ; preds = %689
  %694 = icmp ne i32 %691, 3
  %695 = load i32, ptr @movable_zone, align 4
  %696 = icmp ne i32 %695, 2
  %697 = select i1 %694, i1 true, i1 %696
  br i1 %697, label %699, label %698

698:                                              ; preds = %693, %689
  tail call void @kunmap_high(ptr noundef %674) #6
  br label %699

699:                                              ; preds = %698, %693
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %674) #6
  tail call void @unlock_page(ptr noundef %674) #6
  %700 = icmp eq i32 %672, %85
  br i1 %700, label %718, label %701

701:                                              ; preds = %699
  %702 = getelementptr inbounds %struct.page, ptr %674, i32 0, i32 1
  %703 = load volatile i32, ptr %702, align 4
  %704 = and i32 %703, 1
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %708, label %706, !prof !8

706:                                              ; preds = %701
  %707 = add i32 %703, -1
  br label %710

708:                                              ; preds = %701
  %709 = ptrtoint ptr %674 to i32
  br label %710

710:                                              ; preds = %708, %706
  %711 = phi i32 [ %707, %706 ], [ %709, %708 ]
  %712 = inttoptr i32 %711 to ptr
  %713 = getelementptr inbounds %struct.page, ptr %712, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %713) #6, !srcloc !21
  %714 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %713, ptr %713, i32 1, ptr elementtype(i32) %713) #6, !srcloc !22
  %715 = extractvalue { i32, i32 } %714, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %717, label %718

717:                                              ; preds = %710
  tail call void @__put_page(ptr noundef %712) #6
  br label %718

718:                                              ; preds = %717, %710, %699
  %719 = phi i8 [ %669, %717 ], [ %669, %710 ], [ 1, %699 ]
  store ptr null, ptr %673, align 4
  %720 = add nuw nsw i32 %670, 1
  %721 = icmp eq i32 %720, %662
  br i1 %721, label %895, label %668

722:                                              ; preds = %655
  %723 = and i32 %651, 65535
  %724 = add i32 %651, 4096
  %725 = and i32 %724, 65535
  %726 = icmp ugt i32 %725, %399
  %727 = select i1 %656, i1 %726, i1 false
  %728 = getelementptr i8, ptr %652, i32 6
  %729 = icmp ugt ptr %728, %391
  %730 = or i1 %729, %727
  br i1 %730, label %891, label %731

731:                                              ; preds = %722
  %732 = and i16 %653, 4095
  %733 = zext i16 %732 to i32
  %734 = getelementptr i8, ptr %652, i32 3
  %735 = getelementptr i8, ptr %734, i32 %733
  %736 = icmp ugt ptr %735, %391
  br i1 %736, label %891, label %737

737:                                              ; preds = %731
  %738 = getelementptr ptr, ptr %60, i32 %650
  %739 = load ptr, ptr %738, align 4
  %740 = icmp eq ptr %739, null
  br i1 %740, label %741, label %751

741:                                              ; preds = %737
  %742 = and i32 %651, 4095
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %744, label %747

744:                                              ; preds = %741
  %745 = add i32 %650, 1
  %746 = icmp sgt i32 %745, %401
  br i1 %746, label %891, label %747

747:                                              ; preds = %790, %744, %741
  %748 = phi i32 [ %745, %744 ], [ %650, %741 ], [ %650, %790 ]
  %749 = phi i32 [ 0, %744 ], [ %742, %741 ], [ %792, %790 ]
  %750 = icmp eq ptr %735, %391
  br i1 %750, label %659, label %649

751:                                              ; preds = %737
  %752 = tail call ptr @page_address(ptr noundef nonnull %739) #6
  %753 = getelementptr i8, ptr %752, i32 %723
  %754 = load i16, ptr %652, align 2
  %755 = icmp sgt i16 %754, -1
  br i1 %755, label %756, label %778

756:                                              ; preds = %751
  %757 = getelementptr i8, ptr %652, i32 2
  %758 = ptrtoint ptr %735 to i32
  %759 = ptrtoint ptr %757 to i32
  %760 = sub i32 %758, %759
  %761 = icmp eq i32 %760, 4096
  br i1 %761, label %762, label %891

762:                                              ; preds = %756
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(4096) %753, ptr noundef align 1 dereferenceable(4096) %757, i32 4096, i1 false) #6
  %763 = getelementptr i8, ptr %652, i32 4098
  %764 = and i32 %651, 4095
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %766, label %772

766:                                              ; preds = %790, %762
  %767 = phi ptr [ %763, %762 ], [ %735, %790 ]
  %768 = add i32 %647, 1
  %769 = getelementptr i32, ptr %68, i32 %647
  store i32 %650, ptr %769, align 4
  %770 = add i32 %650, 1
  %771 = icmp sgt i32 %770, %401
  br i1 %771, label %891, label %772

772:                                              ; preds = %766, %762
  %773 = phi i32 [ %770, %766 ], [ %650, %762 ]
  %774 = phi i32 [ 0, %766 ], [ %764, %762 ]
  %775 = phi ptr [ %767, %766 ], [ %763, %762 ]
  %776 = phi i32 [ %768, %766 ], [ %647, %762 ]
  %777 = icmp eq ptr %775, %391
  br i1 %777, label %659, label %644

778:                                              ; preds = %751
  %779 = getelementptr i8, ptr %753, i32 4096
  %780 = getelementptr i8, ptr %652, i32 2
  %781 = icmp eq ptr %780, %735
  br i1 %781, label %784, label %782

782:                                              ; preds = %778
  %783 = xor i32 %651, -1
  br label %794

784:                                              ; preds = %886, %778
  %785 = phi i32 [ %651, %778 ], [ %887, %886 ]
  %786 = phi ptr [ %753, %778 ], [ %889, %886 ]
  %787 = icmp ult ptr %786, %779
  br i1 %787, label %788, label %790

788:                                              ; preds = %784
  %789 = sub i32 %725, %785
  tail call void @llvm.memset.p0.i32(ptr align 1 %786, i8 0, i32 %789, i1 false) #6
  br label %790

790:                                              ; preds = %788, %784
  %791 = phi i32 [ %725, %788 ], [ %785, %784 ]
  %792 = and i32 %791, 4095
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %766, label %747

794:                                              ; preds = %886, %782
  %795 = phi i32 [ %651, %782 ], [ %887, %886 ]
  %796 = phi ptr [ %753, %782 ], [ %889, %886 ]
  %797 = phi ptr [ %780, %782 ], [ %888, %886 ]
  %798 = icmp ugt ptr %797, %735
  %799 = icmp ugt ptr %796, %779
  %800 = select i1 %798, i1 true, i1 %799
  br i1 %800, label %891, label %801

801:                                              ; preds = %794
  %802 = getelementptr i8, ptr %797, i32 1
  %803 = load i8, ptr %797, align 1
  br label %804

804:                                              ; preds = %879, %801
  %805 = phi i32 [ %795, %801 ], [ %880, %879 ]
  %806 = phi i32 [ 0, %801 ], [ %883, %879 ]
  %807 = phi i8 [ %803, %801 ], [ %884, %879 ]
  %808 = phi ptr [ %796, %801 ], [ %882, %879 ]
  %809 = phi ptr [ %802, %801 ], [ %881, %879 ]
  %810 = icmp uge ptr %809, %735
  %811 = icmp ugt ptr %808, %779
  %812 = select i1 %810, i1 true, i1 %811
  br i1 %812, label %886, label %813

813:                                              ; preds = %804
  %814 = and i8 %807, 1
  %815 = icmp eq i8 %814, 0
  br i1 %815, label %816, label %821

816:                                              ; preds = %813
  %817 = getelementptr i8, ptr %809, i32 1
  %818 = load i8, ptr %809, align 1
  %819 = getelementptr i8, ptr %808, i32 1
  store i8 %818, ptr %808, align 1
  %820 = add i32 %805, 1
  br label %879

821:                                              ; preds = %813
  %822 = icmp eq ptr %808, %753
  br i1 %822, label %891, label %823

823:                                              ; preds = %821
  %824 = add i32 %805, %783
  %825 = and i32 %824, 65535
  %826 = icmp ugt i32 %825, 15
  br i1 %826, label %827, label %833

827:                                              ; preds = %827, %823
  %828 = phi i32 [ %831, %827 ], [ %825, %823 ]
  %829 = phi i16 [ %830, %827 ], [ 0, %823 ]
  %830 = add nuw nsw i16 %829, 1
  %831 = lshr i32 %828, 1
  %832 = icmp ugt i32 %828, 31
  br i1 %832, label %827, label %833

833:                                              ; preds = %827, %823
  %834 = phi i16 [ 0, %823 ], [ %830, %827 ]
  %835 = load i16, ptr %809, align 2
  %836 = zext i16 %835 to i32
  %837 = zext i16 %834 to i32
  %838 = sub nsw i32 12, %837
  %839 = lshr i32 %836, %838
  %840 = sub nsw i32 0, %839
  %841 = getelementptr i8, ptr %808, i32 -1
  %842 = getelementptr i8, ptr %841, i32 %840
  %843 = icmp ult ptr %842, %753
  br i1 %843, label %891, label %844

844:                                              ; preds = %833
  %845 = lshr i32 4095, %837
  %846 = trunc i32 %845 to i16
  %847 = and i16 %835, %846
  %848 = add nuw nsw i16 %847, 3
  %849 = zext i16 %848 to i32
  %850 = add i32 %805, %849
  %851 = icmp sgt i32 %850, %725
  br i1 %851, label %891, label %852

852:                                              ; preds = %844
  %853 = ptrtoint ptr %808 to i32
  %854 = ptrtoint ptr %842 to i32
  %855 = sub i32 %853, %854
  %856 = and i32 %855, 65535
  %857 = icmp ult i32 %856, %849
  br i1 %857, label %860, label %858

858:                                              ; preds = %852
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %808, ptr noundef align 1 %842, i32 %849, i1 false) #6
  %859 = getelementptr i8, ptr %808, i32 %849
  br label %876

860:                                              ; preds = %852
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %808, ptr align 1 %842, i32 %856, i1 false) #6
  %861 = getelementptr i8, ptr %808, i32 %856
  %862 = trunc i32 %855 to i16
  %863 = sub i16 %848, %862
  %864 = icmp eq i16 %863, 0
  br i1 %864, label %876, label %865

865:                                              ; preds = %860
  %866 = getelementptr i8, ptr %842, i32 %856
  br label %867

867:                                              ; preds = %867, %865
  %868 = phi ptr [ %872, %867 ], [ %866, %865 ]
  %869 = phi i16 [ %871, %867 ], [ %863, %865 ]
  %870 = phi ptr [ %874, %867 ], [ %861, %865 ]
  %871 = add i16 %869, -1
  %872 = getelementptr i8, ptr %868, i32 1
  %873 = load i8, ptr %868, align 1
  %874 = getelementptr i8, ptr %870, i32 1
  store i8 %873, ptr %870, align 1
  %875 = icmp eq i16 %871, 0
  br i1 %875, label %876, label %867

876:                                              ; preds = %867, %860, %858
  %877 = phi ptr [ %859, %858 ], [ %861, %860 ], [ %874, %867 ]
  %878 = getelementptr i8, ptr %809, i32 2
  br label %879

879:                                              ; preds = %876, %816
  %880 = phi i32 [ %820, %816 ], [ %850, %876 ]
  %881 = phi ptr [ %817, %816 ], [ %878, %876 ]
  %882 = phi ptr [ %819, %816 ], [ %877, %876 ]
  %883 = add nuw nsw i32 %806, 1
  %884 = lshr i8 %807, 1
  %885 = icmp eq i32 %883, 8
  br i1 %885, label %886, label %804

886:                                              ; preds = %879, %804
  %887 = phi i32 [ %805, %804 ], [ %880, %879 ]
  %888 = phi ptr [ %809, %804 ], [ %881, %879 ]
  %889 = phi ptr [ %808, %804 ], [ %882, %879 ]
  %890 = icmp eq ptr %888, %735
  br i1 %890, label %784, label %794

891:                                              ; preds = %844, %833, %821, %794, %766, %756, %744, %731, %722
  %892 = phi i32 [ %650, %821 ], [ %650, %833 ], [ %650, %844 ], [ %650, %794 ], [ %745, %744 ], [ %650, %731 ], [ %650, %722 ], [ %650, %756 ], [ %770, %766 ]
  %893 = phi i32 [ %850, %844 ], [ %805, %833 ], [ %805, %821 ], [ %795, %794 ], [ 0, %744 ], [ %651, %731 ], [ %651, %722 ], [ %651, %756 ], [ 0, %766 ]
  %894 = phi i32 [ %647, %821 ], [ %647, %833 ], [ %647, %844 ], [ %647, %794 ], [ %647, %722 ], [ %647, %731 ], [ %647, %744 ], [ %647, %756 ], [ %768, %766 ]
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_decompress, ptr noundef null, ptr noundef nonnull @.str.9) #6
  br label %659

895:                                              ; preds = %718, %659
  %896 = phi i8 [ %237, %659 ], [ %719, %718 ]
  br i1 %663, label %940, label %897

897:                                              ; preds = %895
  %898 = load ptr, ptr %7, align 8
  %899 = load i32, ptr %233, align 4
  %900 = sub nsw i32 0, %664
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef %898, ptr noundef nonnull @.str.3, i32 noundef %899, i32 noundef %900) #6
  %901 = icmp ult i32 %235, %660
  br i1 %901, label %902, label %940

902:                                              ; preds = %937, %897
  %903 = phi i32 [ %938, %937 ], [ %235, %897 ]
  %904 = getelementptr ptr, ptr %60, i32 %903
  %905 = load ptr, ptr %904, align 4
  %906 = icmp eq ptr %905, null
  br i1 %906, label %937, label %907

907:                                              ; preds = %902
  tail call void @flush_dcache_page(ptr noundef nonnull %905) #6
  %908 = load i32, ptr %905, align 4
  %909 = lshr i32 %908, 30
  %910 = icmp eq i32 %909, 2
  br i1 %910, label %916, label %911

911:                                              ; preds = %907
  %912 = icmp ne i32 %909, 3
  %913 = load i32, ptr @movable_zone, align 4
  %914 = icmp ne i32 %913, 2
  %915 = select i1 %912, i1 true, i1 %914
  br i1 %915, label %917, label %916

916:                                              ; preds = %911, %907
  tail call void @kunmap_high(ptr noundef nonnull %905) #6
  br label %917

917:                                              ; preds = %916, %911
  tail call void @unlock_page(ptr noundef nonnull %905) #6
  %918 = icmp eq i32 %903, %85
  br i1 %918, label %936, label %919

919:                                              ; preds = %917
  %920 = getelementptr inbounds %struct.page, ptr %905, i32 0, i32 1
  %921 = load volatile i32, ptr %920, align 4
  %922 = and i32 %921, 1
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %926, label %924, !prof !8

924:                                              ; preds = %919
  %925 = add i32 %921, -1
  br label %928

926:                                              ; preds = %919
  %927 = ptrtoint ptr %905 to i32
  br label %928

928:                                              ; preds = %926, %924
  %929 = phi i32 [ %925, %924 ], [ %927, %926 ]
  %930 = inttoptr i32 %929 to ptr
  %931 = getelementptr inbounds %struct.page, ptr %930, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %931) #6, !srcloc !21
  %932 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %931, ptr %931, i32 1, ptr elementtype(i32) %931) #6, !srcloc !22
  %933 = extractvalue { i32, i32 } %932, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %935, label %936

935:                                              ; preds = %928
  tail call void @__put_page(ptr noundef %930) #6
  br label %936

936:                                              ; preds = %935, %928, %917
  store ptr null, ptr %904, align 4
  br label %937

937:                                              ; preds = %936, %902
  %938 = add i32 %903, 1
  %939 = icmp eq i32 %938, %660
  br i1 %939, label %940, label %902

940:                                              ; preds = %937, %897, %895, %635, %574, %520, %475, %471, %464
  %941 = phi i32 [ %465, %464 ], [ %660, %895 ], [ %465, %475 ], [ %465, %471 ], [ %507, %520 ], [ %660, %897 ], [ %507, %574 ], [ %507, %635 ], [ %660, %937 ]
  %942 = phi i32 [ %466, %464 ], [ %661, %895 ], [ %399, %475 ], [ %399, %471 ], [ %521, %520 ], [ %661, %897 ], [ %521, %574 ], [ %521, %635 ], [ %661, %937 ]
  %943 = phi i8 [ %467, %464 ], [ %896, %895 ], [ %467, %475 ], [ %467, %471 ], [ %237, %520 ], [ %896, %897 ], [ %575, %574 ], [ %636, %635 ], [ %896, %937 ]
  %944 = phi i32 [ %240, %464 ], [ 0, %895 ], [ %240, %475 ], [ %240, %471 ], [ %240, %520 ], [ %664, %897 ], [ %240, %574 ], [ %240, %635 ], [ %664, %937 ]
  br i1 %387, label %954, label %945

945:                                              ; preds = %951, %940
  %946 = phi i32 [ %952, %951 ], [ 0, %940 ]
  %947 = getelementptr ptr, ptr %71, i32 %946
  %948 = load ptr, ptr %947, align 4
  %949 = icmp eq ptr %948, null
  br i1 %949, label %951, label %950

950:                                              ; preds = %945
  tail call void @__brelse(ptr noundef nonnull %948) #6
  br label %951

951:                                              ; preds = %950, %945
  %952 = add nuw i32 %946, 1
  %953 = icmp eq i32 %952, %389
  br i1 %953, label %954, label %945

954:                                              ; preds = %951, %940
  %955 = icmp eq i32 %241, 0
  br i1 %955, label %956, label %234

956:                                              ; preds = %954
  tail call void @kfree(ptr noundef %71) #6
  br i1 %114, label %999, label %957

957:                                              ; preds = %996, %956
  %958 = phi i32 [ %997, %996 ], [ 0, %956 ]
  %959 = getelementptr ptr, ptr %60, i32 %958
  %960 = load ptr, ptr %959, align 4
  %961 = icmp eq ptr %960, null
  br i1 %961, label %996, label %962

962:                                              ; preds = %957
  %963 = load ptr, ptr %7, align 8
  %964 = load i32, ptr %233, align 4
  %965 = getelementptr inbounds %struct.page, ptr %960, i32 0, i32 1, i32 0, i32 2
  %966 = load i32, ptr %965, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef %963, ptr noundef nonnull @.str.4, i32 noundef %964, i32 noundef %966) #6
  tail call void @flush_dcache_page(ptr noundef nonnull %960) #6
  %967 = load i32, ptr %960, align 4
  %968 = lshr i32 %967, 30
  %969 = icmp eq i32 %968, 2
  br i1 %969, label %975, label %970

970:                                              ; preds = %962
  %971 = icmp ne i32 %968, 3
  %972 = load i32, ptr @movable_zone, align 4
  %973 = icmp ne i32 %972, 2
  %974 = select i1 %971, i1 true, i1 %973
  br i1 %974, label %976, label %975

975:                                              ; preds = %970, %962
  tail call void @kunmap_high(ptr noundef nonnull %960) #6
  br label %976

976:                                              ; preds = %975, %970
  tail call void @unlock_page(ptr noundef nonnull %960) #6
  %977 = icmp eq i32 %958, %85
  br i1 %977, label %995, label %978

978:                                              ; preds = %976
  %979 = getelementptr inbounds %struct.page, ptr %960, i32 0, i32 1
  %980 = load volatile i32, ptr %979, align 4
  %981 = and i32 %980, 1
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %985, label %983, !prof !8

983:                                              ; preds = %978
  %984 = add i32 %980, -1
  br label %987

985:                                              ; preds = %978
  %986 = ptrtoint ptr %960 to i32
  br label %987

987:                                              ; preds = %985, %983
  %988 = phi i32 [ %984, %983 ], [ %986, %985 ]
  %989 = inttoptr i32 %988 to ptr
  %990 = getelementptr inbounds %struct.page, ptr %989, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %990) #6, !srcloc !21
  %991 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %990, ptr %990, i32 1, ptr elementtype(i32) %990) #6, !srcloc !22
  %992 = extractvalue { i32, i32 } %991, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %994, label %995

994:                                              ; preds = %987
  tail call void @__put_page(ptr noundef %989) #6
  br label %995

995:                                              ; preds = %994, %987, %976
  store ptr null, ptr %959, align 4
  br label %996

996:                                              ; preds = %995, %957
  %997 = add nuw i32 %958, 1
  %998 = icmp eq i32 %997, %113
  br i1 %998, label %999, label %957

999:                                              ; preds = %996, %956
  tail call void @kfree(ptr noundef %60) #6
  tail call void @kfree(ptr noundef %68) #6
  %1000 = icmp eq i8 %943, 0
  br i1 %1000, label %1001, label %1060, !prof !10

1001:                                             ; preds = %999
  %1002 = icmp slt i32 %944, 0
  %1003 = select i1 %1002, i32 %944, i32 -5
  br label %1060

1004:                                             ; preds = %352
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef %360, ptr noundef nonnull @.str.5) #6
  %1005 = call i32 @llvm.umax.i32(i32 %305, i32 1)
  br label %1006

1006:                                             ; preds = %1012, %1004
  %1007 = phi i32 [ 0, %1004 ], [ %1013, %1012 ]
  %1008 = getelementptr ptr, ptr %71, i32 %1007
  %1009 = load ptr, ptr %1008, align 4
  %1010 = icmp eq ptr %1009, null
  br i1 %1010, label %1012, label %1011

1011:                                             ; preds = %1006
  tail call void @__brelse(ptr noundef nonnull %1009) #6
  br label %1012

1012:                                             ; preds = %1011, %1006
  %1013 = add nuw i32 %1007, 1
  %1014 = icmp eq i32 %1013, %1005
  br i1 %1014, label %1020, label %1006

1015:                                             ; preds = %287, %270
  %1016 = phi ptr [ @.str.8, %287 ], [ @.str.7, %270 ]
  tail call void @up_read(ptr noundef %223) #6
  br label %1017

1017:                                             ; preds = %1015, %275
  %1018 = phi ptr [ %1016, %1015 ], [ @.str.6, %275 ]
  %1019 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_compressed_block, ptr noundef %1019, ptr noundef nonnull %1018) #6
  br label %1020

1020:                                             ; preds = %1017, %1012
  tail call void @kfree(ptr noundef %71) #6
  %1021 = icmp ult i32 %235, %113
  br i1 %1021, label %1022, label %1059

1022:                                             ; preds = %1056, %1020
  %1023 = phi i32 [ %1057, %1056 ], [ %235, %1020 ]
  %1024 = getelementptr ptr, ptr %60, i32 %1023
  %1025 = load ptr, ptr %1024, align 4
  %1026 = icmp eq ptr %1025, null
  br i1 %1026, label %1056, label %1027

1027:                                             ; preds = %1022
  tail call void @flush_dcache_page(ptr noundef nonnull %1025) #6
  %1028 = load i32, ptr %1025, align 4
  %1029 = lshr i32 %1028, 30
  %1030 = icmp eq i32 %1029, 2
  br i1 %1030, label %1036, label %1031

1031:                                             ; preds = %1027
  %1032 = icmp ne i32 %1029, 3
  %1033 = load i32, ptr @movable_zone, align 4
  %1034 = icmp ne i32 %1033, 2
  %1035 = select i1 %1032, i1 true, i1 %1034
  br i1 %1035, label %1037, label %1036

1036:                                             ; preds = %1031, %1027
  tail call void @kunmap_high(ptr noundef nonnull %1025) #6
  br label %1037

1037:                                             ; preds = %1036, %1031
  tail call void @unlock_page(ptr noundef nonnull %1025) #6
  %1038 = icmp eq i32 %1023, %85
  br i1 %1038, label %1056, label %1039

1039:                                             ; preds = %1037
  %1040 = getelementptr inbounds %struct.page, ptr %1025, i32 0, i32 1
  %1041 = load volatile i32, ptr %1040, align 4
  %1042 = and i32 %1041, 1
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1046, label %1044, !prof !8

1044:                                             ; preds = %1039
  %1045 = add i32 %1041, -1
  br label %1048

1046:                                             ; preds = %1039
  %1047 = ptrtoint ptr %1025 to i32
  br label %1048

1048:                                             ; preds = %1046, %1044
  %1049 = phi i32 [ %1045, %1044 ], [ %1047, %1046 ]
  %1050 = inttoptr i32 %1049 to ptr
  %1051 = getelementptr inbounds %struct.page, ptr %1050, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1051) #6, !srcloc !21
  %1052 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1051, ptr %1051, i32 1, ptr elementtype(i32) %1051) #6, !srcloc !22
  %1053 = extractvalue { i32, i32 } %1052, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  %1054 = icmp eq i32 %1053, 0
  br i1 %1054, label %1055, label %1056

1055:                                             ; preds = %1048
  tail call void @__put_page(ptr noundef %1050) #6
  br label %1056

1056:                                             ; preds = %1055, %1048, %1037, %1022
  %1057 = add i32 %1023, 1
  %1058 = icmp eq i32 %1057, %113
  br i1 %1058, label %1059, label %1022

1059:                                             ; preds = %1056, %1020
  tail call void @kfree(ptr noundef %60) #6
  tail call void @kfree(ptr noundef %68) #6
  br label %1060

1060:                                             ; preds = %1059, %1001, %999, %111, %77
  %1061 = phi i32 [ -12, %77 ], [ 0, %111 ], [ -5, %1059 ], [ %1003, %1001 ], [ 0, %999 ]
  ret i32 %1061
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntfs_rl_vcn_to_lcn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_map_runlist(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_buffer_read_sync(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_warning(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!9 = !{i64 2153313373, i64 2153313855, i64 2153313410, i64 2153313466, i64 2153313500, i64 2153313524, i64 2153313565, i64 2153313586, i64 2153313614, i64 2153313648}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2153314410, i64 2153314892, i64 2153314447, i64 2153314503, i64 2153314537, i64 2153314561, i64 2153314602, i64 2153314623, i64 2153314651, i64 2153314685}
!12 = !{i64 2153320610, i64 2153321093, i64 2153320647, i64 2153320703, i64 2153320737, i64 2153320761, i64 2153320802, i64 2153320823, i64 2153320851, i64 2153320885}
!13 = !{i64 2153321623, i64 2153322106, i64 2153321660, i64 2153321716, i64 2153321750, i64 2153321774, i64 2153321815, i64 2153321836, i64 2153321864, i64 2153321898}
!14 = !{i64 2151306793}
!15 = !{i64 2151306635}
!16 = !{i64 2151306937}
!17 = !{i64 2149501180}
!18 = !{i64 2150190584}
!19 = !{i64 2150189563}
!20 = !{i64 2148456217}
!21 = !{i64 854152, i64 2148344123, i64 2148344149, i64 2148344196, i64 2148344218, i64 2148344246, i64 2148344266}
!22 = !{i64 2148358579, i64 2148358611, i64 2148358640, i64 2148358674, i64 2148358705, i64 2148358728}
!23 = !{i64 2148456420}
!24 = !{i64 2148364000, i64 2148364032, i64 2148364061, i64 2148364095, i64 2148364126, i64 2148364149}
!25 = !{i64 2148465340}
!26 = !{i64 2148355538, i64 2148355564, i64 2148355593, i64 2148355627, i64 2148355658, i64 2148355681}
!27 = !{i64 2153325466}
!28 = !{i64 2152536685}
!29 = !{i64 2148357895, i64 2148357921, i64 2148357950, i64 2148357984, i64 2148358015, i64 2148358038}
!30 = !{i64 2153326055, i64 2153326538, i64 2153326092, i64 2153326148, i64 2153326182, i64 2153326206, i64 2153326247, i64 2153326268, i64 2153326296, i64 2153326330}
!31 = !{i64 2149022756}
!32 = !{i64 2149018580}
!33 = !{i64 2149018655, i64 2149018682, i64 2149018729, i64 2149018751, i64 2149018779, i64 2149018799}
!34 = !{i64 2149045759}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.peeled.count", i32 1}
