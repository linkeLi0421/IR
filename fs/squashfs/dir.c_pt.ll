; ModuleID = '/llk/IR/fs/squashfs/dir.c_pt.bc'
source_filename = "../fs/squashfs/dir.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.squashfs_dir_index = type { i32, i32, i32, [0 x i8] }
%struct.squashfs_dir_header = type { i32, i32, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.50, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.51, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.52, ptr, %struct.address_space, %struct.list_head, %union.anon.55, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.50 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.51 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.52 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.55 = type { ptr }
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
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }
%struct.dir_context = type { ptr, i64 }
%struct.squashfs_dir_entry = type { i16, i16, i16, i16, [0 x i8] }

@squashfs_dir_ops = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @squashfs_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [57 x i8] c"\013SQUASHFS error: Failed to allocate squashfs_dir_entry\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@squashfs_filetype_table = internal unnamed_addr constant [8 x i8] c"\00\04\08\0A\06\02\01\0C", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"\013SQUASHFS error: Unable to read directory block [%llx:%x]\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @squashfs_readdir(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.squashfs_dir_index, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.squashfs_dir_header, align 4
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %15 = getelementptr i8, ptr %10, i32 -56
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.squashfs_sb_info, ptr %14, i32 0, i32 15
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, %16
  store i64 %19, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  %20 = getelementptr i8, ptr %10, i32 -48
  %21 = load i32, ptr %20, align 8
  store i32 %21, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i32 12, i1 false), !annotation !8
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 265) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = icmp slt i64 %27, 3
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 10
  %31 = getelementptr i8, ptr %10, i32 -8
  br label %34

32:                                               ; preds = %2
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %186

34:                                               ; preds = %45, %29
  %35 = phi i64 [ %27, %29 ], [ %48, %45 ]
  %36 = icmp eq i64 %35, 0
  %37 = select i1 %36, i32 1, i32 2
  %38 = select i1 %36, ptr @.str.1, ptr @.str.2
  %39 = select i1 %36, ptr %30, ptr %31
  %40 = load i32, ptr %39, align 4
  %41 = sext i32 %40 to i64
  %42 = load ptr, ptr %1, align 8
  %43 = tail call i32 %42(ptr noundef %1, ptr noundef nonnull %38, i32 noundef %37, i64 noundef %35, i64 noundef %41, i32 noundef 4) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %186

45:                                               ; preds = %34
  %46 = zext i32 %37 to i64
  %47 = load i64, ptr %26, align 8
  %48 = add i64 %47, %46
  store i64 %48, ptr %26, align 8
  %49 = icmp slt i64 %48, 3
  br i1 %49, label %34, label %50

50:                                               ; preds = %45, %25
  %51 = phi i64 [ %27, %25 ], [ %48, %45 ]
  %52 = load ptr, ptr %11, align 4
  %53 = getelementptr i8, ptr %10, i32 -24
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr i8, ptr %10, i32 -16
  %56 = load i32, ptr %55, align 8
  %57 = getelementptr i8, ptr %10, i32 -12
  %58 = load i32, ptr %57, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i64 %54, ptr %3, align 8
  store i32 %56, ptr %4, align 4
  %59 = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 27
  %60 = load ptr, ptr %59, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false) #6, !annotation !8
  %61 = icmp eq i64 %51, 3
  br i1 %61, label %104, label %62

62:                                               ; preds = %50
  %63 = add nsw i64 %51, -3
  %64 = getelementptr inbounds %struct.squashfs_dir_index, ptr %5, i32 0, i32 2
  %65 = icmp sgt i32 %58, 0
  br i1 %65, label %66, label %99

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.squashfs_dir_index, ptr %5, i32 0, i32 1
  %68 = getelementptr inbounds %struct.squashfs_sb_info, ptr %60, i32 0, i32 15
  %69 = call i32 @squashfs_read_metadata(ptr noundef %52, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 12) #6
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %99, label %71

71:                                               ; preds = %66
  %72 = load i32, ptr %5, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %63, %73
  br i1 %74, label %99, label %82

75:                                               ; preds = %92
  %76 = call i32 @squashfs_read_metadata(ptr noundef %52, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 12) #6
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %99, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %5, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp ult i64 %63, %80
  br i1 %81, label %99, label %82

82:                                               ; preds = %78, %71
  %83 = phi i32 [ %79, %78 ], [ %72, %71 ]
  %84 = phi i32 [ %83, %78 ], [ 0, %71 ]
  %85 = phi i32 [ %97, %78 ], [ 0, %71 ]
  %86 = load i32, ptr %64, align 4
  %87 = add i32 %86, 1
  %88 = icmp ugt i32 %87, 256
  br i1 %88, label %99, label %89

89:                                               ; preds = %82
  %90 = call i32 @squashfs_read_metadata(ptr noundef %52, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %87) #6
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %89
  %93 = load i32, ptr %67, align 4
  %94 = zext i32 %93 to i64
  %95 = load i64, ptr %68, align 8
  %96 = add i64 %95, %94
  store i64 %96, ptr %6, align 8
  %97 = add nuw nsw i32 %85, 1
  %98 = icmp eq i32 %97, %58
  br i1 %98, label %99, label %75

99:                                               ; preds = %92, %89, %82, %78, %75, %71, %66, %62
  %100 = phi i32 [ 0, %62 ], [ 0, %66 ], [ 0, %71 ], [ %83, %75 ], [ %83, %78 ], [ %84, %82 ], [ %84, %89 ], [ %83, %92 ]
  %101 = add i32 %21, %100
  %102 = srem i32 %101, 8192
  store i32 %102, ptr %7, align 4
  %103 = add i32 %100, 3
  br label %104

104:                                              ; preds = %99, %50
  %105 = phi i32 [ %103, %99 ], [ 3, %50 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %106 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 22
  %107 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 13
  %108 = getelementptr inbounds %struct.squashfs_dir_entry, ptr %23, i32 0, i32 3
  %109 = getelementptr inbounds %struct.squashfs_dir_entry, ptr %23, i32 0, i32 4
  %110 = getelementptr inbounds %struct.squashfs_dir_entry, ptr %23, i32 0, i32 2
  %111 = getelementptr inbounds %struct.squashfs_dir_header, ptr %8, i32 0, i32 2
  %112 = getelementptr inbounds %struct.squashfs_dir_entry, ptr %23, i32 0, i32 1
  br label %113

113:                                              ; preds = %142, %104
  %114 = phi i32 [ %105, %104 ], [ %143, %142 ]
  br label %115

115:                                              ; preds = %123, %113
  %116 = load volatile i32, ptr %106, align 4
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %119, %115
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !10
  %120 = load volatile i32, ptr %106, align 4
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %119

123:                                              ; preds = %119, %115
  %124 = phi i32 [ %116, %115 ], [ %120, %119 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  %125 = load i64, ptr %107, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %126 = load volatile i32, ptr %106, align 4
  %127 = icmp eq i32 %126, %124
  br i1 %127, label %128, label %115

128:                                              ; preds = %123
  %129 = sext i32 %114 to i64
  %130 = icmp sgt i64 %125, %129
  br i1 %130, label %131, label %186

131:                                              ; preds = %128
  %132 = load ptr, ptr %11, align 4
  %133 = call i32 @squashfs_read_metadata(ptr noundef %132, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 12) #6
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %187, label %135

135:                                              ; preds = %131
  %136 = load i32, ptr %8, align 4
  %137 = add i32 %136, 1
  %138 = icmp ugt i32 %137, 256
  br i1 %138, label %187, label %139

139:                                              ; preds = %135
  %140 = add i32 %114, 12
  %141 = icmp eq i32 %137, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %183, %139
  %143 = phi i32 [ %140, %139 ], [ %161, %183 ]
  br label %113

144:                                              ; preds = %183, %139
  %145 = phi i32 [ %184, %183 ], [ %136, %139 ]
  %146 = phi i32 [ %161, %183 ], [ %140, %139 ]
  %147 = load ptr, ptr %11, align 4
  %148 = call i32 @squashfs_read_metadata(ptr noundef %147, ptr noundef nonnull %23, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 8) #6
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %187, label %150

150:                                              ; preds = %144
  %151 = load i16, ptr %108, align 2
  %152 = zext i16 %151 to i32
  %153 = add nuw nsw i32 %152, 1
  %154 = icmp ugt i16 %151, 255
  br i1 %154, label %187, label %155

155:                                              ; preds = %150
  %156 = load ptr, ptr %11, align 4
  %157 = call i32 @squashfs_read_metadata(ptr noundef %156, ptr noundef %109, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %153) #6
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %187, label %159

159:                                              ; preds = %155
  %160 = add i32 %146, 9
  %161 = add i32 %160, %152
  %162 = load i64, ptr %26, align 8
  %163 = sext i32 %161 to i64
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %165, label %183

165:                                              ; preds = %159
  %166 = getelementptr %struct.squashfs_dir_entry, ptr %23, i32 0, i32 4, i32 %153
  store i8 0, ptr %166, align 1
  %167 = load i16, ptr %110, align 4
  %168 = icmp ugt i16 %167, 7
  br i1 %168, label %187, label %169

169:                                              ; preds = %165
  %170 = zext i16 %167 to i32
  %171 = load i32, ptr %111, align 4
  %172 = load i16, ptr %112, align 2
  %173 = sext i16 %172 to i32
  %174 = add i32 %171, %173
  %175 = zext i32 %174 to i64
  %176 = getelementptr [8 x i8], ptr @squashfs_filetype_table, i32 0, i32 %170
  %177 = load i8, ptr %176, align 1
  %178 = zext i8 %177 to i32
  %179 = load ptr, ptr %1, align 8
  %180 = call i32 %179(ptr noundef %1, ptr noundef %109, i32 noundef %153, i64 noundef %162, i64 noundef %175, i32 noundef %178) #6
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %169
  store i64 %163, ptr %26, align 8
  br label %183

183:                                              ; preds = %182, %159
  %184 = add i32 %145, -1
  %185 = icmp eq i32 %145, 0
  br i1 %185, label %142, label %144

186:                                              ; preds = %169, %128, %34, %32
  call void @kfree(ptr noundef %23) #6
  br label %191

187:                                              ; preds = %165, %155, %150, %144, %135, %131
  %188 = load i64, ptr %6, align 8
  %189 = load i32, ptr %7, align 4
  %190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i64 noundef %188, i32 noundef %189) #8
  call void @kfree(ptr noundef nonnull %23) #6
  br label %191

191:                                              ; preds = %187, %186
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_read_metadata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

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
!9 = !{i64 2151283466}
!10 = !{i64 2151283308}
!11 = !{i64 2151283610}
!12 = !{i64 2149477853}
