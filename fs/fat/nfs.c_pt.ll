; ModuleID = '/llk/IR/fs/fat/nfs.c_pt.bc'
source_filename = "../fs/fat/nfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fat_slot_info = type { i64, i64, i32, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%union.anon.62 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.63 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.hlist_bl_head = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.msdos_dir_entry = type { [11 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32 }
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i32, i32, i16, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.msdos_inode_info = type { %struct.spinlock, %struct.list_head, i32, i32, i64, i32, i32, i32, i64, %struct.hlist_node, %struct.hlist_node, %struct.rw_semaphore, %struct.inode }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.fat_fid = type { i32, i32, i16, i16, i32, i32 }

@fat_export_ops = dso_local local_unnamed_addr constant %struct.export_operations { ptr null, ptr @fat_fh_to_dentry, ptr @fat_fh_to_parent, ptr null, ptr @fat_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@fat_export_ops_nostale = dso_local local_unnamed_addr constant %struct.export_operations { ptr @fat_encode_fh_nostale, ptr @fat_fh_to_dentry_nostale, ptr @fat_fh_to_parent_nostale, ptr null, ptr @fat_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"unable to read block(%llu) for building NFS inode\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"unable to read cluster of parent directory\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @fat_fh_to_dentry(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call ptr @generic_fh_to_dentry(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @fat_nfs_get_inode) #5
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @fat_fh_to_parent(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call ptr @generic_fh_to_parent(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @fat_nfs_get_inode) #5
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @fat_get_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.fat_slot_info, align 8
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store ptr null, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = call i32 @fat_get_dotdot_entry(ptr noundef %10, ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %178

13:                                               ; preds = %1
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.msdos_dir_entry, ptr %14, i32 0, i32 10
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.msdos_sb_info, ptr %8, i32 0, i32 4
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 32
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.msdos_dir_entry, ptr %14, i32 0, i32 7
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = shl nuw i32 %24, 16
  %26 = or i32 %25, %17
  br label %27

27:                                               ; preds = %21, %13
  %28 = phi i32 [ %26, %21 ], [ %17, %13 ]
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr inbounds %struct.msdos_sb_info, ptr %29, i32 0, i32 34
  %31 = mul i32 %28, 1640531527
  %32 = lshr i32 %31, 24
  %33 = getelementptr %struct.hlist_head, ptr %30, i32 %32
  %34 = getelementptr inbounds %struct.msdos_sb_info, ptr %29, i32 0, i32 33
  call void @_raw_spin_lock(ptr noundef %34) #5
  %35 = load ptr, ptr %33, align 4
  %36 = icmp eq ptr %35, null
  %37 = getelementptr i8, ptr %35, i32 -64
  %38 = icmp eq ptr %37, null
  %39 = or i1 %36, %38
  br i1 %39, label %61, label %40

40:                                               ; preds = %54, %27
  %41 = phi ptr [ %58, %54 ], [ %37, %27 ]
  %42 = getelementptr inbounds %struct.msdos_inode_info, ptr %41, i32 0, i32 12
  %43 = getelementptr inbounds %struct.msdos_inode_info, ptr %41, i32 0, i32 12, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %6
  br i1 %45, label %47, label %46, !prof !9

46:                                               ; preds = %40
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/nfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 33, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.msdos_inode_info, ptr %41, i32 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %28
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = call ptr @igrab(ptr noundef %42) #5
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %51, %47
  %55 = getelementptr inbounds %struct.msdos_inode_info, ptr %41, i32 0, i32 10
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  %58 = getelementptr i8, ptr %56, i32 -64
  %59 = icmp eq ptr %58, null
  %60 = or i1 %57, %59
  br i1 %60, label %61, label %40

61:                                               ; preds = %54, %51, %27
  %62 = phi ptr [ null, %27 ], [ null, %54 ], [ %52, %51 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %63 = load i16, ptr %34, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %34, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  %65 = icmp eq ptr %62, null
  br i1 %65, label %66, label %178

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.msdos_sb_info, ptr %8, i32 0, i32 19, i32 10
  %68 = load i8, ptr %67, align 4
  %69 = icmp eq i8 %68, 2
  br i1 %69, label %70, label %178

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i32 32, i1 false) #5, !annotation !8
  %71 = load ptr, ptr %7, align 4
  %72 = sext i32 %28 to i64
  %73 = add nsw i64 %72, -2
  %74 = load i16, ptr %71, align 4
  %75 = zext i16 %74 to i64
  %76 = mul nsw i64 %73, %75
  %77 = getelementptr inbounds %struct.msdos_sb_info, ptr %71, i32 0, i32 9
  %78 = load i32, ptr %77, align 4
  %79 = zext i32 %78 to i64
  %80 = add nsw i64 %76, %79
  %81 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 20
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 3
  %84 = load i32, ptr %83, align 16
  %85 = call ptr @__bread_gfp(ptr noundef %82, i64 noundef %80, i32 noundef %84, i32 noundef 8) #5
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %70
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #6
  br label %176

88:                                               ; preds = %70
  %89 = getelementptr inbounds %struct.buffer_head, ptr %85, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.msdos_dir_entry, ptr %90, i32 0, i32 10
  %92 = load i16, ptr %91, align 2
  %93 = zext i16 %92 to i32
  %94 = getelementptr inbounds %struct.msdos_sb_info, ptr %71, i32 0, i32 4
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 32
  br i1 %96, label %101, label %97

97:                                               ; preds = %88
  %98 = getelementptr %struct.msdos_dir_entry, ptr %90, i32 1, i32 10
  %99 = load i16, ptr %98, align 2
  %100 = zext i16 %99 to i32
  br label %115

101:                                              ; preds = %88
  %102 = getelementptr inbounds %struct.msdos_dir_entry, ptr %90, i32 0, i32 7
  %103 = load i16, ptr %102, align 4
  %104 = zext i16 %103 to i32
  %105 = shl nuw i32 %104, 16
  %106 = or i32 %105, %93
  %107 = getelementptr %struct.msdos_dir_entry, ptr %90, i32 1, i32 10
  %108 = load i16, ptr %107, align 2
  %109 = zext i16 %108 to i32
  %110 = getelementptr %struct.msdos_dir_entry, ptr %90, i32 1, i32 7
  %111 = load i16, ptr %110, align 4
  %112 = zext i16 %111 to i32
  %113 = shl nuw i32 %112, 16
  %114 = or i32 %113, %109
  br label %115

115:                                              ; preds = %101, %97
  %116 = phi i32 [ %106, %101 ], [ %93, %97 ]
  %117 = phi i32 [ %114, %101 ], [ %100, %97 ]
  %118 = getelementptr %struct.msdos_dir_entry, ptr %90, i32 1
  %119 = load ptr, ptr %7, align 4
  %120 = getelementptr inbounds %struct.msdos_sb_info, ptr %119, i32 0, i32 34
  %121 = mul i32 %117, 1640531527
  %122 = lshr i32 %121, 24
  %123 = getelementptr %struct.hlist_head, ptr %120, i32 %122
  %124 = getelementptr inbounds %struct.msdos_sb_info, ptr %119, i32 0, i32 33
  call void @_raw_spin_lock(ptr noundef %124) #5
  %125 = load ptr, ptr %123, align 4
  %126 = icmp eq ptr %125, null
  %127 = getelementptr i8, ptr %125, i32 -64
  %128 = icmp eq ptr %127, null
  %129 = or i1 %126, %128
  br i1 %129, label %151, label %130

130:                                              ; preds = %144, %115
  %131 = phi ptr [ %148, %144 ], [ %127, %115 ]
  %132 = getelementptr inbounds %struct.msdos_inode_info, ptr %131, i32 0, i32 12
  %133 = getelementptr inbounds %struct.msdos_inode_info, ptr %131, i32 0, i32 12, i32 8
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, %6
  br i1 %135, label %137, label %136, !prof !9

136:                                              ; preds = %130
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/nfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 33, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.msdos_inode_info, ptr %131, i32 0, i32 6
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, %117
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = call ptr @igrab(ptr noundef %132) #5
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %151

144:                                              ; preds = %141, %137
  %145 = getelementptr inbounds %struct.msdos_inode_info, ptr %131, i32 0, i32 10
  %146 = load ptr, ptr %145, align 8
  %147 = icmp eq ptr %146, null
  %148 = getelementptr i8, ptr %146, i32 -64
  %149 = icmp eq ptr %148, null
  %150 = or i1 %147, %149
  br i1 %150, label %151, label %130

151:                                              ; preds = %144, %141, %115
  %152 = phi ptr [ null, %115 ], [ %142, %141 ], [ null, %144 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %153 = load i16, ptr %124, align 4
  %154 = add i16 %153, 1
  store i16 %154, ptr %124, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  %155 = icmp eq ptr %152, null
  br i1 %155, label %156, label %165

156:                                              ; preds = %151
  %157 = call ptr @new_inode(ptr noundef %6) #5
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  call void @__brelse(ptr noundef nonnull %85) #5
  br label %176

160:                                              ; preds = %156
  %161 = call i32 @iunique(ptr noundef %6, i32 noundef 1) #5
  %162 = getelementptr inbounds %struct.inode, ptr %157, i32 0, i32 10
  store i32 %161, ptr %162, align 4
  %163 = call i32 @fat_fill_inode(ptr noundef nonnull %157, ptr noundef %118) #5
  %164 = getelementptr i8, ptr %157, i32 -48
  store i64 -1, ptr %164, align 8
  br label %165

165:                                              ; preds = %160, %151
  %166 = phi ptr [ %152, %151 ], [ %157, %160 ]
  %167 = call i32 @fat_scan_logstart(ptr noundef nonnull %166, i32 noundef %116, ptr noundef nonnull %2) #5
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.fat_slot_info, ptr %2, i32 0, i32 3
  %171 = load ptr, ptr %170, align 4
  %172 = load i64, ptr %2, align 8
  %173 = call ptr @fat_build_inode(ptr noundef %6, ptr noundef %171, i64 noundef %172) #5
  br label %174

174:                                              ; preds = %169, %165
  %175 = phi ptr [ null, %165 ], [ %173, %169 ]
  call void @__brelse(ptr noundef nonnull %85) #5
  call void @iput(ptr noundef nonnull %166) #5
  br label %176

176:                                              ; preds = %174, %159, %87
  %177 = phi ptr [ %175, %174 ], [ null, %159 ], [ null, %87 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #5
  br label %178

178:                                              ; preds = %176, %66, %61, %1
  %179 = phi ptr [ null, %1 ], [ %62, %61 ], [ %177, %176 ], [ null, %66 ]
  %180 = load ptr, ptr %3, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  call void @__brelse(ptr noundef nonnull %180) #5
  br label %183

183:                                              ; preds = %182, %178
  %184 = call ptr @d_obtain_alias(ptr noundef %179) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret ptr %184
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat_encode_fh_nostale(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr noundef readonly %3) #0 {
  %5 = load i32, ptr %2, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %3, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = icmp ult i32 %5, 5
  br i1 %12, label %41, label %15

13:                                               ; preds = %4
  %14 = icmp slt i32 %5, 3
  br i1 %14, label %41, label %15

15:                                               ; preds = %13, %11
  %16 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %16) #5
  %17 = getelementptr i8, ptr %0, i32 -48
  %18 = load i64, ptr %17, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %19 = load i16, ptr %16, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  store i32 3, ptr %2, align 4
  %21 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 44
  %22 = load i32, ptr %21, align 8
  store i32 %22, ptr %1, align 4
  %23 = trunc i64 %18 to i32
  %24 = getelementptr inbounds %struct.fat_fid, ptr %1, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = lshr i64 %18, 32
  %26 = trunc i64 %25 to i16
  %27 = getelementptr inbounds %struct.fat_fid, ptr %1, i32 0, i32 2
  store i16 %26, ptr %27, align 4
  br i1 %10, label %44, label %28

28:                                               ; preds = %15
  tail call void @_raw_spin_lock(ptr noundef %16) #5
  %29 = getelementptr i8, ptr %3, i32 -48
  %30 = load i64, ptr %29, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %31 = load i16, ptr %16, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  %33 = lshr i64 %30, 32
  %34 = trunc i64 %33 to i16
  %35 = getelementptr inbounds %struct.fat_fid, ptr %1, i32 0, i32 3
  store i16 %34, ptr %35, align 2
  %36 = trunc i64 %30 to i32
  %37 = getelementptr inbounds %struct.fat_fid, ptr %1, i32 0, i32 4
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 44
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.fat_fid, ptr %1, i32 0, i32 5
  store i32 %39, ptr %40, align 4
  br label %41

41:                                               ; preds = %28, %13, %11
  %42 = phi i32 [ 5, %28 ], [ 5, %11 ], [ 3, %13 ]
  %43 = phi i32 [ 114, %28 ], [ 255, %11 ], [ 255, %13 ]
  store i32 %42, ptr %2, align 4
  br label %44

44:                                               ; preds = %41, %15
  %45 = phi i32 [ 113, %15 ], [ %43, %41 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @fat_fh_to_dentry_nostale(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  switch i32 %3, label %21 [
    i32 113, label %5
    i32 114, label %7
  ]

5:                                                ; preds = %4
  %6 = icmp slt i32 %2, 3
  br i1 %6, label %21, label %9

7:                                                ; preds = %4
  %8 = icmp ult i32 %2, 5
  br i1 %8, label %21, label %9

9:                                                ; preds = %7, %5
  %10 = getelementptr inbounds %struct.fat_fid, ptr %1, i32 0, i32 2
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i64
  %13 = shl nuw nsw i64 %12, 32
  %14 = getelementptr inbounds %struct.fat_fid, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = zext i32 %15 to i64
  %17 = or i64 %13, %16
  %18 = load i32, ptr %1, align 4
  %19 = tail call fastcc ptr @__fat_nfs_get_inode(ptr noundef %0, i64 noundef 0, i32 noundef %18, i64 noundef %17)
  %20 = tail call ptr @d_obtain_alias(ptr noundef %19) #5
  br label %21

21:                                               ; preds = %9, %7, %5, %4
  %22 = phi ptr [ %20, %9 ], [ null, %5 ], [ null, %7 ], [ null, %4 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @fat_fh_to_parent_nostale(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp ult i32 %2, 5
  br i1 %5, label %23, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 114
  br i1 %7, label %8, label %20

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.fat_fid, ptr %1, i32 0, i32 3
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i64
  %12 = shl nuw nsw i64 %11, 32
  %13 = getelementptr inbounds %struct.fat_fid, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = zext i32 %14 to i64
  %16 = or i64 %12, %15
  %17 = getelementptr inbounds %struct.fat_fid, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = tail call fastcc ptr @__fat_nfs_get_inode(ptr noundef %0, i64 noundef 0, i32 noundef %18, i64 noundef %16)
  br label %20

20:                                               ; preds = %8, %6
  %21 = phi ptr [ %19, %8 ], [ null, %6 ]
  %22 = tail call ptr @d_obtain_alias(ptr noundef %21) #5
  br label %23

23:                                               ; preds = %20, %4
  %24 = phi ptr [ %22, %20 ], [ null, %4 ]
  ret ptr %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_dentry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @fat_nfs_get_inode(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = tail call fastcc ptr @__fat_nfs_get_inode(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef 0)
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__fat_nfs_get_inode(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 19, i32 10
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call ptr @fat_iget(ptr noundef %0, i64 noundef %3) #5
  br label %18

12:                                               ; preds = %4
  %13 = and i64 %1, -3
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = trunc i64 %1 to i32
  %17 = tail call ptr @ilookup(ptr noundef %0, i32 noundef %16) #5
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi ptr [ %11, %10 ], [ %17, %15 ]
  %20 = icmp ne ptr %19, null
  %21 = icmp ne i32 %2, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 44
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %61, label %27

27:                                               ; preds = %23
  tail call void @iput(ptr noundef nonnull %19) #5
  br label %30

28:                                               ; preds = %18
  %29 = icmp eq ptr %19, null
  br i1 %29, label %30, label %61

30:                                               ; preds = %28, %27, %12
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds %struct.msdos_sb_info, ptr %31, i32 0, i32 19, i32 10
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 2
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.msdos_sb_info, ptr %31, i32 0, i32 24
  %37 = load i32, ptr %36, align 4
  %38 = zext i32 %37 to i64
  %39 = ashr i64 %3, %38
  %40 = getelementptr inbounds %struct.msdos_sb_info, ptr %31, i32 0, i32 23
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %45 = load i32, ptr %44, align 16
  %46 = tail call ptr @__bread_gfp(ptr noundef %43, i64 noundef %39, i32 noundef %45, i32 noundef 8) #5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef %39) #6
  br label %61

49:                                               ; preds = %35
  %50 = add i32 %41, -1
  %51 = trunc i64 %3 to i32
  %52 = and i32 %50, %51
  %53 = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr %struct.msdos_dir_entry, ptr %54, i32 %52
  %56 = load i8, ptr %55, align 4
  switch i8 %56, label %57 [
    i8 0, label %59
    i8 -27, label %59
  ]

57:                                               ; preds = %49
  %58 = tail call ptr @fat_build_inode(ptr noundef %0, ptr noundef %55, i64 noundef %3) #5
  br label %59

59:                                               ; preds = %57, %49, %49
  %60 = phi ptr [ %58, %57 ], [ null, %49 ], [ null, %49 ]
  tail call void @__brelse(ptr noundef nonnull %46) #5
  br label %61

61:                                               ; preds = %59, %48, %30, %28, %23
  %62 = phi ptr [ null, %48 ], [ %60, %59 ], [ null, %30 ], [ %19, %28 ], [ %19, %23 ]
  ret ptr %62
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fat_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fat_build_inode(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fat_iget(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_parent(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_get_dotdot_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iunique(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_fill_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_scan_logstart(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!10 = !{i64 2152567046, i64 2152567522, i64 2152567083, i64 2152567139, i64 2152567173, i64 2152567197, i64 2152567238, i64 2152567259, i64 2152567287, i64 2152567321}
!11 = !{i64 2149039401}
!12 = !{i64 2149035225}
!13 = !{i64 2149035300, i64 2149035327, i64 2149035374, i64 2149035396, i64 2149035424, i64 2149035444}
!14 = !{i64 2149062404}
