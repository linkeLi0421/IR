; ModuleID = '/llk/IR/fs/nfs/getroot.c_pt.bc'
source_filename = "../fs/nfs/getroot.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_fsinfo = type { ptr, i32, i32, i32, i32, i32, i32, i32, i64, %struct.timespec64, i32, i32, [8 x i32], i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.p_log = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
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
%struct.spinlock = type { %union.anon.16 }
%union.anon.16 = type { %struct.raw_spinlock }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.84 }
%union.anon.84 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_fs_context = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_auth_info, i32, ptr, i32, i32, ptr, i16, i16, i8, %struct.anon.155, %struct.anon.157, ptr, ptr, ptr, %struct.nfs_clone_mount }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.anon.155 = type { %union.anon.156, i32, ptr, i32, i32, i16 }
%union.anon.156 = type { %struct.__kernel_sockaddr_storage }
%struct.anon.157 = type { %union.anon.158, i32, ptr, ptr, i32, i16, i16, i16, i16 }
%union.anon.158 = type { %struct.__kernel_sockaddr_storage }
%struct.nfs_clone_mount = type { ptr, ptr, ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.126, %struct.list_head, %struct.list_head, %union.anon.127 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.1, ptr }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.124 }
%union.anon.124 = type { i64 }
%union.anon.126 = type { %struct.list_head }
%union.anon.127 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.80, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.81, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.82, ptr, %struct.address_space, %struct.list_head, %union.anon.123, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.80 = type { i32 }
%union.anon.81 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.82 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.123 = type { ptr }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.ida = type { %struct.xarray }

@.str = private unnamed_addr constant [30 x i8] c"NFS: Couldn't getattr on root\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"NFS: Couldn't get root inode\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"NFS: Couldn't get root dentry\00", align 1
@nfs_dir_operations = external dso_local constant %struct.file_operations, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_get_root(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nfs_fsinfo, align 8
  %4 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(112) %3, i8 0, i32 112, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = tail call noalias ptr @kstrdup(ptr noundef %9, i32 noundef 3264) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %137, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @nfs_alloc_fattr_with_label(ptr noundef %7) #4
  store ptr %13, ptr %3, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %134, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %7, align 8
  %17 = getelementptr inbounds %struct.nfs_client, ptr %16, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 27
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %20(ptr noundef %7, ptr noundef %22, ptr noundef nonnull %3) #4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 9, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %130, label %29

29:                                               ; preds = %25
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %27, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str) #4
  br label %130

30:                                               ; preds = %15
  %31 = load ptr, ptr %21, align 4
  %32 = load ptr, ptr %3, align 8
  %33 = call ptr @nfs_fhget(ptr noundef %0, ptr noundef %31, ptr noundef %32) #4
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = ptrtoint ptr %33 to i32
  %37 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 9, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %130, label %40

40:                                               ; preds = %35
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %38, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.1) #4
  br label %130

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  %43 = load ptr, ptr %42, align 64
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %78

45:                                               ; preds = %41
  %46 = call ptr @d_make_root(ptr noundef %33) #4
  store ptr %46, ptr %42, align 64
  %47 = icmp eq ptr %46, null
  br i1 %47, label %130, label %48

48:                                               ; preds = %45
  call void @ihold(ptr noundef %33) #4
  %49 = load ptr, ptr %42, align 64
  %50 = getelementptr inbounds %struct.dentry, ptr %49, i32 0, i32 5
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %52) #4
  %53 = load ptr, ptr %42, align 64
  %54 = getelementptr inbounds %struct.dentry, ptr %53, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %54) #4
  %55 = load ptr, ptr %42, align 64
  %56 = getelementptr inbounds %struct.dentry, ptr %55, i32 0, i32 15
  %57 = getelementptr inbounds %struct.dentry, ptr %55, i32 0, i32 15, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %48
  %61 = load ptr, ptr %56, align 4
  store volatile ptr %61, ptr %58, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.hlist_node, ptr %61, i32 0, i32 1
  store volatile ptr %58, ptr %64, align 4
  br label %65

65:                                               ; preds = %63, %60
  store ptr null, ptr %56, align 4
  store ptr null, ptr %57, align 4
  %66 = load ptr, ptr %42, align 64
  br label %67

67:                                               ; preds = %65, %48
  %68 = phi ptr [ %55, %48 ], [ %66, %65 ]
  %69 = getelementptr inbounds %struct.dentry, ptr %68, i32 0, i32 7
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %70 = load i16, ptr %69, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %69, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  %72 = load ptr, ptr %42, align 64
  %73 = getelementptr inbounds %struct.dentry, ptr %72, i32 0, i32 5
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.inode, ptr %74, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %76 = load i16, ptr %75, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %75, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  br label %78

78:                                               ; preds = %67, %41
  %79 = call ptr @d_obtain_root(ptr noundef %33) #4
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = ptrtoint ptr %79 to i32
  %83 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 9, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %130, label %86

86:                                               ; preds = %81
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %84, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.2) #4
  br label %130

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.dentry, ptr %79, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %88) #4
  %89 = getelementptr inbounds %struct.dentry, ptr %79, i32 0, i32 3
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %79, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.dentry, ptr %79, i32 0, i32 11
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i32, ptr %79, align 8
  %98 = and i32 %97, 4096
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store ptr %10, ptr %93, align 4
  br label %101

101:                                              ; preds = %100, %96, %92, %87
  %102 = phi ptr [ %10, %92 ], [ %10, %96 ], [ null, %100 ], [ %10, %87 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %103 = load i16, ptr %88, align 4
  %104 = add i16 %103, 1
  store i16 %104, ptr %88, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  %105 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 5
  store ptr %79, ptr %105, align 4
  %106 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 10
  %107 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 30
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %122, label %110

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.dentry, ptr %79, i32 0, i32 5
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.inode, ptr %112, i32 0, i32 39
  %114 = load ptr, ptr %113, align 8
  %115 = icmp eq ptr %114, @nfs_dir_operations
  br i1 %115, label %116, label %139

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.super_block, ptr %108, i32 0, i32 27
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.nfs_server, ptr %118, i32 0, i32 66
  %120 = load i8, ptr %119, align 4, !range !13
  %121 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 66
  store i8 %120, ptr %121, align 4
  br label %122

122:                                              ; preds = %116, %101
  %123 = load i32, ptr %106, align 8
  %124 = and i32 %123, 262144
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = and i32 %123, -262145
  store i32 %127, ptr %106, align 8
  br label %128

128:                                              ; preds = %126, %122
  %129 = load ptr, ptr %3, align 8
  call void @nfs_setsecurity(ptr noundef %33, ptr noundef %129) #4
  br label %130

130:                                              ; preds = %139, %128, %86, %81, %45, %40, %35, %29, %25
  %131 = phi ptr [ %10, %29 ], [ %10, %25 ], [ %10, %40 ], [ %10, %35 ], [ %10, %86 ], [ %10, %81 ], [ %102, %139 ], [ %102, %128 ], [ %10, %45 ]
  %132 = phi i32 [ %23, %29 ], [ %23, %25 ], [ %36, %40 ], [ %36, %35 ], [ %82, %86 ], [ %82, %81 ], [ -116, %139 ], [ 0, %128 ], [ -12, %45 ]
  %133 = load ptr, ptr %3, align 8
  call void @kfree(ptr noundef %133) #4
  br label %134

134:                                              ; preds = %130, %12
  %135 = phi ptr [ %10, %12 ], [ %131, %130 ]
  %136 = phi i32 [ -12, %12 ], [ %132, %130 ]
  call void @kfree(ptr noundef %135) #4
  br label %137

137:                                              ; preds = %134, %2
  %138 = phi i32 [ %136, %134 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #4
  ret i32 %138

139:                                              ; preds = %110
  call void @dput(ptr noundef %79) #4
  store ptr null, ptr %105, align 4
  br label %130
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fattr_with_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_fhget(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_setsecurity(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
!9 = !{i64 2148928797}
!10 = !{i64 2148924621}
!11 = !{i64 2148924696, i64 2148924723, i64 2148924770, i64 2148924792, i64 2148924820, i64 2148924840}
!12 = !{i64 2148951800}
!13 = !{i8 0, i8 2}
