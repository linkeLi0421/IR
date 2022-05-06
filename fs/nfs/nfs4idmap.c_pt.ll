; ModuleID = '/llk/IR/fs/nfs/nfs4idmap.c_pt.bc'
source_filename = "../fs/nfs/nfs4idmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_map_string_to_numeric:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_map_string_to_numeric\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_map_string_to_numeric:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.rpc_pipe_dir_object_ops = type { ptr, ptr }
%struct.rpc_pipe_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.match_token = type { i32, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.14 }
%union.anon.14 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.25, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i64 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs4_string = type { i32, ptr }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.16, %struct.rw_semaphore, ptr, ptr, %union.anon.17, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.18, %union.anon.23, ptr }
%union.anon.16 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.17 = type { i64 }
%union.anon.18 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.19, ptr, ptr, ptr }
%union.anon.19 = type { i32 }
%union.anon.23 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.92 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.92 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.idmap = type { %struct.rpc_pipe_dir_object, ptr, ptr, %struct.mutex, ptr }
%struct.rpc_pipe_dir_object = type { %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.1 }
%union.anon.1 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.145, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.145 = type { %struct.work_struct }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.substring_t = type { ptr, ptr }
%struct.request_key_auth = type { %struct.callback_head, ptr, ptr, ptr, ptr, i32, i32, [8 x i8] }
%struct.idmap_legacy_upcalldata = type { %struct.rpc_pipe_msg, %struct.idmap_msg, ptr, ptr }
%struct.rpc_pipe_msg = type { %struct.list_head, ptr, i32, i32, i32 }
%struct.idmap_msg = type { i8, i8, [128 x i8], i32, i8 }
%struct.rpc_pipe = type { %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.delayed_work, ptr, %struct.spinlock, ptr }
%struct.file = type { %union.anon.8, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.rpc_inode = type { %struct.inode, ptr, ptr, %struct.wait_queue_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.147, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.148, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.149, ptr, %struct.address_space, %struct.list_head, %union.anon.150, i32, i32, ptr, ptr }
%union.anon.147 = type { i32 }
%struct.seqcount = type { i32 }
%union.anon.148 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.149 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.150 = type { ptr }
%struct.user_key_payload = type { %struct.callback_head, i16, [6 x i8], [0 x i8] }

@__kstrtab_nfs_map_string_to_numeric = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_map_string_to_numeric = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_map_string_to_numeric = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_map_string_to_numeric to i32), ptr @__kstrtab_nfs_map_string_to_numeric, ptr @__kstrtabns_nfs_map_string_to_numeric }, section "___ksymtab_gpl+nfs_map_string_to_numeric", align 4
@.str = private unnamed_addr constant [36 x i8] c"\015NFS: Registering the %s key type\0A\00", align 1
@key_type_id_resolver = internal global %struct.key_type { ptr @.str.7, i32 0, i32 0, ptr null, ptr @user_preparse, ptr @user_free_preparse, ptr @generic_key_instantiate, ptr null, ptr null, ptr null, ptr @user_revoke, ptr @user_destroy, ptr @user_describe, ptr @user_read, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c".id_resolver\00", align 1
@key_type_id_resolver_legacy = internal global %struct.key_type { ptr @.str.8, i32 0, i32 0, ptr null, ptr @user_preparse, ptr @user_free_preparse, ptr @generic_key_instantiate, ptr null, ptr null, ptr null, ptr @user_revoke, ptr @user_destroy, ptr @user_describe, ptr @user_read, ptr @nfs_idmap_legacy_upcall, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@id_resolver_cache = internal unnamed_addr global ptr null, align 4
@nfs_idmap_new.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"&idmap->idmap_mutex\00", align 1
@nfs_idmap_pipe_dir_object_ops = internal constant %struct.rpc_pipe_dir_object_ops { ptr @nfs_idmap_pipe_create, ptr @nfs_idmap_pipe_destroy }, align 4
@idmap_upcall_ops = internal constant %struct.rpc_pipe_ops { ptr @rpc_pipe_generic_upcall, ptr @idmap_pipe_downcall, ptr @idmap_release_pipe, ptr null, ptr @idmap_pipe_destroy_msg }, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"id_resolver\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"id_legacy\00", align 1
@nfs_idmap_tokens = internal constant [5 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.9 }, %struct.match_token { i32 1, ptr @.str.10 }, %struct.match_token { i32 2, ptr @.str.11 }, %struct.match_token { i32 3, ptr @.str.12 }, %struct.match_token { i32 4, ptr null }], align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"uid:%s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"gid:%s\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"user:%s\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"group:%s\00", align 1
@nfs_idmap_prepare_pipe_upcall.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"fs/nfs/nfs4idmap.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"idmap\00", align 1
@nfs_idmap_cache_timeout = external dso_local local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__tracepoint_nfs4_map_name_to_uid = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_nfs4_map_group_to_gid = external dso_local global %struct.tracepoint, align 4
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@__tracepoint_nfs4_map_uid_to_name = external dso_local global %struct.tracepoint, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_nfs4_map_gid_to_group = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_nfs_map_string_to_numeric], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nfs_fattr_init_names(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nfs_fattr, ptr %0, i32 0, i32 21
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.nfs_fattr, ptr %0, i32 0, i32 22
  store ptr %2, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_fattr_free_names(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 8388608
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = and i32 %2, -8388609
  store i32 %6, ptr %0, align 8
  %7 = getelementptr inbounds %struct.nfs_fattr, ptr %0, i32 0, i32 21
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nfs4_string, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %10) #12
  %11 = load i32, ptr %0, align 8
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i32 [ %11, %5 ], [ %2, %1 ]
  %14 = and i32 %13, 16777216
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = and i32 %13, -16777217
  store i32 %17, ptr %0, align 8
  %18 = getelementptr inbounds %struct.nfs_fattr, ptr %0, i32 0, i32 22
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nfs4_string, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void @kfree(ptr noundef %21) #12
  br label %22

22:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_fattr_map_and_free_names(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.kgid_t, align 4
  %4 = alloca %struct.kuid_t, align 4
  %5 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 8388608
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nfs4_string, ptr %6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %6, align 4
  %14 = call i32 @nfs_map_name_to_uid(ptr noundef %0, ptr noundef %12, i32 noundef %13, ptr noundef nonnull %4) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %1, align 8
  br label %24

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 3
  %20 = load i32, ptr %4, align 4
  store i32 %20, ptr %19, align 4
  %21 = load i32, ptr %1, align 8
  %22 = or i32 %21, 8
  br label %24

23:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %31

24:                                               ; preds = %18, %16
  %25 = phi i32 [ %17, %16 ], [ %22, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %26 = and i32 %25, -8388609
  store i32 %26, ptr %1, align 8
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds %struct.nfs4_string, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void @kfree(ptr noundef %29) #12
  %30 = load i32, ptr %1, align 8
  br label %31

31:                                               ; preds = %24, %23
  %32 = phi i32 [ %7, %23 ], [ %30, %24 ]
  %33 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 22
  %34 = load ptr, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %35 = and i32 %32, 16777216
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.nfs4_string, ptr %34, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = load i32, ptr %34, align 4
  %41 = call i32 @nfs_map_group_to_gid(ptr noundef %0, ptr noundef %39, i32 noundef %40, ptr noundef nonnull %3) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load i32, ptr %1, align 8
  br label %51

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 4
  %47 = load i32, ptr %3, align 4
  store i32 %47, ptr %46, align 8
  %48 = load i32, ptr %1, align 8
  %49 = or i32 %48, 16
  br label %51

50:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %57

51:                                               ; preds = %45, %43
  %52 = phi i32 [ %44, %43 ], [ %49, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %53 = and i32 %52, -16777217
  store i32 %53, ptr %1, align 8
  %54 = load ptr, ptr %33, align 4
  %55 = getelementptr inbounds %struct.nfs4_string, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  tail call void @kfree(ptr noundef %56) #12
  br label %57

57:                                               ; preds = %51, %50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_map_string_to_numeric(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  %6 = tail call ptr @memchr(ptr noundef %0, i32 noundef 64, i32 noundef %1)
  %7 = icmp ne ptr %6, null
  %8 = icmp ugt i32 %1, 15
  %9 = or i1 %8, %7
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %5, ptr align 1 %0, i32 %1, i1 false)
  %11 = getelementptr [16 x i8], ptr %5, i32 0, i32 %1
  store i8 0, ptr %11, align 1
  %12 = call i32 @_kstrtoul(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %4) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, ptr %4, align 4
  store i32 %15, ptr %2, align 4
  br label %16

16:                                               ; preds = %14, %10, %3
  %17 = phi i32 [ 1, %14 ], [ 0, %3 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_idmap_init() local_unnamed_addr #1 {
  %1 = load ptr, ptr @key_type_id_resolver, align 4
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %1) #13
  %3 = tail call ptr @prepare_kernel_cred(ptr noundef null) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %0
  %6 = tail call ptr @keyring_alloc(ptr noundef nonnull @.str.1, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, ptr noundef nonnull %3, i32 noundef 520290304, i32 noundef 2, ptr noundef null, ptr noundef null) #12
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %23

10:                                               ; preds = %5
  %11 = tail call i32 @register_key_type(ptr noundef nonnull @key_type_id_resolver) #12
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @register_key_type(ptr noundef nonnull @key_type_id_resolver_legacy) #12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.key, ptr %6, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 4, ptr noundef %17) #12
  %18 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 18
  store ptr %6, ptr %18, align 4
  %19 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 15
  store i8 1, ptr %19, align 4
  store ptr %3, ptr @id_resolver_cache, align 4
  br label %29

20:                                               ; preds = %13
  tail call void @unregister_key_type(ptr noundef nonnull @key_type_id_resolver) #12
  br label %21

21:                                               ; preds = %20, %10
  %22 = phi i32 [ %11, %10 ], [ %14, %20 ]
  tail call void @key_put(ptr noundef %6) #12
  br label %23

23:                                               ; preds = %21, %8
  %24 = phi i32 [ %9, %8 ], [ %22, %21 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %3) #12, !srcloc !10
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #12, !srcloc !11
  %26 = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  tail call void @__put_cred(ptr noundef nonnull %3) #12
  br label %29

29:                                               ; preds = %28, %23, %16, %0
  %30 = phi i32 [ 0, %16 ], [ -12, %0 ], [ %24, %23 ], [ %24, %28 ]
  ret i32 %30
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_kernel_cred(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_alloc(ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_key_type(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_key_type(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_idmap_quit() local_unnamed_addr #1 {
  %1 = load ptr, ptr @id_resolver_cache, align 4
  %2 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  tail call void @key_revoke(ptr noundef %3) #12
  tail call void @unregister_key_type(ptr noundef nonnull @key_type_id_resolver) #12
  tail call void @unregister_key_type(ptr noundef nonnull @key_type_id_resolver_legacy) #12
  %4 = load ptr, ptr @id_resolver_cache, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #12, !srcloc !10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #12, !srcloc !11
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @__put_cred(ptr noundef nonnull %4) #12
  br label %11

11:                                               ; preds = %10, %6, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_revoke(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_idmap_new(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 48) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.idmap, ptr %3, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @nfs_idmap_new.__key) #12
  %7 = getelementptr inbounds %struct.idmap, ptr %3, i32 0, i32 4
  store ptr @init_user_ns, ptr %7, align 4
  tail call void @rpc_init_pipe_dir_object(ptr noundef nonnull %3, ptr noundef nonnull @nfs_idmap_pipe_dir_object_ops, ptr noundef nonnull %3) #12
  %8 = tail call ptr @rpc_mkpipe_data(ptr noundef nonnull @idmap_upcall_ops, i32 noundef 0) #12
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = ptrtoint ptr %8 to i32
  br label %25

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 11
  %14 = getelementptr inbounds %struct.idmap, ptr %3, i32 0, i32 1
  store ptr %8, ptr %14, align 8
  %15 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 44
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %13, align 8
  %18 = getelementptr inbounds %struct.rpc_clnt, ptr %17, i32 0, i32 20
  %19 = tail call i32 @rpc_add_pipe_dir_object(ptr noundef %16, ptr noundef %18, ptr noundef nonnull %3) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 28
  store ptr %3, ptr %22, align 4
  br label %27

23:                                               ; preds = %12
  %24 = load ptr, ptr %14, align 8
  tail call void @rpc_destroy_pipe_data(ptr noundef %24) #12
  br label %25

25:                                               ; preds = %23, %10
  %26 = phi i32 [ %11, %10 ], [ %19, %23 ]
  tail call void @kfree(ptr noundef nonnull %3) #12
  br label %27

27:                                               ; preds = %25, %21, %1
  %28 = phi i32 [ %26, %25 ], [ 0, %21 ], [ -12, %1 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_init_pipe_dir_object(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_mkpipe_data(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_add_pipe_dir_object(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_destroy_pipe_data(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_idmap_delete(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 28
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 4
  %6 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 44
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.rpc_clnt, ptr %9, i32 0, i32 20
  tail call void @rpc_remove_pipe_dir_object(ptr noundef %7, ptr noundef %10, ptr noundef nonnull %3) #12
  %11 = getelementptr inbounds %struct.idmap, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @rpc_destroy_pipe_data(ptr noundef %12) #12
  tail call void @kfree(ptr noundef nonnull %3) #12
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_remove_pipe_dir_object(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_map_name_to_uid(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = alloca [11 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 1
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 28
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %8, i8 0, i32 16, i1 false) #12, !annotation !8
  %12 = tail call ptr @memchr(ptr noundef %1, i32 noundef 64, i32 noundef %2) #12
  %13 = icmp ne ptr %12, null
  %14 = icmp ugt i32 %2, 15
  %15 = or i1 %14, %13
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %8, ptr align 1 %1, i32 %2, i1 false) #12
  %17 = getelementptr [16 x i8], ptr %8, i32 0, i32 %2
  store i8 0, ptr %17, align 1
  %18 = call i32 @_kstrtoul(ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %7) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %32

22:                                               ; preds = %16, %4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %5, i8 0, i32 11, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !8
  %23 = call fastcc i32 @nfs_idmap_get_key(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.3, ptr noundef nonnull %5, i32 noundef 11, ptr noundef %11) #12
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = call i32 @_kstrtol(ptr noundef nonnull %5, i32 noundef 10, ptr noundef nonnull %6) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ -22, %22 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %5) #12
  br label %36

30:                                               ; preds = %25
  %31 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %5) #12
  br label %32

32:                                               ; preds = %30, %20
  %33 = phi i32 [ %21, %20 ], [ %31, %30 ]
  store i32 %33, ptr %3, align 4
  %34 = icmp eq i32 %33, -1
  %35 = select i1 %34, i32 -34, i32 0
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %33, %32 ], [ -1, %28 ]
  %38 = phi i32 [ %35, %32 ], [ %29, %28 ]
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_map_name_to_uid, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = tail call ptr @llvm.thread.pointer() #12
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr @__cpu_online_mask, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %47
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %53 = call i32 @__traceiter_nfs4_map_name_to_uid(ptr noundef null, ptr noundef %1, i32 noundef %2, i32 noundef %37, i32 noundef %38) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %54

54:                                               ; preds = %52, %41, %36
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_map_group_to_gid(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = alloca [11 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 1
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 28
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %8, i8 0, i32 16, i1 false) #12, !annotation !8
  %12 = tail call ptr @memchr(ptr noundef %1, i32 noundef 64, i32 noundef %2) #12
  %13 = icmp ne ptr %12, null
  %14 = icmp ugt i32 %2, 15
  %15 = or i1 %14, %13
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %8, ptr align 1 %1, i32 %2, i1 false) #12
  %17 = getelementptr [16 x i8], ptr %8, i32 0, i32 %2
  store i8 0, ptr %17, align 1
  %18 = call i32 @_kstrtoul(ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %7) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %32

22:                                               ; preds = %16, %4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %5, i8 0, i32 11, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !8
  %23 = call fastcc i32 @nfs_idmap_get_key(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.4, ptr noundef nonnull %5, i32 noundef 11, ptr noundef %11) #12
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = call i32 @_kstrtol(ptr noundef nonnull %5, i32 noundef 10, ptr noundef nonnull %6) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ -22, %22 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %5) #12
  br label %36

30:                                               ; preds = %25
  %31 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %5) #12
  br label %32

32:                                               ; preds = %30, %20
  %33 = phi i32 [ %21, %20 ], [ %31, %30 ]
  store i32 %33, ptr %3, align 4
  %34 = icmp eq i32 %33, -1
  %35 = select i1 %34, i32 -34, i32 0
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %33, %32 ], [ -1, %28 ]
  %38 = phi i32 [ %35, %32 ], [ %29, %28 ]
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_map_group_to_gid, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = tail call ptr @llvm.thread.pointer() #12
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr @__cpu_online_mask, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %47
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  %53 = call i32 @__traceiter_nfs4_map_group_to_gid(ptr noundef null, ptr noundef %1, i32 noundef %2, i32 noundef %37, i32 noundef %38) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  br label %54

54:                                               ; preds = %52, %41, %36
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_map_uid_to_name(ptr nocapture noundef readonly %0, [1 x i32] %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [11 x i8], align 1
  %6 = extractvalue [1 x i32] %1, 0
  %7 = icmp eq i32 %6, -1
  %8 = load i32, ptr @overflowuid, align 4
  %9 = select i1 %7, i32 %8, i32 %6
  %10 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 32768
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.nfs_client, ptr %15, i32 0, i32 28
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %5, i8 0, i32 11, i1 false) #12, !annotation !8
  %18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 11, ptr noundef nonnull @.str.19, i32 noundef %9) #12
  %19 = call fastcc i32 @nfs_idmap_get_key(ptr noundef nonnull %5, i32 noundef %18, ptr noundef nonnull @.str.5, ptr noundef %2, i32 noundef %3, ptr noundef %17) #12
  %20 = icmp slt i32 %19, 0
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %5) #12
  br i1 %20, label %21, label %23

21:                                               ; preds = %14, %4
  %22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str.19, i32 noundef %9) #12
  br label %23

23:                                               ; preds = %21, %14
  %24 = phi i32 [ %22, %21 ], [ %19, %14 ]
  %25 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_map_uid_to_name, i32 0, i32 1), align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = tail call ptr @llvm.thread.pointer() #12
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 5
  %32 = getelementptr i32, ptr @__cpu_online_mask, i32 %31
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %30, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %33
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %27
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %39 = tail call i32 @__traceiter_nfs4_map_uid_to_name(ptr noundef null, ptr noundef %2, i32 noundef %24, i32 noundef %9, i32 noundef %24) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !18
  br label %40

40:                                               ; preds = %38, %27, %23
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_map_gid_to_group(ptr nocapture noundef readonly %0, [1 x i32] %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [11 x i8], align 1
  %6 = extractvalue [1 x i32] %1, 0
  %7 = icmp eq i32 %6, -1
  %8 = load i32, ptr @overflowgid, align 4
  %9 = select i1 %7, i32 %8, i32 %6
  %10 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 32768
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.nfs_client, ptr %15, i32 0, i32 28
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %5, i8 0, i32 11, i1 false) #12, !annotation !8
  %18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 11, ptr noundef nonnull @.str.19, i32 noundef %9) #12
  %19 = call fastcc i32 @nfs_idmap_get_key(ptr noundef nonnull %5, i32 noundef %18, ptr noundef nonnull @.str.6, ptr noundef %2, i32 noundef %3, ptr noundef %17) #12
  %20 = icmp slt i32 %19, 0
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %5) #12
  br i1 %20, label %21, label %23

21:                                               ; preds = %14, %4
  %22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str.19, i32 noundef %9) #12
  br label %23

23:                                               ; preds = %21, %14
  %24 = phi i32 [ %22, %21 ], [ %19, %14 ]
  %25 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_map_gid_to_group, i32 0, i32 1), align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = tail call ptr @llvm.thread.pointer() #12
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 5
  %32 = getelementptr i32, ptr @__cpu_online_mask, i32 %31
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %30, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %33
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %27
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  %39 = tail call i32 @__traceiter_nfs4_map_gid_to_group(ptr noundef null, ptr noundef %2, i32 noundef %24, i32 noundef %9, i32 noundef %24) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  br label %40

40:                                               ; preds = %38, %27, %23
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_preparse(ptr noundef) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_free_preparse(ptr noundef) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_key_instantiate(ptr noundef, ptr noundef) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_revoke(ptr noundef) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_destroy(ptr noundef) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_describe(ptr noundef, ptr noundef) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_read(ptr noundef, ptr noundef, i32 noundef) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_idmap_legacy_upcall(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.substring_t, align 8
  %4 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.request_key_auth, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %71, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 172) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %71, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %11, i32 0, i32 1
  %15 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %11, i32 0, i32 3
  store ptr %1, ptr %15, align 8
  %16 = icmp eq ptr %0, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #12, !srcloc !10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #12, !srcloc !21
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !22

21:                                               ; preds = %17
  %22 = add i32 %19, 1
  %23 = or i32 %22, %19
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %27, label %25, !prof !23

25:                                               ; preds = %21, %17
  %26 = phi i32 [ 2, %17 ], [ 1, %21 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef %26) #12
  br label %27

27:                                               ; preds = %25, %21, %13
  %28 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %11, i32 0, i32 2
  store ptr %0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.key, ptr %7, i32 0, i32 15, i32 0, i32 4
  %30 = load ptr, ptr %29, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8, !annotation !8
  store i8 1, ptr %14, align 8
  %31 = call i32 @match_token(ptr noundef %30, ptr noundef nonnull @nfs_idmap_tokens, ptr noundef nonnull %3) #12
  switch i32 %31, label %32 [
    i32 0, label %33
    i32 1, label %34
    i32 2, label %38
    i32 3, label %39
  ]

32:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br label %69

33:                                               ; preds = %27
  store i8 0, ptr %14, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %11, i32 0, i32 1, i32 1
  store i8 1, ptr %35, align 1
  %36 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %11, i32 0, i32 1, i32 2
  %37 = call i32 @match_strlcpy(ptr noundef %36, ptr noundef nonnull %3, i32 noundef 128) #12
  br label %44

38:                                               ; preds = %27
  store i8 0, ptr %14, align 8
  br label %39

39:                                               ; preds = %38, %27
  %40 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %11, i32 0, i32 1, i32 1
  store i8 0, ptr %40, align 1
  %41 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %11, i32 0, i32 1, i32 3
  %42 = call i32 @match_int(ptr noundef nonnull %3, ptr noundef %41) #12
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39, %34
  %45 = phi i32 [ 0, %39 ], [ %37, %34 ]
  %46 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %11, i32 0, i32 1
  store ptr %14, ptr %46, align 8
  %47 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %11, i32 0, i32 2
  store i32 140, ptr %47, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = phi i32 [ %42, %39 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.idmap, ptr %1, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i1, ptr @nfs_idmap_prepare_pipe_upcall.__already_done, align 1
  br i1 %56, label %69, label %57, !prof !23

57:                                               ; preds = %55
  store i1 true, ptr @nfs_idmap_prepare_pipe_upcall.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 557, i32 noundef 9, ptr noundef null) #12
  br label %69

58:                                               ; preds = %51
  store ptr %11, ptr %52, align 4
  %59 = getelementptr inbounds %struct.idmap, ptr %1, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = call i32 @rpc_queue_upcall(ptr noundef %60, ptr noundef nonnull %11) #12
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load ptr, ptr %52, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %64, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  call void @kfree(ptr noundef nonnull %64) #12
  store ptr null, ptr %52, align 4
  call void @complete_request_key(ptr noundef %68, i32 noundef %61) #12
  call void @key_put(ptr noundef %68) #12
  br label %73

69:                                               ; preds = %57, %55, %48, %32
  %70 = phi i32 [ %49, %48 ], [ -22, %32 ], [ -11, %55 ], [ -11, %57 ]
  call void @kfree(ptr noundef nonnull %11) #12
  br label %71

71:                                               ; preds = %69, %9, %2
  %72 = phi i32 [ %70, %69 ], [ -12, %9 ], [ -126, %2 ]
  call void @complete_request_key(ptr noundef %0, i32 noundef %72) #12
  br label %73

73:                                               ; preds = %71, %66, %63, %58
  %74 = phi i32 [ %72, %71 ], [ %61, %58 ], [ %61, %63 ], [ %61, %66 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_queue_upcall(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_request_key(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_idmap_pipe_create(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.rpc_pipe_dir_object, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.idmap, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @rpc_mkpipe_dentry(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %4, ptr noundef %6) #12
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %7 to i32
  br label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rpc_pipe, ptr %6, i32 0, i32 10
  store ptr %7, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ 0, %11 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_idmap_pipe_destroy(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.rpc_pipe_dir_object, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.idmap, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rpc_pipe, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @rpc_unlink(ptr noundef nonnull %8) #12
  store ptr null, ptr %7, align 4
  br label %12

12:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_mkpipe_dentry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_unlink(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pipe_generic_upcall(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idmap_pipe_downcall(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca [11 x i8], align 1
  %5 = alloca %struct.idmap_msg, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rpc_inode, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %5, i8 0, i32 140, i1 false), !annotation !8
  %10 = getelementptr inbounds %struct.idmap, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %98, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %11, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 16
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq i32 %2, 140
  br i1 %18, label %19, label %93

19:                                               ; preds = %13
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 140, i32 -1090519040) #15, !srcloc !24
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31, !prof !23

23:                                               ; preds = %19
  %24 = tail call ptr @llvm.thread.pointer() #12
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %25) #16, !srcloc !25
  %27 = and i32 %26, -13
  %28 = or i32 %27, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #12, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !27
  %29 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 140) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #12, !srcloc !26
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !27
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !23

31:                                               ; preds = %23, %19
  %32 = phi i32 [ %29, %23 ], [ 140, %19 ]
  %33 = sub i32 140, %32
  %34 = getelementptr i8, ptr %5, i32 %33
  call void @llvm.memset.p0.i32(ptr align 1 %34, i8 0, i32 %32, i1 false) #12
  br label %93

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.idmap_msg, ptr %5, i32 0, i32 4
  %37 = load i8, ptr %36, align 4
  %38 = and i8 %37, 8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %93, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.idmap_msg, ptr %5, i32 0, i32 2
  %42 = call i32 @strnlen(ptr noundef %41, i32 noundef 128)
  %43 = and i32 %42, -129
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %93, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %10, align 4
  %47 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.request_key_auth, ptr %17, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %4, i8 0, i32 11, i1 false) #12, !annotation !8
  %50 = load i8, ptr %47, align 4
  %51 = load i8, ptr %5, align 4
  %52 = icmp eq i8 %50, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %46, i32 0, i32 1, i32 1
  %55 = load i8, ptr %54, align 1
  %56 = getelementptr inbounds %struct.idmap_msg, ptr %5, i32 0, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %55, %57
  br i1 %58, label %59, label %85

59:                                               ; preds = %53
  switch i8 %55, label %85 [
    i8 1, label %60
    i8 0, label %73
  ]

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %46, i32 0, i32 1, i32 2
  %62 = call i32 @strcmp(ptr noundef %61, ptr noundef %41) #12
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.idmap_msg, ptr %5, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 11, ptr noundef nonnull @.str.19, i32 noundef %66) #12
  %68 = add i32 %67, 1
  %69 = load ptr, ptr @id_resolver_cache, align 4
  %70 = getelementptr inbounds %struct.cred, ptr %69, i32 0, i32 18
  %71 = load ptr, ptr %70, align 4
  %72 = call i32 @key_instantiate_and_link(ptr noundef %49, ptr noundef nonnull %4, i32 noundef %68, ptr noundef %71, ptr noundef %15) #12
  br label %87

73:                                               ; preds = %59
  %74 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %46, i32 0, i32 1, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.idmap_msg, ptr %5, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = call i32 @strlen(ptr noundef %41) #12
  %81 = load ptr, ptr @id_resolver_cache, align 4
  %82 = getelementptr inbounds %struct.cred, ptr %81, i32 0, i32 18
  %83 = load ptr, ptr %82, align 4
  %84 = call i32 @key_instantiate_and_link(ptr noundef %49, ptr noundef %41, i32 noundef %80, ptr noundef %83, ptr noundef %15) #12
  br label %87

85:                                               ; preds = %73, %60, %59, %53, %45
  %86 = phi i32 [ -22, %59 ], [ -126, %60 ], [ -126, %73 ], [ -126, %53 ], [ -126, %45 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %4) #12
  br label %93

87:                                               ; preds = %79, %64
  %88 = phi i32 [ %84, %79 ], [ %72, %64 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %4) #12
  %89 = icmp sgt i32 %88, -1
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load ptr, ptr %48, align 4
  %92 = load i32, ptr @nfs_idmap_cache_timeout, align 4
  call void @key_set_timeout(ptr noundef %91, i32 noundef %92) #12
  br label %93

93:                                               ; preds = %90, %87, %85, %40, %35, %31, %13
  %94 = phi i32 [ 140, %90 ], [ %88, %87 ], [ -28, %13 ], [ -126, %35 ], [ -22, %40 ], [ %86, %85 ], [ -14, %31 ]
  %95 = load ptr, ptr %10, align 4
  %96 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %95, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  call void @kfree(ptr noundef %95) #12
  store ptr null, ptr %10, align 4
  call void @complete_request_key(ptr noundef %97, i32 noundef %94) #12
  call void @key_put(ptr noundef %97) #12
  br label %98

98:                                               ; preds = %93, %3
  %99 = phi i32 [ -126, %3 ], [ %94, %93 ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %5) #12
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @idmap_release_pipe(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.rpc_inode, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.idmap, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef nonnull %5) #12
  store ptr null, ptr %4, align 4
  tail call void @complete_request_key(ptr noundef %9, i32 noundef -32) #12
  tail call void @key_put(ptr noundef %9) #12
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @idmap_pipe_destroy_msg(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.idmap, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.idmap_legacy_upcalldata, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef nonnull %9) #12
  store ptr null, ptr %8, align 4
  tail call void @complete_request_key(ptr noundef %13, i32 noundef %3) #12
  tail call void @key_put(ptr noundef %13) #12
  br label %14

14:                                               ; preds = %11, %5, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_set_timeout(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_instantiate_and_link(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs_idmap_get_key(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4, ptr noundef %5) unnamed_addr #1 {
  %7 = load ptr, ptr @id_resolver_cache, align 4
  %8 = tail call ptr @override_creds(ptr noundef %7) #12
  %9 = tail call i32 @strlen(ptr noundef %2) #12
  %10 = add i32 %9, %1
  %11 = add i32 %10, 2
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %6
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %12, ptr align 1 %2, i32 %9, i1 false) #12
  %15 = getelementptr i8, ptr %12, i32 %9
  %16 = getelementptr i8, ptr %15, i32 1
  store i8 58, ptr %15, align 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %16, ptr align 1 %0, i32 %1, i1 false) #12
  %17 = getelementptr i8, ptr %16, i32 %1
  store i8 0, ptr %17, align 1
  %18 = icmp slt i32 %11, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %6
  %20 = phi i32 [ %11, %14 ], [ -12, %6 ]
  %21 = inttoptr i32 %20 to ptr
  br label %40

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.idmap, ptr %5, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  %26 = icmp eq ptr %24, @init_user_ns
  %27 = or i1 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = tail call ptr @request_key_tag(ptr noundef nonnull @key_type_id_resolver, ptr noundef nonnull %12, ptr noundef null, ptr noundef nonnull @.str.17) #12
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %22
  %32 = getelementptr inbounds %struct.idmap, ptr %5, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %32) #12
  %33 = tail call ptr @request_key_with_auxdata(ptr noundef nonnull @key_type_id_resolver_legacy, ptr noundef nonnull %12, ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 0, ptr noundef %5) #12
  tail call void @mutex_unlock(ptr noundef %32) #12
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi ptr [ %33, %31 ], [ %29, %28 ]
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.key, ptr %35, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 7, ptr noundef %38) #12
  br label %39

39:                                               ; preds = %37, %34
  tail call void @kfree(ptr noundef nonnull %12) #12
  br label %40

40:                                               ; preds = %39, %19
  %41 = phi ptr [ %21, %19 ], [ %35, %39 ]
  tail call void @revert_creds(ptr noundef %8) #12
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = ptrtoint ptr %41 to i32
  br label %70

45:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  %46 = getelementptr inbounds %struct.key, ptr %41, i32 0, i32 10
  %47 = load i32, ptr %46, align 8
  %48 = or i32 %47, 65536
  store i32 %48, ptr %46, align 8
  %49 = tail call i32 @key_validate(ptr noundef %41) #12
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.key, ptr %41, i32 0, i32 16
  %53 = load volatile ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  %56 = or i1 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = ptrtoint ptr %53 to i32
  br label %68

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.user_key_payload, ptr %53, i32 0, i32 1
  %61 = load i16, ptr %60, align 8
  %62 = zext i16 %61 to i32
  %63 = icmp eq i16 %61, 0
  %64 = icmp ugt i32 %62, %4
  %65 = or i1 %63, %64
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.user_key_payload, ptr %53, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 8 %67, i32 %62, i1 false)
  br label %68

68:                                               ; preds = %66, %59, %57, %45
  %69 = phi i32 [ %49, %45 ], [ %58, %57 ], [ %62, %66 ], [ -22, %59 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !29
  tail call void @key_put(ptr noundef %41) #12
  br label %70

70:                                               ; preds = %68, %43
  %71 = phi i32 [ %44, %43 ], [ %69, %68 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_validate(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_with_auxdata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_map_name_to_uid(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_map_group_to_gid(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_map_uid_to_name(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_map_gid_to_group(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly }
attributes #17 = { nounwind allocsize(0) }

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
!9 = !{i64 2148449166}
!10 = !{i64 847101, i64 2148337072, i64 2148337098, i64 2148337145, i64 2148337167, i64 2148337195, i64 2148337215}
!11 = !{i64 2148351528, i64 2148351560, i64 2148351589, i64 2148351623, i64 2148351654, i64 2148351677}
!12 = !{i64 2148449369}
!13 = !{i64 2157483584}
!14 = !{i64 2157483810}
!15 = !{i64 2157501646}
!16 = !{i64 2157501876}
!17 = !{i64 2157519708}
!18 = !{i64 2157519934}
!19 = !{i64 2157541831}
!20 = !{i64 2157542061}
!21 = !{i64 2148349945, i64 2148349977, i64 2148350006, i64 2148350040, i64 2148350071, i64 2148350094}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 2150980760, i64 2150980785}
!25 = !{i64 3476872}
!26 = !{i64 3477069}
!27 = !{i64 2150962348}
!28 = !{i64 2149168409}
!29 = !{i64 2149168626}
