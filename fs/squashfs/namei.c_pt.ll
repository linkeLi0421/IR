; ModuleID = '/llk/IR/fs/squashfs/namei.c_pt.bc'
source_filename = "../fs/squashfs/namei.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.squashfs_dir_header = type { i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.63 }
%union.anon.63 = type { i64 }
%union.anon.65 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.66 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon = type { i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.60 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.62 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }
%struct.squashfs_dir_index = type { i32, i32, i32, [0 x i8] }
%struct.squashfs_dir_entry = type { i16, i16, i16, i16, [0 x i8] }

@squashfs_dir_inode_ops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @squashfs_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@.str = private unnamed_addr constant [57 x i8] c"\013SQUASHFS error: Failed to allocate squashfs_dir_entry\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"\013SQUASHFS error: Unable to read directory block [%llx:%x]\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"\013SQUASHFS error: Failed to allocate squashfs_dir_index\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @squashfs_lookup(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.squashfs_dir_header, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %10 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 27
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %18 = getelementptr i8, ptr %0, i32 -56
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.squashfs_sb_info, ptr %17, i32 0, i32 15
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %21, %19
  store i64 %22, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  %23 = getelementptr i8, ptr %0, i32 -48
  %24 = load i32, ptr %23, align 8
  store i32 %24, ptr %8, align 4
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 265) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %188

30:                                               ; preds = %3
  %31 = icmp sgt i32 %13, 256
  br i1 %31, label %185, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %14, align 4
  %34 = getelementptr i8, ptr %0, i32 -24
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr i8, ptr %0, i32 -16
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr i8, ptr %0, i32 -12
  %39 = load i32, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i64 %35, ptr %4, align 8
  store i32 %37, ptr %5, align 4
  %40 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 27
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %43 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3264, i32 noundef 526) #9
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %92

47:                                               ; preds = %32
  %48 = getelementptr inbounds %struct.squashfs_dir_index, ptr %43, i32 0, i32 3
  %49 = getelementptr [0 x i8], ptr %48, i32 0, i32 257
  %50 = tail call ptr @strncpy(ptr noundef %49, ptr noundef %11, i32 noundef %13) #8
  %51 = getelementptr i8, ptr %49, i32 %13
  store i8 0, ptr %51, align 1
  %52 = getelementptr inbounds %struct.squashfs_dir_index, ptr %43, i32 0, i32 2
  %53 = icmp sgt i32 %39, 0
  br i1 %53, label %54, label %88

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.squashfs_dir_index, ptr %43, i32 0, i32 1
  %56 = getelementptr inbounds %struct.squashfs_sb_info, ptr %41, i32 0, i32 15
  %57 = call i32 @squashfs_read_metadata(ptr noundef %33, ptr noundef nonnull %43, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 12) #8
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %88, label %59

59:                                               ; preds = %54
  %60 = load i32, ptr %52, align 8
  %61 = add i32 %60, 1
  %62 = icmp ugt i32 %61, 256
  br i1 %62, label %88, label %70

63:                                               ; preds = %80
  %64 = call i32 @squashfs_read_metadata(ptr noundef %33, ptr noundef nonnull %43, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 12) #8
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %88, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %52, align 8
  %68 = add i32 %67, 1
  %69 = icmp ugt i32 %68, 256
  br i1 %69, label %88, label %70

70:                                               ; preds = %66, %59
  %71 = phi i32 [ %68, %66 ], [ %61, %59 ]
  %72 = phi i32 [ %86, %66 ], [ 0, %59 ]
  %73 = phi i32 [ %81, %66 ], [ 0, %59 ]
  %74 = call i32 @squashfs_read_metadata(ptr noundef %33, ptr noundef %48, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %71) #8
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %70
  %77 = getelementptr %struct.squashfs_dir_index, ptr %43, i32 0, i32 3, i32 %71
  store i8 0, ptr %77, align 1
  %78 = call i32 @strcmp(ptr noundef %48, ptr noundef %49) #8
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %76
  %81 = load i32, ptr %43, align 8
  %82 = load i32, ptr %55, align 4
  %83 = zext i32 %82 to i64
  %84 = load i64, ptr %56, align 8
  %85 = add i64 %84, %83
  store i64 %85, ptr %7, align 8
  %86 = add nuw nsw i32 %72, 1
  %87 = icmp eq i32 %86, %39
  br i1 %87, label %88, label %63

88:                                               ; preds = %80, %76, %70, %66, %63, %59, %54, %47
  %89 = phi i32 [ 0, %47 ], [ 0, %54 ], [ 0, %59 ], [ %81, %63 ], [ %81, %66 ], [ %73, %70 ], [ %73, %76 ], [ %81, %80 ]
  %90 = add i32 %24, %89
  %91 = srem i32 %90, 8192
  store i32 %91, ptr %8, align 4
  call void @kfree(ptr noundef nonnull %43) #8
  br label %92

92:                                               ; preds = %88, %45
  %93 = phi i32 [ 0, %45 ], [ %89, %88 ]
  %94 = add i32 %93, 3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  %95 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %96 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %97 = getelementptr inbounds %struct.squashfs_dir_entry, ptr %26, i32 0, i32 3
  %98 = getelementptr inbounds %struct.squashfs_dir_entry, ptr %26, i32 0, i32 4
  br label %99

99:                                               ; preds = %128, %92
  %100 = phi i32 [ %94, %92 ], [ %129, %128 ]
  br label %101

101:                                              ; preds = %109, %99
  %102 = load volatile i32, ptr %95, align 4
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %105, %101
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !10
  %106 = load volatile i32, ptr %95, align 4
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %105

109:                                              ; preds = %105, %101
  %110 = phi i32 [ %102, %101 ], [ %106, %105 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %111 = load i64, ptr %96, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %112 = load volatile i32, ptr %95, align 4
  %113 = icmp eq i32 %112, %110
  br i1 %113, label %114, label %101

114:                                              ; preds = %109
  %115 = sext i32 %100 to i64
  %116 = icmp sgt i64 %111, %115
  br i1 %116, label %117, label %175

117:                                              ; preds = %114
  %118 = load ptr, ptr %14, align 4
  %119 = call i32 @squashfs_read_metadata(ptr noundef %118, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 12) #8
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %178, label %121

121:                                              ; preds = %117
  %122 = load i32, ptr %6, align 4
  %123 = add i32 %122, 1
  %124 = icmp ugt i32 %123, 256
  br i1 %124, label %178, label %125

125:                                              ; preds = %121
  %126 = add i32 %100, 12
  %127 = icmp eq i32 %123, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %172, %125
  %129 = phi i32 [ %126, %125 ], [ %147, %172 ]
  br label %99

130:                                              ; preds = %172, %125
  %131 = phi i32 [ %173, %172 ], [ %122, %125 ]
  %132 = phi i32 [ %147, %172 ], [ %126, %125 ]
  %133 = load ptr, ptr %14, align 4
  %134 = call i32 @squashfs_read_metadata(ptr noundef %133, ptr noundef nonnull %26, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 8) #8
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %178, label %136

136:                                              ; preds = %130
  %137 = load i16, ptr %97, align 2
  %138 = zext i16 %137 to i32
  %139 = add nuw nsw i32 %138, 1
  %140 = icmp ugt i16 %137, 255
  br i1 %140, label %178, label %141

141:                                              ; preds = %136
  %142 = load ptr, ptr %14, align 4
  %143 = call i32 @squashfs_read_metadata(ptr noundef %142, ptr noundef %98, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %139) #8
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %178, label %145

145:                                              ; preds = %141
  %146 = add i32 %132, 9
  %147 = add i32 %146, %138
  %148 = load i8, ptr %11, align 1
  %149 = load i8, ptr %98, align 8
  %150 = icmp ult i8 %148, %149
  br i1 %150, label %175, label %151

151:                                              ; preds = %145
  %152 = icmp eq i32 %13, %139
  br i1 %152, label %153, label %172

153:                                              ; preds = %151
  %154 = call i32 @strncmp(ptr noundef %11, ptr noundef %98, i32 noundef %13)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.squashfs_dir_header, ptr %6, i32 0, i32 1
  %158 = load i32, ptr %157, align 4
  %159 = load i16, ptr %26, align 8
  %160 = getelementptr inbounds %struct.squashfs_dir_header, ptr %6, i32 0, i32 2
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr inbounds %struct.squashfs_dir_entry, ptr %26, i32 0, i32 1
  %163 = load i16, ptr %162, align 2
  %164 = sext i16 %163 to i32
  %165 = add i32 %161, %164
  %166 = zext i32 %158 to i64
  %167 = shl nuw nsw i64 %166, 16
  %168 = zext i16 %159 to i64
  %169 = or i64 %167, %168
  %170 = load ptr, ptr %14, align 4
  %171 = call ptr @squashfs_iget(ptr noundef %170, i64 noundef %169, i32 noundef %165) #8
  br label %175

172:                                              ; preds = %153, %151
  %173 = add i32 %131, -1
  %174 = icmp eq i32 %131, 0
  br i1 %174, label %128, label %130

175:                                              ; preds = %156, %145, %114
  %176 = phi ptr [ %171, %156 ], [ null, %145 ], [ null, %114 ]
  call void @kfree(ptr noundef nonnull %26) #8
  %177 = call ptr @d_splice_alias(ptr noundef %176, ptr noundef %1) #8
  br label %188

178:                                              ; preds = %141, %136, %130, %121, %117
  %179 = phi i32 [ -5, %136 ], [ %143, %141 ], [ %134, %130 ], [ -5, %121 ], [ %119, %117 ]
  %180 = load i64, ptr %18, align 8
  %181 = load i64, ptr %20, align 8
  %182 = add i64 %181, %180
  %183 = load i32, ptr %23, align 8
  %184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i64 noundef %182, i32 noundef %183) #10
  br label %185

185:                                              ; preds = %178, %30
  %186 = phi i32 [ %179, %178 ], [ -36, %30 ]
  call void @kfree(ptr noundef nonnull %26) #8
  %187 = inttoptr i32 %186 to ptr
  br label %188

188:                                              ; preds = %185, %175, %28
  %189 = phi ptr [ inttoptr (i32 -12 to ptr), %28 ], [ %187, %185 ], [ %177, %175 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  ret ptr %189
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_read_metadata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_iget(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!9 = !{i64 2151285077}
!10 = !{i64 2151284919}
!11 = !{i64 2151285221}
!12 = !{i64 2149479464}
