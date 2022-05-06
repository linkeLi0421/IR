; ModuleID = '/llk/IR/fs/nfs/namespace.c_pt.bc'
source_filename = "../fs/nfs/namespace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_path:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_path\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_do_submount:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_do_submount\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_do_submount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_submount:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_submount\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_submount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.33 }
%union.anon.33 = type { ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.1 }
%union.anon.1 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.151, %struct.list_head, %struct.list_head, %union.anon.152 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.149 }
%union.anon.149 = type { i64 }
%union.anon.151 = type { %struct.list_head }
%union.anon.152 = type { %struct.hlist_node }
%struct.anon = type { i32, i32 }
%struct.path = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.145, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.146, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.147, ptr, %struct.address_space, %struct.list_head, %union.anon.148, i32, i32, ptr, ptr }
%union.anon.145 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.146 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.147 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.148 = type { ptr }
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
%struct.list_lru = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.nfs_fs_context = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_auth_info, i32, ptr, i32, i32, ptr, i16, i16, i8, %struct.anon.155, %struct.anon.157, ptr, ptr, ptr, %struct.nfs_clone_mount }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.anon.155 = type { %union.anon.156, i32, ptr, i32, i32, i16 }
%union.anon.156 = type { %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.128 }
%union.anon.128 = type { ptr, [124 x i8] }
%struct.anon.157 = type { %union.anon.158, i32, ptr, ptr, i32, i16, i16, i16, i16 }
%union.anon.158 = type { %struct.__kernel_sockaddr_storage }
%struct.nfs_clone_mount = type { ptr, ptr, ptr, i32 }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.ida = type { %struct.xarray }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_subversion = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.133, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.133 = type { %struct.work_struct }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }

@nfs_mountpoint_expiry_timeout = dso_local global i32 50000, align 4
@rename_lock = external dso_local global %struct.seqlock_t, align 4
@.str = private unnamed_addr constant [19 x i8] c"fs/nfs/namespace.c\00", align 1
@__kstrtab_nfs_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_path = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_path to i32), ptr @__kstrtab_nfs_path, ptr @__kstrtabns_nfs_path }, section "___ksymtab_gpl+nfs_path", align 4
@nfs_automount_list = internal global %struct.list_head { ptr @nfs_automount_list, ptr @nfs_automount_list }, align 4
@nfs_automount_task = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @nfs_automount_task, i64 4), ptr getelementptr (i8, ptr @nfs_automount_task, i64 4) }, ptr @nfs_expire_automounts }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 4
@nfs_mountpoint_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfs_setattr, ptr @nfs_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@nfs_referral_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfs_namespace_setattr, ptr @nfs_namespace_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@.str.1 = private unnamed_addr constant [42 x i8] c"NFS: Couldn't determine submount pathname\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@__kstrtab_nfs_do_submount = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_do_submount = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_do_submount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_do_submount to i32), ptr @__kstrtab_nfs_do_submount, ptr @__kstrtabns_nfs_do_submount }, section "___ksymtab_gpl+nfs_do_submount", align 4
@__kstrtab_nfs_submount = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_submount = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_submount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_submount to i32), ptr @__kstrtab_nfs_submount, ptr @__kstrtabns_nfs_submount }, section "___ksymtab_gpl+nfs_submount", align 4
@__param_str_nfs_mountpoint_expiry_timeout = internal constant [34 x i8] c"nfs.nfs_mountpoint_expiry_timeout\00", align 1
@param_ops_nfs_timeout = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_nfs_timeout, ptr @param_get_nfs_timeout, ptr null }, align 4
@__param_nfs_mountpoint_expiry_timeout = internal constant %struct.kernel_param { ptr @__param_str_nfs_mountpoint_expiry_timeout, ptr null, ptr @param_ops_nfs_timeout, i16 420, i8 -1, i8 0, %union.anon.33 { ptr @nfs_mountpoint_expiry_timeout } }, section "__param", align 4
@__UNIQUE_ID_nfs_mountpoint_expiry_timeouttype452 = internal constant [55 x i8] c"nfs.parmtype=nfs_mountpoint_expiry_timeout:nfs_timeout\00", section ".modinfo", align 1
@__UNIQUE_ID_nfs_mountpoint_expiry_timeout453 = internal constant [131 x i8] c"nfs.parm=nfs_mountpoint_expiry_timeout:Set the NFS automounted mountpoint timeout value (seconds).Values <= 0 turn expiration off.\00", section ".modinfo", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%li\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_nfs_mountpoint_expiry_timeout453, ptr @__UNIQUE_ID_nfs_mountpoint_expiry_timeouttype452, ptr @__ksymtab_nfs_do_submount, ptr @__ksymtab_nfs_path, ptr @__ksymtab_nfs_submount, ptr @__param_nfs_mountpoint_expiry_timeout], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs_path(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr i8, ptr %2, i32 %3
  %7 = getelementptr i8, ptr %6, i32 -1
  %8 = add i32 %3, -1
  %9 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  %10 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  br label %11

11:                                               ; preds = %61, %5
  store i8 0, ptr %7, align 1
  %12 = load volatile i32, ptr @rename_lock, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %15, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !9
  %16 = load volatile i32, ptr @rename_lock, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %12, %11 ], [ %16, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  tail call void @_raw_spin_lock(ptr noundef %9) #6
  %21 = load ptr, ptr %10, align 8
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %51, label %23

23:                                               ; preds = %35, %19
  %24 = phi ptr [ %46, %35 ], [ %10, %19 ]
  %25 = phi ptr [ %45, %35 ], [ %9, %19 ]
  %26 = phi i32 [ %33, %35 ], [ %8, %19 ]
  %27 = phi ptr [ %44, %35 ], [ %1, %19 ]
  %28 = phi ptr [ %38, %35 ], [ %6, %19 ]
  %29 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 4
  %30 = getelementptr inbounds %struct.anon, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = xor i32 %31, -1
  %33 = add i32 %26, %32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %111, label %35

35:                                               ; preds = %23
  %36 = getelementptr i8, ptr %28, i32 -1
  %37 = sub i32 0, %31
  %38 = getelementptr i8, ptr %36, i32 %37
  %39 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 4, i32 1
  %40 = load ptr, ptr %39, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %38, ptr align 1 %40, i32 %31, i1 false)
  %41 = getelementptr i8, ptr %38, i32 -1
  store i8 47, ptr %41, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %42 = load i16, ptr %25, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  %44 = load ptr, ptr %24, align 8
  %45 = getelementptr inbounds %struct.dentry, ptr %44, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %45) #6
  %46 = getelementptr inbounds %struct.dentry, ptr %44, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %44, %47
  br i1 %48, label %49, label %23

49:                                               ; preds = %35
  %50 = getelementptr i8, ptr %38, i32 -1
  br label %51

51:                                               ; preds = %49, %19
  %52 = phi ptr [ %7, %19 ], [ %50, %49 ]
  %53 = phi ptr [ %1, %19 ], [ %44, %49 ]
  %54 = phi i32 [ %8, %19 ], [ %33, %49 ]
  %55 = phi ptr [ %9, %19 ], [ %45, %49 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  %56 = load volatile i32, ptr @rename_lock, align 4
  %57 = icmp eq i32 %56, %20
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %59 = load i16, ptr %55, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %55, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  br label %61

61:                                               ; preds = %111, %58
  br label %11

62:                                               ; preds = %51
  %63 = and i32 %4, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %62
  %66 = load i8, ptr %52, align 1
  %67 = icmp eq i8 %66, 47
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  %69 = add i32 %54, -1
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %72 = load i16, ptr %55, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %55, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  br label %116

74:                                               ; preds = %68
  %75 = getelementptr i8, ptr %52, i32 -1
  store i8 47, ptr %75, align 1
  br label %76

76:                                               ; preds = %74, %65, %62
  %77 = phi ptr [ %75, %74 ], [ %52, %65 ], [ %52, %62 ]
  %78 = phi i32 [ %69, %74 ], [ %54, %65 ], [ %54, %62 ]
  store ptr %77, ptr %0, align 4
  %79 = getelementptr inbounds %struct.dentry, ptr %53, i32 0, i32 11
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %83 = load i16, ptr %55, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %55, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 103, i32 noundef 9, ptr noundef null) #6
  br label %116

85:                                               ; preds = %76
  %86 = tail call i32 @strlen(ptr noundef nonnull %80)
  %87 = load i8, ptr %77, align 1
  %88 = icmp eq i8 %87, 47
  %89 = icmp sgt i32 %86, 0
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %91, label %99

91:                                               ; preds = %97, %85
  %92 = phi i32 [ %93, %97 ], [ %86, %85 ]
  %93 = add nsw i32 %92, -1
  %94 = getelementptr i8, ptr %80, i32 %93
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 47
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = icmp ugt i32 %92, 1
  br i1 %98, label %91, label %99

99:                                               ; preds = %97, %91, %85
  %100 = phi i32 [ %86, %85 ], [ %92, %91 ], [ 0, %97 ]
  %101 = sub i32 %78, %100
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %104 = load i16, ptr %55, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr %55, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  br label %116

106:                                              ; preds = %99
  %107 = sub i32 0, %100
  %108 = getelementptr i8, ptr %77, i32 %107
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %108, ptr nonnull align 1 %80, i32 %100, i1 false)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %109 = load i16, ptr %55, align 4
  %110 = add i16 %109, 1
  store i16 %110, ptr %55, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  br label %116

111:                                              ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %112 = load i16, ptr %25, align 4
  %113 = add i16 %112, 1
  store i16 %113, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  %114 = load volatile i32, ptr @rename_lock, align 4
  %115 = icmp eq i32 %114, %20
  br i1 %115, label %116, label %61

116:                                              ; preds = %111, %106, %103, %82, %71
  %117 = phi ptr [ %108, %106 ], [ %77, %82 ], [ inttoptr (i32 -36 to ptr), %103 ], [ inttoptr (i32 -36 to ptr), %71 ], [ inttoptr (i32 -36 to ptr), %111 ]
  ret ptr %117
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs_d_automount(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 8
  %11 = load volatile i32, ptr @nfs_mountpoint_expiry_timeout, align 4
  %12 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %3, %13
  br i1 %14, label %87, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.vfsmount, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 32
  %21 = tail call ptr @fs_context_for_submount(ptr noundef %20, ptr noundef %3) #6
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %87, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.fs_context, ptr %21, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.nfs_fs_context, ptr %25, i32 0, i32 30
  %28 = getelementptr inbounds %struct.nfs_fs_context, ptr %25, i32 0, i32 30, i32 1
  store ptr %26, ptr %28, align 4
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  store ptr %31, ptr %27, align 4
  %32 = tail call ptr @nfs_alloc_fattr() #6
  %33 = getelementptr inbounds %struct.nfs_fs_context, ptr %25, i32 0, i32 30, i32 2
  store ptr %32, ptr %33, align 4
  %34 = icmp eq ptr %32, null
  br i1 %34, label %85, label %35

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.fs_context, ptr %21, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nfs_client, ptr %10, i32 0, i32 44
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store ptr %39, ptr %36, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = getelementptr inbounds %struct.nfs_fs_context, ptr %25, i32 0, i32 26
  %44 = getelementptr inbounds %struct.nfs_client, ptr %10, i32 0, i32 5
  %45 = getelementptr inbounds %struct.nfs_client, ptr %10, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %43, ptr align 4 %44, i32 %46, i1 false)
  %47 = load i32, ptr %45, align 4
  %48 = getelementptr inbounds %struct.nfs_fs_context, ptr %25, i32 0, i32 26, i32 1
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 17
  %50 = load i16, ptr %49, align 4
  %51 = zext i16 %50 to i32
  %52 = getelementptr inbounds %struct.nfs_fs_context, ptr %25, i32 0, i32 26, i32 4
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.nfs_client, ptr %10, i32 0, i32 12
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nfs_fs_context, ptr %25, i32 0, i32 19
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nfs_client, ptr %10, i32 0, i32 15
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr inbounds %struct.nfs_fs_context, ptr %25, i32 0, i32 20
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.nfs_client, ptr %10, i32 0, i32 14
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.nfs_fs_context, ptr %25, i32 0, i32 29
  store ptr %61, ptr %62, align 4
  %63 = load ptr, ptr %61, align 4
  tail call void @__module_get(ptr noundef %63) #6
  %64 = load ptr, ptr %53, align 4
  %65 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %64, i32 0, i32 7
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 %66(ptr noundef %21, ptr noundef %9) #6
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %42
  %70 = inttoptr i32 %67 to ptr
  br label %85

71:                                               ; preds = %42
  %72 = getelementptr inbounds %struct.fs_context, ptr %21, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.dentry, ptr %73, i32 0, i32 9
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.super_block, ptr %75, i32 0, i32 14
  tail call void @up_write(ptr noundef %76) #6
  %77 = tail call ptr @vfs_create_mount(ptr noundef %21) #6
  %78 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %85, label %79

79:                                               ; preds = %71
  %80 = tail call ptr @mntget(ptr noundef %77) #6
  %81 = icmp slt i32 %11, 1
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  tail call void @mnt_set_expiry(ptr noundef %77, ptr noundef nonnull @nfs_automount_list) #6
  %83 = load ptr, ptr @system_wq, align 4
  %84 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %83, ptr noundef nonnull @nfs_automount_task, i32 noundef %11) #6
  br label %85

85:                                               ; preds = %82, %79, %71, %69, %23
  %86 = phi ptr [ %70, %69 ], [ %77, %71 ], [ %77, %79 ], [ %77, %82 ], [ inttoptr (i32 -12 to ptr), %23 ]
  tail call void @put_fs_context(ptr noundef %21) #6
  br label %87

87:                                               ; preds = %85, %15, %1
  %88 = phi ptr [ %86, %85 ], [ inttoptr (i32 -116 to ptr), %1 ], [ %21, %15 ]
  ret ptr %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fs_context_for_submount(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fattr() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfs_create_mount(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_set_expiry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_fs_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_setattr(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_namespace_setattr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -288
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @nfs_setattr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %10, %9 ], [ -13, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_namespace_getattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 -288
  %11 = load i16, ptr %10, align 2
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = tail call i32 @nfs_getattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #6
  br label %16

15:                                               ; preds = %5
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %9, ptr noundef %2) #6
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_release_automount_timer() local_unnamed_addr #0 {
  %1 = load volatile ptr, ptr @nfs_automount_list, align 4
  %2 = icmp eq ptr %1, @nfs_automount_list
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call zeroext i1 @cancel_delayed_work(ptr noundef nonnull @nfs_automount_task) #6
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_do_submount(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 30
  %6 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 30, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 29
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs_subversion, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %11, i32 0, i32 52
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 27
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 30, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 17
  %22 = load i32, ptr %21, align 4
  %23 = tail call ptr %13(ptr noundef %16, ptr noundef %18, ptr noundef %20, i32 noundef %22) #6
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = ptrtoint ptr %23 to i32
  br label %58

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 28
  store ptr %23, ptr %28, align 4
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 1051840, i32 noundef 4096) #7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %58, label %32

32:                                               ; preds = %27
  store i8 1, ptr %4, align 4
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 2
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 30, i32 3
  store i32 %36, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %38 = call ptr @nfs_path(ptr noundef nonnull %2, ptr noundef %7, ptr noundef nonnull %30, i32 noundef 4096, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %42, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.1) #6
  br label %45

45:                                               ; preds = %44, %40
  %46 = ptrtoint ptr %38 to i32
  br label %56

47:                                               ; preds = %32
  %48 = getelementptr i8, ptr %30, i32 4096
  %49 = ptrtoint ptr %48 to i32
  %50 = ptrtoint ptr %38 to i32
  %51 = sub i32 %49, %50
  %52 = tail call i32 @vfs_parse_fs_string(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %38, i32 noundef %51) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = tail call i32 @vfs_get_tree(ptr noundef %0) #6
  br label %56

56:                                               ; preds = %54, %47, %45
  %57 = phi i32 [ %46, %45 ], [ %52, %47 ], [ %55, %54 ]
  tail call void @kfree(ptr noundef nonnull %30) #6
  br label %58

58:                                               ; preds = %56, %27, %25
  %59 = phi i32 [ %26, %25 ], [ %57, %56 ], [ -12, %27 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_parse_fs_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_get_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_submount(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 30, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @dget_parent(ptr noundef %6) #6
  %8 = load ptr, ptr %1, align 8
  %9 = getelementptr inbounds %struct.nfs_client, ptr %8, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 30, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %12(ptr noundef %14, ptr noundef %6, ptr noundef %16, ptr noundef %18) #6
  tail call void @dput(ptr noundef %7) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.rpc_clnt, ptr %23, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rpc_auth, ptr %25, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 17
  store i32 %27, ptr %28, align 4
  %29 = tail call i32 @nfs_do_submount(ptr noundef %0)
  br label %30

30:                                               ; preds = %21, %2
  %31 = phi i32 [ %29, %21 ], [ %19, %2 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_expire_automounts(ptr nocapture noundef readnone %0) #0 {
  %2 = load volatile i32, ptr @nfs_mountpoint_expiry_timeout, align 4
  tail call void @mark_mounts_for_expiry(ptr noundef nonnull @nfs_automount_list) #6
  %3 = load volatile ptr, ptr @nfs_automount_list, align 4
  %4 = icmp ne ptr %3, @nfs_automount_list
  %5 = icmp sgt i32 %2, 0
  %6 = select i1 %4, i1 %5, i1 false
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr @system_wq, align 4
  %9 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %8, ptr noundef nonnull @nfs_automount_task, i32 noundef %2) #6
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_mounts_for_expiry(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @param_set_nfs_timeout(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !18
  %4 = icmp eq ptr %0, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %2
  %6 = call i32 @_kstrtol(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %3) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = load i32, ptr %3, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = icmp ugt i32 %9, 21474835
  %13 = mul i32 %9, 100
  %14 = select i1 %12, i32 2147483647, i32 %13
  store i32 %14, ptr %3, align 4
  %15 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  store i32 %14, ptr %16, align 4
  %17 = load volatile ptr, ptr @nfs_automount_list, align 4
  %18 = icmp eq ptr %17, @nfs_automount_list
  br i1 %18, label %27, label %19

19:                                               ; preds = %11
  %20 = load ptr, ptr @system_wq, align 4
  %21 = load i32, ptr %3, align 4
  %22 = call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %20, ptr noundef nonnull @nfs_automount_task, i32 noundef %21) #6
  br label %27

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  store i32 -100, ptr %25, align 4
  %26 = call zeroext i1 @cancel_delayed_work(ptr noundef nonnull @nfs_automount_task) #6
  br label %27

27:                                               ; preds = %23, %19, %11, %5, %2
  %28 = phi i32 [ -22, %2 ], [ -22, %5 ], [ 0, %11 ], [ 0, %19 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @param_get_nfs_timeout(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = icmp ugt i32 %5, 2147483547
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = add nuw nsw i32 %5, 99
  %11 = udiv i32 %10, 100
  br label %12

12:                                               ; preds = %9, %7, %2
  %13 = phi i32 [ %11, %9 ], [ 21474836, %7 ], [ -1, %2 ]
  %14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %0, i32 noundef 4096, ptr noundef nonnull @.str.3, i32 noundef %13) #6
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2149402875}
!9 = !{i64 2149402717}
!10 = !{i64 2149403019}
!11 = !{i64 2149052231}
!12 = !{i64 2148933876}
!13 = !{i64 2148929700}
!14 = !{i64 2148929775, i64 2148929802, i64 2148929849, i64 2148929871, i64 2148929899, i64 2148929919}
!15 = !{i64 2148956879}
!16 = !{i64 2149389452}
!17 = !{i64 2149052448}
!18 = !{!"auto-init"}
