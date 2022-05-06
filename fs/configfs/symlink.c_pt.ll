; ModuleID = '/llk/IR/fs/configfs/symlink.c_pt.bc'
source_filename = "../fs/configfs/symlink.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.user_namespace = type opaque
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.56, %struct.list_head, %struct.list_head, %union.anon.57 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.1 }
%union.anon.1 = type { i64 }
%union.anon.56 = type { %struct.list_head }
%union.anon.57 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.configfs_dirent = type { %struct.atomic_t, i32, %struct.list_head, %struct.list_head, i32, ptr, i32, i16, ptr, ptr, ptr }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }

@configfs_symlink_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @configfs_symlink_mutex, i64 12), ptr getelementptr (i8, ptr @configfs_symlink_mutex, i64 12) } }, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@configfs_dirent_lock = external dso_local global %struct.spinlock, align 4
@configfs_symlink_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr @simple_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @configfs_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [32 x i8] c"fs/configfs/configfs_internal.h\00", align 1
@configfs_dir_cachep = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @configfs_symlink(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 0, ptr %5, align 8, !annotation !8
  %6 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @configfs_dirent_is_ready(ptr noundef %9) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %229, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %14) #6
  %15 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.configfs_dirent, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = tail call ptr @config_item_get(ptr noundef %22) #6
  br label %24

24:                                               ; preds = %18, %12
  %25 = phi ptr [ null, %12 ], [ %23, %18 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  %26 = load i16, ptr %14, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %28 = getelementptr inbounds %struct.config_item, ptr %25, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %227, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.config_item_type, ptr %29, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %227, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.configfs_item_operations, ptr %33, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %227, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 24
  tail call void @up_write(ptr noundef %40) #6
  %41 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 @kern_path(ptr noundef %3, i32 noundef 3, ptr noundef nonnull %5) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 9
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %42
  br i1 %50, label %51, label %67

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %52) #6
  %53 = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 2, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 11
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.configfs_dirent, ptr %58, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = call ptr @config_item_get(ptr noundef %60) #6
  br label %62

62:                                               ; preds = %56, %51
  %63 = phi ptr [ null, %51 ], [ %61, %56 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  %64 = load i16, ptr %52, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %52, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %66 = icmp eq ptr %63, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %62, %45
  %68 = phi i32 [ -2, %62 ], [ -1, %45 ]
  call void @path_put(ptr noundef nonnull %5) #6
  br label %69

69:                                               ; preds = %67, %39
  %70 = phi i32 [ %68, %67 ], [ %43, %39 ]
  call void @down_write(ptr noundef %40) #6
  br label %227

71:                                               ; preds = %62
  call void @down_write(ptr noundef %40) #6
  %72 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %225

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 2, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %225, label %79

79:                                               ; preds = %75
  %80 = call i32 @inode_permission(ptr noundef nonnull @init_user_ns, ptr noundef %1, i32 noundef 3) #6
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %225

82:                                               ; preds = %79
  %83 = load ptr, ptr %32, align 4
  %84 = getelementptr inbounds %struct.configfs_item_operations, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = call i32 %85(ptr noundef %25, ptr noundef nonnull %63) #6
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %225

88:                                               ; preds = %82
  call void @mutex_lock(ptr noundef nonnull @configfs_symlink_mutex) #6
  %89 = getelementptr inbounds %struct.config_item, ptr %63, i32 0, i32 7
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.dentry, ptr %90, i32 0, i32 11
  %92 = load ptr, ptr %91, align 4
  %93 = call i32 @configfs_dirent_is_ready(ptr noundef %92) #6
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %218, label %95

95:                                               ; preds = %88
  %96 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %97 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %96, i32 noundef 3520, i32 noundef 4096) #7
  %98 = icmp eq ptr %97, null
  br i1 %98, label %218, label %99

99:                                               ; preds = %95
  %100 = icmp eq ptr %92, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %99
  %102 = load volatile i32, ptr %92, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105, !prof !13

104:                                              ; preds = %101
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 147, i32 noundef 9, ptr noundef null) #6
  br label %105

105:                                              ; preds = %104, %101
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %92) #6, !srcloc !14
  %106 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %92, ptr nonnull %92, i32 1, ptr nonnull elementtype(i32) %92) #6, !srcloc !15
  br label %107

107:                                              ; preds = %105, %99
  call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #6
  %108 = getelementptr inbounds %struct.configfs_dirent, ptr %92, i32 0, i32 6
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 256
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %107
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  %113 = load i16, ptr @configfs_dirent_lock, align 4
  %114 = add i16 %113, 1
  store i16 %114, ptr @configfs_dirent_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %115 = load volatile i32, ptr %92, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118, !prof !13

117:                                              ; preds = %112
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 9, ptr noundef null) #6
  br label %118

118:                                              ; preds = %117, %112
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %92) #6, !srcloc !14
  %119 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %92, ptr %92, i32 1, ptr elementtype(i32) %92) #6, !srcloc !17
  %120 = extractvalue { i32, i32 } %119, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !18
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %215

122:                                              ; preds = %118
  %123 = load i32, ptr %108, align 4
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %208, label %215

126:                                              ; preds = %107
  %127 = getelementptr inbounds %struct.configfs_dirent, ptr %92, i32 0, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, 1
  store i32 %129, ptr %127, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  %130 = load i16, ptr @configfs_dirent_lock, align 4
  %131 = add i16 %130, 1
  store i16 %131, ptr @configfs_dirent_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  br label %132

132:                                              ; preds = %139, %126
  %133 = phi ptr [ %25, %126 ], [ %137, %139 ]
  %134 = phi i32 [ 0, %126 ], [ %135, %139 ]
  %135 = add i32 %134, 1
  %136 = getelementptr inbounds %struct.config_item, ptr %133, i32 0, i32 4
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %132
  %140 = call i32 @configfs_is_root(ptr noundef nonnull %137) #6
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %132, label %142

142:                                              ; preds = %139, %132
  br label %143

143:                                              ; preds = %153, %142
  %144 = phi ptr [ %151, %153 ], [ %63, %142 ]
  %145 = phi i32 [ %149, %153 ], [ 1, %142 ]
  %146 = load ptr, ptr %144, align 4
  %147 = call i32 @strlen(ptr noundef %146) #6
  %148 = add i32 %145, 1
  %149 = add i32 %148, %147
  %150 = getelementptr inbounds %struct.config_item, ptr %144, i32 0, i32 4
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %143
  %154 = call i32 @configfs_is_root(ptr noundef nonnull %151) #6
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %143, label %156

156:                                              ; preds = %153, %143
  %157 = mul i32 %135, 3
  %158 = add i32 %149, %157
  %159 = add i32 %158, -1
  %160 = icmp sgt i32 %159, 4096
  br i1 %160, label %191, label %161

161:                                              ; preds = %156
  %162 = icmp eq i32 %135, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %163, %161
  %164 = phi i32 [ %166, %163 ], [ %135, %161 ]
  %165 = phi ptr [ %167, %163 ], [ %97, %161 ]
  %166 = add i32 %164, -1
  store i32 3092014, ptr %165, align 1
  %167 = getelementptr i8, ptr %165, i32 3
  %168 = icmp eq i32 %166, 0
  br i1 %168, label %169, label %163

169:                                              ; preds = %163, %161
  %170 = add i32 %158, -2
  br label %171

171:                                              ; preds = %176, %169
  %172 = phi i32 [ %181, %176 ], [ %170, %169 ]
  %173 = phi ptr [ %184, %176 ], [ %63, %169 ]
  %174 = call i32 @configfs_is_root(ptr noundef nonnull %173) #6
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %171
  %177 = load ptr, ptr %173, align 4
  %178 = call i32 @strlen(ptr noundef %177) #6
  %179 = sub i32 %172, %178
  %180 = getelementptr i8, ptr %97, i32 %179
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %180, ptr align 1 %177, i32 %178, i1 false) #6
  %181 = add i32 %179, -1
  %182 = getelementptr i8, ptr %97, i32 %181
  store i8 47, ptr %182, align 1
  %183 = getelementptr inbounds %struct.config_item, ptr %173, i32 0, i32 4
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %171

186:                                              ; preds = %176, %171
  %187 = getelementptr inbounds %struct.config_item, ptr %25, i32 0, i32 7
  %188 = load ptr, ptr %187, align 4
  %189 = call i32 @configfs_create_link(ptr noundef %92, ptr noundef %188, ptr noundef %2, ptr noundef nonnull %97) #6
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %217, label %191

191:                                              ; preds = %186, %156
  %192 = phi i32 [ %189, %186 ], [ -36, %156 ]
  call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #6
  %193 = load i32, ptr %127, align 4
  %194 = add i32 %193, -1
  store i32 %194, ptr %127, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  %195 = load i16, ptr @configfs_dirent_lock, align 4
  %196 = add i16 %195, 1
  store i16 %196, ptr @configfs_dirent_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %197 = load volatile i32, ptr %92, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200, !prof !13

199:                                              ; preds = %191
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 9, ptr noundef null) #6
  br label %200

200:                                              ; preds = %199, %191
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %92) #6, !srcloc !14
  %201 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %92, ptr %92, i32 1, ptr elementtype(i32) %92) #6, !srcloc !17
  %202 = extractvalue { i32, i32 } %201, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !18
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %200
  %205 = load i32, ptr %108, align 4
  %206 = and i32 %205, 1
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %204, %122
  %209 = phi i32 [ -2, %122 ], [ %192, %204 ]
  %210 = getelementptr inbounds %struct.configfs_dirent, ptr %92, i32 0, i32 9
  %211 = load ptr, ptr %210, align 4
  call void @kfree(ptr noundef %211) #6
  %212 = getelementptr inbounds %struct.configfs_dirent, ptr %92, i32 0, i32 10
  %213 = load ptr, ptr %212, align 4
  call void @put_fragment(ptr noundef %213) #6
  %214 = load ptr, ptr @configfs_dir_cachep, align 4
  call void @kmem_cache_free(ptr noundef %214, ptr noundef %92) #6
  br label %215

215:                                              ; preds = %208, %204, %200, %122, %118
  %216 = phi i32 [ -2, %118 ], [ -2, %122 ], [ %192, %200 ], [ %192, %204 ], [ %209, %208 ]
  call void @kfree(ptr noundef nonnull %97) #6
  br label %218

217:                                              ; preds = %186
  call void @mutex_unlock(ptr noundef nonnull @configfs_symlink_mutex) #6
  br label %225

218:                                              ; preds = %215, %95, %88
  %219 = phi i32 [ %216, %215 ], [ -12, %95 ], [ -2, %88 ]
  call void @mutex_unlock(ptr noundef nonnull @configfs_symlink_mutex) #6
  %220 = load ptr, ptr %32, align 4
  %221 = getelementptr inbounds %struct.configfs_item_operations, ptr %220, i32 0, i32 2
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %218
  call void %222(ptr noundef %25, ptr noundef nonnull %63) #6
  br label %225

225:                                              ; preds = %224, %218, %217, %82, %79, %75, %71
  %226 = phi i32 [ %86, %82 ], [ %219, %224 ], [ %219, %218 ], [ 0, %217 ], [ %80, %79 ], [ -17, %75 ], [ -17, %71 ]
  call void @config_item_put(ptr noundef nonnull %63) #6
  call void @path_put(ptr noundef nonnull %5) #6
  br label %227

227:                                              ; preds = %225, %69, %35, %31, %24
  %228 = phi i32 [ %226, %225 ], [ -1, %35 ], [ -1, %31 ], [ -1, %24 ], [ %70, %69 ]
  call void @config_item_put(ptr noundef %25) #6
  br label %229

229:                                              ; preds = %227, %4
  %230 = phi i32 [ %228, %227 ], [ -2, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  ret i32 %230
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_dirent_is_ready(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @configfs_unlink(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_dirent, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %93, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.configfs_dirent, ptr %4, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %14) #6
  %15 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.configfs_dirent, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = tail call ptr @config_item_get(ptr noundef %22) #6
  br label %24

24:                                               ; preds = %18, %9
  %25 = phi ptr [ null, %9 ], [ %23, %18 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  %26 = load i16, ptr %14, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %28 = getelementptr inbounds %struct.config_item, ptr %25, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #6
  %30 = getelementptr inbounds %struct.configfs_dirent, ptr %4, i32 0, i32 2
  %31 = getelementptr inbounds %struct.configfs_dirent, ptr %4, i32 0, i32 2, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %30, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %32, ptr %34, align 4
  store volatile ptr %33, ptr %32, align 4
  store volatile ptr %30, ptr %30, align 4
  store ptr %30, ptr %31, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  %35 = load i16, ptr @configfs_dirent_lock, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %37 = load ptr, ptr %12, align 8
  tail call void @configfs_drop_dentry(ptr noundef %4, ptr noundef %37) #6
  tail call void @dput(ptr noundef %1) #6
  %38 = load volatile i32, ptr %4, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41, !prof !13

40:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 9, ptr noundef null) #6
  br label %41

41:                                               ; preds = %40, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #6, !srcloc !14
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #6, !srcloc !17
  %43 = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !18
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32, ptr %5, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.configfs_dirent, ptr %4, i32 0, i32 9
  %51 = load ptr, ptr %50, align 4
  tail call void @kfree(ptr noundef %51) #6
  %52 = getelementptr inbounds %struct.configfs_dirent, ptr %4, i32 0, i32 10
  %53 = load ptr, ptr %52, align 4
  tail call void @put_fragment(ptr noundef %53) #6
  %54 = load ptr, ptr @configfs_dir_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %54, ptr noundef %4) #6
  br label %55

55:                                               ; preds = %49, %45, %41
  %56 = icmp eq ptr %29, null
  br i1 %56, label %68, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.config_item_type, ptr %29, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.configfs_item_operations, ptr %59, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.configfs_dirent, ptr %11, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  tail call void %63(ptr noundef %25, ptr noundef %67) #6
  br label %68

68:                                               ; preds = %65, %61, %57, %55
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #6
  %69 = getelementptr inbounds %struct.configfs_dirent, ptr %11, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, -1
  store i32 %71, ptr %69, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  %72 = load i16, ptr @configfs_dirent_lock, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %74 = load volatile i32, ptr %11, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77, !prof !13

76:                                               ; preds = %68
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 9, ptr noundef null) #6
  br label %77

77:                                               ; preds = %76, %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #6, !srcloc !14
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #6, !srcloc !17
  %79 = extractvalue { i32, i32 } %78, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !18
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.configfs_dirent, ptr %11, i32 0, i32 6
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.configfs_dirent, ptr %11, i32 0, i32 9
  %88 = load ptr, ptr %87, align 4
  tail call void @kfree(ptr noundef %88) #6
  %89 = getelementptr inbounds %struct.configfs_dirent, ptr %11, i32 0, i32 10
  %90 = load ptr, ptr %89, align 4
  tail call void @put_fragment(ptr noundef %90) #6
  %91 = load ptr, ptr @configfs_dir_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %91, ptr noundef %11) #6
  br label %92

92:                                               ; preds = %86, %81, %77
  tail call void @config_item_put(ptr noundef %25) #6
  br label %93

93:                                               ; preds = %92, %2
  %94 = phi i32 [ 0, %92 ], [ -1, %2 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_drop_dentry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_get_link(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_setattr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @config_item_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_create_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_is_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_fragment(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!9 = !{i64 2149000968}
!10 = !{i64 2148996792}
!11 = !{i64 2148996867, i64 2148996894, i64 2148996941, i64 2148996963, i64 2148996991, i64 2148997011}
!12 = !{i64 2149023971}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 832364, i64 2148322335, i64 2148322361, i64 2148322408, i64 2148322430, i64 2148322458, i64 2148322478}
!15 = !{i64 2148333750, i64 2148333776, i64 2148333805, i64 2148333839, i64 2148333870, i64 2148333893}
!16 = !{i64 2148434429}
!17 = !{i64 2148336791, i64 2148336823, i64 2148336852, i64 2148336886, i64 2148336917, i64 2148336940}
!18 = !{i64 2148434632}
