; ModuleID = '/llk/IR/fs/nfs/nfs3acl.c_pt.bc'
source_filename = "../fs/nfs/nfs3acl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xattr_handler = type opaque
%struct.nfs3_getaclargs = type { ptr, i32, ptr }
%struct.nfs3_getaclres = type { ptr, i32, i32, i32, ptr, ptr }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.151, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.152, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.153, ptr, %struct.address_space, %struct.list_head, %union.anon.154, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.151 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.152 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.153 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.154 = type { ptr }
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
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.__kernel_sockaddr_storage = type { %union.anon.85 }
%union.anon.85 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.112, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.112 = type { %struct.work_struct }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon }
%union.anon = type { %struct.kuid_t }
%struct.nfs3_setaclargs = type { ptr, i32, ptr, ptr, i32, i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.149, %struct.list_head, %struct.list_head, %union.anon.150 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.1 }
%union.anon.1 = type { i64 }
%union.anon.149 = type { %struct.list_head }
%union.anon.150 = type { %struct.hlist_node }

@posix_acl_access_xattr_handler = external dso_local constant %struct.xattr_handler, align 1
@posix_acl_default_xattr_handler = external dso_local constant %struct.xattr_handler, align 1
@nfs3_xattr_handlers = dso_local local_unnamed_addr global [3 x ptr] [ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr null], align 4
@.str = private unnamed_addr constant [24 x i8] c"system.posix_acl_access\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"system.posix_acl_default\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs3_get_acl(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [7 x ptr], align 4
  %5 = alloca %struct.nfs3_getaclargs, align 4
  %6 = alloca %struct.nfs3_getaclres, align 4
  %7 = alloca %struct.rpc_message, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %12 = getelementptr i8, ptr %0, i32 -288
  store ptr %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.nfs3_getaclargs, ptr %5, i32 0, i32 1
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nfs3_getaclargs, ptr %5, i32 0, i32 2
  store ptr %4, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  %15 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 1
  store i32 0, ptr %7, align 4
  store ptr %5, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 2
  store ptr %6, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 3
  store ptr null, ptr %17, align 4
  br i1 %2, label %214, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.nfs_server, ptr %11, i32 0, i32 10
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %214, label %23

23:                                               ; preds = %18
  %24 = call i32 @nfs_revalidate_inode(ptr noundef %0, i32 noundef 256) #9
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = inttoptr i32 %24 to ptr
  br label %214

28:                                               ; preds = %23
  %29 = icmp eq i32 %1, 32768
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i32, ptr %13, align 4
  %32 = or i32 %31, 3
  store i32 %32, ptr %13, align 4
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i16, ptr %0, align 8
  %35 = and i16 %34, -4096
  %36 = icmp eq i16 %35, 16384
  %37 = load i32, ptr %13, align 4
  br i1 %36, label %38, label %40

38:                                               ; preds = %33
  %39 = or i32 %37, 12
  store i32 %39, ptr %13, align 4
  br label %42

40:                                               ; preds = %33
  %41 = icmp eq i32 %37, 0
  br i1 %41, label %214, label %42

42:                                               ; preds = %40, %38
  %43 = getelementptr inbounds %struct.nfs_server, ptr %11, i32 0, i32 4
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.rpc_clnt, ptr %44, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr %struct.rpc_procinfo, ptr %46, i32 1
  store ptr %47, ptr %7, align 4
  %48 = call ptr @nfs_alloc_fattr() #9
  store ptr %48, ptr %6, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %214, label %50

50:                                               ; preds = %42
  %51 = load i32, ptr %13, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 5
  %56 = tail call ptr @llvm.thread.pointer() #9
  %57 = getelementptr i8, ptr %56, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %58 = ptrtoint ptr %57 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #9, !srcloc !9
  br label %59

59:                                               ; preds = %59, %54
  %60 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %55, i32 -1, i32 %58) #9, !srcloc !10
  %61 = extractvalue { i32, i32 } %60, 0
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %59

63:                                               ; preds = %59
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %64 = load i32, ptr %13, align 4
  br label %65

65:                                               ; preds = %63, %50
  %66 = phi i32 [ %64, %63 ], [ %51, %50 ]
  %67 = and i32 %66, 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 6
  %71 = tail call ptr @llvm.thread.pointer() #9
  %72 = getelementptr i8, ptr %71, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %73 = ptrtoint ptr %72 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %70) #9, !srcloc !9
  br label %74

74:                                               ; preds = %74, %69
  %75 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %70, i32 -1, i32 %73) #9, !srcloc !10
  %76 = extractvalue { i32, i32 } %75, 0
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %74

78:                                               ; preds = %74
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  br label %79

79:                                               ; preds = %78, %65
  %80 = load ptr, ptr %43, align 8
  %81 = call i32 @rpc_call_sync(ptr noundef %80, ptr noundef nonnull %7, i32 noundef 0) #9
  %82 = load ptr, ptr %14, align 4
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %116, label %85

85:                                               ; preds = %79
  call void @__free_pages(ptr noundef nonnull %83, i32 noundef 0) #9
  %86 = load ptr, ptr %14, align 4
  %87 = getelementptr ptr, ptr %86, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %116, label %90

90:                                               ; preds = %85
  call void @__free_pages(ptr noundef nonnull %88, i32 noundef 0) #9
  %91 = load ptr, ptr %14, align 4
  %92 = getelementptr ptr, ptr %91, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %116, label %95

95:                                               ; preds = %90
  call void @__free_pages(ptr noundef nonnull %93, i32 noundef 0) #9
  %96 = load ptr, ptr %14, align 4
  %97 = getelementptr ptr, ptr %96, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %116, label %100

100:                                              ; preds = %95
  call void @__free_pages(ptr noundef nonnull %98, i32 noundef 0) #9
  %101 = load ptr, ptr %14, align 4
  %102 = getelementptr ptr, ptr %101, i32 4
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %116, label %105

105:                                              ; preds = %100
  call void @__free_pages(ptr noundef nonnull %103, i32 noundef 0) #9
  %106 = load ptr, ptr %14, align 4
  %107 = getelementptr ptr, ptr %106, i32 5
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %105
  call void @__free_pages(ptr noundef nonnull %108, i32 noundef 0) #9
  %111 = load ptr, ptr %14, align 4
  %112 = getelementptr ptr, ptr %111, i32 6
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  call void @__free_pages(ptr noundef nonnull %113, i32 noundef 0) #9
  br label %116

116:                                              ; preds = %115, %110, %105, %100, %95, %90, %85, %79
  switch i32 %81, label %169 [
    i32 0, label %117
    i32 -96, label %125
    i32 -93, label %125
    i32 -524, label %128
  ]

117:                                              ; preds = %116
  %118 = load ptr, ptr %6, align 4
  %119 = call i32 @nfs_refresh_inode(ptr noundef %0, ptr noundef %118) #9
  %120 = load i32, ptr %13, align 4
  %121 = getelementptr inbounds %struct.nfs3_getaclres, ptr %6, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, %120
  %124 = icmp eq i32 %123, %120
  br i1 %124, label %129, label %169

125:                                              ; preds = %116, %116
  %126 = load i32, ptr %19, align 8
  %127 = and i32 %126, -9
  store i32 %127, ptr %19, align 8
  br label %128

128:                                              ; preds = %125, %116
  br label %169

129:                                              ; preds = %117
  %130 = getelementptr inbounds %struct.nfs3_getaclres, ptr %6, i32 0, i32 4
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %142, label %133

133:                                              ; preds = %129
  %134 = call i32 @posix_acl_equiv_mode(ptr noundef nonnull %131, ptr noundef null) #9
  %135 = icmp eq i32 %134, 0
  %136 = load ptr, ptr %130, align 4
  br i1 %135, label %141, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.posix_acl, ptr %136, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %137, %133
  call fastcc void @posix_acl_release(ptr noundef %136)
  store ptr null, ptr %130, align 4
  br label %142

142:                                              ; preds = %141, %137, %129
  %143 = phi ptr [ %136, %137 ], [ null, %141 ], [ null, %129 ]
  %144 = load i32, ptr %121, align 4
  %145 = and i32 %144, 1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 5
  call fastcc void @nfs3_complete_get_acl(ptr noundef %148, ptr noundef %143)
  br label %150

149:                                              ; preds = %142
  call void @forget_cached_acl(ptr noundef %0, i32 noundef 32768) #9
  br label %150

150:                                              ; preds = %149, %147
  %151 = load i32, ptr %121, align 4
  %152 = and i32 %151, 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.nfs3_getaclres, ptr %6, i32 0, i32 5
  %157 = load ptr, ptr %156, align 4
  call fastcc void @nfs3_complete_get_acl(ptr noundef %155, ptr noundef %157)
  br label %159

158:                                              ; preds = %150
  call void @forget_cached_acl(ptr noundef %0, i32 noundef 16384) #9
  br label %159

159:                                              ; preds = %158, %154
  %160 = load ptr, ptr %6, align 4
  call void @kfree(ptr noundef %160) #9
  br i1 %29, label %161, label %165

161:                                              ; preds = %159
  %162 = getelementptr inbounds %struct.nfs3_getaclres, ptr %6, i32 0, i32 5
  %163 = load ptr, ptr %162, align 4
  call fastcc void @posix_acl_release(ptr noundef %163)
  %164 = load ptr, ptr %130, align 4
  br label %214

165:                                              ; preds = %159
  %166 = load ptr, ptr %130, align 4
  call fastcc void @posix_acl_release(ptr noundef %166)
  %167 = getelementptr inbounds %struct.nfs3_getaclres, ptr %6, i32 0, i32 5
  %168 = load ptr, ptr %167, align 4
  br label %214

169:                                              ; preds = %128, %117, %116
  %170 = phi i32 [ %81, %116 ], [ -95, %128 ], [ -5, %117 ]
  %171 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 5
  %172 = tail call ptr @llvm.thread.pointer() #9
  %173 = getelementptr i8, ptr %172, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %174 = ptrtoint ptr %173 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %171) #9, !srcloc !9
  br label %175

175:                                              ; preds = %175, %169
  %176 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %171, i32 %174, i32 -1) #9, !srcloc !10
  %177 = extractvalue { i32, i32 } %176, 0
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %175

179:                                              ; preds = %175
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %180 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %180) #9, !srcloc !9
  br label %181

181:                                              ; preds = %181, %179
  %182 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %180, i32 %174, i32 -1) #9, !srcloc !10
  %183 = extractvalue { i32, i32 } %182, 0
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %181

185:                                              ; preds = %181
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %186 = getelementptr inbounds %struct.nfs3_getaclres, ptr %6, i32 0, i32 4
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %198, label %189

189:                                              ; preds = %185
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %187) #9, !srcloc !9
  %190 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %187, ptr nonnull %187, i32 1, ptr nonnull elementtype(i32) %187) #9, !srcloc !15
  %191 = extractvalue { i32, i32, i32 } %190, 0
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %196, label %193

193:                                              ; preds = %189
  %194 = icmp sgt i32 %191, 0
  br i1 %194, label %198, label %195, !prof !16

195:                                              ; preds = %193
  call void @refcount_warn_saturate(ptr noundef nonnull %187, i32 noundef 3) #9
  br label %198

196:                                              ; preds = %189
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  %197 = getelementptr inbounds %struct.posix_acl, ptr %187, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %197, ptr noundef nonnull inttoptr (i32 4 to ptr)) #9
  br label %198

198:                                              ; preds = %196, %195, %193, %185
  %199 = getelementptr inbounds %struct.nfs3_getaclres, ptr %6, i32 0, i32 5
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %211, label %202

202:                                              ; preds = %198
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %200) #9, !srcloc !9
  %203 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %200, ptr nonnull %200, i32 1, ptr nonnull elementtype(i32) %200) #9, !srcloc !15
  %204 = extractvalue { i32, i32, i32 } %203, 0
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %209, label %206

206:                                              ; preds = %202
  %207 = icmp sgt i32 %204, 0
  br i1 %207, label %211, label %208, !prof !16

208:                                              ; preds = %206
  call void @refcount_warn_saturate(ptr noundef nonnull %200, i32 noundef 3) #9
  br label %211

209:                                              ; preds = %202
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  %210 = getelementptr inbounds %struct.posix_acl, ptr %200, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %210, ptr noundef nonnull inttoptr (i32 4 to ptr)) #9
  br label %211

211:                                              ; preds = %209, %208, %206, %198
  %212 = load ptr, ptr %6, align 4
  call void @kfree(ptr noundef %212) #9
  %213 = inttoptr i32 %170 to ptr
  br label %214

214:                                              ; preds = %211, %165, %161, %42, %40, %26, %18, %3
  %215 = phi ptr [ %27, %26 ], [ %213, %211 ], [ %164, %161 ], [ %168, %165 ], [ null, %40 ], [ inttoptr (i32 -10 to ptr), %3 ], [ inttoptr (i32 -95 to ptr), %18 ], [ inttoptr (i32 -12 to ptr), %42 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #9
  ret ptr %215
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_revalidate_inode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fattr() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_call_sync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_refresh_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_equiv_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @posix_acl_release(ptr noundef %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #9, !srcloc !9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #9, !srcloc !15
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %12, label %9, !prof !16

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #9
  br label %12

10:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  %11 = getelementptr inbounds %struct.posix_acl, ptr %0, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %11, ptr noundef nonnull inttoptr (i32 4 to ptr)) #9
  br label %12

12:                                               ; preds = %10, %9, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs3_complete_get_acl(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #9
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = icmp eq ptr %1, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %1) #9, !srcloc !9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #9, !srcloc !18
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !19

10:                                               ; preds = %6
  %11 = add i32 %8, 1
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %16, label %14, !prof !16

14:                                               ; preds = %10, %6
  %15 = phi i32 [ 2, %6 ], [ 1, %10 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef %15) #9
  br label %16

16:                                               ; preds = %14, %10, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  %17 = ptrtoint ptr %4 to i32
  %18 = ptrtoint ptr %1 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #9, !srcloc !9
  br label %19

19:                                               ; preds = %19, %16
  %20 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %0, i32 %17, i32 %18) #9, !srcloc !10
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %19

23:                                               ; preds = %19
  %24 = extractvalue { i32, i32 } %20, 1
  %25 = inttoptr i32 %24 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %26 = icmp eq ptr %4, %25
  %27 = or i1 %5, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %1) #9, !srcloc !9
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #9, !srcloc !15
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = icmp sgt i32 %30, 0
  br i1 %33, label %37, label %34, !prof !16

34:                                               ; preds = %32
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #9
  br label %37

35:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  %36 = getelementptr inbounds %struct.posix_acl, ptr %1, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %36, ptr noundef nonnull inttoptr (i32 4 to ptr)) #9
  br label %37

37:                                               ; preds = %35, %34, %32, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @forget_cached_acl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs3_proc_setacls(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @__nfs3_proc_setacls(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %5 = icmp eq i32 %4, -95
  %6 = select i1 %5, i32 0, i32 %4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__nfs3_proc_setacls(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca [7 x ptr], align 4
  %6 = alloca %struct.nfs3_setaclargs, align 4
  %7 = alloca %struct.rpc_message, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false), !annotation !22
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #9
  %12 = getelementptr inbounds i8, ptr %6, i32 16
  store i32 0, ptr %12, align 4, !annotation !22
  store ptr %0, ptr %6, align 4
  %13 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %6, i32 0, i32 1
  store i32 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %6, i32 0, i32 2
  store ptr %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %6, i32 0, i32 3
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %6, i32 0, i32 4
  %17 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %6, i32 0, i32 5
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %6, i32 0, i32 6
  store ptr %5, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  %19 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 1
  store i32 0, ptr %7, align 4
  store ptr %6, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 2
  store ptr %4, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 3
  store ptr null, ptr %21, align 4
  %22 = icmp eq ptr %1, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load i16, ptr %0, align 8
  %25 = and i16 %24, -4096
  %26 = icmp ne i16 %25, 16384
  %27 = icmp eq ptr %2, null
  %28 = or i1 %27, %26
  br i1 %28, label %129, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.nfs_server, ptr %11, i32 0, i32 10
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %129, label %45

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.nfs_server, ptr %11, i32 0, i32 10
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %129, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.posix_acl, ptr %1, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %41, 1024
  br i1 %42, label %129, label %43

43:                                               ; preds = %39
  %44 = icmp eq ptr %2, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %43, %29
  %46 = phi ptr [ %35, %43 ], [ %30, %29 ]
  %47 = getelementptr inbounds %struct.posix_acl, ptr %2, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp ugt i32 %48, 1024
  br i1 %49, label %129, label %50

50:                                               ; preds = %45
  %51 = load i16, ptr %0, align 8
  %52 = and i16 %51, -4096
  %53 = icmp eq i16 %52, 16384
  br i1 %53, label %59, label %66

54:                                               ; preds = %43
  %55 = load i16, ptr %0, align 8
  %56 = and i16 %55, -4096
  %57 = icmp eq i16 %56, 16384
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  store i32 5, ptr %13, align 4
  store ptr null, ptr %15, align 4
  br label %70

59:                                               ; preds = %50
  store i32 5, ptr %13, align 4
  store ptr %2, ptr %15, align 4
  br i1 %22, label %70, label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.posix_acl, ptr %1, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = call i32 @llvm.smax.i32(i32 %62, i32 4) #9
  %64 = mul i32 %63, 12
  %65 = add i32 %64, 16
  br label %70

66:                                               ; preds = %50
  br i1 %22, label %70, label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.posix_acl, ptr %1, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  br label %70

70:                                               ; preds = %67, %66, %60, %59, %58, %54
  %71 = phi i32 [ %41, %58 ], [ %48, %59 ], [ %48, %60 ], [ 3, %66 ], [ %69, %67 ], [ %41, %54 ]
  %72 = phi i32 [ 16, %58 ], [ 64, %59 ], [ %65, %60 ], [ 16, %66 ], [ 16, %67 ], [ 16, %54 ]
  %73 = phi ptr [ %35, %58 ], [ %46, %59 ], [ %46, %60 ], [ %46, %66 ], [ %46, %67 ], [ %35, %54 ]
  %74 = call i32 @llvm.smax.i32(i32 %71, i32 4) #9
  %75 = mul i32 %74, 12
  %76 = add i32 %75, %72
  store i32 %76, ptr %16, align 4
  %77 = icmp ugt i32 %76, 136
  br i1 %77, label %78, label %94

78:                                               ; preds = %70
  %79 = add i32 %76, -1
  %80 = lshr i32 %79, 12
  br label %81

81:                                               ; preds = %91, %78
  %82 = call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %83 = load ptr, ptr %18, align 4
  %84 = load i32, ptr %17, align 4
  %85 = getelementptr ptr, ptr %83, i32 %84
  store ptr %82, ptr %85, align 4
  %86 = load ptr, ptr %18, align 4
  %87 = load i32, ptr %17, align 4
  %88 = getelementptr ptr, ptr %86, i32 %87
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %117, label %91

91:                                               ; preds = %81
  %92 = add i32 %87, 1
  store i32 %92, ptr %17, align 4
  %93 = icmp ugt i32 %92, %80
  br i1 %93, label %94, label %81

94:                                               ; preds = %91, %70
  %95 = call ptr @nfs_alloc_fattr() #9
  store ptr %95, ptr %4, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %114, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.nfs_server, ptr %11, i32 0, i32 4
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr inbounds %struct.rpc_clnt, ptr %99, i32 0, i32 7
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr %struct.rpc_procinfo, ptr %101, i32 2
  store ptr %102, ptr %7, align 4
  store ptr %95, ptr %20, align 4
  %103 = call i32 @rpc_call_sync(ptr noundef %99, ptr noundef nonnull %7, i32 noundef 0) #9
  call void @nfs_access_zap_cache(ptr noundef %0) #9
  call void @nfs_zap_acl_cache(ptr noundef %0) #9
  switch i32 %103, label %111 [
    i32 0, label %104
    i32 -96, label %107
    i32 -93, label %107
    i32 -524, label %110
  ]

104:                                              ; preds = %97
  %105 = load ptr, ptr %4, align 4
  %106 = call i32 @nfs_refresh_inode(ptr noundef %0, ptr noundef %105) #9
  br label %111

107:                                              ; preds = %97, %97
  %108 = load i32, ptr %73, align 8
  %109 = and i32 %108, -9
  store i32 %109, ptr %73, align 8
  br label %110

110:                                              ; preds = %107, %97
  br label %111

111:                                              ; preds = %110, %104, %97
  %112 = phi i32 [ %103, %97 ], [ -95, %110 ], [ %106, %104 ]
  %113 = load ptr, ptr %4, align 4
  call void @kfree(ptr noundef %113) #9
  br label %114

114:                                              ; preds = %111, %94
  %115 = phi i32 [ %112, %111 ], [ -12, %94 ]
  %116 = load i32, ptr %17, align 4
  br label %117

117:                                              ; preds = %114, %81
  %118 = phi i32 [ %116, %114 ], [ %87, %81 ]
  %119 = phi i32 [ %115, %114 ], [ -12, %81 ]
  %120 = icmp eq i32 %118, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %121, %117
  %122 = phi i32 [ %127, %121 ], [ %118, %117 ]
  %123 = add i32 %122, -1
  store i32 %123, ptr %17, align 4
  %124 = load ptr, ptr %18, align 4
  %125 = getelementptr ptr, ptr %124, i32 %123
  %126 = load ptr, ptr %125, align 4
  call void @__free_pages(ptr noundef %126, i32 noundef 0) #9
  %127 = load i32, ptr %17, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %121

129:                                              ; preds = %121, %117, %45, %39, %34, %29, %23
  %130 = phi i32 [ 0, %23 ], [ -28, %39 ], [ -28, %45 ], [ -95, %29 ], [ -95, %34 ], [ %119, %117 ], [ %119, %121 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs3_set_acl(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i16, ptr %1, align 8
  %6 = and i16 %5, -4096
  %7 = icmp eq i16 %6, 16384
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  switch i32 %3, label %15 [
    i32 32768, label %9
    i32 16384, label %12
  ]

9:                                                ; preds = %8
  %10 = tail call ptr @get_acl(ptr noundef %1, i32 noundef 16384) #9
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %56, label %15

12:                                               ; preds = %8
  %13 = tail call ptr @get_acl(ptr noundef %1, i32 noundef 32768) #9
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %56, label %15

15:                                               ; preds = %12, %9, %8, %4
  %16 = phi ptr [ %2, %8 ], [ %2, %4 ], [ %2, %9 ], [ %13, %12 ]
  %17 = phi ptr [ null, %8 ], [ null, %4 ], [ %10, %9 ], [ %2, %12 ]
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i16, ptr %1, align 8
  %21 = tail call ptr @posix_acl_from_mode(i16 noundef zeroext %20, i32 noundef 3264) #9
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %56, label %23

23:                                               ; preds = %19, %15
  %24 = phi ptr [ %16, %15 ], [ %21, %19 ]
  %25 = tail call fastcc i32 @__nfs3_proc_setacls(ptr noundef %1, ptr noundef %24, ptr noundef %17)
  br label %26

26:                                               ; preds = %56, %23
  %27 = phi ptr [ %57, %56 ], [ %24, %23 ]
  %28 = phi ptr [ %58, %56 ], [ %17, %23 ]
  %29 = phi i32 [ %60, %56 ], [ %25, %23 ]
  %30 = icmp eq ptr %27, %2
  %31 = icmp eq ptr %27, null
  %32 = or i1 %30, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %27) #9, !srcloc !9
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %27, ptr nonnull %27, i32 1, ptr nonnull elementtype(i32) %27) #9, !srcloc !15
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %42, label %39, !prof !16

39:                                               ; preds = %37
  tail call void @refcount_warn_saturate(ptr noundef nonnull %27, i32 noundef 3) #9
  br label %42

40:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  %41 = getelementptr inbounds %struct.posix_acl, ptr %27, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %41, ptr noundef nonnull inttoptr (i32 4 to ptr)) #9
  br label %42

42:                                               ; preds = %40, %39, %37, %26
  %43 = icmp eq ptr %28, %2
  %44 = icmp eq ptr %28, null
  %45 = or i1 %43, %44
  br i1 %45, label %55, label %46

46:                                               ; preds = %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %28) #9, !srcloc !9
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %28, ptr nonnull %28, i32 1, ptr nonnull elementtype(i32) %28) #9, !srcloc !15
  %48 = extractvalue { i32, i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = icmp sgt i32 %48, 0
  br i1 %51, label %55, label %52, !prof !16

52:                                               ; preds = %50
  tail call void @refcount_warn_saturate(ptr noundef nonnull %28, i32 noundef 3) #9
  br label %55

53:                                               ; preds = %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  %54 = getelementptr inbounds %struct.posix_acl, ptr %28, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %54, ptr noundef nonnull inttoptr (i32 4 to ptr)) #9
  br label %55

55:                                               ; preds = %53, %52, %50, %42
  ret i32 %29

56:                                               ; preds = %19, %12, %9
  %57 = phi ptr [ null, %19 ], [ %2, %12 ], [ %2, %9 ]
  %58 = phi ptr [ %17, %19 ], [ null, %12 ], [ null, %9 ]
  %59 = phi ptr [ %21, %19 ], [ %13, %12 ], [ %10, %9 ]
  %60 = ptrtoint ptr %59 to i32
  br label %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_acl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_from_mode(i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs3_listxattr(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4
  %7 = call fastcc i32 @nfs3_list_one_acl(ptr noundef %6, i32 noundef 32768, ptr noundef nonnull @.str, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = call fastcc i32 @nfs3_list_one_acl(ptr noundef %6, i32 noundef 16384, ptr noundef nonnull @.str.1, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4)
  %11 = icmp eq i32 %10, 0
  %12 = load i32, ptr %4, align 4
  %13 = select i1 %11, i32 %12, i32 %10
  br label %14

14:                                               ; preds = %9, %3
  %15 = phi i32 [ %7, %3 ], [ %13, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs3_list_one_acl(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef %5) unnamed_addr #0 {
  %7 = load i32, ptr %5, align 4
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = tail call ptr @get_acl(ptr noundef %0, i32 noundef %1) #9
  %10 = icmp eq ptr %9, null
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %12 = or i1 %10, %11
  br i1 %12, label %32, label %13

13:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #9, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #9, !srcloc !15
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %22, label %19, !prof !16

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %9, i32 noundef 3) #9
  br label %22

20:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  %21 = getelementptr inbounds %struct.posix_acl, ptr %9, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %21, ptr noundef nonnull inttoptr (i32 4 to ptr)) #9
  br label %22

22:                                               ; preds = %20, %19, %17
  %23 = tail call i32 @strlen(ptr noundef %2)
  %24 = load i32, ptr %5, align 4
  %25 = add i32 %23, 1
  %26 = add i32 %25, %24
  store i32 %26, ptr %5, align 4
  %27 = icmp eq i32 %4, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = icmp ugt i32 %26, %4
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = tail call ptr @strcpy(ptr noundef %8, ptr noundef %2)
  br label %32

32:                                               ; preds = %30, %28, %22, %6
  %33 = phi i32 [ 0, %30 ], [ 0, %6 ], [ 0, %22 ], [ -34, %28 ]
  ret i32 %33
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_access_zap_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_zap_acl_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

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
!8 = !{i64 2156112763}
!9 = !{i64 833809, i64 2148323780, i64 2148323806, i64 2148323853, i64 2148323875, i64 2148323903, i64 2148323923}
!10 = !{i64 845183, i64 845204, i64 845227, i64 845246, i64 845265}
!11 = !{i64 2156113158}
!12 = !{i64 2156119512}
!13 = !{i64 2156119907}
!14 = !{i64 2148436875}
!15 = !{i64 2148339010, i64 2148339042, i64 2148339071, i64 2148339105, i64 2148339136, i64 2148339159}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2149762389}
!18 = !{i64 2148336653, i64 2148336685, i64 2148336714, i64 2148336748, i64 2148336779, i64 2148336802}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2156118146}
!21 = !{i64 2156118530}
!22 = !{!"auto-init"}
