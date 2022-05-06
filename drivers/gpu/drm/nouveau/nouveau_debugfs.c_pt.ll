; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_debugfs.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_debugfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.75 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.82, %struct.anon.83, %struct.anon.85, ptr, %struct.anon.86, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.87, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.99 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.82 = type { ptr, i32, i32, i8 }
%struct.anon.83 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.84] }
%struct.anon.84 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.85 = type { i64, i64 }
%struct.anon.86 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.78 }
%struct.anon.78 = type { ptr, i64 }
%struct.anon.87 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.94, %struct.anon.95, %struct.anon.96, %struct.anon.97 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.88, i8 }
%union.anon.88 = type { %struct.anon.92 }
%struct.anon.92 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.94 = type { i32 }
%struct.anon.95 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.96 = type { i16, i16 }
%struct.anon.97 = type { i16, i16, i16, %struct.anon.98, i16 }
%struct.anon.98 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.99 = type { ptr, %struct.mutex, i8 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.57, %struct.list_head, %struct.list_head, %union.anon.58 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%union.anon.57 = type { %struct.list_head }
%union.anon.58 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.nvif_control_pstate_user_v0 = type { i8, i8, i8, [5 x i8] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nvif_control_pstate_info_v0 = type { i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.nvif_control_pstate_attr_v0 = type { i8, i8, i8, [5 x i8], i32, i32, [32 x i8], [16 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@nouveau_debugfs_list = internal global [2 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str, ptr @nouveau_debugfs_vbios_image, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.21, ptr @nouveau_debugfs_strap_peek, i32 0, ptr null }], align 4
@.str = private unnamed_addr constant [10 x i8] c"vbios.rom\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"debugfsCtrl\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"pstate\00", align 1
@nouveau_pstate_fops = internal constant %struct.file_operations { ptr @__this_module, ptr null, ptr @seq_read, ptr @nouveau_debugfs_pstate_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @nouveau_debugfs_pstate_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.3 = private unnamed_addr constant [4 x i8] c"dc:\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ac:\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x:\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c" %s %d\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"-%d\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" AC\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c" DC\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"strap_peek\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_drm_debugfs_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 420, ptr noundef %7, ptr noundef %3, ptr noundef nonnull @nouveau_pstate_fops) #8
  %9 = load ptr, ptr %6, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @nouveau_debugfs_list, i32 noundef 2, ptr noundef %9, ptr noundef %0) #8
  %10 = load ptr, ptr %6, align 4
  %11 = tail call ptr @debugfs_lookup(ptr noundef nonnull @.str, ptr noundef %10) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 13
  store i64 %16, ptr %19, align 8
  tail call void @dput(ptr noundef nonnull %11) #8
  br label %20

20:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_debugfs_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 40) #9
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 26
  store ptr %3, ptr %4, align 8
  %5 = icmp eq ptr %3, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 3
  %8 = tail call i32 @nvif_object_ctor(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef -1, ptr noundef null, i32 noundef 0, ptr noundef nonnull %3) #8
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ -12, %1 ], [ %8, %6 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_debugfs_fini(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvif_object, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  tail call void @nvif_object_dtor(ptr noundef nonnull %3) #8
  %10 = load ptr, ptr %2, align 8
  br label %11

11:                                               ; preds = %9, %5, %1
  %12 = phi ptr [ %10, %9 ], [ %3, %5 ], [ null, %1 ]
  tail call void @kfree(ptr noundef %12) #8
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_debugfs_pstate_set(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.nvif_control_pstate_user_v0, align 8
  %6 = alloca [32 x i8], align 1
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.seq_file, ptr %9, i32 0, i32 11
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 26
  %15 = load ptr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 15335424, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %81, label %17

17:                                               ; preds = %4
  %18 = icmp ugt i32 %2, 31
  br i1 %18, label %81, label %19

19:                                               ; preds = %17
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #10, !srcloc !9
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30, !prof !10

23:                                               ; preds = %19
  %24 = tail call ptr @llvm.thread.pointer() #8
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %25) #11, !srcloc !11
  %27 = and i32 %26, -13
  %28 = or i32 %27, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #8, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !13
  %29 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %2) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #8, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !13
  br label %30

30:                                               ; preds = %23, %19
  %31 = phi i32 [ %29, %23 ], [ %2, %19 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33, !prof !10

33:                                               ; preds = %30
  %34 = sub i32 %2, %31
  %35 = getelementptr i8, ptr %6, i32 %34
  call void @llvm.memset.p0.i32(ptr align 1 %35, i8 0, i32 %31, i1 false) #8
  br label %81

36:                                               ; preds = %30
  %37 = call ptr @strchr(ptr noundef nonnull %6, i32 noundef 10)
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store i8 0, ptr %37, align 1
  br label %40

40:                                               ; preds = %39, %36
  %41 = call i32 @strncasecmp(ptr noundef nonnull %6, ptr noundef nonnull @.str.3, i32 noundef 3)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = call i32 @strncasecmp(ptr noundef nonnull %6, ptr noundef nonnull @.str.4, i32 noundef 3)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43, %40
  %47 = phi i8 [ 0, %40 ], [ 1, %43 ]
  %48 = getelementptr inbounds %struct.nvif_control_pstate_user_v0, ptr %5, i32 0, i32 2
  store i8 %47, ptr %48, align 2
  %49 = getelementptr inbounds i8, ptr %6, i32 3
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi ptr [ %6, %43 ], [ %49, %46 ]
  %52 = call i32 @strcasecmp(ptr noundef %51, ptr noundef nonnull @.str.5)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %50
  %55 = call i32 @strcasecmp(ptr noundef %51, ptr noundef nonnull @.str.6)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = call i32 @_kstrtol(ptr noundef %51, i32 noundef 16, ptr noundef nonnull %7) #8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %57
  %61 = load i32, ptr %7, align 4
  %62 = trunc i32 %61 to i8
  br label %63

63:                                               ; preds = %60, %54, %50
  %64 = phi i8 [ %62, %60 ], [ -1, %50 ], [ -2, %54 ]
  %65 = getelementptr inbounds %struct.nvif_control_pstate_user_v0, ptr %5, i32 0, i32 1
  store i8 %64, ptr %65, align 1
  %66 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 @__pm_runtime_resume(ptr noundef %67, i32 noundef 4) #8
  %69 = icmp slt i32 %68, 0
  %70 = icmp ne i32 %68, -13
  %71 = and i1 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load ptr, ptr %66, align 4
  %74 = call i32 @__pm_runtime_suspend(ptr noundef %73, i32 noundef 13) #8
  br label %81

75:                                               ; preds = %63
  %76 = call i32 @nvif_object_mthd(ptr noundef nonnull %15, i32 noundef 2, ptr noundef nonnull %5, i32 noundef 8) #8
  %77 = load ptr, ptr %66, align 4
  %78 = call i32 @__pm_runtime_suspend(ptr noundef %77, i32 noundef 13) #8
  %79 = icmp slt i32 %76, 0
  %80 = select i1 %79, i32 %76, i32 %2
  br label %81

81:                                               ; preds = %75, %72, %57, %33, %17, %4
  %82 = phi i32 [ %68, %72 ], [ -19, %4 ], [ -22, %17 ], [ %58, %57 ], [ %80, %75 ], [ -14, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_debugfs_pstate_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @nouveau_debugfs_pstate_get, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_mthd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_debugfs_pstate_get(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.nvif_control_pstate_info_v0, align 8
  %4 = alloca %struct.nvif_control_pstate_attr_v0, align 4
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 26
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %94, label %12

12:                                               ; preds = %2
  %13 = call i32 @nvif_object_mthd(ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 8) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %94

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %3, i32 0, i32 1
  %17 = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %4, i32 0, i32 1
  %18 = load i8, ptr %16, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %3, i32 0, i32 4
  %21 = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %4, i32 0, i32 2
  %22 = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %4, i32 0, i32 6
  %23 = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %4, i32 0, i32 4
  %24 = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %4, i32 0, i32 5
  %25 = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %4, i32 0, i32 7
  %26 = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %3, i32 0, i32 2
  %27 = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %3, i32 0, i32 3
  %28 = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %3, i32 0, i32 5
  br label %29

29:                                               ; preds = %89, %15
  %30 = phi i32 [ %19, %15 ], [ %92, %89 ]
  %31 = phi i32 [ 0, %15 ], [ %90, %89 ]
  %32 = icmp ult i32 %31, %30
  %33 = select i1 %32, i32 %31, i32 -1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  %34 = trunc i32 %33 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  store i8 %34, ptr %17, align 1
  %35 = call i32 @nvif_object_mthd(ptr noundef nonnull %10, i32 noundef 1, ptr noundef nonnull %4, i32 noundef 64) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %85

37:                                               ; preds = %29
  %38 = load i8, ptr %16, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp ult i32 %31, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8, ptr %17, align 1
  %43 = sext i8 %42 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %43) #8
  br label %50

44:                                               ; preds = %37
  %45 = load i8, ptr %20, align 4
  %46 = icmp eq i8 %45, 0
  %47 = icmp eq i8 %45, 1
  %48 = select i1 %47, ptr @.str.12, ptr @.str.13
  %49 = select i1 %46, ptr @.str.11, ptr %48
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %49) #8
  br label %50

50:                                               ; preds = %44, %41
  store i8 0, ptr %21, align 2
  br label %51

51:                                               ; preds = %60, %50
  store i8 %34, ptr %17, align 1
  %52 = call i32 @nvif_object_mthd(ptr noundef nonnull %10, i32 noundef 1, ptr noundef nonnull %4, i32 noundef 64) #8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %85

54:                                               ; preds = %51
  %55 = load i32, ptr %23, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %22, i32 noundef %55) #8
  %56 = load i32, ptr %23, align 4
  %57 = load i32, ptr %24, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %57) #8
  br label %60

60:                                               ; preds = %59, %54
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %25) #8
  %61 = load i8, ptr %21, align 2
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %51

63:                                               ; preds = %60
  %64 = icmp sgt i32 %33, -1
  %65 = load i8, ptr %26, align 2
  br i1 %64, label %66, label %79

66:                                               ; preds = %63
  %67 = sext i8 %65 to i32
  %68 = icmp eq i32 %33, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17) #8
  br label %70

70:                                               ; preds = %69, %66
  %71 = load i8, ptr %27, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %33, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18) #8
  br label %75

75:                                               ; preds = %74, %70
  %76 = load i8, ptr %28, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %33, %77
  br i1 %78, label %87, label %89

79:                                               ; preds = %63
  %80 = icmp slt i8 %65, -1
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17) #8
  br label %82

82:                                               ; preds = %81, %79
  %83 = load i8, ptr %27, align 1
  %84 = icmp slt i8 %83, -1
  br i1 %84, label %87, label %89

85:                                               ; preds = %51, %29
  %86 = phi i32 [ %52, %51 ], [ %35, %29 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  br label %94

87:                                               ; preds = %82, %75
  %88 = phi ptr [ @.str.19, %75 ], [ @.str.18, %82 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull %88) #8
  br label %89

89:                                               ; preds = %87, %82, %75
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  %90 = add nuw nsw i32 %31, 1
  %91 = load i8, ptr %16, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp ult i32 %31, %92
  br i1 %93, label %29, label %94

94:                                               ; preds = %89, %85, %12, %2
  %95 = phi i32 [ -19, %2 ], [ %13, %12 ], [ %86, %85 ], [ 0, %89 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %95
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_debugfs_vbios_image(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 18, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 18, i32 4
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ 0, %13 ], [ %21, %15 ]
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr i8, ptr %17, i32 %16
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %20) #8
  %21 = add nuw i32 %16, 1
  %22 = load i32, ptr %10, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %15, label %24

24:                                               ; preds = %15, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_debugfs_strap_peek(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #8
  %15 = icmp slt i32 %14, 0
  %16 = icmp ne i32 %14, -13
  %17 = and i1 %15, %16
  br i1 %17, label %35, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3, i32 0, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22, !prof !14

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %20, i32 1052672
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  br label %28

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3
  %27 = tail call i32 @nvif_object_rd(ptr noundef %26, i32 noundef 4, i64 noundef 1052672) #8
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %24, %22 ], [ %27, %25 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %29) #8
  %30 = load ptr, ptr %10, align 8
  %31 = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i64 @ktime_get_mono_fast_ns() #8
  %34 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 11, i32 22
  store volatile i64 %33, ptr %34, align 8
  br label %35

35:                                               ; preds = %28, %2
  %36 = phi i32 [ 0, %28 ], [ %14, %2 ]
  %37 = load ptr, ptr %10, align 8
  %38 = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @__pm_runtime_suspend(ptr noundef %39, i32 noundef 13) #8
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }

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
!9 = !{i64 2150977352, i64 2150977377}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 3473464}
!12 = !{i64 3473661}
!13 = !{i64 2150958940}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 4703111}
!16 = !{i64 2152242564}
