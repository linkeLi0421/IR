; ModuleID = '/llk/IR/fs/nfs/fs_context.c_pt.bc'
source_filename = "../fs/nfs/fs_context.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_fs_type:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_fs_type\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_fs_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_fs_type:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_fs_type\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_fs_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.constant_table = type { ptr, i32 }
%struct.nfs_fs_context = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_auth_info, i32, ptr, i32, i32, ptr, i16, i16, i8, %struct.anon.156, %struct.anon.158, ptr, ptr, ptr, %struct.nfs_clone_mount }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.anon.156 = type { %union.anon.157, i32, ptr, i32, i32, i16 }
%union.anon.157 = type { %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.134 }
%union.anon.134 = type { ptr, [124 x i8] }
%struct.anon.158 = type { %union.anon.159, i32, ptr, ptr, i32, i16, i16, i16, i16 }
%union.anon.159 = type { %struct.__kernel_sockaddr_storage }
%struct.nfs_clone_mount = type { ptr, ptr, ptr, i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.p_log = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.154, %struct.list_head, %struct.list_head, %union.anon.155 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.1, ptr }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.152 }
%union.anon.152 = type { i64 }
%union.anon.154 = type { %struct.list_head }
%union.anon.155 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.16 }
%union.anon.16 = type { %struct.raw_spinlock }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.rb_root = type { ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.139, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.139 = type { %struct.work_struct }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.fs_parse_result = type { i8, %union.anon.82 }
%union.anon.82 = type { i64 }
%struct.fs_parameter = type { ptr, i8, %union.anon, i32, i32 }
%union.anon = type { ptr }
%struct.nfs_mount_data = type { i32, i32, %struct.nfs2_fh, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.sockaddr_in, [256 x i8], i32, i32, %struct.nfs3_fh, i32, [257 x i8] }
%struct.nfs2_fh = type { [32 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.nfs3_fh = type { i16, [64 x i8] }
%struct.nfs4_mount_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_string, %struct.nfs_string, %struct.nfs_string, i32, ptr, i32, i32, ptr }
%struct.nfs_string = type { i32, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.66 }
%union.anon.66 = type { [4 x i32] }
%struct.nfs_subversion = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@nfs_fs_parameters = internal constant [60 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.59, ptr null, i8 0, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.60, ptr @fs_param_is_u32, i8 1, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.61, ptr @fs_param_is_u32, i8 2, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.62, ptr null, i8 3, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.63, ptr @fs_param_is_u32, i8 4, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.64, ptr @fs_param_is_u32, i8 5, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.65, ptr @fs_param_is_u32, i8 6, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.66, ptr @fs_param_is_string, i8 7, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.67, ptr null, i8 8, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.68, ptr @fs_param_is_u32, i8 9, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.69, ptr @fs_param_is_string, i8 10, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.70, ptr null, i8 11, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.71, ptr null, i8 12, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.72, ptr null, i8 14, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.72, ptr @fs_param_is_string, i8 13, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.73, ptr null, i8 15, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.74, ptr null, i8 16, i16 10, ptr null }, %struct.fs_parameter_spec { ptr @.str.75, ptr @fs_param_is_enum, i8 17, i16 0, ptr @nfs_param_enums_local_lock }, %struct.fs_parameter_spec { ptr @.str.76, ptr null, i8 18, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.77, ptr @fs_param_is_enum, i8 19, i16 0, ptr @nfs_param_enums_lookupcache }, %struct.fs_parameter_spec { ptr @.str.78, ptr null, i8 20, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.79, ptr @fs_param_is_u32, i8 21, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.80, ptr @fs_param_is_string, i8 22, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.81, ptr @fs_param_is_string, i8 23, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.82, ptr @fs_param_is_u32, i8 24, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.83, ptr @fs_param_is_string, i8 25, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.84, ptr @fs_param_is_u32, i8 26, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.85, ptr @fs_param_is_u32, i8 27, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.86, ptr @fs_param_is_u32, i8 28, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.87, ptr @fs_param_is_u32, i8 29, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.88, ptr @fs_param_is_string, i8 50, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.89, ptr @fs_param_is_u32, i8 30, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.90, ptr null, i8 31, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.91, ptr @fs_param_is_string, i8 32, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.92, ptr null, i8 33, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.29, ptr null, i8 34, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.93, ptr null, i8 35, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.94, ptr @fs_param_is_u32, i8 36, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.95, ptr @fs_param_is_string, i8 37, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.96, ptr @fs_param_is_u32, i8 38, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.97, ptr @fs_param_is_string, i8 39, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.98, ptr null, i8 40, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.99, ptr null, i8 41, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.100, ptr null, i8 42, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.101, ptr null, i8 43, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.102, ptr null, i8 44, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.103, ptr @fs_param_is_string, i8 45, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.31, ptr null, i8 46, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.104, ptr @fs_param_is_u32, i8 47, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.33, ptr null, i8 48, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.105, ptr null, i8 49, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.106, ptr null, i8 49, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.107, ptr null, i8 49, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.108, ptr null, i8 49, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.109, ptr null, i8 49, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.110, ptr null, i8 49, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.111, ptr @fs_param_is_string, i8 50, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.112, ptr @fs_param_is_enum, i8 52, i16 0, ptr @nfs_param_enums_write }, %struct.fs_parameter_spec { ptr @.str.113, ptr @fs_param_is_u32, i8 51, i16 0, ptr null }, %struct.fs_parameter_spec zeroinitializer], align 4
@nfs_fs_type = dso_local global %struct.file_system_type { ptr @.str, i32 32770, ptr @nfs_init_fs_context, ptr @nfs_fs_parameters, ptr null, ptr @nfs_kill_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@__UNIQUE_ID_alias448 = internal constant [17 x i8] c"nfs.alias=fs-nfs\00", section ".modinfo", align 1
@__kstrtab_nfs_fs_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_fs_type = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_fs_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_fs_type to i32), ptr @__kstrtab_nfs_fs_type, ptr @__kstrtabns_nfs_fs_type }, section "___ksymtab_gpl+nfs_fs_type", align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"nfs4\00", align 1
@nfs4_fs_type = dso_local global %struct.file_system_type { ptr @.str.1, i32 32770, ptr @nfs_init_fs_context, ptr @nfs_fs_parameters, ptr null, ptr @nfs_kill_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@__UNIQUE_ID_alias449 = internal constant [18 x i8] c"nfs.alias=fs-nfs4\00", section ".modinfo", align 1
@__UNIQUE_ID_alias450 = internal constant [15 x i8] c"nfs.alias=nfs4\00", section ".modinfo", align 1
@__kstrtab_nfs4_fs_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_fs_type = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_fs_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_fs_type to i32), ptr @__kstrtab_nfs4_fs_type, ptr @__kstrtabns_nfs4_fs_type }, section "___ksymtab_gpl+nfs4_fs_type", align 4
@nfs_fs_context_ops = internal constant %struct.fs_context_operations { ptr @nfs_fs_context_free, ptr @nfs_fs_context_dup, ptr @nfs_fs_context_parse_param, ptr @nfs_fs_context_parse_monolithic, ptr @nfs_get_tree, ptr @nfs_reconfigure }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"NFS: Multiple sources not supported\00", align 1
@nfs_xprt_protocol_tokens = internal constant [7 x %struct.constant_table] [%struct.constant_table { ptr @.str.29, i32 0 }, %struct.constant_table { ptr @.str.30, i32 1 }, %struct.constant_table { ptr @.str.31, i32 2 }, %struct.constant_table { ptr @.str.32, i32 3 }, %struct.constant_table { ptr @.str.33, i32 4 }, %struct.constant_table { ptr @.str.34, i32 5 }, %struct.constant_table zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"NFS: Bad mount option value specified\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"NFS: Bad IP address specified\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"NFS: Value for '%s' out of range\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"NFS: Unrecognized transport protocol\00", align 1
@nfs_vers_tokens = internal constant [7 x %struct.constant_table] [%struct.constant_table { ptr @.str.8, i32 0 }, %struct.constant_table { ptr @.str.9, i32 1 }, %struct.constant_table { ptr @.str.10, i32 2 }, %struct.constant_table { ptr @.str.11, i32 3 }, %struct.constant_table { ptr @.str.12, i32 4 }, %struct.constant_table { ptr @.str.13, i32 5 }, %struct.constant_table zeroinitializer], align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"NFS: Unsupported NFS version\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"4.0\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"4.1\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"4.2\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c":\00", align 1
@nfs_secflavor_tokens = internal constant [13 x %struct.constant_table] [%struct.constant_table { ptr @.str.16, i32 0 }, %struct.constant_table { ptr @.str.17, i32 1 }, %struct.constant_table { ptr @.str.18, i32 2 }, %struct.constant_table { ptr @.str.19, i32 3 }, %struct.constant_table { ptr @.str.20, i32 4 }, %struct.constant_table { ptr @.str.21, i32 5 }, %struct.constant_table { ptr @.str.22, i32 6 }, %struct.constant_table { ptr @.str.23, i32 6 }, %struct.constant_table { ptr @.str.24, i32 7 }, %struct.constant_table { ptr @.str.25, i32 8 }, %struct.constant_table { ptr @.str.26, i32 9 }, %struct.constant_table { ptr @.str.27, i32 10 }, %struct.constant_table zeroinitializer], align 4
@.str.15 = private unnamed_addr constant [34 x i8] c"NFS: sec=%s option not recognized\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"krb5\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"krb5i\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"krb5p\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"lkey\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"lkeyi\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"lkeyp\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"spkm3\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"spkm3i\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"spkm3p\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"NFS: too many sec= flavors\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"rdma\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"rdma6\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"tcp6\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"udp6\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"NFS: Unsupported monolithic data version\00", align 1
@.str.36 = private unnamed_addr constant [46 x i8] c"NFS: mount program didn't pass any mount data\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"NFS: nfs_mount_data version does not support v3\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"NFS: nfs_mount_data version supports only AUTH_SYS\00", align 1
@.str.39 = private unnamed_addr constant [46 x i8] c"NFS: mount program didn't pass remote address\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"NFS: invalid root filehandle\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"NFS: invalid binary mount data\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"NFS: Unsupported transport protocol udp\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"NFS4: mount program didn't pass any mount data\00", align 1
@.str.44 = private unnamed_addr constant [45 x i8] c"NFS4: Invalid number of RPC auth flavours %d\00", align 1
@.str.45 = private unnamed_addr constant [47 x i8] c"NFS4: mount program didn't pass remote address\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"NFS: Device name not specified\00", align 1
@.str.50 = private unnamed_addr constant [60 x i8] c"NFS: Mount server address does not match mountproto= option\00", align 1
@.str.51 = private unnamed_addr constant [49 x i8] c"NFS: Server address does not match proto= option\00", align 1
@.str.52 = private unnamed_addr constant [59 x i8] c"NFS: Mount option vers=%u does not support minorversion=%u\00", align 1
@.str.53 = private unnamed_addr constant [52 x i8] c"NFS: 'Migration' not supported for this NFS version\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"NFS: Version unavailable\00", align 1
@.str.55 = private unnamed_addr constant [41 x i8] c"NFS: device name not in host:path format\00", align 1
@.str.56 = private unnamed_addr constant [44 x i8] c"NFS: not enough memory to parse device name\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"NFS: server hostname too long\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"NFS: export pathname too long\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"ac\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"acdirmax\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"acdirmin\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"acl\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"acregmax\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"acregmin\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"actimeo\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"bg\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"bsize\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"clientaddr\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"cto\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"fg\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"fsc\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"intr\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"local_lock\00", align 1
@nfs_param_enums_local_lock = internal constant [5 x %struct.constant_table] [%struct.constant_table { ptr @.str.114, i32 0 }, %struct.constant_table { ptr @.str.115, i32 1 }, %struct.constant_table { ptr @.str.90, i32 3 }, %struct.constant_table { ptr @.str.22, i32 2 }, %struct.constant_table zeroinitializer], align 4
@.str.76 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"lookupcache\00", align 1
@nfs_param_enums_lookupcache = internal constant [5 x %struct.constant_table] [%struct.constant_table { ptr @.str.114, i32 0 }, %struct.constant_table { ptr @.str.22, i32 1 }, %struct.constant_table { ptr @.str.116, i32 2 }, %struct.constant_table { ptr @.str.117, i32 2 }, %struct.constant_table zeroinitializer], align 4
@.str.78 = private unnamed_addr constant [10 x i8] c"migration\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"minorversion\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"mountaddr\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"mounthost\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"mountport\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"mountproto\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"mountvers\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"namlen\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"nconnect\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"max_connect\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"nfsvers\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"posix\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"rdirplus\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"resvport\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"retrans\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"retry\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"rsize\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"sharecache\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"sloppy\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"softerr\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"softreval\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"timeo\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"v2\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"v3\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"v4\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"v4.0\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"v4.1\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"v4.2\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"vers\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@nfs_param_enums_write = internal constant [4 x %struct.constant_table] [%struct.constant_table { ptr @.str.118, i32 0 }, %struct.constant_table { ptr @.str.119, i32 1 }, %struct.constant_table { ptr @.str.120, i32 2 }, %struct.constant_table zeroinitializer], align 4
@.str.113 = private unnamed_addr constant [6 x i8] c"wsize\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"flock\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"positive\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"lazy\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"eager\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias448, ptr @__UNIQUE_ID_alias449, ptr @__UNIQUE_ID_alias450, ptr @__ksymtab_nfs4_fs_type, ptr @__ksymtab_nfs_fs_type], section "llvm.metadata"
@switch.table.nfs_parse_security_flavors = private unnamed_addr constant [11 x i32] [i32 390003, i32 390004, i32 390005, i32 390006, i32 390007, i32 390008, i32 0, i32 390009, i32 390010, i32 390011, i32 1], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_init_fs_context(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 460) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %117, label %5, !prof !8

5:                                                ; preds = %1
  %6 = tail call ptr @nfs_alloc_fhandle() #10
  %7 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 27
  store ptr %6, ptr %7, align 8
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #10
  br label %117

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 22
  store i16 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 23
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 25, i32 4
  store i32 -1, ptr %13, align 8
  %14 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %100, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 27
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nfs_client, ptr %22, i32 0, i32 44
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nfs_server, ptr %21, i32 0, i32 8
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 4
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nfs_server, ptr %21, i32 0, i32 11
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 5
  store i32 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.nfs_server, ptr %21, i32 0, i32 13
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 6
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.nfs_server, ptr %21, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.rpc_clnt, ptr %35, i32 0, i32 16
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.rpc_timeout, ptr %37, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 8
  store i32 %39, ptr %40, align 4
  %41 = load ptr, ptr %34, align 4
  %42 = getelementptr inbounds %struct.rpc_clnt, ptr %41, i32 0, i32 11
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.rpc_auth, ptr %43, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 17
  store i32 %45, ptr %46, align 8
  %47 = getelementptr inbounds %struct.nfs_server, ptr %21, i32 0, i32 22
  %48 = load i32, ptr %47, align 8
  %49 = udiv i32 %48, 100
  %50 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 9
  store i32 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.nfs_server, ptr %21, i32 0, i32 23
  %52 = load i32, ptr %51, align 4
  %53 = udiv i32 %52, 100
  %54 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 10
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.nfs_server, ptr %21, i32 0, i32 24
  %56 = load i32, ptr %55, align 8
  %57 = udiv i32 %56, 100
  %58 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 11
  store i32 %57, ptr %58, align 8
  %59 = getelementptr inbounds %struct.nfs_server, ptr %21, i32 0, i32 25
  %60 = load i32, ptr %59, align 4
  %61 = udiv i32 %60, 100
  %62 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 12
  store i32 %61, ptr %62, align 4
  %63 = load ptr, ptr %34, align 4
  %64 = getelementptr inbounds %struct.rpc_clnt, ptr %63, i32 0, i32 16
  %65 = load ptr, ptr %64, align 4
  %66 = load i32, ptr %65, align 4
  %67 = mul i32 %66, 10
  %68 = udiv i32 %67, 100
  %69 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 7
  store i32 %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.nfs_server, ptr %21, i32 0, i32 17
  %71 = load i16, ptr %70, align 4
  %72 = zext i16 %71 to i32
  %73 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26
  %74 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 4
  store i32 %72, ptr %74, align 4
  %75 = load ptr, ptr %21, align 8
  %76 = getelementptr inbounds %struct.nfs_client, ptr %75, i32 0, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 1
  store i32 %77, ptr %78, align 8
  %79 = load ptr, ptr %21, align 8
  %80 = getelementptr inbounds %struct.nfs_client, ptr %79, i32 0, i32 12
  %81 = load ptr, ptr %80, align 4
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 19
  store i32 %82, ptr %83, align 8
  %84 = load ptr, ptr %21, align 8
  %85 = getelementptr inbounds %struct.nfs_client, ptr %84, i32 0, i32 15
  %86 = load i32, ptr %85, align 8
  %87 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 20
  store i32 %86, ptr %87, align 4
  %88 = load ptr, ptr %21, align 8
  %89 = getelementptr inbounds %struct.nfs_client, ptr %88, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %73, ptr align 4 %89, i32 %77, i1 false)
  %90 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 7
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %24
  br i1 %92, label %94, label %93

93:                                               ; preds = %17
  store ptr %24, ptr %90, align 4
  br label %94

94:                                               ; preds = %93, %17
  %95 = load ptr, ptr %21, align 8
  %96 = getelementptr inbounds %struct.nfs_client, ptr %95, i32 0, i32 14
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 29
  store ptr %97, ptr %98, align 8
  %99 = load ptr, ptr %97, align 4
  tail call void @__module_get(ptr noundef %99) #10
  br label %115

100:                                              ; preds = %10
  %101 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 7
  store i32 -1, ptr %101, align 8
  %102 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 8
  store i32 -1, ptr %102, align 4
  %103 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 9
  store i32 3, ptr %103, align 8
  %104 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 10
  store i32 60, ptr %104, align 4
  %105 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 11
  store i32 30, ptr %105, align 8
  %106 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 12
  store i32 60, ptr %106, align 4
  %107 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 4
  store i32 -1, ptr %107, align 4
  %108 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 5
  store i16 6, ptr %108, align 8
  %109 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 17
  store i32 8, ptr %109, align 8
  %110 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 20
  store i32 0, ptr %110, align 4
  %111 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 2
  store i8 1, ptr %111, align 2
  %112 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 15
  %113 = load i32, ptr %112, align 4
  %114 = or i32 %113, 8
  store i32 %114, ptr %112, align 4
  br label %115

115:                                              ; preds = %100, %94
  %116 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  store ptr %3, ptr %116, align 4
  store ptr @nfs_fs_context_ops, ptr %0, align 4
  br label %117

117:                                              ; preds = %115, %9, %1
  %118 = phi i32 [ -12, %9 ], [ 0, %115 ], [ -12, %1 ]
  ret i32 %118
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_kill_super(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fhandle() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_fs_context_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 28
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @nfs_free_server(ptr noundef nonnull %7) #10
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 29
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @put_nfs_version(ptr noundef nonnull %12) #10
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 18
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #10
  %18 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 25, i32 2
  %19 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %19) #10
  %20 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 3
  %21 = load ptr, ptr %20, align 4
  tail call void @kfree(ptr noundef %21) #10
  %22 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 2
  %23 = load ptr, ptr %22, align 4
  tail call void @kfree(ptr noundef %23) #10
  %24 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 21
  %25 = load ptr, ptr %24, align 4
  tail call void @kfree(ptr noundef %25) #10
  %26 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 27
  %27 = load ptr, ptr %26, align 4
  tail call void @kfree(ptr noundef %27) #10
  %28 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 30, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void @kfree(ptr noundef %29) #10
  tail call void @kfree(ptr noundef nonnull %3) #10
  br label %30

30:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_fs_context_dup(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @kmemdup(ptr noundef %4, i32 noundef 460, i32 noundef 3264) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @nfs_alloc_fhandle() #10
  %9 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 27
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #10
  br label %30

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  %15 = load i16, ptr %14, align 2
  store i16 %15, ptr %8, align 2
  %16 = getelementptr inbounds %struct.nfs_fh, ptr %8, i32 0, i32 1
  %17 = getelementptr inbounds %struct.nfs_fh, ptr %14, i32 0, i32 1
  %18 = load i16, ptr %14, align 2
  %19 = zext i16 %18 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %16, ptr align 2 %17, i32 %19, i1 false) #10
  %20 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 29
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 4
  tail call void @__module_get(ptr noundef %22) #10
  %23 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 18
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 25, i32 2
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 26, i32 3
  store ptr null, ptr %25, align 4
  %26 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 26, i32 2
  store ptr null, ptr %26, align 4
  %27 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 21
  store ptr null, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 30, i32 2
  store ptr null, ptr %28, align 4
  %29 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  store ptr %5, ptr %29, align 4
  br label %30

30:                                               ; preds = %12, %11, %2
  %31 = phi i32 [ 0, %12 ], [ -12, %11 ], [ -12, %2 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_fs_context_parse_param(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.fs_parse_result, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9
  %7 = call i32 @__fs_parse(ptr noundef %6, ptr noundef nonnull @nfs_fs_parameters, ptr noundef %1, ptr noundef nonnull %3) #10
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 3
  %11 = load i8, ptr %10, align 1, !range !10
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 %7, i32 1
  br label %429

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 24
  store i8 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %14
  switch i32 %7, label %407 [
    i32 45, label %21
    i32 42, label %33
    i32 43, label %38
    i32 15, label %43
    i32 44, label %47
    i32 31, label %56
    i32 11, label %65
    i32 0, label %74
    i32 18, label %83
    i32 48, label %92
    i32 46, label %97
    i32 34, label %97
    i32 3, label %107
    i32 33, label %116
    i32 40, label %125
    i32 35, label %134
    i32 14, label %143
    i32 13, label %153
    i32 20, label %161
    i32 30, label %170
    i32 38, label %176
    i32 51, label %180
    i32 9, label %184
    i32 47, label %188
    i32 36, label %194
    i32 5, label %200
    i32 4, label %204
    i32 2, label %208
    i32 1, label %212
    i32 6, label %216
    i32 27, label %223
    i32 24, label %227
    i32 26, label %233
    i32 21, label %240
    i32 49, label %246
    i32 50, label %251
    i32 39, label %256
    i32 32, label %259
    i32 25, label %291
    i32 7, label %304
    i32 10, label %316
    i32 23, label %321
    i32 22, label %326
    i32 28, label %338
    i32 29, label %346
    i32 19, label %354
    i32 17, label %370
    i32 52, label %389
    i32 41, label %405
  ]

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %429, label %29

29:                                               ; preds = %25
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %27, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.2) #10
  br label %429

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  store ptr %32, ptr %22, align 4
  store ptr null, ptr %31, align 4
  br label %407

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, -4194306
  %37 = or i32 %36, 1
  store i32 %37, ptr %34, align 4
  br label %407

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, -12582914
  %42 = or i32 %41, 12582912
  store i32 %42, ptr %39, align 4
  br label %407

43:                                               ; preds = %20
  %44 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, -12582914
  store i32 %46, ptr %44, align 4
  br label %407

47:                                               ; preds = %20
  %48 = load i8, ptr %3, align 8, !range !10
  %49 = icmp eq i8 %48, 0
  %50 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  br i1 %49, label %54, label %52

52:                                               ; preds = %47
  %53 = and i32 %51, -8388609
  store i32 %53, ptr %50, align 4
  br label %407

54:                                               ; preds = %47
  %55 = and i32 %51, 8388608
  store i32 %55, ptr %50, align 4
  br label %407

56:                                               ; preds = %20
  %57 = load i8, ptr %3, align 8, !range !10
  %58 = icmp eq i8 %57, 0
  %59 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  br i1 %58, label %63, label %61

61:                                               ; preds = %56
  %62 = and i32 %60, -9
  store i32 %62, ptr %59, align 4
  br label %407

63:                                               ; preds = %56
  %64 = or i32 %60, 8
  store i32 %64, ptr %59, align 4
  br label %407

65:                                               ; preds = %20
  %66 = load i8, ptr %3, align 8, !range !10
  %67 = icmp eq i8 %66, 0
  %68 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  br i1 %67, label %72, label %70

70:                                               ; preds = %65
  %71 = or i32 %69, 16
  store i32 %71, ptr %68, align 4
  br label %407

72:                                               ; preds = %65
  %73 = and i32 %69, -17
  store i32 %73, ptr %68, align 4
  br label %407

74:                                               ; preds = %20
  %75 = load i8, ptr %3, align 8, !range !10
  %76 = icmp eq i8 %75, 0
  %77 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %78 = load i32, ptr %77, align 4
  br i1 %76, label %81, label %79

79:                                               ; preds = %74
  %80 = or i32 %78, 32
  store i32 %80, ptr %77, align 4
  br label %407

81:                                               ; preds = %74
  %82 = and i32 %78, -33
  store i32 %82, ptr %77, align 4
  br label %407

83:                                               ; preds = %20
  %84 = load i8, ptr %3, align 8, !range !10
  %85 = icmp eq i8 %84, 0
  %86 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %87 = load i32, ptr %86, align 4
  br i1 %85, label %90, label %88

88:                                               ; preds = %83
  %89 = or i32 %87, 3146240
  store i32 %89, ptr %86, align 4
  br label %407

90:                                               ; preds = %83
  %91 = and i32 %87, -3146241
  store i32 %91, ptr %86, align 4
  br label %407

92:                                               ; preds = %20
  %93 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, -65
  store i32 %95, ptr %93, align 4
  %96 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 26, i32 5
  store i16 17, ptr %96, align 4
  br label %407

97:                                               ; preds = %20, %20
  %98 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %99 = load i32, ptr %98, align 4
  %100 = or i32 %99, 64
  store i32 %100, ptr %98, align 4
  %101 = load ptr, ptr %1, align 4
  %102 = call i32 @xprt_find_transport_ident(ptr noundef %101) #10
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %424, label %104

104:                                              ; preds = %97
  %105 = trunc i32 %102 to i16
  %106 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 26, i32 5
  store i16 %105, ptr %106, align 4
  br label %407

107:                                              ; preds = %20
  %108 = load i8, ptr %3, align 8, !range !10
  %109 = icmp eq i8 %108, 0
  %110 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %111 = load i32, ptr %110, align 4
  br i1 %109, label %114, label %112

112:                                              ; preds = %107
  %113 = or i32 %111, 2048
  store i32 %113, ptr %110, align 4
  br label %407

114:                                              ; preds = %107
  %115 = and i32 %111, -2049
  store i32 %115, ptr %110, align 4
  br label %407

116:                                              ; preds = %20
  %117 = load i8, ptr %3, align 8, !range !10
  %118 = icmp eq i8 %117, 0
  %119 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %120 = load i32, ptr %119, align 4
  br i1 %118, label %123, label %121

121:                                              ; preds = %116
  %122 = or i32 %120, 16384
  store i32 %122, ptr %119, align 4
  br label %407

123:                                              ; preds = %116
  %124 = and i32 %120, -16385
  store i32 %124, ptr %119, align 4
  br label %407

125:                                              ; preds = %20
  %126 = load i8, ptr %3, align 8, !range !10
  %127 = icmp eq i8 %126, 0
  %128 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %129 = load i32, ptr %128, align 4
  br i1 %127, label %132, label %130

130:                                              ; preds = %125
  %131 = or i32 %129, 32768
  store i32 %131, ptr %128, align 4
  br label %407

132:                                              ; preds = %125
  %133 = and i32 %129, -32769
  store i32 %133, ptr %128, align 4
  br label %407

134:                                              ; preds = %20
  %135 = load i8, ptr %3, align 8, !range !10
  %136 = icmp eq i8 %135, 0
  %137 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %138 = load i32, ptr %137, align 4
  br i1 %136, label %141, label %139

139:                                              ; preds = %134
  %140 = or i32 %138, 262144
  store i32 %140, ptr %137, align 4
  br label %407

141:                                              ; preds = %134
  %142 = and i32 %138, -262145
  store i32 %142, ptr %137, align 4
  br label %407

143:                                              ; preds = %20
  %144 = load i8, ptr %3, align 8, !range !10
  %145 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 14
  %146 = load i32, ptr %145, align 4
  %147 = and i32 %146, -2
  %148 = xor i8 %144, 1
  %149 = zext i8 %148 to i32
  %150 = or i32 %147, %149
  store i32 %150, ptr %145, align 4
  %151 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 21
  %152 = load ptr, ptr %151, align 4
  call void @kfree(ptr noundef %152) #10
  store ptr null, ptr %151, align 4
  br label %407

153:                                              ; preds = %20
  %154 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 14
  %155 = load i32, ptr %154, align 4
  %156 = or i32 %155, 1
  store i32 %156, ptr %154, align 4
  %157 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 21
  %158 = load ptr, ptr %157, align 4
  call void @kfree(ptr noundef %158) #10
  %159 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %160 = load ptr, ptr %159, align 4
  store ptr %160, ptr %157, align 4
  store ptr null, ptr %159, align 4
  br label %407

161:                                              ; preds = %20
  %162 = load i8, ptr %3, align 8, !range !10
  %163 = icmp eq i8 %162, 0
  %164 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 14
  %165 = load i32, ptr %164, align 4
  br i1 %163, label %168, label %166

166:                                              ; preds = %161
  %167 = and i32 %165, -3
  store i32 %167, ptr %164, align 4
  br label %407

168:                                              ; preds = %161
  %169 = or i32 %165, 2
  store i32 %169, ptr %164, align 4
  br label %407

170:                                              ; preds = %20
  %171 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %172 = load i32, ptr %171, align 8
  %173 = icmp ugt i32 %172, 65535
  br i1 %173, label %418, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 26, i32 4
  store i32 %172, ptr %175, align 4
  br label %407

176:                                              ; preds = %20
  %177 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %178 = load i32, ptr %177, align 8
  %179 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 5
  store i32 %178, ptr %179, align 4
  br label %407

180:                                              ; preds = %20
  %181 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %182 = load i32, ptr %181, align 8
  %183 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 6
  store i32 %182, ptr %183, align 4
  br label %407

184:                                              ; preds = %20
  %185 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %186 = load i32, ptr %185, align 8
  %187 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 15
  store i32 %186, ptr %187, align 4
  br label %407

188:                                              ; preds = %20
  %189 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %190 = load i32, ptr %189, align 8
  %191 = icmp slt i32 %190, 1
  br i1 %191, label %418, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 7
  store i32 %190, ptr %193, align 4
  br label %407

194:                                              ; preds = %20
  %195 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %196 = load i32, ptr %195, align 8
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %418, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 8
  store i32 %196, ptr %199, align 4
  br label %407

200:                                              ; preds = %20
  %201 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %202 = load i32, ptr %201, align 8
  %203 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 9
  store i32 %202, ptr %203, align 4
  br label %407

204:                                              ; preds = %20
  %205 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %206 = load i32, ptr %205, align 8
  %207 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 10
  store i32 %206, ptr %207, align 4
  br label %407

208:                                              ; preds = %20
  %209 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %210 = load i32, ptr %209, align 8
  %211 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 11
  store i32 %210, ptr %211, align 4
  br label %407

212:                                              ; preds = %20
  %213 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %214 = load i32, ptr %213, align 8
  %215 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 12
  store i32 %214, ptr %215, align 4
  br label %407

216:                                              ; preds = %20
  %217 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %218 = load i32, ptr %217, align 8
  %219 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 9
  store i32 %218, ptr %219, align 4
  %220 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 10
  store i32 %218, ptr %220, align 4
  %221 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 11
  store i32 %218, ptr %221, align 4
  %222 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 12
  store i32 %218, ptr %222, align 4
  br label %407

223:                                              ; preds = %20
  %224 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %225 = load i32, ptr %224, align 8
  %226 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 13
  store i32 %225, ptr %226, align 4
  br label %407

227:                                              ; preds = %20
  %228 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %229 = load i32, ptr %228, align 8
  %230 = icmp ugt i32 %229, 65535
  br i1 %230, label %418, label %231

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 25, i32 4
  store i32 %229, ptr %232, align 4
  br label %407

233:                                              ; preds = %20
  %234 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %235 = load i32, ptr %234, align 8
  %236 = add i32 %235, -4
  %237 = icmp ult i32 %236, -3
  br i1 %237, label %418, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 25, i32 3
  store i32 %235, ptr %239, align 4
  br label %407

240:                                              ; preds = %20
  %241 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %242 = load i32, ptr %241, align 8
  %243 = icmp ugt i32 %242, 2
  br i1 %243, label %418, label %244

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 20
  store i32 %242, ptr %245, align 4
  br label %407

246:                                              ; preds = %20
  %247 = load ptr, ptr %1, align 4
  %248 = getelementptr i8, ptr %247, i32 1
  %249 = call fastcc i32 @nfs_parse_version_string(ptr noundef %0, ptr noundef %248)
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %429, label %407

251:                                              ; preds = %20
  %252 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %253 = load ptr, ptr %252, align 4
  %254 = call fastcc i32 @nfs_parse_version_string(ptr noundef %0, ptr noundef %253)
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %429, label %407

256:                                              ; preds = %20
  %257 = call fastcc i32 @nfs_parse_security_flavors(ptr noundef %0, ptr noundef %1)
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %429, label %407

259:                                              ; preds = %20
  %260 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %261 = load ptr, ptr %260, align 4
  %262 = call i32 @lookup_constant(ptr noundef nonnull @nfs_xprt_protocol_tokens, ptr noundef %261, i32 noundef -1) #10
  switch i32 %262, label %424 [
    i32 5, label %263
    i32 4, label %264
    i32 3, label %269
    i32 2, label %270
    i32 1, label %275
    i32 0, label %276
  ]

263:                                              ; preds = %259
  br label %264

264:                                              ; preds = %263, %259
  %265 = phi i16 [ 2, %259 ], [ 10, %263 ]
  %266 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %267 = load i32, ptr %266, align 4
  %268 = and i32 %267, -65
  store i32 %268, ptr %266, align 4
  br label %286

269:                                              ; preds = %259
  br label %270

270:                                              ; preds = %269, %259
  %271 = phi i16 [ 2, %259 ], [ 10, %269 ]
  %272 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %273 = load i32, ptr %272, align 4
  %274 = or i32 %273, 64
  store i32 %274, ptr %272, align 4
  br label %286

275:                                              ; preds = %259
  br label %276

276:                                              ; preds = %275, %259
  %277 = phi i16 [ 2, %259 ], [ 10, %275 ]
  %278 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %279 = load i32, ptr %278, align 4
  %280 = or i32 %279, 64
  store i32 %280, ptr %278, align 4
  %281 = load ptr, ptr %260, align 4
  %282 = call i32 @xprt_find_transport_ident(ptr noundef %281) #10
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %424, label %284

284:                                              ; preds = %276
  %285 = trunc i32 %282 to i16
  br label %286

286:                                              ; preds = %284, %270, %264
  %287 = phi i16 [ %285, %284 ], [ 6, %270 ], [ 17, %264 ]
  %288 = phi i16 [ %277, %284 ], [ %271, %270 ], [ %265, %264 ]
  %289 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 26, i32 5
  store i16 %287, ptr %289, align 4
  %290 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 22
  store i16 %288, ptr %290, align 4
  br label %407

291:                                              ; preds = %20
  %292 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %293 = load ptr, ptr %292, align 4
  %294 = call i32 @lookup_constant(ptr noundef nonnull @nfs_xprt_protocol_tokens, ptr noundef %293, i32 noundef -1) #10
  switch i32 %294, label %424 [
    i32 5, label %295
    i32 4, label %299
    i32 3, label %296
    i32 2, label %297
  ]

295:                                              ; preds = %291
  br label %299

296:                                              ; preds = %291
  br label %297

297:                                              ; preds = %296, %291
  %298 = phi i16 [ 2, %291 ], [ 10, %296 ]
  br label %299

299:                                              ; preds = %297, %295, %291
  %300 = phi i16 [ 6, %297 ], [ 17, %291 ], [ 17, %295 ]
  %301 = phi i16 [ %298, %297 ], [ 2, %291 ], [ 10, %295 ]
  %302 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 25, i32 5
  store i16 %300, ptr %302, align 4
  %303 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 23
  store i16 %301, ptr %303, align 2
  br label %407

304:                                              ; preds = %20
  %305 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 7
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %308 = load ptr, ptr %307, align 4
  %309 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 3
  %310 = load i32, ptr %309, align 4
  %311 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 26
  %312 = call i32 @rpc_pton(ptr noundef %306, ptr noundef %308, i32 noundef %310, ptr noundef %311, i32 noundef 128) #10
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %413, label %314

314:                                              ; preds = %304
  %315 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 26, i32 1
  store i32 %312, ptr %315, align 4
  br label %407

316:                                              ; preds = %20
  %317 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 18
  %318 = load ptr, ptr %317, align 4
  call void @kfree(ptr noundef %318) #10
  %319 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %320 = load ptr, ptr %319, align 4
  store ptr %320, ptr %317, align 4
  store ptr null, ptr %319, align 4
  br label %407

321:                                              ; preds = %20
  %322 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 25, i32 2
  %323 = load ptr, ptr %322, align 4
  call void @kfree(ptr noundef %323) #10
  %324 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %325 = load ptr, ptr %324, align 4
  store ptr %325, ptr %322, align 4
  store ptr null, ptr %324, align 4
  br label %407

326:                                              ; preds = %20
  %327 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 7
  %328 = load ptr, ptr %327, align 4
  %329 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %330 = load ptr, ptr %329, align 4
  %331 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 3
  %332 = load i32, ptr %331, align 4
  %333 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 25
  %334 = call i32 @rpc_pton(ptr noundef %328, ptr noundef %330, i32 noundef %332, ptr noundef %333, i32 noundef 128) #10
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %413, label %336

336:                                              ; preds = %326
  %337 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 25, i32 1
  store i32 %334, ptr %337, align 4
  br label %407

338:                                              ; preds = %20
  %339 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %340 = load i32, ptr %339, align 8
  %341 = add i32 %340, -17
  %342 = icmp ult i32 %341, -16
  br i1 %342, label %418, label %343

343:                                              ; preds = %338
  %344 = trunc i32 %340 to i16
  %345 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 26, i32 6
  store i16 %344, ptr %345, align 2
  br label %407

346:                                              ; preds = %20
  %347 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %348 = load i32, ptr %347, align 8
  %349 = add i32 %348, -17
  %350 = icmp ult i32 %349, -16
  br i1 %350, label %418, label %351

351:                                              ; preds = %346
  %352 = trunc i32 %348 to i16
  %353 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 26, i32 7
  store i16 %352, ptr %353, align 4
  br label %407

354:                                              ; preds = %20
  %355 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %356 = load i32, ptr %355, align 8
  switch i32 %356, label %408 [
    i32 0, label %357
    i32 2, label %361
    i32 1, label %366
  ]

357:                                              ; preds = %354
  %358 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %359 = load i32, ptr %358, align 4
  %360 = and i32 %359, -196609
  store i32 %360, ptr %358, align 4
  br label %407

361:                                              ; preds = %354
  %362 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %363 = load i32, ptr %362, align 4
  %364 = and i32 %363, -196609
  %365 = or i32 %364, 65536
  store i32 %365, ptr %362, align 4
  br label %407

366:                                              ; preds = %354
  %367 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %368 = load i32, ptr %367, align 4
  %369 = or i32 %368, 196608
  store i32 %369, ptr %367, align 4
  br label %407

370:                                              ; preds = %20
  %371 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %372 = load i32, ptr %371, align 8
  switch i32 %372, label %408 [
    i32 0, label %373
    i32 1, label %377
    i32 3, label %381
    i32 2, label %385
  ]

373:                                              ; preds = %370
  %374 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %375 = load i32, ptr %374, align 4
  %376 = or i32 %375, 3145728
  store i32 %376, ptr %374, align 4
  br label %407

377:                                              ; preds = %370
  %378 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %379 = load i32, ptr %378, align 4
  %380 = or i32 %379, 1048576
  store i32 %380, ptr %378, align 4
  br label %407

381:                                              ; preds = %370
  %382 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %383 = load i32, ptr %382, align 4
  %384 = or i32 %383, 2097152
  store i32 %384, ptr %382, align 4
  br label %407

385:                                              ; preds = %370
  %386 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %387 = load i32, ptr %386, align 4
  %388 = and i32 %387, -3145729
  store i32 %388, ptr %386, align 4
  br label %407

389:                                              ; preds = %20
  %390 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %391 = load i32, ptr %390, align 8
  switch i32 %391, label %408 [
    i32 0, label %392
    i32 1, label %396
    i32 2, label %401
  ]

392:                                              ; preds = %389
  %393 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %394 = load i32, ptr %393, align 4
  %395 = and i32 %394, -50331649
  store i32 %395, ptr %393, align 4
  br label %407

396:                                              ; preds = %389
  %397 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %398 = load i32, ptr %397, align 4
  %399 = and i32 %398, -50331649
  %400 = or i32 %399, 16777216
  store i32 %400, ptr %397, align 4
  br label %407

401:                                              ; preds = %389
  %402 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 4
  %403 = load i32, ptr %402, align 4
  %404 = or i32 %403, 50331648
  store i32 %404, ptr %402, align 4
  br label %407

405:                                              ; preds = %20
  %406 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 3
  store i8 1, ptr %406, align 1
  br label %407

407:                                              ; preds = %405, %401, %396, %392, %385, %381, %377, %373, %366, %361, %357, %351, %343, %336, %321, %316, %314, %299, %286, %256, %251, %246, %244, %238, %231, %223, %216, %212, %208, %204, %200, %198, %192, %184, %180, %176, %174, %168, %166, %153, %143, %141, %139, %132, %130, %123, %121, %114, %112, %104, %92, %90, %88, %81, %79, %72, %70, %63, %61, %54, %52, %43, %38, %33, %30, %20
  br label %429

408:                                              ; preds = %389, %370, %354
  %409 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %410 = load ptr, ptr %409, align 4
  %411 = icmp eq ptr %410, null
  br i1 %411, label %429, label %412

412:                                              ; preds = %408
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %410, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.3) #10
  br label %429

413:                                              ; preds = %326, %304
  %414 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %415 = load ptr, ptr %414, align 4
  %416 = icmp eq ptr %415, null
  br i1 %416, label %429, label %417

417:                                              ; preds = %413
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %415, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.4) #10
  br label %429

418:                                              ; preds = %346, %338, %240, %233, %227, %194, %188, %170
  %419 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %420 = load ptr, ptr %419, align 4
  %421 = icmp eq ptr %420, null
  br i1 %421, label %429, label %422

422:                                              ; preds = %418
  %423 = load ptr, ptr %1, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %420, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.5, ptr noundef %423) #10
  br label %429

424:                                              ; preds = %291, %276, %259, %97
  %425 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %426 = load ptr, ptr %425, align 4
  %427 = icmp eq ptr %426, null
  br i1 %427, label %429, label %428

428:                                              ; preds = %424
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %426, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.6) #10
  br label %429

429:                                              ; preds = %428, %424, %422, %418, %417, %413, %412, %408, %407, %256, %251, %246, %29, %25, %9
  %430 = phi i32 [ %13, %9 ], [ 0, %407 ], [ -22, %25 ], [ -22, %29 ], [ %249, %246 ], [ %254, %251 ], [ %257, %256 ], [ -22, %408 ], [ -22, %412 ], [ -22, %413 ], [ -22, %417 ], [ -22, %418 ], [ -22, %422 ], [ -22, %424 ], [ -22, %428 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 %430
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_fs_context_parse_monolithic(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @nfs_fs_type
  br i1 %6, label %7, label %199

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 26
  %13 = icmp eq ptr %1, null
  br i1 %13, label %163, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 19
  store i32 3, ptr %15, align 4
  %16 = load i32, ptr %1, align 4
  switch i32 %16, label %161 [
    i32 1, label %20
    i32 2, label %22
    i32 3, label %24
    i32 4, label %17
    i32 5, label %38
    i32 6, label %41
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  br label %33

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 14
  store i32 0, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %14
  %23 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 15
  store i32 0, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %14
  %25 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 128
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %174

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 16
  store i16 32, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 16, i32 1
  %32 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(32) %31, ptr noundef align 4 dereferenceable(32) %32, i32 32, i1 false) #10
  br label %33

33:                                               ; preds = %29, %17
  %34 = phi i32 [ %19, %17 ], [ %26, %29 ]
  %35 = phi i32 [ 524288, %17 ], [ 532480, %29 ]
  %36 = and i32 %34, 8192
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %179

38:                                               ; preds = %33, %14
  %39 = phi i32 [ 524288, %14 ], [ %35, %33 ]
  %40 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 18
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(257) %40, i8 0, i32 257, i1 false) #10
  br label %41

41:                                               ; preds = %38, %14
  %42 = phi i32 [ 524288, %14 ], [ %39, %38 ]
  %43 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 128
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 16
  %49 = load i16, ptr %48, align 4
  %50 = add i16 %49, -65
  %51 = icmp ult i16 %50, -64
  br i1 %51, label %189, label %52

52:                                               ; preds = %47, %41
  %53 = phi i16 [ %49, %47 ], [ 32, %41 ]
  %54 = phi i32 [ 3, %47 ], [ 2, %41 ]
  store i16 %53, ptr %11, align 2
  store i32 %54, ptr %15, align 4
  %55 = getelementptr inbounds %struct.nfs_fh, ptr %11, i32 0, i32 1
  %56 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 16, i32 1
  %57 = load i16, ptr %11, align 2
  %58 = zext i16 %57 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %55, ptr align 2 %56, i32 %58, i1 false) #10
  %59 = icmp ult i16 %57, 128
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = getelementptr i8, ptr %55, i32 %58
  %62 = sub nsw i32 128, %58
  tail call void @llvm.memset.p0.i32(ptr align 1 %61, i8 0, i32 %62, i1 false) #10
  br label %63

63:                                               ; preds = %60, %52
  %64 = load i32, ptr %43, align 4
  %65 = and i32 %64, 64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 7
  %69 = load i32, ptr %68, align 4
  %70 = icmp sgt i32 %69, 63
  br i1 %70, label %194, label %71

71:                                               ; preds = %67, %63
  %72 = and i32 %64, 65535
  %73 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 4
  %74 = or i32 %72, %42
  store i32 %74, ptr %73, align 4
  %75 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 5
  store i32 %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 6
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 6
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 7
  store i32 %82, ptr %83, align 4
  %84 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 7
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 8
  store i32 %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 8
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 9
  store i32 %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 9
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 10
  store i32 %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 10
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 11
  store i32 %94, ptr %95, align 4
  %96 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 11
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 12
  store i32 %97, ptr %98, align 4
  %99 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 2
  store i8 0, ptr %99, align 2
  %100 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %12, ptr noundef align 4 dereferenceable(16) %100, i32 16, i1 false) #10
  %101 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 26, i32 1
  store i32 16, ptr %101, align 4
  %102 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 12, i32 1
  %103 = load i16, ptr %102, align 2
  %104 = tail call i16 @llvm.bswap.i16(i16 %103) #10
  %105 = zext i16 %104 to i32
  %106 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 26, i32 4
  store i32 %105, ptr %106, align 4
  %107 = load i16, ptr %12, align 2
  %108 = icmp eq i16 %107, 2
  br i1 %108, label %109, label %184

109:                                              ; preds = %71
  %110 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %184, label %113

113:                                              ; preds = %109
  %114 = load i32, ptr %43, align 4
  %115 = and i32 %114, 64
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 26, i32 5
  store i16 17, ptr %118, align 4
  br label %119

119:                                              ; preds = %117, %113
  %120 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 13
  %121 = tail call noalias ptr @kstrdup(ptr noundef %120, i32 noundef 3264) #10
  %122 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 26, i32 2
  store ptr %121, ptr %122, align 4
  %123 = icmp eq ptr %121, null
  br i1 %123, label %385, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 14
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 13
  store i32 %126, ptr %127, align 4
  %128 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 15
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 15
  store i32 %129, ptr %130, align 4
  %131 = load i32, ptr %43, align 4
  %132 = and i32 %131, 8192
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %124
  %135 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 17
  %136 = load i32, ptr %135, align 4
  br label %137

137:                                              ; preds = %134, %124
  %138 = phi i32 [ %136, %134 ], [ 1, %124 ]
  %139 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 17
  store i32 %138, ptr %139, align 4
  %140 = load i32, ptr %43, align 4
  %141 = and i32 %140, 512
  %142 = icmp eq i32 %141, 0
  %143 = load i32, ptr %73, align 4
  %144 = and i32 %143, -3145729
  %145 = select i1 %142, i32 0, i32 3145728
  %146 = or i32 %145, %144
  store i32 %146, ptr %73, align 4
  %147 = getelementptr inbounds %struct.nfs_mount_data, ptr %1, i32 0, i32 18
  %148 = load i8, ptr %147, align 4
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %385

150:                                              ; preds = %137
  %151 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 26, i32 5
  %152 = load i16, ptr %151, align 4
  switch i16 %152, label %157 [
    i16 17, label %153
    i16 6, label %159
    i16 256, label %159
  ]

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %385, label %158

157:                                              ; preds = %150
  store i16 6, ptr %151, align 4
  br label %159

158:                                              ; preds = %153
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %155, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.42) #10
  br label %385

159:                                              ; preds = %157, %150, %150
  %160 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 1
  store i8 1, ptr %160, align 1
  br label %385

161:                                              ; preds = %14
  %162 = tail call i32 @generic_parse_monolithic(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %385

163:                                              ; preds = %7
  %164 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.nfs_fs_context, ptr %9, i32 0, i32 1
  store i8 1, ptr %168, align 1
  br label %385

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %385, label %173

173:                                              ; preds = %169
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %171, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.36) #10
  br label %385

174:                                              ; preds = %24
  %175 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %385, label %178

178:                                              ; preds = %174
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %176, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.37) #10
  br label %385

179:                                              ; preds = %33
  %180 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %385, label %183

183:                                              ; preds = %179
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %181, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.38) #10
  br label %385

184:                                              ; preds = %109, %71
  %185 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %385, label %188

188:                                              ; preds = %184
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %186, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.39) #10
  br label %385

189:                                              ; preds = %47
  %190 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %385, label %193

193:                                              ; preds = %189
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %191, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.40) #10
  br label %385

194:                                              ; preds = %67
  %195 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %385, label %198

198:                                              ; preds = %194
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %196, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.41) #10
  br label %385

199:                                              ; preds = %2
  %200 = icmp eq ptr %5, @nfs4_fs_type
  br i1 %200, label %201, label %380

201:                                              ; preds = %199
  %202 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 26
  %205 = icmp eq ptr %1, null
  br i1 %205, label %206, label %215

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %368

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %212 = load ptr, ptr %211, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %385, label %214

214:                                              ; preds = %210
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %212, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.43) #10
  br label %385

215:                                              ; preds = %201
  %216 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 19
  store i32 4, ptr %216, align 4
  %217 = load i32, ptr %1, align 4
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %221, label %219

219:                                              ; preds = %215
  %220 = tail call i32 @generic_parse_monolithic(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %385

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.nfs4_mount_data, ptr %1, i32 0, i32 13
  %223 = load i32, ptr %222, align 4
  %224 = add i32 %223, -17
  %225 = icmp ult i32 %224, -16
  br i1 %225, label %375, label %226

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 26, i32 1
  store i32 %223, ptr %227, align 4
  %228 = getelementptr inbounds %struct.nfs4_mount_data, ptr %1, i32 0, i32 14
  %229 = load ptr, ptr %228, align 4
  %230 = load i32, ptr %222, align 4
  %231 = icmp slt i32 %230, 0
  %232 = load i1, ptr @check_copy_size.__already_done, align 1
  %233 = xor i1 %232, true
  %234 = select i1 %231, i1 %233, i1 false
  br i1 %234, label %235, label %236, !prof !8

235:                                              ; preds = %226
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %236

236:                                              ; preds = %235, %226
  br i1 %231, label %385, label %237, !prof !8

237:                                              ; preds = %236
  %238 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %229, i32 %230, i32 -1090519040) #11, !srcloc !11
  %239 = extractvalue { i32, i32 } %238, 0
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %248, !prof !12

241:                                              ; preds = %237
  %242 = tail call ptr @llvm.thread.pointer() #10
  %243 = getelementptr inbounds %struct.thread_info, ptr %242, i32 0, i32 3
  %244 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %243) #12, !srcloc !13
  %245 = and i32 %244, -13
  %246 = or i32 %245, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %246) #10, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !15
  %247 = tail call i32 @arm_copy_from_user(ptr noundef %204, ptr noundef %229, i32 noundef %230) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %244) #10, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !15
  br label %248

248:                                              ; preds = %241, %237
  %249 = phi i32 [ %247, %241 ], [ %230, %237 ]
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %254, label %251, !prof !12

251:                                              ; preds = %248
  %252 = sub i32 %230, %249
  %253 = getelementptr i8, ptr %204, i32 %252
  tail call void @llvm.memset.p0.i32(ptr align 1 %253, i8 0, i32 %249, i1 false) #10
  br label %385

254:                                              ; preds = %248
  %255 = load i16, ptr %204, align 2
  switch i16 %255, label %375 [
    i16 2, label %256
    i16 10, label %259
  ]

256:                                              ; preds = %254
  %257 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1
  %258 = load i32, ptr %257, align 4
  br label %271

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1, i32 4
  %261 = load i32, ptr %260, align 4
  %262 = getelementptr %struct.nfs_fs_context, ptr %203, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1, i32 8
  %263 = load i32, ptr %262, align 4
  %264 = or i32 %263, %261
  %265 = getelementptr %struct.nfs_fs_context, ptr %203, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1, i32 12
  %266 = load i32, ptr %265, align 4
  %267 = or i32 %264, %266
  %268 = getelementptr %struct.nfs_fs_context, ptr %203, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1, i32 16
  %269 = load i32, ptr %268, align 4
  %270 = or i32 %267, %269
  br label %271

271:                                              ; preds = %259, %256
  %272 = phi i32 [ %270, %259 ], [ %258, %256 ]
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %375, label %274

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.sockaddr_in, ptr %204, i32 0, i32 1
  %276 = load i16, ptr %275, align 2
  %277 = tail call i16 @llvm.bswap.i16(i16 %276) #10
  %278 = zext i16 %277 to i32
  %279 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 26, i32 4
  store i32 %278, ptr %279, align 4
  %280 = getelementptr inbounds %struct.nfs4_mount_data, ptr %1, i32 0, i32 16
  %281 = load i32, ptr %280, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %303, label %283

283:                                              ; preds = %274
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !9
  %284 = icmp sgt i32 %281, 1
  br i1 %284, label %370, label %285

285:                                              ; preds = %283
  %286 = getelementptr inbounds %struct.nfs4_mount_data, ptr %1, i32 0, i32 17
  %287 = load ptr, ptr %286, align 4
  %288 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %287, i32 4, i32 -1090519040) #11, !srcloc !11
  %289 = extractvalue { i32, i32 } %288, 0
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %299, !prof !12

291:                                              ; preds = %285
  %292 = tail call ptr @llvm.thread.pointer() #10
  %293 = getelementptr inbounds %struct.thread_info, ptr %292, i32 0, i32 3
  %294 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %293) #12, !srcloc !13
  %295 = and i32 %294, -13
  %296 = or i32 %295, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %296) #10, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !15
  %297 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %287, i32 noundef 4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %294) #10, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !15
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %300, label %299, !prof !12

299:                                              ; preds = %291, %285
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %385

300:                                              ; preds = %291
  %301 = load i32, ptr %3, align 4
  %302 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 17
  store i32 %301, ptr %302, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %305

303:                                              ; preds = %274
  %304 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 17
  store i32 1, ptr %304, align 4
  br label %305

305:                                              ; preds = %303, %300
  %306 = getelementptr inbounds %struct.nfs4_mount_data, ptr %1, i32 0, i32 12, i32 1
  %307 = load ptr, ptr %306, align 4
  %308 = call ptr @strndup_user(ptr noundef %307, i32 noundef 255) #10
  %309 = icmp ugt ptr %308, inttoptr (i32 -4096 to ptr)
  br i1 %309, label %310, label %312

310:                                              ; preds = %305
  %311 = ptrtoint ptr %308 to i32
  br label %385

312:                                              ; preds = %305
  %313 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 26, i32 2
  store ptr %308, ptr %313, align 4
  %314 = getelementptr inbounds %struct.nfs4_mount_data, ptr %1, i32 0, i32 11, i32 1
  %315 = load ptr, ptr %314, align 4
  %316 = call ptr @strndup_user(ptr noundef %315, i32 noundef 4096) #10
  %317 = icmp ugt ptr %316, inttoptr (i32 -4096 to ptr)
  br i1 %317, label %318, label %320

318:                                              ; preds = %312
  %319 = ptrtoint ptr %316 to i32
  br label %385

320:                                              ; preds = %312
  %321 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 26, i32 3
  store ptr %316, ptr %321, align 4
  %322 = getelementptr inbounds %struct.nfs4_mount_data, ptr %1, i32 0, i32 10, i32 1
  %323 = load ptr, ptr %322, align 4
  %324 = call ptr @strndup_user(ptr noundef %323, i32 noundef 16) #10
  %325 = icmp ugt ptr %324, inttoptr (i32 -4096 to ptr)
  br i1 %325, label %326, label %328

326:                                              ; preds = %320
  %327 = ptrtoint ptr %324 to i32
  br label %385

328:                                              ; preds = %320
  %329 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 18
  store ptr %324, ptr %329, align 4
  %330 = getelementptr inbounds %struct.nfs4_mount_data, ptr %1, i32 0, i32 1
  %331 = load i32, ptr %330, align 4
  %332 = and i32 %331, 36915
  %333 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 4
  store i32 %332, ptr %333, align 4
  %334 = getelementptr inbounds %struct.nfs4_mount_data, ptr %1, i32 0, i32 2
  %335 = load i32, ptr %334, align 4
  %336 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 5
  store i32 %335, ptr %336, align 4
  %337 = getelementptr inbounds %struct.nfs4_mount_data, ptr %1, i32 0, i32 3
  %338 = load i32, ptr %337, align 4
  %339 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 6
  store i32 %338, ptr %339, align 4
  %340 = getelementptr inbounds %struct.nfs4_mount_data, ptr %1, i32 0, i32 4
  %341 = load i32, ptr %340, align 4
  %342 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 7
  store i32 %341, ptr %342, align 4
  %343 = getelementptr inbounds %struct.nfs4_mount_data, ptr %1, i32 0, i32 5
  %344 = load i32, ptr %343, align 4
  %345 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 8
  store i32 %344, ptr %345, align 4
  %346 = getelementptr inbounds %struct.nfs4_mount_data, ptr %1, i32 0, i32 6
  %347 = load i32, ptr %346, align 4
  %348 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 9
  store i32 %347, ptr %348, align 4
  %349 = getelementptr inbounds %struct.nfs4_mount_data, ptr %1, i32 0, i32 7
  %350 = load i32, ptr %349, align 4
  %351 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 10
  store i32 %350, ptr %351, align 4
  %352 = getelementptr inbounds %struct.nfs4_mount_data, ptr %1, i32 0, i32 8
  %353 = load i32, ptr %352, align 4
  %354 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 11
  store i32 %353, ptr %354, align 4
  %355 = getelementptr inbounds %struct.nfs4_mount_data, ptr %1, i32 0, i32 9
  %356 = load i32, ptr %355, align 4
  %357 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 12
  store i32 %356, ptr %357, align 4
  %358 = getelementptr inbounds %struct.nfs4_mount_data, ptr %1, i32 0, i32 15
  %359 = load i32, ptr %358, align 4
  %360 = trunc i32 %359 to i16
  %361 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 26, i32 5
  store i16 %360, ptr %361, align 4
  switch i16 %360, label %366 [
    i16 17, label %362
    i16 6, label %368
    i16 256, label %368
  ]

362:                                              ; preds = %328
  %363 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %364 = load ptr, ptr %363, align 4
  %365 = icmp eq ptr %364, null
  br i1 %365, label %385, label %367

366:                                              ; preds = %328
  store i16 6, ptr %361, align 4
  br label %368

367:                                              ; preds = %362
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %364, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.42) #10
  br label %385

368:                                              ; preds = %366, %328, %328, %206
  %369 = getelementptr inbounds %struct.nfs_fs_context, ptr %203, i32 0, i32 1
  store i8 1, ptr %369, align 1
  br label %385

370:                                              ; preds = %283
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %371 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %372 = load ptr, ptr %371, align 4
  %373 = icmp eq ptr %372, null
  br i1 %373, label %385, label %374

374:                                              ; preds = %370
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %372, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.44, i32 noundef %281) #10
  br label %385

375:                                              ; preds = %271, %254, %221
  %376 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %377 = load ptr, ptr %376, align 4
  %378 = icmp eq ptr %377, null
  br i1 %378, label %385, label %379

379:                                              ; preds = %375
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %377, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.45) #10
  br label %385

380:                                              ; preds = %199
  %381 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %382 = load ptr, ptr %381, align 4
  %383 = icmp eq ptr %382, null
  br i1 %383, label %385, label %384

384:                                              ; preds = %380
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %382, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.35) #10
  br label %385

385:                                              ; preds = %384, %380, %379, %375, %374, %370, %368, %367, %362, %326, %318, %310, %299, %251, %236, %219, %214, %210, %198, %194, %193, %189, %188, %184, %183, %179, %178, %174, %173, %169, %167, %161, %159, %158, %153, %137, %119
  %386 = phi i32 [ -22, %380 ], [ -22, %384 ], [ 0, %167 ], [ %162, %161 ], [ 0, %159 ], [ -22, %137 ], [ -22, %169 ], [ -22, %173 ], [ -22, %174 ], [ -22, %178 ], [ -22, %179 ], [ -22, %183 ], [ -12, %119 ], [ -22, %184 ], [ -22, %188 ], [ -22, %189 ], [ -22, %193 ], [ -22, %194 ], [ -22, %198 ], [ -22, %153 ], [ -22, %158 ], [ %220, %219 ], [ %311, %310 ], [ %319, %318 ], [ %327, %326 ], [ 0, %368 ], [ -22, %210 ], [ -22, %214 ], [ -22, %370 ], [ -22, %374 ], [ -22, %375 ], [ -22, %379 ], [ -14, %299 ], [ -14, %236 ], [ -14, %251 ], [ -22, %362 ], [ -22, %367 ]
  ret i32 %386
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_get_tree(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26
  %5 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %218, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 19
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %238

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 14
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 19
  %23 = load i32, ptr %22, align 4
  %24 = icmp ne i32 %23, 4
  %25 = xor i1 %11, true
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %243, label %27

27:                                               ; preds = %21, %16
  %28 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 22
  %29 = load i16, ptr %28, align 4
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i16, ptr %4, align 4
  %33 = icmp eq i16 %29, %32
  br i1 %33, label %34, label %233

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 23
  %36 = load i16, ptr %35, align 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 25, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 25
  %44 = load i16, ptr %43, align 4
  %45 = icmp eq i16 %36, %44
  br i1 %45, label %49, label %228

46:                                               ; preds = %38
  %47 = load i16, ptr %4, align 4
  %48 = icmp eq i16 %36, %47
  br i1 %48, label %51, label %228

49:                                               ; preds = %42, %34
  %50 = load i16, ptr %4, align 2
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi i16 [ %50, %49 ], [ %36, %46 ]
  switch i16 %52, label %223 [
    i16 2, label %53
    i16 10, label %56
  ]

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  br label %68

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1, i32 8
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %60, %58
  %62 = getelementptr %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1, i32 12
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %61, %63
  %65 = getelementptr %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1, i32 16
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %64, %66
  br label %68

68:                                               ; preds = %56, %53
  %69 = phi i32 [ %67, %56 ], [ %55, %53 ]
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %223, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 5
  %73 = load i16, ptr %72, align 4
  switch i16 %73, label %78 [
    i16 17, label %74
    i16 6, label %80
    i16 256, label %80
  ]

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %261, label %79

78:                                               ; preds = %71
  store i16 6, ptr %72, align 4
  br label %80

79:                                               ; preds = %74
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %76, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.42) #10
  br label %261

80:                                               ; preds = %78, %71, %71
  %81 = phi i16 [ %73, %71 ], [ %73, %71 ], [ 6, %78 ]
  %82 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 19
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 4
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = icmp eq i16 %81, 256
  %87 = select i1 %86, i32 20049, i32 2049
  %88 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, -3148417
  store i32 %90, ptr %88, align 4
  br label %101

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 25, i32 5
  %93 = load i16, ptr %92, align 4
  switch i16 %93, label %94 [
    i16 17, label %98
    i16 6, label %98
  ]

94:                                               ; preds = %91
  switch i16 %81, label %98 [
    i16 17, label %96
    i16 6, label %95
    i16 256, label %95
  ]

95:                                               ; preds = %94, %94
  br label %96

96:                                               ; preds = %95, %94
  %97 = phi i16 [ 6, %95 ], [ %81, %94 ]
  store i16 %97, ptr %92, align 4
  br label %98

98:                                               ; preds = %96, %94, %91, %91
  %99 = icmp eq i16 %81, 256
  %100 = select i1 %99, i32 20049, i32 0
  br label %101

101:                                              ; preds = %98, %85
  %102 = phi i32 [ %87, %85 ], [ %100, %98 ]
  %103 = phi i32 [ 4096, %85 ], [ 1024, %98 ]
  %104 = phi i32 [ 255, %85 ], [ 4096, %98 ]
  %105 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 4
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  store i32 %102, ptr %105, align 4
  br label %109

109:                                              ; preds = %108, %101
  %110 = phi i32 [ %102, %108 ], [ %106, %101 ]
  %111 = trunc i32 %110 to i16
  switch i16 %52, label %118 [
    i16 2, label %112
    i16 10, label %115
  ]

112:                                              ; preds = %109
  %113 = tail call i16 @llvm.bswap.i16(i16 %111) #10
  %114 = getelementptr inbounds %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %113, ptr %114, align 2
  br label %118

115:                                              ; preds = %109
  %116 = tail call i16 @llvm.bswap.i16(i16 %111) #10
  %117 = getelementptr inbounds %struct.sockaddr_in6, ptr %4, i32 0, i32 1
  store i16 %116, ptr %117, align 2
  br label %118

118:                                              ; preds = %115, %112, %109
  %119 = load ptr, ptr %2, align 4
  %120 = load ptr, ptr %5, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %261, label %122, !prof !8

122:                                              ; preds = %118
  %123 = load i8, ptr %120, align 1
  switch i8 %123, label %136 [
    i8 0, label %261
    i8 91, label %124
  ], !prof !16

124:                                              ; preds = %122
  %125 = getelementptr i8, ptr %120, i32 1
  %126 = tail call ptr @strchr(ptr noundef %125, i32 noundef 93) #10
  %127 = icmp eq ptr %126, null
  br i1 %127, label %166, label %128

128:                                              ; preds = %124
  %129 = getelementptr i8, ptr %126, i32 1
  %130 = load i8, ptr %129, align 1
  %131 = icmp eq i8 %130, 58
  br i1 %131, label %132, label %166

132:                                              ; preds = %128
  %133 = ptrtoint ptr %126 to i32
  %134 = ptrtoint ptr %125 to i32
  %135 = sub i32 %133, %134
  br label %148

136:                                              ; preds = %122
  %137 = tail call ptr @strchr(ptr noundef nonnull %120, i32 noundef 58) #10
  %138 = icmp eq ptr %137, null
  br i1 %138, label %166, label %139

139:                                              ; preds = %136
  %140 = ptrtoint ptr %137 to i32
  %141 = ptrtoint ptr %120 to i32
  %142 = sub i32 %140, %141
  %143 = tail call ptr @memchr(ptr noundef nonnull %120, i32 noundef 44, i32 noundef %142) #10
  %144 = icmp eq ptr %143, null
  %145 = ptrtoint ptr %143 to i32
  %146 = sub i32 %145, %141
  %147 = select i1 %144, i32 %142, i32 %146
  br label %148

148:                                              ; preds = %139, %132
  %149 = phi ptr [ %125, %132 ], [ %120, %139 ]
  %150 = phi i32 [ %135, %132 ], [ %147, %139 ]
  %151 = phi ptr [ %129, %132 ], [ %137, %139 ]
  %152 = icmp ugt i32 %150, %104
  br i1 %152, label %176, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.nfs_fs_context, ptr %119, i32 0, i32 26, i32 2
  %155 = load ptr, ptr %154, align 4
  tail call void @kfree(ptr noundef %155) #10
  %156 = tail call ptr @kmemdup_nul(ptr noundef %149, i32 noundef %150, i32 noundef 3264) #10
  store ptr %156, ptr %154, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %171, label %158

158:                                              ; preds = %153
  %159 = getelementptr i8, ptr %151, i32 1
  %160 = tail call i32 @strlen(ptr noundef %159) #10
  %161 = icmp ugt i32 %160, %103
  br i1 %161, label %181, label %162

162:                                              ; preds = %158
  %163 = tail call ptr @kmemdup_nul(ptr noundef %159, i32 noundef %160, i32 noundef 3264) #10
  %164 = getelementptr inbounds %struct.nfs_fs_context, ptr %119, i32 0, i32 26, i32 3
  store ptr %163, ptr %164, align 4
  %165 = icmp eq ptr %163, null
  br i1 %165, label %171, label %186

166:                                              ; preds = %136, %128, %124
  %167 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %261, label %170

170:                                              ; preds = %166
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %168, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.55) #10
  br label %261

171:                                              ; preds = %162, %153
  %172 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %261, label %175

175:                                              ; preds = %171
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %173, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.56) #10
  br label %261

176:                                              ; preds = %148
  %177 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %261, label %180

180:                                              ; preds = %176
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %178, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.57) #10
  br label %261

181:                                              ; preds = %158
  %182 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %261, label %185

185:                                              ; preds = %181
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %183, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.58) #10
  br label %261

186:                                              ; preds = %162
  %187 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 29
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %200

190:                                              ; preds = %186
  %191 = load i32, ptr %82, align 4
  %192 = tail call ptr @get_nfs_version(i32 noundef %191) #10
  %193 = icmp ugt ptr %192, inttoptr (i32 -4096 to ptr)
  br i1 %193, label %194, label %199

194:                                              ; preds = %190
  %195 = ptrtoint ptr %192 to i32
  %196 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %261, label %248

199:                                              ; preds = %190
  store ptr %192, ptr %187, align 4
  br label %200

200:                                              ; preds = %199, %186
  %201 = phi ptr [ %192, %199 ], [ %188, %186 ]
  %202 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 2
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr inbounds %struct.nfs_subversion, ptr %201, i32 0, i32 1
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %203, %205
  br i1 %206, label %249, label %207

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct.file_system_type, ptr %203, i32 0, i32 6
  %209 = load ptr, ptr %208, align 4
  tail call void @module_put(ptr noundef %209) #10
  %210 = load ptr, ptr %187, align 4
  %211 = getelementptr inbounds %struct.nfs_subversion, ptr %210, i32 0, i32 1
  %212 = load ptr, ptr %211, align 4
  %213 = getelementptr inbounds %struct.file_system_type, ptr %212, i32 0, i32 6
  %214 = load ptr, ptr %213, align 4
  tail call void @__module_get(ptr noundef %214) #10
  %215 = load ptr, ptr %187, align 4
  %216 = getelementptr inbounds %struct.nfs_subversion, ptr %215, i32 0, i32 1
  %217 = load ptr, ptr %216, align 4
  store ptr %217, ptr %202, align 4
  br label %249

218:                                              ; preds = %1
  %219 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %261, label %222

222:                                              ; preds = %218
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %220, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.48) #10
  br label %261

223:                                              ; preds = %68, %51
  %224 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, null
  br i1 %226, label %261, label %227

227:                                              ; preds = %223
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %225, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.39) #10
  br label %261

228:                                              ; preds = %46, %42
  %229 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %261, label %232

232:                                              ; preds = %228
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %230, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.50) #10
  br label %261

233:                                              ; preds = %31
  %234 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %261, label %237

237:                                              ; preds = %233
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %235, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.51) #10
  br label %261

238:                                              ; preds = %12
  %239 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %240 = load ptr, ptr %239, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %261, label %242

242:                                              ; preds = %238
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %240, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.52, i32 noundef %14, i32 noundef %10) #10
  br label %261

243:                                              ; preds = %21
  %244 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %245 = load ptr, ptr %244, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %261, label %247

247:                                              ; preds = %243
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %245, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.53) #10
  br label %261

248:                                              ; preds = %194
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %197, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.54) #10
  br label %261

249:                                              ; preds = %207, %200
  %250 = load i8, ptr %3, align 4, !range !10
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %249
  %253 = load ptr, ptr %187, align 4
  %254 = getelementptr inbounds %struct.nfs_subversion, ptr %253, i32 0, i32 3
  %255 = load ptr, ptr %254, align 4
  %256 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %255, i32 0, i32 8
  %257 = load ptr, ptr %256, align 4
  %258 = tail call i32 %257(ptr noundef %0) #10
  br label %261

259:                                              ; preds = %249
  %260 = tail call i32 @nfs_get_tree_common(ptr noundef %0) #10
  br label %261

261:                                              ; preds = %259, %252, %248, %247, %243, %242, %238, %237, %233, %232, %228, %227, %223, %222, %218, %194, %185, %181, %180, %176, %175, %171, %170, %166, %122, %118, %79, %74
  %262 = phi i32 [ %260, %259 ], [ %258, %252 ], [ -22, %122 ], [ -22, %166 ], [ -22, %170 ], [ -12, %171 ], [ -12, %175 ], [ -36, %176 ], [ -36, %180 ], [ -36, %181 ], [ -36, %185 ], [ -22, %118 ], [ -22, %79 ], [ -22, %74 ], [ -22, %247 ], [ -22, %243 ], [ -22, %242 ], [ -22, %238 ], [ -22, %237 ], [ -22, %233 ], [ -22, %232 ], [ -22, %228 ], [ -22, %227 ], [ -22, %223 ], [ -22, %222 ], [ -22, %218 ], [ %195, %194 ], [ %195, %248 ]
  ret i32 %262
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_reconfigure(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_free_server(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_nfs_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_find_transport_ident(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs_parse_version_string(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, -129
  store i32 %7, ptr %5, align 4
  %8 = tail call i32 @lookup_constant(ptr noundef nonnull @nfs_vers_tokens, ptr noundef %1, i32 noundef -1) #10
  switch i32 %8, label %26 [
    i32 0, label %9
    i32 1, label %11
    i32 2, label %15
    i32 3, label %17
    i32 4, label %20
    i32 5, label %23
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 19
  store i32 2, ptr %10, align 4
  br label %31

11:                                               ; preds = %2
  %12 = load i32, ptr %5, align 4
  %13 = or i32 %12, 128
  store i32 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 19
  store i32 3, ptr %14, align 4
  br label %31

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 19
  store i32 4, ptr %16, align 4
  br label %31

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 19
  store i32 4, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 20
  store i32 0, ptr %19, align 4
  br label %31

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 19
  store i32 4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 20
  store i32 1, ptr %22, align 4
  br label %31

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 19
  store i32 4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 20
  store i32 2, ptr %25, align 4
  br label %31

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %28, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.7) #10
  br label %31

31:                                               ; preds = %30, %26, %23, %20, %17, %15, %11, %9
  %32 = phi i32 [ -22, %26 ], [ -22, %30 ], [ 0, %23 ], [ 0, %20 ], [ 0, %17 ], [ 0, %15 ], [ 0, %11 ], [ 0, %9 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs_parse_security_flavors(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %6 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  store ptr %7, ptr %3, align 4
  %8 = call ptr @strsep(ptr noundef nonnull %3, ptr noundef nonnull @.str.14) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %51, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 16
  br label %12

12:                                               ; preds = %16, %10
  %13 = phi ptr [ %8, %10 ], [ %17, %16 ]
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %48, %35, %12
  %17 = call ptr @strsep(ptr noundef nonnull %3, ptr noundef nonnull @.str.14) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %51, label %12

19:                                               ; preds = %12
  %20 = call i32 @lookup_constant(ptr noundef nonnull @nfs_secflavor_tokens, ptr noundef nonnull %13, i32 noundef -1) #10
  %21 = icmp ult i32 %20, 11
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %51, label %26

26:                                               ; preds = %22
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %24, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.15, ptr noundef nonnull %13) #10
  br label %51

27:                                               ; preds = %19
  %28 = getelementptr inbounds [11 x i32], ptr @switch.table.nfs_parse_security_flavors, i32 0, i32 %20
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %11, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %35

32:                                               ; preds = %35
  %33 = add nuw i32 %36, 1
  %34 = icmp eq i32 %33, %30
  br i1 %34, label %40, label %35

35:                                               ; preds = %32, %27
  %36 = phi i32 [ %33, %32 ], [ 0, %27 ]
  %37 = getelementptr %struct.nfs_fs_context, ptr %5, i32 0, i32 16, i32 1, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, %29
  br i1 %39, label %16, label %32

40:                                               ; preds = %32
  %41 = add i32 %30, 1
  %42 = icmp ugt i32 %41, 11
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %45, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.28) #10
  br label %51

48:                                               ; preds = %40, %27
  %49 = phi i32 [ %41, %40 ], [ 1, %27 ]
  store i32 %49, ptr %11, align 4
  %50 = getelementptr %struct.nfs_fs_context, ptr %5, i32 0, i32 16, i32 1, i32 %30
  store i32 %29, ptr %50, align 4
  br label %16

51:                                               ; preds = %47, %43, %26, %22, %16, %2
  %52 = phi i32 [ -22, %22 ], [ -22, %26 ], [ -22, %43 ], [ -22, %47 ], [ 0, %2 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lookup_constant(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pton(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_parse_monolithic(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_get_tree_common(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_nfs_version(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_enum(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
!11 = !{i64 2151098111, i64 2151098136}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 3594223}
!14 = !{i64 3594420}
!15 = !{i64 2151079699}
!16 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
