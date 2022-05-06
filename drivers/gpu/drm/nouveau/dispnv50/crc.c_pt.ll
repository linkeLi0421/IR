; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/crc.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/crc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.78, ptr, i32, ptr, i8, i32 }
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
%struct.anon.78 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.85, %struct.anon.86, %struct.anon.88, ptr, %struct.anon.89, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.90, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.102 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.85 = type { ptr, i32, i32, i8 }
%struct.anon.86 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.87] }
%struct.anon.87 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.88 = type { i64, i64 }
%struct.anon.89 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.81 }
%struct.anon.81 = type { ptr, i64 }
%struct.anon.90 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.97, %struct.anon.98, %struct.anon.99, %struct.anon.100 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.91, i8 }
%union.anon.91 = type { %struct.anon.95 }
%struct.anon.95 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.97 = type { i32 }
%struct.anon.98 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.99 = type { i16, i16 }
%struct.anon.100 = type { i16, i16, i16, %struct.anon.101, i16 }
%struct.anon.101 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.102 = type { ptr, %struct.mutex, i8 }
%struct.nv50_head = type { ptr, %struct.nouveau_crtc, %struct.nv50_crc, %struct.nv50_lut, ptr }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.128, %struct.anon.129, %struct.anon.130, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.anon.128 = type { i32, i8, i32, i32 }
%struct.anon.129 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.130 = type { i32 }
%struct.nv50_crc = type { %struct.spinlock, [2 x %struct.nv50_crc_notifier_ctx], %struct.drm_vblank_work, i32, i64, i16, i16, i8 }
%struct.nv50_crc_notifier_ctx = type { %struct.nvif_mem, %struct.nvif_object }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.drm_vblank_work = type { %struct.kthread_work, ptr, i64, i32, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nv50_core_func = type { ptr, ptr, ptr, ptr, ptr, %struct.anon.131, ptr, ptr, ptr, ptr, ptr }
%struct.anon.131 = type { ptr }
%struct.nv50_crc_func = type { ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.103, %struct.anon.104, %struct.nv50_head_mode, %struct.anon.107, %struct.anon.108, %struct.anon.109, %struct.anon.110, %struct.anon.111, %struct.anon.112, %struct.anon.113, %struct.anon.115, %struct.nv50_crc_atom, %struct.anon.116, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.anon.103 = type { i32, i32, i32 }
%struct.anon.104 = type { i16, i16, i16, i16 }
%struct.nv50_head_mode = type { i8, i32, %struct.anon.105, %struct.anon.106 }
%struct.anon.105 = type { i16, i16, i16, i16 }
%struct.anon.106 = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.anon.107 = type { i8, i32, [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.108 = type { i8, i32, [5 x i8], i8, i16, i32, i16, i16, i16, i16, [4 x i8] }
%struct.anon.109 = type { i8, i32, [6 x i8], i8 }
%struct.anon.110 = type { i8, i8, i16, i16, i16, i16 }
%struct.anon.111 = type { i8 }
%struct.anon.112 = type { i8 }
%struct.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { i16, i16 }
%struct.anon.115 = type { i8, i8 }
%struct.nv50_crc_atom = type { i32 }
%struct.anon.116 = type { i32, i8 }
%union.nv50_head_atom_mask = type { %struct.anon.117 }
%struct.anon.117 = type { i16 }
%struct.nvif_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nv50_atom = type { %struct.drm_atomic_state, %struct.list_head, i8, i8 }
%struct.nv50_outp_atom = type { %struct.list_head, ptr, i8, %union.nv50_outp_atom_mask, %union.nv50_outp_atom_mask }
%union.nv50_outp_atom_mask = type { %struct.anon.141 }
%struct.anon.141 = type { i8 }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.132, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.133, %struct.anon.140, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.anon.132 = type { i8, ptr }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.140 = type { i8 }
%struct.nv_dma_v0 = type { i8, i8, i8, [5 x i8], i64, i64 }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }

@.str = private unnamed_addr constant [23 x i8] c"%s: unknown source %s\0A\00", align 1
@nv50_crc_sources = internal constant [6 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Notifier ctx flip for head-%d finished, lost CRC for frame %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"%s: CRC reporting on vblank for head-%d disabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"%s: CRC reporting on vblank for head-%d enabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"nv_crc\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"flip_threshold\00", align 1
@nv50_crc_flip_threshold_fops = internal constant %struct.file_operations { ptr @__this_module, ptr null, ptr @seq_read, ptr @nv50_crc_debugfs_flip_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @nv50_crc_debugfs_flip_threshold_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"rg\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"outp-active\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"outp-complete\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"outp-inactive\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"%s: CRC notifier ctx for head %d not finished after 50ms\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"%s: CRC notifier ctx for head-%d finished after %lldns\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"kmsCrcNtfy\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"kmsCrcNtfyCtxDma\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.16 = private unnamed_addr constant [67 x i8] c"%s: Changing CRC flip threshold for next capture on head-%d to %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"Lock contended, delaying CRC ctx flip for %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Flipping notifier ctx for %s (%d -> %d)\0A\00", align 1
@.str.20 = private unnamed_addr constant [60 x i8] c"%s: Failed to flip CRC context on %s on time (%llu > %llu)\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_crc_verify_source(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @match_string(ptr noundef nonnull @nv50_crc_sources, i32 noundef 6, ptr noundef nonnull %1) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = load i32, ptr @__drm_debug, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef %22, ptr noundef nonnull %1) #8
  br label %24

23:                                               ; preds = %8, %3
  store i32 1, ptr %2, align 4
  br label %24

24:                                               ; preds = %23, %15, %11
  %25 = phi i32 [ 0, %23 ], [ -22, %15 ], [ -22, %11 ]
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local nonnull ptr @nv50_crc_get_sources(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  store i32 6, ptr %1, align 4
  ret ptr @nv50_crc_sources
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_crc_handle_vblank(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 19
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nv50_disp, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nv50_core_func, ptr %15, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %161, label %19

19:                                               ; preds = %1
  %20 = tail call i32 @_raw_spin_trylock(ptr noundef %6) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %161, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 2, i32 3
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %158, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 2, i32 7
  %28 = load i8, ptr %27, align 4
  %29 = and i8 %28, 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr %struct.nv50_head, ptr %0, i32 0, i32 2, i32 1, i32 %30
  %32 = and i8 %28, 2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %127, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.nv50_crc_func, ptr %17, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = tail call zeroext i1 %36(ptr noundef %0, ptr noundef %31) #7
  %38 = load i32, ptr %23, align 8
  br i1 %37, label %39, label %127

39:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %40 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 2, i32 5
  %41 = getelementptr inbounds %struct.nv50_crc_func, ptr %17, i32 0, i32 5
  %42 = load i16, ptr %40, align 8
  %43 = load i16, ptr %41, align 2
  %44 = icmp slt i16 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.nv50_crc_func, ptr %17, i32 0, i32 2
  %47 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 2, i32 4
  br label %48

48:                                               ; preds = %58, %45
  %49 = phi i16 [ %42, %45 ], [ %65, %58 ]
  %50 = sext i16 %49 to i32
  %51 = load ptr, ptr %46, align 4
  %52 = load i8, ptr %27, align 4
  %53 = and i8 %52, 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr %struct.nv50_head, ptr %0, i32 0, i32 2, i32 1, i32 %54
  %56 = call i32 %51(ptr noundef %0, ptr noundef %55, i32 noundef %38, i32 noundef %50) #7
  store i32 %56, ptr %4, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %48
  %59 = load i64, ptr %47, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @drm_crtc_add_crc_entry(ptr noundef %5, i1 noundef zeroext true, i32 noundef %60, ptr noundef nonnull %4) #7
  %62 = load i64, ptr %47, align 8
  %63 = add i64 %62, 1
  store i64 %63, ptr %47, align 8
  %64 = load i16, ptr %40, align 8
  %65 = add i16 %64, 1
  store i16 %65, ptr %40, align 8
  %66 = load i16, ptr %41, align 2
  %67 = icmp slt i16 %65, %66
  br i1 %67, label %48, label %68

68:                                               ; preds = %58, %48, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %69 = load i8, ptr %27, align 4
  store i16 0, ptr %40, align 8
  %70 = and i8 %69, -3
  %71 = xor i8 %70, 1
  store i8 %71, ptr %27, align 4
  %72 = load ptr, ptr %5, align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.drm_device, ptr %72, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %68
  %78 = phi ptr [ %76, %74 ], [ null, %68 ]
  %79 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %80 = load i32, ptr %79, align 8
  %81 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 2, i32 4
  %82 = load i64, ptr %81, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %78, i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %80, i64 noundef %82) #7
  %83 = load i64, ptr %81, align 8
  %84 = add i64 %83, 1
  store i64 %84, ptr %81, align 8
  %85 = getelementptr inbounds %struct.nvif_object, ptr %31, i32 0, i32 6
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.nvif_object, ptr %31, i32 0, i32 6, i32 1
  %88 = load i64, ptr %87, align 8
  %89 = trunc i64 %88 to i32
  call void @mmioset(ptr noundef %86, i32 noundef 0, i32 noundef %89) #7
  %90 = load i32, ptr %23, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %91 = load i16, ptr %40, align 8
  %92 = load i16, ptr %41, align 2
  %93 = icmp slt i16 %91, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %77
  %95 = getelementptr inbounds %struct.nv50_crc_func, ptr %17, i32 0, i32 2
  br label %96

96:                                               ; preds = %106, %94
  %97 = phi i16 [ %91, %94 ], [ %113, %106 ]
  %98 = sext i16 %97 to i32
  %99 = load ptr, ptr %95, align 4
  %100 = load i8, ptr %27, align 4
  %101 = and i8 %100, 1
  %102 = zext i8 %101 to i32
  %103 = getelementptr %struct.nv50_head, ptr %0, i32 0, i32 2, i32 1, i32 %102
  %104 = call i32 %99(ptr noundef %0, ptr noundef %103, i32 noundef %90, i32 noundef %98) #7
  store i32 %104, ptr %3, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %96
  %107 = load i64, ptr %81, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 @drm_crtc_add_crc_entry(ptr noundef %5, i1 noundef zeroext true, i32 noundef %108, ptr noundef nonnull %3) #7
  %110 = load i64, ptr %81, align 8
  %111 = add i64 %110, 1
  store i64 %111, ptr %81, align 8
  %112 = load i16, ptr %40, align 8
  %113 = add i16 %112, 1
  store i16 %113, ptr %40, align 8
  %114 = load i16, ptr %41, align 2
  %115 = icmp slt i16 %113, %114
  br i1 %115, label %96, label %116

116:                                              ; preds = %106, %96, %77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %117 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 2, i32 2
  %118 = call i64 @drm_crtc_vblank_count(ptr noundef %5) #7
  %119 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 2, i32 6
  %120 = load i16, ptr %119, align 2
  %121 = sext i16 %120 to i64
  %122 = add i64 %118, %121
  %123 = load i16, ptr %40, align 8
  %124 = sext i16 %123 to i64
  %125 = sub i64 %122, %124
  %126 = call i32 @drm_vblank_work_schedule(ptr noundef %117, i64 noundef %125, i1 noundef zeroext true) #7
  br label %158

127:                                              ; preds = %34, %26
  %128 = phi i32 [ %24, %26 ], [ %38, %34 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %129 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 2, i32 5
  %130 = getelementptr inbounds %struct.nv50_crc_func, ptr %17, i32 0, i32 5
  %131 = load i16, ptr %129, align 8
  %132 = load i16, ptr %130, align 2
  %133 = icmp slt i16 %131, %132
  br i1 %133, label %134, label %157

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.nv50_crc_func, ptr %17, i32 0, i32 2
  %136 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 2, i32 4
  br label %137

137:                                              ; preds = %147, %134
  %138 = phi i16 [ %131, %134 ], [ %154, %147 ]
  %139 = sext i16 %138 to i32
  %140 = load ptr, ptr %135, align 4
  %141 = load i8, ptr %27, align 4
  %142 = and i8 %141, 1
  %143 = zext i8 %142 to i32
  %144 = getelementptr %struct.nv50_head, ptr %0, i32 0, i32 2, i32 1, i32 %143
  %145 = call i32 %140(ptr noundef %0, ptr noundef %144, i32 noundef %128, i32 noundef %139) #7
  store i32 %145, ptr %2, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %137
  %148 = load i64, ptr %136, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 @drm_crtc_add_crc_entry(ptr noundef %5, i1 noundef zeroext true, i32 noundef %149, ptr noundef nonnull %2) #7
  %151 = load i64, ptr %136, align 8
  %152 = add i64 %151, 1
  store i64 %152, ptr %136, align 8
  %153 = load i16, ptr %129, align 8
  %154 = add i16 %153, 1
  store i16 %154, ptr %129, align 8
  %155 = load i16, ptr %130, align 2
  %156 = icmp slt i16 %154, %155
  br i1 %156, label %137, label %157

157:                                              ; preds = %147, %137, %127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %158

158:                                              ; preds = %157, %116, %22
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %159 = load i16, ptr %6, align 4
  %160 = add i16 %159, 1
  store i16 %160, ptr %6, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  br label %161

161:                                              ; preds = %158, %19, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_work_schedule(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_crtc_vblank_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_crc_atomic_stop_reporting(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 19
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %51

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  br label %9

9:                                                ; preds = %45, %7
  %10 = phi i32 [ 0, %7 ], [ %46, %45 ]
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr %struct.__drm_crtcs_state, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %45, label %15

15:                                               ; preds = %9
  %16 = getelementptr %struct.__drm_crtcs_state, ptr %11, i32 %10, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nv50_head_atom, ptr %17, i32 0, i32 15
  %19 = load i16, ptr %18, align 2
  %20 = and i16 %19, 512
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %45, label %22

22:                                               ; preds = %15
  %23 = getelementptr i8, ptr %13, i32 888
  tail call void @_raw_spin_lock_irq(ptr noundef %23) #7
  %24 = getelementptr i8, ptr %13, i32 1152
  store i32 0, ptr %24, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %25 = load i16, ptr %23, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  tail call void @drm_crtc_vblank_put(ptr noundef nonnull %13) #7
  %27 = getelementptr i8, ptr %13, i32 1104
  %28 = tail call zeroext i1 @drm_vblank_work_cancel_sync(ptr noundef %27) #7
  %29 = load i32, ptr @__drm_debug, align 4
  %30 = and i32 %29, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %22
  %33 = load ptr, ptr %13, align 8
  %34 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nouveau_drm, ptr %35, i32 0, i32 2, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nouveau_drm, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.drm_device, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nouveau_drm, ptr %35, i32 0, i32 2, i32 12
  %43 = getelementptr inbounds %struct.nouveau_crtc, ptr %13, i32 0, i32 1
  %44 = load i32, ptr %43, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.2, ptr noundef %42, i32 noundef %44) #8
  br label %45

45:                                               ; preds = %32, %22, %15, %9
  %46 = add nuw nsw i32 %10, 1
  %47 = load ptr, ptr %2, align 4
  %48 = getelementptr inbounds %struct.drm_device, ptr %47, i32 0, i32 30, i32 19
  %49 = load i32, ptr %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %9, label %51

51:                                               ; preds = %45, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_vblank_work_cancel_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_crc_atomic_init_notifier_contexts(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 19
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %45

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  br label %9

9:                                                ; preds = %39, %7
  %10 = phi ptr [ %3, %7 ], [ %40, %39 ]
  %11 = phi i32 [ 0, %7 ], [ %41, %39 ]
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr %struct.__drm_crtcs_state, ptr %12, i32 %11
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %9
  %17 = getelementptr %struct.__drm_crtcs_state, ptr %12, i32 %11, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nv50_head_atom, ptr %18, i32 0, i32 14
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 512
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %16
  %24 = getelementptr i8, ptr %14, i32 1168
  store i16 0, ptr %24, align 8
  %25 = getelementptr i8, ptr %14, i32 1172
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, -3
  store i8 %27, ptr %25, align 4
  %28 = getelementptr i8, ptr %14, i32 920
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr i8, ptr %14, i32 928
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i32
  tail call void @mmioset(ptr noundef %29, i32 noundef 0, i32 noundef %32) #7
  %33 = getelementptr i8, ptr %14, i32 1024
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr i8, ptr %14, i32 1032
  %36 = load i64, ptr %35, align 8
  %37 = trunc i64 %36 to i32
  tail call void @mmioset(ptr noundef %34, i32 noundef 0, i32 noundef %37) #7
  %38 = load ptr, ptr %2, align 4
  br label %39

39:                                               ; preds = %23, %16, %9
  %40 = phi ptr [ %38, %23 ], [ %10, %16 ], [ %10, %9 ]
  %41 = add nuw nsw i32 %11, 1
  %42 = getelementptr inbounds %struct.drm_device, ptr %40, i32 0, i32 30, i32 19
  %43 = load i32, ptr %42, align 4
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %9, label %45

45:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_crc_atomic_release_notifier_contexts(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nv50_disp, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nv50_core_func, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 19
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  br label %19

19:                                               ; preds = %52, %17
  %20 = phi ptr [ %3, %17 ], [ %53, %52 ]
  %21 = phi i32 [ 0, %17 ], [ %54, %52 ]
  %22 = load ptr, ptr %18, align 4
  %23 = getelementptr %struct.__drm_crtcs_state, ptr %22, i32 %21
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %52, label %26

26:                                               ; preds = %19
  %27 = getelementptr %struct.__drm_crtcs_state, ptr %22, i32 %21, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %24, i32 -8
  %30 = getelementptr i8, ptr %24, i32 896
  %31 = getelementptr i8, ptr %24, i32 1172
  %32 = load i8, ptr %31, align 4
  %33 = and i8 %32, 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr [2 x %struct.nv50_crc_notifier_ctx], ptr %30, i32 0, i32 %34
  %36 = getelementptr inbounds %struct.nv50_head_atom, ptr %28, i32 0, i32 15
  %37 = load i16, ptr %36, align 2
  %38 = and i16 %37, 512
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %26
  %41 = and i8 %32, 2
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  tail call fastcc void @nv50_crc_wait_ctx_finished(ptr noundef %29, ptr noundef %13, ptr noundef %35)
  %44 = load i8, ptr %31, align 4
  %45 = and i8 %44, 1
  %46 = xor i8 %45, 1
  %47 = zext i8 %46 to i32
  %48 = getelementptr [2 x %struct.nv50_crc_notifier_ctx], ptr %30, i32 0, i32 %47
  br label %49

49:                                               ; preds = %43, %40
  %50 = phi ptr [ %48, %43 ], [ %35, %40 ]
  tail call fastcc void @nv50_crc_wait_ctx_finished(ptr noundef %29, ptr noundef %13, ptr noundef %50)
  %51 = load ptr, ptr %2, align 4
  br label %52

52:                                               ; preds = %49, %26, %19
  %53 = phi ptr [ %51, %49 ], [ %20, %26 ], [ %20, %19 ]
  %54 = add nuw nsw i32 %21, 1
  %55 = getelementptr inbounds %struct.drm_device, ptr %53, i32 0, i32 30, i32 19
  %56 = load i32, ptr %55, align 4
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %19, label %58

58:                                               ; preds = %52, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_crc_wait_ctx_finished(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.nvif_timer_wait, align 8
  %5 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3
  call void @nvif_timer_wait_init(ptr noundef %9, i64 noundef 50000000, ptr noundef nonnull %4) #7
  %10 = getelementptr inbounds %struct.nv50_crc_func, ptr %1, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = call zeroext i1 %11(ptr noundef %0, ptr noundef %2) #7
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  br label %45

14:                                               ; preds = %17
  %15 = load ptr, ptr %10, align 4
  %16 = call zeroext i1 %15(ptr noundef %0, ptr noundef %2) #7
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %3
  %18 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %4) #7
  %19 = icmp sgt i64 %18, -1
  br i1 %19, label %14, label %20

20:                                               ; preds = %17, %14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  switch i64 %18, label %31 [
    i64 -110, label %21
    i64 0, label %45
  ]

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nouveau_drm, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 12
  %29 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %30 = load i32, ptr %29, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.12, ptr noundef %28, i32 noundef %30) #8
  br label %45

31:                                               ; preds = %20
  %32 = load i32, ptr @__drm_debug, align 4
  %33 = and i32 %32, 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nouveau_drm, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.drm_device, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 12
  %43 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %44 = load i32, ptr %43, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.13, ptr noundef %42, i32 noundef %44, i64 noundef %18) #8
  br label %45

45:                                               ; preds = %35, %31, %21, %20, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_crc_atomic_start_reporting(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 19
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %60

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  br label %9

9:                                                ; preds = %54, %7
  %10 = phi i32 [ 0, %7 ], [ %55, %54 ]
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr %struct.__drm_crtcs_state, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %54, label %15

15:                                               ; preds = %9
  %16 = getelementptr %struct.__drm_crtcs_state, ptr %11, i32 %10, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nv50_head_atom, ptr %17, i32 0, i32 14
  %19 = load i16, ptr %18, align 8
  %20 = and i16 %19, 512
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %54, label %22

22:                                               ; preds = %15
  %23 = getelementptr i8, ptr %13, i32 888
  %24 = tail call i32 @drm_crtc_vblank_get(ptr noundef nonnull %13) #7
  tail call void @_raw_spin_lock_irq(ptr noundef %23) #7
  %25 = tail call i64 @drm_crtc_vblank_count(ptr noundef nonnull %13) #7
  %26 = getelementptr i8, ptr %13, i32 1160
  store i64 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.nv50_head_atom, ptr %17, i32 0, i32 12
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %13, i32 1152
  store i32 %28, ptr %29, align 8
  %30 = getelementptr i8, ptr %13, i32 1104
  %31 = getelementptr i8, ptr %13, i32 1170
  %32 = load i16, ptr %31, align 2
  %33 = sext i16 %32 to i64
  %34 = add i64 %25, %33
  %35 = tail call i32 @drm_vblank_work_schedule(ptr noundef %30, i64 noundef %34, i1 noundef zeroext true) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %36 = load i16, ptr %23, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %38 = load i32, ptr @__drm_debug, align 4
  %39 = and i32 %38, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %22
  %42 = load ptr, ptr %13, align 8
  %43 = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nouveau_drm, ptr %44, i32 0, i32 2, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nouveau_drm, ptr %44, i32 0, i32 2, i32 12
  %52 = getelementptr inbounds %struct.nouveau_crtc, ptr %13, i32 0, i32 1
  %53 = load i32, ptr %52, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.3, ptr noundef %51, i32 noundef %53) #8
  br label %54

54:                                               ; preds = %41, %22, %15, %9
  %55 = add nuw nsw i32 %10, 1
  %56 = load ptr, ptr %2, align 4
  %57 = getelementptr inbounds %struct.drm_device, ptr %56, i32 0, i32 30, i32 19
  %58 = load i32, ptr %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %9, label %60

60:                                               ; preds = %54, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @nv50_crc_atomic_check_head(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 20
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %7, %9
  %11 = icmp eq i32 %7, 0
  %12 = icmp eq i32 %9, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 14
  %16 = load i16, ptr %15, align 8
  %17 = and i16 %16, -513
  store i16 %17, ptr %15, align 8
  %18 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 15
  %19 = load i16, ptr %18, align 2
  %20 = and i16 %19, -513
  store i16 %20, ptr %18, align 2
  br label %77

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 3
  %23 = load i8, ptr %22, align 2
  %24 = and i8 %23, 14
  %25 = icmp ne i8 %24, 0
  %26 = xor i1 %10, true
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %21
  br i1 %11, label %34, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.drm_crtc_state, ptr %2, i32 0, i32 2
  %31 = load i8, ptr %30, align 1, !range !15
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i16 0, i16 512
  br label %34

34:                                               ; preds = %29, %28
  %35 = phi i16 [ 0, %28 ], [ %33, %29 ]
  %36 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 15
  %37 = load i16, ptr %36, align 2
  %38 = and i16 %37, -513
  %39 = or i16 %38, %35
  store i16 %39, ptr %36, align 2
  br i1 %12, label %45, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 2
  %42 = load i8, ptr %41, align 1, !range !15
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, i16 0, i16 512
  br label %45

45:                                               ; preds = %40, %34
  %46 = phi i16 [ 0, %34 ], [ %44, %40 ]
  %47 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 14
  %48 = load i16, ptr %47, align 8
  %49 = and i16 %48, -513
  %50 = or i16 %49, %46
  store i16 %50, ptr %47, align 8
  br i1 %10, label %62, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 11
  %53 = load i8, ptr %52, align 8
  %54 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 11
  %55 = load i8, ptr %54, align 8
  %56 = xor i8 %55, %53
  %57 = icmp ugt i8 %56, 63
  %58 = and i16 %48, 1024
  %59 = select i1 %57, i16 1024, i16 %58
  %60 = and i16 %50, -1025
  %61 = or i16 %59, %60
  store i16 %61, ptr %47, align 8
  br label %62

62:                                               ; preds = %51, %45
  %63 = phi i16 [ %61, %51 ], [ %50, %45 ]
  %64 = icmp eq i16 %35, 0
  %65 = and i16 %63, 512
  %66 = icmp eq i16 %65, 0
  %67 = select i1 %64, i1 true, i1 %66
  br i1 %67, label %77, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.nv50_atom, ptr %5, i32 0, i32 3
  store i8 1, ptr %69, align 1
  br label %77

70:                                               ; preds = %21
  %71 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 14
  %72 = load i16, ptr %71, align 8
  %73 = and i16 %72, -513
  store i16 %73, ptr %71, align 8
  %74 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 15
  %75 = load i16, ptr %74, align 2
  %76 = and i16 %75, -513
  store i16 %76, ptr %74, align 2
  br label %77

77:                                               ; preds = %70, %68, %62, %14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_crc_atomic_check_outp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nv50_atom, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 1, !range !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %67

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 19
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %67

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  %13 = getelementptr inbounds %struct.nv50_atom, ptr %0, i32 0, i32 1
  br label %14

14:                                               ; preds = %61, %11
  %15 = phi i32 [ 0, %11 ], [ %62, %61 ]
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr %struct.__drm_crtcs_state, ptr %16, i32 %15
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %61, label %20

20:                                               ; preds = %14
  %21 = getelementptr %struct.__drm_crtcs_state, ptr %16, i32 %15, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr %struct.__drm_crtcs_state, ptr %16, i32 %15, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %22, align 8
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.drm_device, ptr %26, i32 0, i32 30, i32 16
  %28 = getelementptr inbounds %struct.drm_crtc_state, ptr %22, i32 0, i32 6
  br label %29

29:                                               ; preds = %33, %20
  %30 = phi ptr [ %27, %20 ], [ %31, %33 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %27
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %28, align 8
  %35 = getelementptr i8, ptr %31, i32 36
  %36 = load i32, ptr %35, align 4
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %34
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %29, label %40

40:                                               ; preds = %33, %29
  %41 = phi ptr [ %31, %33 ], [ %27, %29 ]
  %42 = getelementptr i8, ptr %41, i32 -4
  %43 = tail call ptr @nv50_real_outp(ptr noundef %42) #7
  %44 = getelementptr inbounds %struct.nv50_head_atom, ptr %24, i32 0, i32 15
  %45 = load i16, ptr %44, align 2
  %46 = and i16 %45, 512
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %52, %40
  %49 = phi ptr [ %50, %52 ], [ %13, %40 ]
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %13
  br i1 %51, label %61, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.nv50_outp_atom, ptr %50, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %43
  br i1 %55, label %56, label %48

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.nv50_outp_atom, ptr %50, i32 0, i32 3
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store i8 1, ptr %2, align 1
  br label %67

61:                                               ; preds = %56, %48, %40, %14
  %62 = add nuw nsw i32 %15, 1
  %63 = load ptr, ptr %6, align 4
  %64 = getelementptr inbounds %struct.drm_device, ptr %63, i32 0, i32 30, i32 19
  %65 = load i32, ptr %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %14, label %67

67:                                               ; preds = %61, %60, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv50_real_outp(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_crc_atomic_set(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nv50_core_func, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %1, align 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 16
  %18 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 6
  br label %19

19:                                               ; preds = %23, %2
  %20 = phi ptr [ %17, %2 ], [ %21, %23 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %17
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %18, align 8
  %25 = getelementptr i8, ptr %21, i32 36
  %26 = load i32, ptr %25, align 4
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %24
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %19, label %30

30:                                               ; preds = %23, %19
  %31 = phi ptr [ %21, %23 ], [ %17, %19 ]
  %32 = getelementptr i8, ptr %31, i32 -4
  %33 = tail call ptr @nv50_real_outp(ptr noundef %32) #7
  %34 = load ptr, ptr %14, align 4
  %35 = getelementptr inbounds %struct.nouveau_encoder, ptr %33, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 12
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nouveau_encoder, ptr %33, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  switch i32 %38, label %42 [
    i32 0, label %53
    i32 2, label %41
  ]

41:                                               ; preds = %30
  br label %53

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.dcb_output, ptr %40, i32 0, i32 8
  %44 = load i8, ptr %43, align 4
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.dcb_output, ptr %40, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 3, i32 1
  %51 = icmp eq i32 %48, 6
  %52 = select i1 %51, i32 5, i32 %50
  br label %53

53:                                               ; preds = %46, %42, %41, %30
  %54 = phi i32 [ 4, %41 ], [ %38, %30 ], [ 2, %42 ], [ %52, %46 ]
  %55 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 2, i32 7
  %56 = load i8, ptr %55, align 4
  %57 = and i8 %56, 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr %struct.nv50_head, ptr %0, i32 0, i32 2, i32 1, i32 %58
  %60 = tail call i32 %34(ptr noundef %0, i32 noundef %36, i32 noundef %54, ptr noundef %59) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_crc_atomic_clr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nv50_disp, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nv50_core_func, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_crc_set_source(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nv_dma_v0, align 8
  %4 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %5 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nv50_disp, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nv50_core_func, ptr %13, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 4
  %17 = icmp eq ptr %1, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = tail call i32 @match_string(ptr noundef nonnull @nv50_crc_sources, i32 noundef 6, ptr noundef nonnull %1) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %149, label %21

21:                                               ; preds = %18, %2
  %22 = phi i32 [ 0, %2 ], [ %19, %18 ]
  %23 = icmp eq i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  call void @drm_modeset_acquire_init(ptr noundef nonnull %4, i32 noundef %25) #7
  %26 = call ptr @drm_atomic_state_alloc(ptr noundef %5) #7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %145, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.drm_atomic_state, ptr %26, i32 0, i32 9
  store ptr %4, ptr %29, align 4
  br i1 %23, label %99, label %30

30:                                               ; preds = %28
  %31 = getelementptr i8, ptr %0, i32 896
  %32 = getelementptr inbounds %struct.nv50_crc_func, ptr %15, i32 0, i32 6
  %33 = getelementptr i8, ptr %0, i32 752
  %34 = getelementptr inbounds %struct.nv_dma_v0, ptr %3, i32 0, i32 1
  %35 = getelementptr inbounds %struct.nv_dma_v0, ptr %3, i32 0, i32 2
  %36 = getelementptr inbounds %struct.nv_dma_v0, ptr %3, i32 0, i32 3
  %37 = getelementptr inbounds %struct.nv_dma_v0, ptr %3, i32 0, i32 4
  %38 = getelementptr inbounds %struct.nv_dma_v0, ptr %3, i32 0, i32 5
  %39 = load i32, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3)
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr inbounds %struct.drm_device, ptr %40, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 19
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.nv50_disp, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = zext i32 %39 to i64
  %49 = call i32 @nvif_mem_ctor_map(ptr noundef %16, ptr noundef nonnull @.str.14, i8 noundef zeroext 1, i64 noundef %48, ptr noundef %31) #7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %30
  %52 = getelementptr inbounds %struct.nv50_core, ptr %47, i32 0, i32 1
  %53 = load i32, ptr %33, align 8
  %54 = shl i32 %53, 1
  %55 = or i32 %54, -67108864
  store i8 0, ptr %3, align 8
  store i8 1, ptr %34, align 1
  store i8 3, ptr %35, align 2
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %36, i8 0, i32 5, i1 false) #7
  %56 = getelementptr i8, ptr %0, i32 944
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %37, align 8
  %58 = getelementptr i8, ptr %0, i32 952
  %59 = load i64, ptr %58, align 8
  %60 = add i64 %57, -1
  %61 = add i64 %60, %59
  store i64 %61, ptr %38, align 8
  %62 = getelementptr i8, ptr %0, i32 960
  %63 = call i32 @nvif_object_ctor(ptr noundef %52, ptr noundef nonnull @.str.15, i32 noundef %55, i32 noundef 61, ptr noundef nonnull %3, i32 noundef 24, ptr noundef %62) #7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %84, %51
  %66 = phi i32 [ %63, %51 ], [ %96, %84 ]
  %67 = phi ptr [ %31, %51 ], [ %71, %84 ]
  call void @nvif_mem_dtor(ptr noundef %67) #7
  br label %68

68:                                               ; preds = %70, %65, %30
  %69 = phi i32 [ %66, %65 ], [ %49, %30 ], [ %82, %70 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3)
  br label %130

70:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3)
  %71 = getelementptr i8, ptr %0, i32 1000
  %72 = load i32, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3)
  %73 = load ptr, ptr %0, align 8
  %74 = getelementptr inbounds %struct.drm_device, ptr %73, i32 0, i32 5
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 19
  %77 = load ptr, ptr %76, align 4
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.nv50_disp, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = zext i32 %72 to i64
  %82 = call i32 @nvif_mem_ctor_map(ptr noundef %16, ptr noundef nonnull @.str.14, i8 noundef zeroext 1, i64 noundef %81, ptr noundef %71) #7
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %68

84:                                               ; preds = %70
  %85 = getelementptr inbounds %struct.nv50_core, ptr %80, i32 0, i32 1
  %86 = load i32, ptr %33, align 8
  %87 = shl i32 %86, 1
  %88 = or i32 %87, -67108863
  store i8 0, ptr %3, align 8
  store i8 1, ptr %34, align 1
  store i8 3, ptr %35, align 2
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %36, i8 0, i32 5, i1 false) #7
  %89 = getelementptr i8, ptr %0, i32 1048
  %90 = load i64, ptr %89, align 8
  store i64 %90, ptr %37, align 8
  %91 = getelementptr i8, ptr %0, i32 1056
  %92 = load i64, ptr %91, align 8
  %93 = add i64 %90, -1
  %94 = add i64 %93, %92
  store i64 %94, ptr %38, align 8
  %95 = getelementptr i8, ptr %0, i32 1064
  %96 = call i32 @nvif_object_ctor(ptr noundef %85, ptr noundef nonnull @.str.15, i32 noundef %88, i32 noundef 61, ptr noundef nonnull %3, i32 noundef 24, ptr noundef %95) #7
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %65

98:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3)
  br label %99

99:                                               ; preds = %98, %28
  %100 = icmp eq i32 %22, 4
  %101 = icmp eq i32 %22, 5
  %102 = select i1 %100, i8 64, i8 0
  %103 = select i1 %101, i8 -128, i8 %102
  br label %104

104:                                              ; preds = %147, %99
  %105 = call ptr @drm_atomic_get_crtc_state(ptr noundef nonnull %26, ptr noundef %0) #7
  %106 = icmp ugt ptr %105, inttoptr (i32 -4096 to ptr)
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = ptrtoint ptr %105 to i32
  switch i32 %108, label %109 [
    i32 -35, label %147
    i32 0, label %111
  ]

109:                                              ; preds = %107
  %110 = ptrtoint ptr %105 to i32
  call void @drm_modeset_drop_locks(ptr noundef nonnull %4) #7
  br label %130

111:                                              ; preds = %107, %104
  %112 = getelementptr inbounds %struct.nv50_head_atom, ptr %105, i32 0, i32 12
  store i32 %22, ptr %112, align 4
  %113 = getelementptr inbounds %struct.nv50_head_atom, ptr %105, i32 0, i32 11
  %114 = load i8, ptr %113, align 8
  %115 = and i8 %114, 63
  %116 = or i8 %115, %103
  store i8 %116, ptr %113, align 8
  %117 = call i32 @drm_atomic_commit(ptr noundef nonnull %26) #7
  %118 = icmp eq i32 %117, -35
  br i1 %118, label %147, label %119

119:                                              ; preds = %111
  %120 = icmp ne i32 %117, 0
  %121 = icmp ne i32 %22, 0
  %122 = select i1 %120, i1 true, i1 %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.nv50_crc_func, ptr %15, i32 0, i32 4
  %125 = load i16, ptr %124, align 4
  %126 = getelementptr i8, ptr %0, i32 1170
  store i16 %125, ptr %126, align 2
  br label %127

127:                                              ; preds = %123, %119
  call void @drm_modeset_drop_locks(ptr noundef nonnull %4) #7
  %128 = icmp ne i32 %117, 0
  %129 = select i1 %23, i1 true, i1 %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %127, %109, %68
  %131 = phi i32 [ %69, %68 ], [ %117, %127 ], [ %110, %109 ]
  %132 = getelementptr i8, ptr %0, i32 896
  %133 = getelementptr i8, ptr %0, i32 960
  call void @nvif_object_dtor(ptr noundef %133) #7
  call void @nvif_mem_dtor(ptr noundef %132) #7
  %134 = getelementptr i8, ptr %0, i32 1000
  %135 = getelementptr i8, ptr %0, i32 1064
  call void @nvif_object_dtor(ptr noundef %135) #7
  call void @nvif_mem_dtor(ptr noundef %134) #7
  br label %136

136:                                              ; preds = %130, %127
  %137 = phi i32 [ %131, %130 ], [ 0, %127 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %26) #7, !srcloc !17
  %138 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %26, ptr nonnull %26, i32 1, ptr nonnull elementtype(i32) %26) #7, !srcloc !18
  %139 = extractvalue { i32, i32, i32 } %138, 0
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %144, label %141

141:                                              ; preds = %136
  %142 = icmp sgt i32 %139, 0
  br i1 %142, label %145, label %143, !prof !19

143:                                              ; preds = %141
  call void @refcount_warn_saturate(ptr noundef nonnull %26, i32 noundef 3) #7
  br label %145

144:                                              ; preds = %136
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  call void @__drm_atomic_state_free(ptr noundef nonnull %26) #7
  br label %145

145:                                              ; preds = %144, %143, %141, %21
  %146 = phi i32 [ -12, %21 ], [ %137, %141 ], [ %137, %143 ], [ %137, %144 ]
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %4) #7
  br label %149

147:                                              ; preds = %111, %107
  call void @drm_atomic_state_clear(ptr noundef nonnull %26) #7
  %148 = call i32 @drm_modeset_backoff(ptr noundef nonnull %4) #7
  br label %104

149:                                              ; preds = %145, %18
  %150 = phi i32 [ %146, %145 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #7
  ret i32 %150
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_state_alloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_commit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_state_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_head_crc_late_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nv50_disp, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nv50_core_func, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 0, i32 25
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #7
  %21 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 420, ptr noundef %20, ptr noundef %0, ptr noundef nonnull @nv50_crc_flip_threshold_fops) #7
  br label %22

22:                                               ; preds = %19, %15, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_crc_init(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nv50_disp, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_core_func, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nv50_crc_func, ptr %11, i32 0, i32 4
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi ptr [ %15, %17 ], [ %26, %19 ]
  %21 = getelementptr i8, ptr %20, i32 880
  %22 = load i16, ptr %18, align 4
  %23 = getelementptr i8, ptr %20, i32 1162
  store i16 %22, ptr %23, align 2
  store i32 0, ptr %21, align 8
  %24 = getelementptr i8, ptr %20, i32 1096
  %25 = getelementptr i8, ptr %20, i32 -8
  tail call void @drm_vblank_work_init(ptr noundef %24, ptr noundef %25, ptr noundef nonnull @nv50_crc_ctx_flip_work) #7
  %26 = load ptr, ptr %20, align 4
  %27 = icmp eq ptr %26, %14
  br i1 %27, label %28, label %19

28:                                               ; preds = %19, %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_add_crc_entry(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_timer_wait_test(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_mem_ctor_map(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_mem_dtor(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_crc_debugfs_flip_threshold_set(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_head, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nv50_disp, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nv50_core_func, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %22 = call i32 @kstrtoint_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 10, ptr noundef nonnull %5) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %4
  %25 = load i32, ptr %5, align 4
  %26 = getelementptr inbounds %struct.nv50_crc_func, ptr %21, i32 0, i32 4
  %27 = load i16, ptr %26, align 4
  %28 = sext i16 %27 to i32
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %66, label %30

30:                                               ; preds = %24
  %31 = icmp eq i32 %25, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  store i32 %28, ptr %5, align 4
  br label %35

33:                                               ; preds = %30
  %34 = icmp slt i32 %25, -1
  br i1 %34, label %66, label %35

35:                                               ; preds = %33, %32
  %36 = getelementptr inbounds %struct.nv50_head, ptr %9, i32 0, i32 1, i32 0, i32 4
  %37 = call i32 @drm_modeset_lock_single_interruptible(ptr noundef %36) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.nv50_head, ptr %9, i32 0, i32 1, i32 0, i32 22
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nv50_head_atom, ptr %41, i32 0, i32 12
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  %46 = load i32, ptr @__drm_debug, align 4
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 2, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 3
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.drm_device, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 2, i32 12
  %57 = getelementptr inbounds %struct.nv50_head, ptr %9, i32 0, i32 1, i32 1
  %58 = load i32, ptr %57, align 8
  %59 = load i32, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.16, ptr noundef %56, i32 noundef %58, i32 noundef %59) #8
  br label %60

60:                                               ; preds = %49, %45
  %61 = load i32, ptr %5, align 4
  %62 = trunc i32 %61 to i16
  %63 = getelementptr inbounds %struct.nv50_head, ptr %9, i32 0, i32 2, i32 6
  store i16 %62, ptr %63, align 2
  br label %64

64:                                               ; preds = %60, %39
  %65 = phi i32 [ %2, %60 ], [ -16, %39 ]
  call void @drm_modeset_unlock(ptr noundef %36) #7
  br label %66

66:                                               ; preds = %64, %35, %33, %24, %4
  %67 = phi i32 [ %65, %64 ], [ %22, %4 ], [ -22, %24 ], [ -22, %33 ], [ %37, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_crc_debugfs_flip_threshold_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @nv50_crc_debugfs_flip_threshold_get, ptr noundef %4) #7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock_single_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_crc_debugfs_flip_threshold_get(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nv50_head, ptr %4, i32 0, i32 1, i32 0, i32 4
  %6 = tail call i32 @drm_modeset_lock_single_interruptible(ptr noundef %5) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nv50_head, ptr %4, i32 0, i32 2, i32 6
  %10 = load i16, ptr %9, align 2
  %11 = sext i16 %10 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %11) #7
  tail call void @drm_modeset_unlock(ptr noundef %5) #7
  br label %12

12:                                               ; preds = %8, %2
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_vblank_work_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_crc_ctx_flip_work(ptr noundef %0) #0 {
  %2 = alloca [6 x i32], align 4
  %3 = alloca [6 x i32], align 4
  %4 = getelementptr i8, ptr %0, i32 -216
  %5 = getelementptr i8, ptr %0, i32 -1112
  %6 = getelementptr i8, ptr %0, i32 -1104
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 19
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i64 @drm_crtc_vblank_count(ptr noundef %6) #7
  %14 = getelementptr i8, ptr %0, i32 68
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.nv50_disp, ptr %12, i32 0, i32 4
  %19 = tail call i32 @mutex_trylock(ptr noundef %18) #7
  %20 = icmp eq i32 %19, 0
  %21 = icmp eq ptr %7, null
  br i1 %20, label %22, label %32

22:                                               ; preds = %1
  br i1 %21, label %26, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %22
  %27 = phi ptr [ %25, %23 ], [ null, %22 ]
  %28 = getelementptr i8, ptr %0, i32 -1088
  %29 = load ptr, ptr %28, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %27, i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef %29) #7
  %30 = add i64 %13, 1
  %31 = tail call i32 @drm_vblank_work_schedule(ptr noundef %0, i64 noundef %30, i1 noundef zeroext true) #7
  br label %99

32:                                               ; preds = %1
  br i1 %21, label %36, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %32
  %37 = phi ptr [ %35, %33 ], [ null, %32 ]
  %38 = getelementptr i8, ptr %0, i32 -1088
  %39 = load ptr, ptr %38, align 8
  %40 = load i8, ptr %14, align 4
  %41 = and i8 %40, 1
  %42 = zext i8 %41 to i32
  %43 = zext i8 %17 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %37, i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef %39, i32 noundef %42, i32 noundef %43) #7
  %44 = load ptr, ptr %6, align 8
  %45 = getelementptr inbounds %struct.drm_device, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 19
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.nv50_disp, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false) #7
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.nv50_core_func, ptr %52, i32 0, i32 7
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nv50_crc_func, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 %56(ptr noundef %5, ptr noundef null) #7
  %58 = load ptr, ptr %51, align 8
  %59 = getelementptr inbounds %struct.nv50_core_func, ptr %58, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = call i32 %60(ptr noundef %51, ptr noundef nonnull %3, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  %62 = getelementptr i8, ptr %0, i32 -208
  %63 = getelementptr [2 x %struct.nv50_crc_notifier_ctx], ptr %62, i32 0, i32 %43
  %64 = load ptr, ptr %6, align 8
  %65 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nouveau_drm, ptr %66, i32 0, i32 19
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.nv50_disp, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false) #7
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.nv50_core_func, ptr %72, i32 0, i32 7
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.nv50_crc_func, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 %76(ptr noundef %5, ptr noundef %63) #7
  %78 = load ptr, ptr %71, align 8
  %79 = getelementptr inbounds %struct.nv50_core_func, ptr %78, i32 0, i32 4
  %80 = load ptr, ptr %79, align 4
  %81 = call i32 %80(ptr noundef %71, ptr noundef nonnull %2, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  call void @mutex_unlock(ptr noundef %18) #7
  %82 = call i64 @drm_crtc_vblank_count(ptr noundef %6) #7
  %83 = icmp eq i64 %82, %13
  br i1 %83, label %94, label %84, !prof !19

84:                                               ; preds = %36
  %85 = load ptr, ptr %8, align 4
  %86 = getelementptr inbounds %struct.nouveau_drm, ptr %85, i32 0, i32 2, i32 1
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.nouveau_drm, ptr %87, i32 0, i32 3
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.drm_device, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.nouveau_drm, ptr %85, i32 0, i32 2, i32 12
  %93 = load ptr, ptr %38, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.20, ptr noundef %92, ptr noundef %93, i64 noundef %82, i64 noundef %13) #8
  br label %94

94:                                               ; preds = %84, %36
  call void @_raw_spin_lock_irq(ptr noundef %4) #7
  %95 = load i8, ptr %14, align 4
  %96 = or i8 %95, 2
  store i8 %96, ptr %14, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %97 = load i16, ptr %4, align 4
  %98 = add i16 %97, 1
  store i16 %98, ptr %4, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br label %99

99:                                               ; preds = %94, %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
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
!9 = !{i64 2149211182}
!10 = !{i64 2149207006}
!11 = !{i64 2149207081, i64 2149207108, i64 2149207155, i64 2149207177, i64 2149207205, i64 2149207225}
!12 = !{i64 2149234185}
!13 = !{i64 515393}
!14 = !{i64 2149235326}
!15 = !{i8 0, i8 2}
!16 = !{i64 2148223760}
!17 = !{i64 619909, i64 2148109880, i64 2148109906, i64 2148109953, i64 2148109975, i64 2148110003, i64 2148110023}
!18 = !{i64 2148125907, i64 2148125939, i64 2148125968, i64 2148126002, i64 2148126033, i64 2148126056}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2149548277}
