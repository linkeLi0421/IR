; ModuleID = '/llk/IR/fs/iomap/swapfile.c_pt.bc'
source_filename = "../fs/iomap/swapfile.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_swapfile_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_swapfile_activate\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_swapfile_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iomap_iter = type { ptr, i64, i64, i64, i32, %struct.iomap, %struct.iomap }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.70 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
%struct.swap_info_struct = type { %struct.percpu_ref, i32, i16, %struct.plist_node, i8, i32, ptr, ptr, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.rb_root, ptr, ptr, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.percpu_ref = type { i32, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }

@.str = private unnamed_addr constant [53 x i8] c"\014swapon: Cannot find a single usable page in file.\0A\00", align 1
@__kstrtab_iomap_swapfile_activate = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_swapfile_activate = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_swapfile_activate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_swapfile_activate to i32), ptr @__kstrtab_iomap_swapfile_activate, ptr @__kstrtabns_iomap_swapfile_activate }, section "___ksymtab_gpl+iomap_swapfile_activate", align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"is inline\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"has unallocated extents\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"is not committed\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"has shared extents\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"outside the main device\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"\013swapon: file %s %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_iomap_swapfile_activate], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iomap_swapfile_activate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) #0 {
  %5 = alloca %struct.iomap_iter, align 8
  %6 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %5, i8 0, i64 136, i1 false)
  store ptr %8, ptr %5, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 22
  %10 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 13
  br label %11

11:                                               ; preds = %19, %4
  %12 = load volatile i32, ptr %9, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %15, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !9
  %16 = load volatile i32, ptr %9, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %12, %11 ], [ %16, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %21 = load i64, ptr %10, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %22 = load volatile i32, ptr %9, align 4
  %23 = icmp eq i32 %22, %20
  br i1 %23, label %24, label %11

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 2
  %26 = and i64 %21, -4096
  store i64 %26, ptr %25, align 8
  %27 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 4
  store i32 4, ptr %27, align 8
  %28 = tail call i32 @vfs_fsync(ptr noundef %1, i32 noundef 1) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %254

30:                                               ; preds = %24
  %31 = call i32 @iomap_iter(ptr noundef nonnull %5, ptr noundef %3) #7
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %209

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 5
  %35 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 5, i32 3
  %36 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 5, i32 4
  %37 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 5, i32 5
  %38 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 18
  %39 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 5
  %40 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 5, i32 1
  %41 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 5, i32 2
  %42 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 6, i32 3
  %43 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 6, i32 1
  %44 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 6, i32 2
  %45 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 1
  %46 = getelementptr inbounds %struct.iomap_iter, ptr %5, i32 0, i32 3
  br label %47

47:                                               ; preds = %196, %33
  %48 = phi i32 [ 0, %33 ], [ %203, %196 ]
  %49 = phi i32 [ 0, %33 ], [ %202, %196 ]
  %50 = phi i64 [ 0, %33 ], [ %201, %196 ]
  %51 = phi i64 [ -1, %33 ], [ %200, %196 ]
  %52 = phi i64 [ 0, %33 ], [ %199, %196 ]
  %53 = phi i64 [ 0, %33 ], [ %198, %196 ]
  %54 = phi i64 [ 0, %33 ], [ %197, %196 ]
  %55 = load i16, ptr %35, align 8
  switch i16 %55, label %67 [
    i16 2, label %78
    i16 3, label %78
    i16 4, label %56
  ]

56:                                               ; preds = %47
  %57 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %58 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3264, i32 noundef 4096) #8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = call ptr @file_path(ptr noundef %1, ptr noundef nonnull %58, i32 noundef 4096) #7
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi ptr [ %61, %60 ], [ inttoptr (i32 -12 to ptr), %56 ]
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  %65 = select i1 %64, ptr @.str.7, ptr %63
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %65, ptr noundef nonnull @.str.1) #9
  call void @kfree(ptr noundef %58) #7
  br label %196

67:                                               ; preds = %47
  %68 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %69 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3264, i32 noundef 4096) #8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = call ptr @file_path(ptr noundef %1, ptr noundef nonnull %69, i32 noundef 4096) #7
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi ptr [ %72, %71 ], [ inttoptr (i32 -12 to ptr), %67 ]
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  %76 = select i1 %75, ptr @.str.7, ptr %74
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %76, ptr noundef nonnull @.str.2) #9
  call void @kfree(ptr noundef %69) #7
  br label %196

78:                                               ; preds = %47, %47
  %79 = load i16, ptr %36, align 2
  %80 = zext i16 %79 to i32
  %81 = and i32 %80, 2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %85 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %84, i32 noundef 3264, i32 noundef 4096) #8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = call ptr @file_path(ptr noundef %1, ptr noundef nonnull %85, i32 noundef 4096) #7
  br label %89

89:                                               ; preds = %87, %83
  %90 = phi ptr [ %88, %87 ], [ inttoptr (i32 -12 to ptr), %83 ]
  %91 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  %92 = select i1 %91, ptr @.str.7, ptr %90
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %92, ptr noundef nonnull @.str.3) #9
  call void @kfree(ptr noundef %85) #7
  br label %196

94:                                               ; preds = %78
  %95 = and i32 %80, 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %99 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %98, i32 noundef 3264, i32 noundef 4096) #8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = call ptr @file_path(ptr noundef %1, ptr noundef nonnull %99, i32 noundef 4096) #7
  br label %103

103:                                              ; preds = %101, %97
  %104 = phi ptr [ %102, %101 ], [ inttoptr (i32 -12 to ptr), %97 ]
  %105 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  %106 = select i1 %105, ptr @.str.7, ptr %104
  %107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %106, ptr noundef nonnull @.str.4) #9
  call void @kfree(ptr noundef %99) #7
  br label %196

108:                                              ; preds = %94
  %109 = load ptr, ptr %37, align 4
  %110 = load ptr, ptr %38, align 4
  %111 = icmp eq ptr %109, %110
  br i1 %111, label %123, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %114 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %113, i32 noundef 3264, i32 noundef 4096) #8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = call ptr @file_path(ptr noundef %1, ptr noundef nonnull %114, i32 noundef 4096) #7
  br label %118

118:                                              ; preds = %116, %112
  %119 = phi ptr [ %117, %116 ], [ inttoptr (i32 -12 to ptr), %112 ]
  %120 = icmp ugt ptr %119, inttoptr (i32 -4096 to ptr)
  %121 = select i1 %120, ptr @.str.7, ptr %119
  %122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %121, ptr noundef nonnull @.str.5) #9
  call void @kfree(ptr noundef %114) #7
  br label %196

123:                                              ; preds = %108
  %124 = icmp eq i64 %53, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %123
  %126 = load i64, ptr %34, align 8
  %127 = load i64, ptr %40, align 8
  %128 = load i64, ptr %41, align 8
  br label %172

129:                                              ; preds = %123
  %130 = add i64 %52, %53
  %131 = load i64, ptr %34, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i64, ptr %41, align 8
  %135 = add i64 %134, %53
  %136 = load i64, ptr %40, align 8
  br label %172

137:                                              ; preds = %129
  %138 = load i32, ptr %39, align 4
  %139 = icmp ugt i32 %138, %49
  br i1 %139, label %140, label %162, !prof !12

140:                                              ; preds = %137
  %141 = add i64 %52, 4095
  %142 = lshr i64 %141, 12
  %143 = lshr i64 %130, 12
  %144 = icmp ugt i64 %143, %142
  br i1 %144, label %145, label %162

145:                                              ; preds = %140
  %146 = sub i32 %138, %49
  %147 = sub nsw i64 %143, %142
  %148 = trunc i64 %147 to i32
  %149 = call i32 @llvm.umin.i32(i32 %146, i32 %148) #7
  %150 = icmp eq i64 %54, 0
  %151 = zext i1 %150 to i64
  %152 = add nuw nsw i64 %142, %151
  %153 = call i64 @llvm.umin.i64(i64 %51, i64 %152)
  %154 = add nsw i64 %143, -1
  %155 = call i64 @llvm.umax.i64(i64 %50, i64 %154)
  %156 = call i32 @add_swap_extent(ptr noundef %0, i32 noundef %49, i32 noundef %149, i64 noundef %142) #7
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %170, label %158

158:                                              ; preds = %145
  %159 = add i32 %156, %48
  %160 = add i32 %149, %49
  %161 = load i64, ptr %34, align 8
  br label %162

162:                                              ; preds = %158, %140, %137
  %163 = phi i64 [ %131, %137 ], [ %131, %140 ], [ %161, %158 ]
  %164 = phi i64 [ %51, %137 ], [ %51, %140 ], [ %153, %158 ]
  %165 = phi i64 [ %50, %137 ], [ %50, %140 ], [ %155, %158 ]
  %166 = phi i32 [ %49, %137 ], [ %49, %140 ], [ %160, %158 ]
  %167 = phi i32 [ %48, %137 ], [ %48, %140 ], [ %159, %158 ]
  %168 = load i64, ptr %40, align 8
  %169 = load i64, ptr %41, align 8
  br label %172

170:                                              ; preds = %145
  %171 = sext i32 %156 to i64
  br label %196

172:                                              ; preds = %162, %133, %125
  %173 = phi i64 [ %128, %125 ], [ %134, %133 ], [ %169, %162 ]
  %174 = phi i64 [ %127, %125 ], [ %136, %133 ], [ %168, %162 ]
  %175 = phi i64 [ %127, %125 ], [ %54, %133 ], [ %168, %162 ]
  %176 = phi i64 [ %128, %125 ], [ %135, %133 ], [ %169, %162 ]
  %177 = phi i64 [ %126, %125 ], [ %52, %133 ], [ %163, %162 ]
  %178 = phi i64 [ %51, %125 ], [ %51, %133 ], [ %164, %162 ]
  %179 = phi i64 [ %50, %125 ], [ %50, %133 ], [ %165, %162 ]
  %180 = phi i32 [ %49, %125 ], [ %49, %133 ], [ %166, %162 ]
  %181 = phi i32 [ %48, %125 ], [ %48, %133 ], [ %167, %162 ]
  %182 = add i64 %173, %174
  %183 = load i16, ptr %42, align 8
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %172
  %186 = load i64, ptr %43, align 8
  %187 = load i64, ptr %44, align 8
  %188 = add i64 %187, %186
  %189 = call i64 @llvm.umin.i64(i64 %182, i64 %188) #7
  br label %190

190:                                              ; preds = %185, %172
  %191 = phi i64 [ %189, %185 ], [ %182, %172 ]
  %192 = load i64, ptr %25, align 8
  %193 = load i64, ptr %45, align 8
  %194 = sub i64 %191, %193
  %195 = call i64 @llvm.umin.i64(i64 %192, i64 %194) #7
  br label %196

196:                                              ; preds = %190, %170, %118, %103, %89, %73, %62
  %197 = phi i64 [ %54, %73 ], [ %54, %62 ], [ %175, %190 ], [ %54, %170 ], [ %54, %118 ], [ %54, %103 ], [ %54, %89 ]
  %198 = phi i64 [ %53, %73 ], [ %53, %62 ], [ %176, %190 ], [ %53, %170 ], [ %53, %118 ], [ %53, %103 ], [ %53, %89 ]
  %199 = phi i64 [ %52, %73 ], [ %52, %62 ], [ %177, %190 ], [ %52, %170 ], [ %52, %118 ], [ %52, %103 ], [ %52, %89 ]
  %200 = phi i64 [ %51, %73 ], [ %51, %62 ], [ %178, %190 ], [ %153, %170 ], [ %51, %118 ], [ %51, %103 ], [ %51, %89 ]
  %201 = phi i64 [ %50, %73 ], [ %50, %62 ], [ %179, %190 ], [ %155, %170 ], [ %50, %118 ], [ %50, %103 ], [ %50, %89 ]
  %202 = phi i32 [ %49, %73 ], [ %49, %62 ], [ %180, %190 ], [ %49, %170 ], [ %49, %118 ], [ %49, %103 ], [ %49, %89 ]
  %203 = phi i32 [ %48, %73 ], [ %48, %62 ], [ %181, %190 ], [ %48, %170 ], [ %48, %118 ], [ %48, %103 ], [ %48, %89 ]
  %204 = phi i64 [ -22, %73 ], [ -22, %62 ], [ %195, %190 ], [ %171, %170 ], [ -22, %118 ], [ -22, %103 ], [ -22, %89 ]
  store i64 %204, ptr %46, align 8
  %205 = call i32 @iomap_iter(ptr noundef nonnull %5, ptr noundef %3) #7
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %47, label %207

207:                                              ; preds = %196
  %208 = icmp slt i32 %205, 0
  br i1 %208, label %254, label %211

209:                                              ; preds = %30
  %210 = icmp slt i32 %31, 0
  br i1 %210, label %254, label %245

211:                                              ; preds = %207
  %212 = icmp eq i64 %198, 0
  br i1 %212, label %239, label %213

213:                                              ; preds = %211
  %214 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 5
  %215 = load i32, ptr %214, align 4
  %216 = icmp ugt i32 %215, %202
  br i1 %216, label %217, label %239, !prof !12

217:                                              ; preds = %213
  %218 = add i64 %199, 4095
  %219 = lshr i64 %218, 12
  %220 = add i64 %199, %198
  %221 = lshr i64 %220, 12
  %222 = icmp ugt i64 %221, %219
  br i1 %222, label %223, label %239

223:                                              ; preds = %217
  %224 = sub i32 %215, %202
  %225 = sub nsw i64 %221, %219
  %226 = trunc i64 %225 to i32
  %227 = call i32 @llvm.umin.i32(i32 %224, i32 %226) #7
  %228 = call i32 @add_swap_extent(ptr noundef %0, i32 noundef %202, i32 noundef %227, i64 noundef %219) #7
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %254, label %230

230:                                              ; preds = %223
  %231 = add nsw i64 %221, -1
  %232 = call i64 @llvm.umax.i64(i64 %201, i64 %231)
  %233 = icmp eq i64 %197, 0
  %234 = zext i1 %233 to i64
  %235 = add nuw nsw i64 %219, %234
  %236 = call i64 @llvm.umin.i64(i64 %200, i64 %235)
  %237 = add i32 %228, %203
  %238 = add i32 %227, %202
  br label %239

239:                                              ; preds = %230, %217, %213, %211
  %240 = phi i64 [ %200, %211 ], [ %200, %213 ], [ %200, %217 ], [ %236, %230 ]
  %241 = phi i64 [ %201, %211 ], [ %201, %213 ], [ %201, %217 ], [ %232, %230 ]
  %242 = phi i32 [ %202, %211 ], [ %202, %213 ], [ %202, %217 ], [ %238, %230 ]
  %243 = phi i32 [ %203, %211 ], [ %203, %213 ], [ %203, %217 ], [ %237, %230 ]
  %244 = icmp eq i32 %242, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %239, %209
  %246 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %254

247:                                              ; preds = %239
  %248 = sub i64 1, %240
  %249 = add i64 %248, %241
  store i64 %249, ptr %2, align 8
  %250 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 5
  store i32 %242, ptr %250, align 4
  %251 = add i32 %242, -1
  %252 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 11
  store i32 %251, ptr %252, align 4
  %253 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 10
  store i32 %251, ptr %253, align 4
  br label %254

254:                                              ; preds = %247, %245, %223, %209, %207, %24
  %255 = phi i32 [ -22, %245 ], [ %243, %247 ], [ %28, %24 ], [ %205, %207 ], [ %228, %223 ], [ %31, %209 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #7
  ret i32 %255
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_iter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_swap_extent(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

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
!8 = !{i64 2151512333}
!9 = !{i64 2151512175}
!10 = !{i64 2151512477}
!11 = !{i64 2149385556}
!12 = !{!"branch_weights", i32 2000, i32 1}
