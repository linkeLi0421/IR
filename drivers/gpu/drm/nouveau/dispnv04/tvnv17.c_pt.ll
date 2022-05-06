; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv04/tvnv17.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/tvnv17.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_slave_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv17_tv_norm_params = type { i32, %union.anon.190 }
%union.anon.190 = type { %struct.anon.192 }
%struct.anon.192 = type { %struct.drm_display_mode, [38 x i32] }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.anon.205 = type { i32, i32 }
%struct.nv17_tv_encoder = type { %struct.nouveau_encoder, %struct.nv17_tv_state, %struct.nv17_tv_state, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.86, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.87, %struct.anon.94, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.anon.86 = type { i8, ptr }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.94 = type { i8 }
%struct.nv17_tv_state = type { [64 x i8], [4 x [7 x i32]], [4 x [7 x i32]], [4 x [7 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.80, i8 }
%union.anon.80 = type { %struct.anon.84 }
%struct.anon.84 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.74, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.78, ptr, i32, ptr, i8, i32 }
%struct.anon.74 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.99, %struct.anon.100, %struct.anon.102, ptr, %struct.anon.103, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.104, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.110 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.99 = type { ptr, i32, i32, i8 }
%struct.anon.100 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.101] }
%struct.anon.101 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.102 = type { i64, i64 }
%struct.anon.103 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.95 }
%struct.anon.95 = type { ptr, i64 }
%struct.anon.104 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.105, %struct.anon.106, %struct.anon.107, %struct.anon.108 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.anon.105 = type { i32 }
%struct.anon.106 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.107 = type { i16, i16 }
%struct.anon.108 = type { i16, i16, i16, %struct.anon.109, i16 }
%struct.anon.109 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.110 = type { ptr, %struct.mutex, i8 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.79 }
%union.anon.79 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.anon.189 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.162, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.162 = type { %struct.notifier_block }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.193, %struct.anon.194, %struct.anon.195, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.anon.193 = type { i32, i8, i32, i32 }
%struct.anon.194 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.195 = type { i32 }
%struct.nv04_crtc_reg = type { i8, [160 x i8], [16 x i8], [5 x i8], [9 x i8], [21 x i8], [768 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_pll_vals, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32], [7 x i32], i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [38 x i32] }
%struct.nvkm_pll_vals = type { %union.anon.167, i32, i32 }
%union.anon.167 = type { %struct.anon.169 }
%struct.anon.169 = type { i16, i16 }
%struct.anon.191 = type { i32, i32, i32, [64 x i8] }
%struct.anon.203 = type { %struct.nvkm_object, ptr }
%struct.anon.204 = type { %struct.nvkm_object, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_tv_norm281 = internal constant [207 x i8] c"parm=tv_norm:Default TV norm.\0A\09\09Supported: PAL, PAL-M, PAL-N, PAL-Nc, NTSC-M, NTSC-J,\0A\09\09\09hd480i, hd480p, hd576i, hd576p, hd720p, hd1080i.\0A\09\09Default: PAL\0A\09\09*NOTE* Ignored for cards with external TV encoders.\00", section ".modinfo", align 1
@__param_str_tv_norm = internal constant [8 x i8] c"tv_norm\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@nouveau_tv_norm = internal global ptr null, align 4
@__param_tv_norm = internal constant %struct.kernel_param { ptr @__param_str_tv_norm, ptr @__this_module, ptr @param_ops_charp, i16 256, i8 -1, i8 0, %union.anon.64 { ptr @nouveau_tv_norm } }, section "__param", align 4
@__UNIQUE_ID_tv_normtype282 = internal constant [23 x i8] c"parmtype=tv_norm:charp\00", section ".modinfo", align 1
@nv17_tv_funcs = internal constant %struct.drm_encoder_funcs { ptr null, ptr @nv17_tv_destroy, ptr null, ptr null }, align 4
@nv17_tv_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr @nv17_tv_dpms, ptr null, ptr @nv17_tv_mode_fixup, ptr @nv17_tv_prepare, ptr @nv17_tv_commit, ptr @nv17_tv_mode_set, ptr null, ptr @nv17_tv_detect, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@nv17_tv_slave_funcs = internal constant %struct.drm_encoder_slave_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv17_tv_mode_valid, ptr null, ptr null, ptr @nv17_tv_get_modes, ptr @nv17_tv_create_resources, ptr @nv17_tv_set_property }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nv17_tv_norms = external dso_local global [12 x %struct.nv17_tv_norm_params], align 4
@.str = private unnamed_addr constant [52 x i8] c"%s: Setting dpms mode %d on TV encoder (output %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"%s: Output %s is running on CRTC %d using output %c\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: Load detected on output %c\0A\00", align 1
@__const.nv17_tv_get_hd_modes.modes = private unnamed_addr constant [9 x %struct.anon.205] [%struct.anon.205 { i32 640, i32 400 }, %struct.anon.205 { i32 640, i32 480 }, %struct.anon.205 { i32 720, i32 480 }, %struct.anon.205 { i32 720, i32 576 }, %struct.anon.205 { i32 800, i32 600 }, %struct.anon.205 { i32 1024, i32 768 }, %struct.anon.205 { i32 1280, i32 720 }, %struct.anon.205 { i32 1280, i32 1024 }, %struct.anon.205 { i32 1920, i32 1080 }], align 4
@nv17_tv_modes = external dso_local constant [0 x %struct.drm_display_mode], align 4
@nv17_tv_norm_names = external dso_local constant [12 x ptr], align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"%s: Invalid TV norm setting \22%s\22\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_tv_norm281, ptr @__UNIQUE_ID_tv_normtype282, ptr @__param_tv_norm], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv17_tv_create(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1288) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %5, i32 0, i32 3
  store i32 50, ptr %8, align 8
  %9 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %5, i32 0, i32 4
  store i32 50, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %5, i32 0, i32 5
  store i32 50, ptr %10, align 8
  %11 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %5, i32 0, i32 6
  %12 = getelementptr inbounds %struct.nouveau_encoder, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %11, i8 0, i64 20, i1 false)
  store ptr %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 9
  %14 = load i8, ptr %13, align 1
  %15 = tail call i8 @llvm.cttz.i8(i8 %14, i1 true), !range !8
  %16 = zext i8 %15 to i32
  %17 = icmp eq i8 %14, 0
  %18 = select i1 %17, i32 -1, i32 %16
  %19 = getelementptr inbounds %struct.nouveau_encoder, ptr %5, i32 0, i32 2
  store i32 %18, ptr %19, align 8
  %20 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull @nv17_tv_funcs, i32 noundef 4, ptr noundef null) #8
  %21 = getelementptr inbounds %struct.drm_encoder, ptr %5, i32 0, i32 11
  store ptr @nv17_tv_helper_funcs, ptr %21, align 4
  %22 = getelementptr inbounds %struct.drm_encoder_slave, ptr %5, i32 0, i32 1
  store ptr @nv17_tv_slave_funcs, ptr %22, align 8
  %23 = getelementptr inbounds %struct.nouveau_encoder, ptr %5, i32 0, i32 14
  store ptr @nv17_tv_save, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nouveau_encoder, ptr %5, i32 0, i32 15
  store ptr @nv17_tv_restore, ptr %24, align 8
  %25 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 5
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.drm_encoder, ptr %5, i32 0, i32 6
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.drm_encoder, ptr %5, i32 0, i32 7
  store i32 0, ptr %29, align 8
  %30 = tail call i32 @nv17_tv_create_resources(ptr noundef nonnull %5, ptr noundef %0)
  %31 = tail call i32 @drm_connector_attach_encoder(ptr noundef %0, ptr noundef nonnull %5) #8
  br label %32

32:                                               ; preds = %7, %2
  %33 = phi i32 [ 0, %7 ], [ -12, %2 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv17_tv_save(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 @nv04_dac_output_offset(ptr noundef %0) #8
  %4 = add i32 %3, 6817068
  %5 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !9

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %8, i32 %4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3
  %15 = zext i32 %4 to i64
  %16 = tail call i32 @nvif_object_rd(ptr noundef %14, i32 noundef 4, i64 noundef %15) #8
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i32 [ %12, %10 ], [ %16, %13 ]
  %19 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 11
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 2
  tail call void @nv17_tv_state_save(ptr noundef %2, ptr noundef %20) #8
  %21 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 2, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 4
  store i32 %22, ptr %23, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv17_tv_restore(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 @nv04_dac_output_offset(ptr noundef %0) #8
  %4 = add i32 %3, 6817068
  %5 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3, i32 0, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !9

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %10, i32 %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %6) #8, !srcloc !13
  br label %17

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3
  %16 = zext i32 %4 to i64
  tail call void @nvif_object_wr(ptr noundef %15, i32 noundef 4, i64 noundef %16, i32 noundef %6) #8
  br label %17

17:                                               ; preds = %14, %12
  %18 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 2
  tail call void @nv17_tv_state_load(ptr noundef %2, ptr noundef %18) #8
  %19 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 10
  store i32 128, ptr %19, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv17_tv_create_resources(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 13
  %9 = load i8, ptr %8, align 4, !range !14
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 6, i32 12
  %12 = load ptr, ptr @nouveau_tv_norm, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %2
  %15 = tail call i32 @match_string(ptr noundef nonnull @nv17_tv_norm_names, i32 noundef %11, ptr noundef nonnull %12) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  %25 = load ptr, ptr @nouveau_tv_norm, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef %24, ptr noundef %25) #9
  br label %28

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 7
  store i32 %15, ptr %27, align 4
  br label %28

28:                                               ; preds = %26, %17, %2
  %29 = tail call i32 @drm_mode_create_tv_properties(ptr noundef %3, i32 noundef %11, ptr noundef nonnull @nv17_tv_norm_names) #8
  %30 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 6
  %31 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 61
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 9
  %34 = load i32, ptr %33, align 4
  %35 = sext i32 %34 to i64
  tail call void @drm_object_attach_property(ptr noundef %30, ptr noundef %32, i64 noundef %35) #8
  %36 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 60
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = sext i32 %39 to i64
  tail call void @drm_object_attach_property(ptr noundef %30, ptr noundef %37, i64 noundef %40) #8
  %41 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 62
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = zext i32 %44 to i64
  tail call void @drm_object_attach_property(ptr noundef %30, ptr noundef %42, i64 noundef %45) #8
  %46 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 69
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = sext i32 %49 to i64
  tail call void @drm_object_attach_property(ptr noundef %30, ptr noundef %47, i64 noundef %50) #8
  %51 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 71
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = sext i32 %54 to i64
  tail call void @drm_object_attach_property(ptr noundef %30, ptr noundef %52, i64 noundef %55) #8
  %56 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 72
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = sext i32 %59 to i64
  tail call void @drm_object_attach_property(ptr noundef %30, ptr noundef %57, i64 noundef %60) #8
  %61 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 70
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = sext i32 %64 to i64
  tail call void @drm_object_attach_property(ptr noundef %30, ptr noundef %62, i64 noundef %65) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv17_tv_destroy(ptr noundef %0) #0 {
  tail call void @drm_encoder_cleanup(ptr noundef %0) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv17_tv_dpms(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.anon.189, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %55, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %17
  store i32 %1, ptr %12, align 4
  %19 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  %26 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str, ptr noundef %25, i32 noundef %1, i32 noundef %28) #9
  %29 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, -2
  store i32 %31, ptr %29, align 4
  %32 = load i32, ptr %18, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %15
  tail call void @nv04_dfp_update_fp_control(ptr noundef %0, i32 noundef %1) #8
  br label %40

35:                                               ; preds = %15
  tail call void @nv04_dfp_update_fp_control(ptr noundef %0, i32 noundef 3) #8
  %36 = icmp eq i32 %1, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i32, ptr %29, align 4
  %39 = or i32 %38, 1
  store i32 %39, ptr %29, align 4
  br label %40

40:                                               ; preds = %37, %35, %34
  %41 = load i32, ptr %29, align 4
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 2, i32 3, i32 0, i32 6
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !9

46:                                               ; preds = %40
  %47 = getelementptr i8, ptr %44, i32 53760
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %41) #8, !srcloc !13
  br label %50

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %49, i32 noundef 4, i64 noundef 53760, i32 noundef %41) #8
  br label %50

50:                                               ; preds = %48, %46
  %51 = icmp eq i32 %1, 0
  %52 = zext i1 %51 to i32
  %53 = tail call i32 @nvkm_gpio_set(ptr noundef %11, i32 noundef 0, i8 noundef zeroext 45, i8 noundef zeroext -1, i32 noundef %52) #8
  %54 = tail call i32 @nvkm_gpio_set(ptr noundef %11, i32 noundef 0, i8 noundef zeroext 12, i8 noundef zeroext -1, i32 noundef %52) #8
  tail call void @nv04_dac_update_dacclk(ptr noundef %0, i1 noundef zeroext %51) #8
  br label %55

55:                                               ; preds = %50, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv17_tv_mode_fixup(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = tail call zeroext i1 @nv04_dac_in_use(ptr noundef %0) #8
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %5, i32 1
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi i32 [ %13, %11 ], [ 90000, %7 ]
  store i32 %15, ptr %2, align 4
  br label %16

16:                                               ; preds = %14, %3
  %17 = xor i1 %6, true
  ret i1 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv17_tv_prepare(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %8
  %10 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nouveau_crtc, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %16, i32 0, i32 %13, i32 1, i32 51
  %18 = tail call i32 @nv04_dac_output_offset(ptr noundef %0) #8
  %19 = add i32 %18, 6817068
  %20 = load ptr, ptr %6, align 4
  tail call void %20(ptr noundef %0, i32 noundef 3) #8
  tail call void @nv04_dfp_disable(ptr noundef %2, i32 noundef %13) #8
  %21 = load i32, ptr %9, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %59

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 16
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %54, label %27

27:                                               ; preds = %23
  %28 = xor i32 %13, 1
  %29 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 18, i32 24, i32 9
  br label %30

30:                                               ; preds = %48, %27
  %31 = phi ptr [ %25, %27 ], [ %49, %48 ]
  %32 = getelementptr i8, ptr %31, i32 80
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.dcb_output, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, -2
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = getelementptr i8, ptr %31, i32 48
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = tail call i32 @nv04_dfp_get_bound_head(ptr noundef %2, ptr noundef %33) #8
  %44 = icmp eq i32 %43, %13
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8, ptr %29, align 2, !range !14
  %47 = icmp ne i8 %46, 0
  tail call void @nv04_dfp_bind_head(ptr noundef %2, ptr noundef %33, i32 noundef %28, i1 noundef zeroext %47) #8
  br label %48

48:                                               ; preds = %45, %42, %38, %30
  %49 = load ptr, ptr %31, align 4
  %50 = icmp eq ptr %49, %24
  br i1 %50, label %51, label %30

51:                                               ; preds = %48
  %52 = load i32, ptr %9, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %59

54:                                               ; preds = %51, %23
  %55 = icmp eq i32 %13, 0
  %56 = select i1 %55, i8 9, i8 1
  %57 = load i8, ptr %17, align 1
  %58 = or i8 %57, %56
  store i8 %58, ptr %17, align 1
  br label %59

59:                                               ; preds = %54, %51, %1
  %60 = load ptr, ptr %3, align 4
  %61 = getelementptr inbounds %struct.nouveau_drm, ptr %60, i32 0, i32 2, i32 3, i32 0, i32 6
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64, !prof !9

64:                                               ; preds = %59
  %65 = getelementptr i8, ptr %62, i32 %19
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %71

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.nouveau_drm, ptr %60, i32 0, i32 2, i32 3
  %69 = zext i32 %19 to i64
  %70 = tail call i32 @nvif_object_rd(ptr noundef %68, i32 noundef 4, i64 noundef %69) #8
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi i32 [ %66, %64 ], [ %70, %67 ]
  %73 = and i32 %72, -50
  %74 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 1, i32 4
  %75 = load i8, ptr %74, align 1
  %76 = icmp eq i8 %75, 5
  %77 = select i1 %76, i32 1703937, i32 1
  %78 = or i32 %77, %73
  %79 = load i32, ptr %9, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %88

81:                                               ; preds = %71
  %82 = icmp eq i32 %13, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %81
  %84 = or i32 %78, 288
  br label %90

85:                                               ; preds = %81
  %86 = and i32 %78, -305
  %87 = or i32 %86, 32
  br label %90

88:                                               ; preds = %71
  %89 = or i32 %78, 16
  br label %90

90:                                               ; preds = %88, %85, %83
  %91 = phi i32 [ %84, %83 ], [ %87, %85 ], [ %89, %88 ]
  %92 = load ptr, ptr %3, align 4
  %93 = getelementptr inbounds %struct.nouveau_drm, ptr %92, i32 0, i32 2, i32 3, i32 0, i32 6
  %94 = load ptr, ptr %93, align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96, !prof !9

96:                                               ; preds = %90
  %97 = getelementptr i8, ptr %94, i32 %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %91) #8, !srcloc !13
  br label %101

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.nouveau_drm, ptr %92, i32 0, i32 2, i32 3
  %100 = zext i32 %19 to i64
  tail call void @nvif_object_wr(ptr noundef %99, i32 noundef 4, i64 noundef %100, i32 noundef %91) #8
  br label %101

101:                                              ; preds = %98, %96
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv17_tv_commit(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  tail call void @nv17_tv_update_rescaler(ptr noundef %0) #8
  tail call void @nv17_tv_update_properties(ptr noundef %0) #8
  br label %16

15:                                               ; preds = %1
  tail call void @nv17_ctv_update_rescaler(ptr noundef %0) #8
  br label %16

16:                                               ; preds = %15, %14
  %17 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1
  tail call void @nv17_tv_state_load(ptr noundef %2, ptr noundef %17) #8
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 1, i32 2
  %19 = load i16, ptr %18, align 2
  %20 = icmp ult i16 %19, 68
  %21 = tail call i32 @nv04_dac_output_offset(ptr noundef %0) #8
  %22 = add i32 %21, 6817288
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr inbounds %struct.nouveau_drm, ptr %23, i32 0, i32 2, i32 3, i32 0, i32 6
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %20, label %27, label %33

27:                                               ; preds = %16
  br i1 %26, label %30, label %28, !prof !9

28:                                               ; preds = %27
  %29 = getelementptr i8, ptr %25, i32 %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 -268435456) #8, !srcloc !13
  br label %39

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.nouveau_drm, ptr %23, i32 0, i32 2, i32 3
  %32 = zext i32 %22 to i64
  tail call void @nvif_object_wr(ptr noundef %31, i32 noundef 4, i64 noundef %32, i32 noundef -268435456) #8
  br label %39

33:                                               ; preds = %16
  br i1 %26, label %36, label %34, !prof !9

34:                                               ; preds = %33
  %35 = getelementptr i8, ptr %25, i32 %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 1048576) #8, !srcloc !13
  br label %39

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.nouveau_drm, ptr %23, i32 0, i32 2, i32 3
  %38 = zext i32 %22 to i64
  tail call void @nvif_object_wr(ptr noundef %37, i32 noundef 4, i64 noundef %38, i32 noundef 1048576) #8
  br label %39

39:                                               ; preds = %36, %34, %30, %28
  %40 = load ptr, ptr %8, align 4
  tail call void %40(ptr noundef %0, i32 noundef 0) #8
  %41 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.drm_device, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  %48 = tail call ptr @nv04_encoder_get_connector(ptr noundef %0) #8
  %49 = getelementptr inbounds %struct.drm_connector, ptr %48, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nouveau_crtc, ptr %6, i32 0, i32 1
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.dcb_output, ptr %54, i32 0, i32 9
  %56 = load i8, ptr %55, align 1
  %57 = tail call i8 @llvm.cttz.i8(i8 %56, i1 true), !range !8
  %58 = icmp eq i8 %56, 0
  %59 = add nuw nsw i8 %57, 65
  %60 = select i1 %58, i8 64, i8 %59
  %61 = zext i8 %60 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.1, ptr noundef %47, ptr noundef %50, i32 noundef %52, i32 noundef %61) #9
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv17_tv_mode_set(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #3 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_crtc, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %16
  %18 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 1, i32 83
  store i8 64, ptr %18, align 1
  %19 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 1, i32 84
  store i8 0, ptr %19, align 1
  %20 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 18
  store i32 2, ptr %20, align 4
  %21 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 20
  store i32 1, ptr %21, align 4
  %22 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 37
  store i32 0, ptr %22, align 4
  %23 = load i32, ptr %17, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %72

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 4
  %27 = icmp eq i32 %10, 0
  %28 = select i1 %27, i32 319885568, i32 319885584
  store i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 7
  store i32 8421392, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 8
  store i32 47185920, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 12
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 15
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 16
  store i32 31457280, ptr %33, align 4
  %34 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %16, i32 1
  %35 = getelementptr inbounds %struct.anon.191, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  switch i32 %36, label %43 [
    i32 576, label %38
    i32 480, label %37
  ]

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %25
  %39 = phi i32 [ 15728640, %37 ], [ 18874368, %25 ]
  %40 = phi i32 [ 19, %37 ], [ 51, %25 ]
  %41 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 11
  store i32 %39, ptr %41, align 4
  %42 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 17
  store i32 %40, ptr %42, align 4
  br label %43

43:                                               ; preds = %38, %25
  %44 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 1, i32 4
  %45 = load i8, ptr %44, align 1
  %46 = icmp ugt i8 %45, 3
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 9
  store i32 59616, ptr %48, align 4
  %49 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 10
  store i32 5904, ptr %49, align 4
  %50 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 13
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 14
  store i32 0, ptr %51, align 4
  br label %64

52:                                               ; preds = %43
  %53 = load i32, ptr %35, align 4
  switch i32 %53, label %64 [
    i32 576, label %54
    i32 480, label %59
  ]

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 13
  store i32 32, ptr %55, align 4
  %56 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 14
  store i32 16, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 9
  store i32 104208, ptr %57, align 4
  %58 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 10
  store i32 26864, ptr %58, align 4
  br label %64

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 13
  store i32 16, ptr %60, align 4
  %61 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 14
  store i32 32, ptr %61, align 4
  %62 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 9
  store i32 19344, ptr %62, align 4
  %63 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 1, i32 10
  store i32 111744, ptr %63, align 4
  br label %64

64:                                               ; preds = %59, %54, %52, %47
  br label %65

65:                                               ; preds = %65, %64
  %66 = phi i32 [ %70, %65 ], [ 0, %64 ]
  %67 = getelementptr %struct.anon.191, ptr %34, i32 0, i32 3, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = getelementptr [64 x i8], ptr %14, i32 0, i32 %66
  store i8 %68, ptr %69, align 1
  %70 = add nuw nsw i32 %66, 1
  %71 = icmp eq i32 %70, 64
  br i1 %71, label %149, label %65

72:                                               ; preds = %3
  %73 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %16, i32 1
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi i32 [ 0, %72 ], [ %79, %74 ]
  %76 = getelementptr %struct.anon.192, ptr %73, i32 0, i32 1, i32 %75
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 41, i32 %75
  store i32 %77, ptr %78, align 4
  %79 = add nuw nsw i32 %75, 1
  %80 = icmp eq i32 %79, 38
  br i1 %80, label %81, label %74

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.drm_display_mode, ptr %73, i32 0, i32 1
  %83 = load i16, ptr %82, align 4
  %84 = zext i16 %83 to i32
  %85 = add nsw i32 %84, -1
  %86 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 28
  store i32 %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.drm_display_mode, ptr %73, i32 0, i32 4
  %88 = load i16, ptr %87, align 2
  %89 = zext i16 %88 to i32
  %90 = add nsw i32 %89, -1
  %91 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 28, i32 1
  store i32 %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.drm_display_mode, ptr %73, i32 0, i32 2
  %93 = load i16, ptr %92, align 2
  %94 = zext i16 %93 to i32
  %95 = add nsw i32 %94, -1
  %96 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 28, i32 3
  store i32 %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.drm_display_mode, ptr %73, i32 0, i32 3
  %98 = load i16, ptr %97, align 4
  %99 = zext i16 %98 to i32
  %100 = add nsw i32 %99, -1
  %101 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 28, i32 4
  store i32 %100, ptr %101, align 4
  %102 = load i16, ptr %82, align 4
  %103 = zext i16 %102 to i32
  %104 = add nsw i32 %103, -600
  %105 = sdiv i32 %104, 40
  %106 = tail call i32 @llvm.smax.i32(i32 %105, i32 2)
  %107 = add nsw i32 %103, -1
  %108 = add nsw i32 %107, %106
  %109 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 28, i32 2
  store i32 %108, ptr %109, align 4
  %110 = getelementptr inbounds %struct.drm_display_mode, ptr %73, i32 0, i32 6
  %111 = load i16, ptr %110, align 2
  %112 = zext i16 %111 to i32
  %113 = add nsw i32 %112, -1
  %114 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 29
  store i32 %113, ptr %114, align 4
  %115 = getelementptr inbounds %struct.drm_display_mode, ptr %73, i32 0, i32 9
  %116 = load i16, ptr %115, align 4
  %117 = zext i16 %116 to i32
  %118 = add nsw i32 %117, -1
  %119 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 29, i32 1
  store i32 %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.drm_display_mode, ptr %73, i32 0, i32 7
  %121 = load i16, ptr %120, align 4
  %122 = zext i16 %121 to i32
  %123 = add nsw i32 %122, -1
  %124 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 29, i32 3
  store i32 %123, ptr %124, align 4
  %125 = getelementptr inbounds %struct.drm_display_mode, ptr %73, i32 0, i32 8
  %126 = load i16, ptr %125, align 2
  %127 = zext i16 %126 to i32
  %128 = add nsw i32 %127, -1
  %129 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 29, i32 4
  store i32 %128, ptr %129, align 4
  %130 = load i16, ptr %110, align 2
  %131 = zext i16 %130 to i32
  %132 = add nsw i32 %131, -1
  %133 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 29, i32 2
  store i32 %132, ptr %133, align 4
  %134 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 31
  store i32 286261248, ptr %134, align 4
  %135 = getelementptr inbounds %struct.drm_display_mode, ptr %73, i32 0, i32 11
  %136 = load i32, ptr %135, align 4
  %137 = and i32 %136, 4
  %138 = icmp eq i32 %137, 0
  %139 = select i1 %138, i32 286261248, i32 286261249
  store i32 %139, ptr %134, align 4
  %140 = load i32, ptr %135, align 4
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %81
  %144 = or i32 %139, 16
  store i32 %144, ptr %134, align 4
  br label %145

145:                                              ; preds = %143, %81
  %146 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 33
  store i32 17830289, ptr %146, align 4
  %147 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 35
  store i32 0, ptr %147, align 4
  %148 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %10, i32 36
  store i32 8392832, ptr %148, align 4
  br label %149

149:                                              ; preds = %145, %65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv17_tv_detect(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 10
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.anon.203, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i8, ptr %14, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %2
  %20 = tail call zeroext i1 @nv04_dac_in_use(ptr noundef %0) #8
  br i1 %20, label %464, label %26

21:                                               ; preds = %16
  %22 = zext i8 %17 to i32
  store i32 %22, ptr %8, align 4
  %23 = tail call zeroext i1 @nv04_dac_in_use(ptr noundef %0) #8
  br i1 %23, label %464, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %8, align 4
  br label %420

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 2
  %28 = load i16, ptr %27, align 2
  %29 = and i16 %28, -2
  %30 = icmp eq i16 %29, 66
  br i1 %30, label %31, label %416

31:                                               ; preds = %26
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 2, i32 3, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.anon.204, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 25
  %40 = load ptr, ptr %39, align 8
  %41 = tail call i32 @nv04_dac_output_offset(ptr noundef %0) #8
  %42 = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 18, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 136555650, i32 %43
  %46 = add i32 %41, 6817068
  %47 = load ptr, ptr %33, align 4
  %48 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 3, i32 0, i32 6
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51, !prof !9

51:                                               ; preds = %31
  %52 = getelementptr i8, ptr %49, i32 %46
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %58

54:                                               ; preds = %31
  %55 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 3
  %56 = zext i32 %46 to i64
  %57 = tail call i32 @nvif_object_rd(ptr noundef %55, i32 noundef 4, i64 noundef %56) #8
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi i32 [ %53, %51 ], [ %57, %54 ]
  %60 = tail call i32 @nvkm_gpio_get(ptr noundef %40, i32 noundef 0, i8 noundef zeroext 45, i8 noundef zeroext -1) #8
  %61 = tail call i32 @nvkm_gpio_get(ptr noundef %40, i32 noundef 0, i8 noundef zeroext 12, i8 noundef zeroext -1) #8
  %62 = load ptr, ptr %33, align 4
  %63 = and i32 %59, 256
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 6817828, i32 6826020
  %66 = getelementptr inbounds %struct.nouveau_drm, ptr %62, i32 0, i32 2, i32 3, i32 0, i32 6
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69, !prof !9

69:                                               ; preds = %58
  %70 = getelementptr i8, ptr %67, i32 %65
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %76

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.nouveau_drm, ptr %62, i32 0, i32 2, i32 3
  %74 = zext i32 %65 to i64
  %75 = tail call i32 @nvif_object_rd(ptr noundef %73, i32 noundef 4, i64 noundef %74) #8
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i32 [ %71, %69 ], [ %75, %72 ]
  %78 = load ptr, ptr %33, align 4
  %79 = select i1 %64, i32 6817836, i32 6826028
  %80 = getelementptr inbounds %struct.nouveau_drm, ptr %78, i32 0, i32 2, i32 3, i32 0, i32 6
  %81 = load ptr, ptr %80, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83, !prof !9

83:                                               ; preds = %76
  %84 = getelementptr i8, ptr %81, i32 %79
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %90

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.nouveau_drm, ptr %78, i32 0, i32 2, i32 3
  %88 = zext i32 %79 to i64
  %89 = tail call i32 @nvif_object_rd(ptr noundef %87, i32 noundef 4, i64 noundef %88) #8
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i32 [ %85, %83 ], [ %89, %86 ]
  %92 = load ptr, ptr %33, align 4
  %93 = select i1 %64, i32 6817840, i32 6826032
  %94 = getelementptr inbounds %struct.nouveau_drm, ptr %92, i32 0, i32 2, i32 3, i32 0, i32 6
  %95 = load ptr, ptr %94, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97, !prof !9

97:                                               ; preds = %90
  %98 = getelementptr i8, ptr %95, i32 %93
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %104

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.nouveau_drm, ptr %92, i32 0, i32 2, i32 3
  %102 = zext i32 %93 to i64
  %103 = tail call i32 @nvif_object_rd(ptr noundef %101, i32 noundef 4, i64 noundef %102) #8
  br label %104

104:                                              ; preds = %100, %97
  %105 = phi i32 [ %99, %97 ], [ %103, %100 ]
  %106 = load ptr, ptr %33, align 4
  %107 = select i1 %64, i32 6817864, i32 6826056
  %108 = getelementptr inbounds %struct.nouveau_drm, ptr %106, i32 0, i32 2, i32 3, i32 0, i32 6
  %109 = load ptr, ptr %108, align 8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111, !prof !9

111:                                              ; preds = %104
  %112 = getelementptr i8, ptr %109, i32 %107
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %118

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.nouveau_drm, ptr %106, i32 0, i32 2, i32 3
  %116 = zext i32 %107 to i64
  %117 = tail call i32 @nvif_object_rd(ptr noundef %115, i32 noundef 4, i64 noundef %116) #8
  br label %118

118:                                              ; preds = %114, %111
  %119 = phi i32 [ %113, %111 ], [ %117, %114 ]
  %120 = add i32 %41, 6817288
  %121 = load ptr, ptr %33, align 4
  %122 = getelementptr inbounds %struct.nouveau_drm, ptr %121, i32 0, i32 2, i32 3, i32 0, i32 6
  %123 = load ptr, ptr %122, align 8
  %124 = icmp eq ptr %123, null
  br i1 %124, label %128, label %125, !prof !9

125:                                              ; preds = %118
  %126 = getelementptr i8, ptr %123, i32 %120
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %132

128:                                              ; preds = %118
  %129 = getelementptr inbounds %struct.nouveau_drm, ptr %121, i32 0, i32 2, i32 3
  %130 = zext i32 %120 to i64
  %131 = tail call i32 @nvif_object_rd(ptr noundef %129, i32 noundef 4, i64 noundef %130) #8
  br label %132

132:                                              ; preds = %128, %125
  %133 = phi i32 [ %127, %125 ], [ %131, %128 ]
  %134 = load ptr, ptr %33, align 4
  %135 = select i1 %64, i32 6818844, i32 6827036
  %136 = getelementptr inbounds %struct.nouveau_drm, ptr %134, i32 0, i32 2, i32 3, i32 0, i32 6
  %137 = load ptr, ptr %136, align 8
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139, !prof !9

139:                                              ; preds = %132
  %140 = getelementptr i8, ptr %137, i32 %135
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %146

142:                                              ; preds = %132
  %143 = getelementptr inbounds %struct.nouveau_drm, ptr %134, i32 0, i32 2, i32 3
  %144 = zext i32 %135 to i64
  %145 = tail call i32 @nvif_object_rd(ptr noundef %143, i32 noundef 4, i64 noundef %144) #8
  br label %146

146:                                              ; preds = %142, %139
  %147 = phi i32 [ %141, %139 ], [ %145, %142 ]
  %148 = load ptr, ptr %33, align 4
  %149 = select i1 %64, i32 6818836, i32 6827028
  %150 = getelementptr inbounds %struct.nouveau_drm, ptr %148, i32 0, i32 2, i32 3, i32 0, i32 6
  %151 = load ptr, ptr %150, align 8
  %152 = icmp eq ptr %151, null
  br i1 %152, label %156, label %153, !prof !9

153:                                              ; preds = %146
  %154 = getelementptr i8, ptr %151, i32 %149
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %160

156:                                              ; preds = %146
  %157 = getelementptr inbounds %struct.nouveau_drm, ptr %148, i32 0, i32 2, i32 3
  %158 = zext i32 %149 to i64
  %159 = tail call i32 @nvif_object_rd(ptr noundef %157, i32 noundef 4, i64 noundef %158) #8
  br label %160

160:                                              ; preds = %156, %153
  %161 = phi i32 [ %155, %153 ], [ %159, %156 ]
  %162 = load ptr, ptr %33, align 4
  %163 = select i1 %64, i32 6818924, i32 6827116
  %164 = getelementptr inbounds %struct.nouveau_drm, ptr %162, i32 0, i32 2, i32 3, i32 0, i32 6
  %165 = load ptr, ptr %164, align 8
  %166 = icmp eq ptr %165, null
  br i1 %166, label %170, label %167, !prof !9

167:                                              ; preds = %160
  %168 = getelementptr i8, ptr %165, i32 %163
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %174

170:                                              ; preds = %160
  %171 = getelementptr inbounds %struct.nouveau_drm, ptr %162, i32 0, i32 2, i32 3
  %172 = zext i32 %163 to i64
  %173 = tail call i32 @nvif_object_rd(ptr noundef %171, i32 noundef 4, i64 noundef %172) #8
  br label %174

174:                                              ; preds = %170, %167
  %175 = phi i32 [ %169, %167 ], [ %173, %170 ]
  %176 = tail call i32 @nvkm_gpio_set(ptr noundef %40, i32 noundef 0, i8 noundef zeroext 45, i8 noundef zeroext -1, i32 noundef 1) #8
  %177 = tail call i32 @nvkm_gpio_set(ptr noundef %40, i32 noundef 0, i8 noundef zeroext 12, i8 noundef zeroext -1, i32 noundef 1) #8
  %178 = load ptr, ptr %33, align 4
  %179 = getelementptr inbounds %struct.nouveau_drm, ptr %178, i32 0, i32 2, i32 3, i32 0, i32 6
  %180 = load ptr, ptr %179, align 8
  %181 = icmp eq ptr %180, null
  br i1 %181, label %184, label %182, !prof !9

182:                                              ; preds = %174
  %183 = getelementptr i8, ptr %180, i32 %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 1343) #8, !srcloc !13
  br label %187

184:                                              ; preds = %174
  %185 = getelementptr inbounds %struct.nouveau_drm, ptr %178, i32 0, i32 2, i32 3
  %186 = zext i32 %65 to i64
  tail call void @nvif_object_wr(ptr noundef %185, i32 noundef 4, i64 noundef %186, i32 noundef 1343) #8
  br label %187

187:                                              ; preds = %184, %182
  %188 = load ptr, ptr %33, align 4
  %189 = getelementptr inbounds %struct.nouveau_drm, ptr %188, i32 0, i32 2, i32 3, i32 0, i32 6
  %190 = load ptr, ptr %189, align 8
  %191 = icmp eq ptr %190, null
  br i1 %191, label %194, label %192, !prof !9

192:                                              ; preds = %187
  %193 = getelementptr i8, ptr %190, i32 %79
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 1047) #8, !srcloc !13
  br label %197

194:                                              ; preds = %187
  %195 = getelementptr inbounds %struct.nouveau_drm, ptr %188, i32 0, i32 2, i32 3
  %196 = zext i32 %79 to i64
  tail call void @nvif_object_wr(ptr noundef %195, i32 noundef 4, i64 noundef %196, i32 noundef 1047) #8
  br label %197

197:                                              ; preds = %194, %192
  %198 = load ptr, ptr %33, align 4
  %199 = getelementptr inbounds %struct.nouveau_drm, ptr %198, i32 0, i32 2, i32 3, i32 0, i32 6
  %200 = load ptr, ptr %199, align 8
  %201 = icmp eq ptr %200, null
  br i1 %201, label %204, label %202, !prof !9

202:                                              ; preds = %197
  %203 = getelementptr i8, ptr %200, i32 %93
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 1183) #8, !srcloc !13
  br label %207

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.nouveau_drm, ptr %198, i32 0, i32 2, i32 3
  %206 = zext i32 %93 to i64
  tail call void @nvif_object_wr(ptr noundef %205, i32 noundef 4, i64 noundef %206, i32 noundef 1183) #8
  br label %207

207:                                              ; preds = %204, %202
  %208 = load ptr, ptr %33, align 4
  %209 = getelementptr inbounds %struct.nouveau_drm, ptr %208, i32 0, i32 2, i32 3, i32 0, i32 6
  %210 = load ptr, ptr %209, align 8
  %211 = icmp eq ptr %210, null
  br i1 %211, label %214, label %212, !prof !9

212:                                              ; preds = %207
  %213 = getelementptr i8, ptr %210, i32 %107
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 286261265) #8, !srcloc !13
  br label %217

214:                                              ; preds = %207
  %215 = getelementptr inbounds %struct.nouveau_drm, ptr %208, i32 0, i32 2, i32 3
  %216 = zext i32 %107 to i64
  tail call void @nvif_object_wr(ptr noundef %215, i32 noundef 4, i64 noundef %216, i32 noundef 286261265) #8
  br label %217

217:                                              ; preds = %214, %212
  %218 = load ptr, ptr %33, align 4
  %219 = getelementptr inbounds %struct.nouveau_drm, ptr %218, i32 0, i32 2, i32 3, i32 0, i32 6
  %220 = load ptr, ptr %219, align 8
  %221 = icmp eq ptr %220, null
  br i1 %221, label %224, label %222, !prof !9

222:                                              ; preds = %217
  %223 = getelementptr i8, ptr %220, i32 %120
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 0) #8, !srcloc !13
  br label %227

224:                                              ; preds = %217
  %225 = getelementptr inbounds %struct.nouveau_drm, ptr %218, i32 0, i32 2, i32 3
  %226 = zext i32 %120 to i64
  tail call void @nvif_object_wr(ptr noundef %225, i32 noundef 4, i64 noundef %226, i32 noundef 0) #8
  br label %227

227:                                              ; preds = %224, %222
  %228 = and i32 %59, -256
  %229 = or i32 %228, 34
  %230 = load ptr, ptr %33, align 4
  %231 = getelementptr inbounds %struct.nouveau_drm, ptr %230, i32 0, i32 2, i32 3, i32 0, i32 6
  %232 = load ptr, ptr %231, align 8
  %233 = icmp eq ptr %232, null
  br i1 %233, label %236, label %234, !prof !9

234:                                              ; preds = %227
  %235 = getelementptr i8, ptr %232, i32 %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %229) #8, !srcloc !13
  br label %239

236:                                              ; preds = %227
  %237 = getelementptr inbounds %struct.nouveau_drm, ptr %230, i32 0, i32 2, i32 3
  %238 = zext i32 %46 to i64
  tail call void @nvif_object_wr(ptr noundef %237, i32 noundef 4, i64 noundef %238, i32 noundef %229) #8
  br label %239

239:                                              ; preds = %236, %234
  tail call void @msleep(i32 noundef 1) #8
  %240 = or i32 %228, 33
  %241 = load ptr, ptr %33, align 4
  %242 = getelementptr inbounds %struct.nouveau_drm, ptr %241, i32 0, i32 2, i32 3, i32 0, i32 6
  %243 = load ptr, ptr %242, align 8
  %244 = icmp eq ptr %243, null
  br i1 %244, label %247, label %245, !prof !9

245:                                              ; preds = %239
  %246 = getelementptr i8, ptr %243, i32 %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 %240) #8, !srcloc !13
  br label %250

247:                                              ; preds = %239
  %248 = getelementptr inbounds %struct.nouveau_drm, ptr %241, i32 0, i32 2, i32 3
  %249 = zext i32 %46 to i64
  tail call void @nvif_object_wr(ptr noundef %248, i32 noundef 4, i64 noundef %249, i32 noundef %240) #8
  br label %250

250:                                              ; preds = %247, %245
  %251 = load ptr, ptr %33, align 4
  %252 = getelementptr inbounds %struct.nouveau_drm, ptr %251, i32 0, i32 2, i32 3, i32 0, i32 6
  %253 = load ptr, ptr %252, align 8
  %254 = icmp eq ptr %253, null
  br i1 %254, label %257, label %255, !prof !9

255:                                              ; preds = %250
  %256 = getelementptr i8, ptr %253, i32 %135
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %256, i32 1048576) #8, !srcloc !13
  br label %260

257:                                              ; preds = %250
  %258 = getelementptr inbounds %struct.nouveau_drm, ptr %251, i32 0, i32 2, i32 3
  %259 = zext i32 %135 to i64
  tail call void @nvif_object_wr(ptr noundef %258, i32 noundef 4, i64 noundef %259, i32 noundef 1048576) #8
  br label %260

260:                                              ; preds = %257, %255
  %261 = load ptr, ptr %33, align 4
  %262 = getelementptr inbounds %struct.nouveau_drm, ptr %261, i32 0, i32 2, i32 3, i32 0, i32 6
  %263 = load ptr, ptr %262, align 8
  %264 = icmp eq ptr %263, null
  br i1 %264, label %267, label %265, !prof !9

265:                                              ; preds = %260
  %266 = getelementptr i8, ptr %263, i32 %149
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 262144) #8, !srcloc !13
  br label %270

267:                                              ; preds = %260
  %268 = getelementptr inbounds %struct.nouveau_drm, ptr %261, i32 0, i32 2, i32 3
  %269 = zext i32 %149 to i64
  tail call void @nvif_object_wr(ptr noundef %268, i32 noundef 4, i64 noundef %269, i32 noundef 262144) #8
  br label %270

270:                                              ; preds = %267, %265
  %271 = lshr i32 %45, 10
  %272 = and i32 %271, 1023
  %273 = load ptr, ptr %33, align 4
  %274 = getelementptr inbounds %struct.nouveau_drm, ptr %273, i32 0, i32 2, i32 3, i32 0, i32 6
  %275 = load ptr, ptr %274, align 8
  %276 = icmp eq ptr %275, null
  br i1 %276, label %279, label %277, !prof !9

277:                                              ; preds = %270
  %278 = getelementptr i8, ptr %275, i32 %163
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %278, i32 %272) #8, !srcloc !13
  br label %282

279:                                              ; preds = %270
  %280 = getelementptr inbounds %struct.nouveau_drm, ptr %273, i32 0, i32 2, i32 3
  %281 = zext i32 %163 to i64
  tail call void @nvif_object_wr(ptr noundef %280, i32 noundef 4, i64 noundef %281, i32 noundef %272) #8
  br label %282

282:                                              ; preds = %279, %277
  tail call void @msleep(i32 noundef 20) #8
  %283 = load ptr, ptr %33, align 4
  %284 = getelementptr inbounds %struct.nouveau_drm, ptr %283, i32 0, i32 2, i32 3, i32 0, i32 6
  %285 = load ptr, ptr %284, align 8
  %286 = icmp eq ptr %285, null
  br i1 %286, label %290, label %287, !prof !9

287:                                              ; preds = %282
  %288 = getelementptr i8, ptr %285, i32 %120
  %289 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %288) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %294

290:                                              ; preds = %282
  %291 = getelementptr inbounds %struct.nouveau_drm, ptr %283, i32 0, i32 2, i32 3
  %292 = zext i32 %120 to i64
  %293 = tail call i32 @nvif_object_rd(ptr noundef %291, i32 noundef 4, i64 noundef %292) #8
  br label %294

294:                                              ; preds = %290, %287
  %295 = phi i32 [ %289, %287 ], [ %293, %290 ]
  %296 = and i32 %45, 1023
  %297 = load ptr, ptr %33, align 4
  %298 = getelementptr inbounds %struct.nouveau_drm, ptr %297, i32 0, i32 2, i32 3, i32 0, i32 6
  %299 = load ptr, ptr %298, align 8
  %300 = icmp eq ptr %299, null
  br i1 %300, label %303, label %301, !prof !9

301:                                              ; preds = %294
  %302 = getelementptr i8, ptr %299, i32 %163
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %302, i32 %296) #8, !srcloc !13
  br label %306

303:                                              ; preds = %294
  %304 = getelementptr inbounds %struct.nouveau_drm, ptr %297, i32 0, i32 2, i32 3
  %305 = zext i32 %163 to i64
  tail call void @nvif_object_wr(ptr noundef %304, i32 noundef 4, i64 noundef %305, i32 noundef %296) #8
  br label %306

306:                                              ; preds = %303, %301
  tail call void @msleep(i32 noundef 20) #8
  %307 = load ptr, ptr %33, align 4
  %308 = getelementptr inbounds %struct.nouveau_drm, ptr %307, i32 0, i32 2, i32 3, i32 0, i32 6
  %309 = load ptr, ptr %308, align 8
  %310 = icmp eq ptr %309, null
  br i1 %310, label %314, label %311, !prof !9

311:                                              ; preds = %306
  %312 = getelementptr i8, ptr %309, i32 %120
  %313 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %312) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  br label %318

314:                                              ; preds = %306
  %315 = getelementptr inbounds %struct.nouveau_drm, ptr %307, i32 0, i32 2, i32 3
  %316 = zext i32 %120 to i64
  %317 = tail call i32 @nvif_object_rd(ptr noundef %315, i32 noundef 4, i64 noundef %316) #8
  br label %318

318:                                              ; preds = %314, %311
  %319 = phi i32 [ %313, %311 ], [ %317, %314 ]
  %320 = load ptr, ptr %33, align 4
  %321 = getelementptr inbounds %struct.nouveau_drm, ptr %320, i32 0, i32 2, i32 3, i32 0, i32 6
  %322 = load ptr, ptr %321, align 8
  %323 = icmp eq ptr %322, null
  br i1 %323, label %326, label %324, !prof !9

324:                                              ; preds = %318
  %325 = getelementptr i8, ptr %322, i32 %135
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %325, i32 %147) #8, !srcloc !13
  br label %329

326:                                              ; preds = %318
  %327 = getelementptr inbounds %struct.nouveau_drm, ptr %320, i32 0, i32 2, i32 3
  %328 = zext i32 %135 to i64
  tail call void @nvif_object_wr(ptr noundef %327, i32 noundef 4, i64 noundef %328, i32 noundef %147) #8
  br label %329

329:                                              ; preds = %326, %324
  %330 = load ptr, ptr %33, align 4
  %331 = getelementptr inbounds %struct.nouveau_drm, ptr %330, i32 0, i32 2, i32 3, i32 0, i32 6
  %332 = load ptr, ptr %331, align 8
  %333 = icmp eq ptr %332, null
  br i1 %333, label %336, label %334, !prof !9

334:                                              ; preds = %329
  %335 = getelementptr i8, ptr %332, i32 %149
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %335, i32 %161) #8, !srcloc !13
  br label %339

336:                                              ; preds = %329
  %337 = getelementptr inbounds %struct.nouveau_drm, ptr %330, i32 0, i32 2, i32 3
  %338 = zext i32 %149 to i64
  tail call void @nvif_object_wr(ptr noundef %337, i32 noundef 4, i64 noundef %338, i32 noundef %161) #8
  br label %339

339:                                              ; preds = %336, %334
  %340 = load ptr, ptr %33, align 4
  %341 = getelementptr inbounds %struct.nouveau_drm, ptr %340, i32 0, i32 2, i32 3, i32 0, i32 6
  %342 = load ptr, ptr %341, align 8
  %343 = icmp eq ptr %342, null
  br i1 %343, label %346, label %344, !prof !9

344:                                              ; preds = %339
  %345 = getelementptr i8, ptr %342, i32 %163
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %345, i32 %175) #8, !srcloc !13
  br label %349

346:                                              ; preds = %339
  %347 = getelementptr inbounds %struct.nouveau_drm, ptr %340, i32 0, i32 2, i32 3
  %348 = zext i32 %163 to i64
  tail call void @nvif_object_wr(ptr noundef %347, i32 noundef 4, i64 noundef %348, i32 noundef %175) #8
  br label %349

349:                                              ; preds = %346, %344
  %350 = load ptr, ptr %33, align 4
  %351 = getelementptr inbounds %struct.nouveau_drm, ptr %350, i32 0, i32 2, i32 3, i32 0, i32 6
  %352 = load ptr, ptr %351, align 8
  %353 = icmp eq ptr %352, null
  br i1 %353, label %356, label %354, !prof !9

354:                                              ; preds = %349
  %355 = getelementptr i8, ptr %352, i32 %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %355, i32 %59) #8, !srcloc !13
  br label %359

356:                                              ; preds = %349
  %357 = getelementptr inbounds %struct.nouveau_drm, ptr %350, i32 0, i32 2, i32 3
  %358 = zext i32 %46 to i64
  tail call void @nvif_object_wr(ptr noundef %357, i32 noundef 4, i64 noundef %358, i32 noundef %59) #8
  br label %359

359:                                              ; preds = %356, %354
  %360 = load ptr, ptr %33, align 4
  %361 = getelementptr inbounds %struct.nouveau_drm, ptr %360, i32 0, i32 2, i32 3, i32 0, i32 6
  %362 = load ptr, ptr %361, align 8
  %363 = icmp eq ptr %362, null
  br i1 %363, label %366, label %364, !prof !9

364:                                              ; preds = %359
  %365 = getelementptr i8, ptr %362, i32 %120
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %365, i32 %133) #8, !srcloc !13
  br label %369

366:                                              ; preds = %359
  %367 = getelementptr inbounds %struct.nouveau_drm, ptr %360, i32 0, i32 2, i32 3
  %368 = zext i32 %120 to i64
  tail call void @nvif_object_wr(ptr noundef %367, i32 noundef 4, i64 noundef %368, i32 noundef %133) #8
  br label %369

369:                                              ; preds = %366, %364
  %370 = load ptr, ptr %33, align 4
  %371 = getelementptr inbounds %struct.nouveau_drm, ptr %370, i32 0, i32 2, i32 3, i32 0, i32 6
  %372 = load ptr, ptr %371, align 8
  %373 = icmp eq ptr %372, null
  br i1 %373, label %376, label %374, !prof !9

374:                                              ; preds = %369
  %375 = getelementptr i8, ptr %372, i32 %107
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %375, i32 %119) #8, !srcloc !13
  br label %379

376:                                              ; preds = %369
  %377 = getelementptr inbounds %struct.nouveau_drm, ptr %370, i32 0, i32 2, i32 3
  %378 = zext i32 %107 to i64
  tail call void @nvif_object_wr(ptr noundef %377, i32 noundef 4, i64 noundef %378, i32 noundef %119) #8
  br label %379

379:                                              ; preds = %376, %374
  %380 = load ptr, ptr %33, align 4
  %381 = getelementptr inbounds %struct.nouveau_drm, ptr %380, i32 0, i32 2, i32 3, i32 0, i32 6
  %382 = load ptr, ptr %381, align 8
  %383 = icmp eq ptr %382, null
  br i1 %383, label %386, label %384, !prof !9

384:                                              ; preds = %379
  %385 = getelementptr i8, ptr %382, i32 %93
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %385, i32 %105) #8, !srcloc !13
  br label %389

386:                                              ; preds = %379
  %387 = getelementptr inbounds %struct.nouveau_drm, ptr %380, i32 0, i32 2, i32 3
  %388 = zext i32 %93 to i64
  tail call void @nvif_object_wr(ptr noundef %387, i32 noundef 4, i64 noundef %388, i32 noundef %105) #8
  br label %389

389:                                              ; preds = %386, %384
  %390 = load ptr, ptr %33, align 4
  %391 = getelementptr inbounds %struct.nouveau_drm, ptr %390, i32 0, i32 2, i32 3, i32 0, i32 6
  %392 = load ptr, ptr %391, align 8
  %393 = icmp eq ptr %392, null
  br i1 %393, label %396, label %394, !prof !9

394:                                              ; preds = %389
  %395 = getelementptr i8, ptr %392, i32 %79
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %395, i32 %91) #8, !srcloc !13
  br label %399

396:                                              ; preds = %389
  %397 = getelementptr inbounds %struct.nouveau_drm, ptr %390, i32 0, i32 2, i32 3
  %398 = zext i32 %79 to i64
  tail call void @nvif_object_wr(ptr noundef %397, i32 noundef 4, i64 noundef %398, i32 noundef %91) #8
  br label %399

399:                                              ; preds = %396, %394
  %400 = load ptr, ptr %33, align 4
  %401 = getelementptr inbounds %struct.nouveau_drm, ptr %400, i32 0, i32 2, i32 3, i32 0, i32 6
  %402 = load ptr, ptr %401, align 8
  %403 = icmp eq ptr %402, null
  br i1 %403, label %406, label %404, !prof !9

404:                                              ; preds = %399
  %405 = getelementptr i8, ptr %402, i32 %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %405, i32 %77) #8, !srcloc !13
  br label %409

406:                                              ; preds = %399
  %407 = getelementptr inbounds %struct.nouveau_drm, ptr %400, i32 0, i32 2, i32 3
  %408 = zext i32 %65 to i64
  tail call void @nvif_object_wr(ptr noundef %407, i32 noundef 4, i64 noundef %408, i32 noundef %77) #8
  br label %409

409:                                              ; preds = %406, %404
  %410 = and i32 %295, 1073741824
  %411 = and i32 %319, -1610612736
  %412 = or i32 %411, %410
  %413 = tail call i32 @nvkm_gpio_set(ptr noundef %40, i32 noundef 0, i8 noundef zeroext 45, i8 noundef zeroext -1, i32 noundef %60) #8
  %414 = tail call i32 @nvkm_gpio_set(ptr noundef %40, i32 noundef 0, i8 noundef zeroext 12, i8 noundef zeroext -1, i32 noundef %61) #8
  %415 = lshr exact i32 %412, 28
  store i32 %415, ptr %8, align 4
  br label %420

416:                                              ; preds = %26
  %417 = tail call i32 @nv17_dac_sample_load(ptr noundef %0) #8
  %418 = lshr i32 %417, 28
  %419 = and i32 %418, 14
  store i32 %419, ptr %8, align 4
  br label %420

420:                                              ; preds = %416, %409, %24
  %421 = phi i32 [ %415, %409 ], [ %419, %416 ], [ %25, %24 ]
  %422 = phi i1 [ true, %409 ], [ true, %416 ], [ false, %24 ]
  %423 = add i32 %421, -2
  %424 = tail call i32 @llvm.fshl.i32(i32 %423, i32 %423, i32 31)
  switch i32 %424, label %436 [
    i32 0, label %425
    i32 1, label %425
    i32 5, label %427
    i32 6, label %429
  ]

425:                                              ; preds = %420, %420
  %426 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 8
  store i32 5, ptr %426, align 4
  br label %438

427:                                              ; preds = %420
  %428 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 8
  store i32 6, ptr %428, align 4
  br label %438

429:                                              ; preds = %420
  %430 = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 13
  %431 = load i8, ptr %430, align 4, !range !14
  %432 = icmp eq i8 %431, 0
  %433 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 8
  br i1 %432, label %435, label %434

434:                                              ; preds = %429
  store i32 8, ptr %433, align 4
  br label %438

435:                                              ; preds = %429
  store i32 9, ptr %433, align 4
  br label %438

436:                                              ; preds = %420
  %437 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 8
  store i32 0, ptr %437, align 4
  br label %438

438:                                              ; preds = %436, %435, %434, %427, %425
  %439 = phi i32 [ 8, %434 ], [ 9, %435 ], [ 0, %436 ], [ 6, %427 ], [ 5, %425 ]
  %440 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 6
  %441 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 60
  %442 = load ptr, ptr %441, align 4
  %443 = zext i32 %439 to i64
  %444 = tail call i32 @drm_object_property_set_value(ptr noundef %440, ptr noundef %442, i64 noundef %443) #8
  br i1 %422, label %445, label %464

445:                                              ; preds = %438
  %446 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 8
  %447 = load i32, ptr %446, align 4
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %464, label %449

449:                                              ; preds = %445
  %450 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %451 = load ptr, ptr %450, align 8
  %452 = getelementptr inbounds %struct.nouveau_drm, ptr %451, i32 0, i32 3
  %453 = load ptr, ptr %452, align 8
  %454 = getelementptr inbounds %struct.drm_device, ptr %453, i32 0, i32 2
  %455 = load ptr, ptr %454, align 4
  %456 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  %457 = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 9
  %458 = load i8, ptr %457, align 1
  %459 = tail call i8 @llvm.cttz.i8(i8 %458, i1 true), !range !8
  %460 = icmp eq i8 %458, 0
  %461 = add nuw nsw i8 %459, 65
  %462 = select i1 %460, i8 64, i8 %461
  %463 = zext i8 %462 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %455, ptr noundef nonnull @.str.2, ptr noundef %456, i32 noundef %463) #9
  br label %464

464:                                              ; preds = %449, %445, %438, %21, %19
  %465 = phi i32 [ 1, %449 ], [ 2, %19 ], [ 3, %438 ], [ 2, %445 ], [ 2, %21 ]
  ret i32 %465
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_dfp_update_fp_control(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_set(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_dac_update_dacclk(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nv04_dac_in_use(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_dac_output_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_dfp_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_dfp_get_bound_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_dfp_bind_head(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv17_tv_update_rescaler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv17_tv_update_properties(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv17_ctv_update_rescaler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv17_tv_state_load(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv04_encoder_get_connector(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv17_dac_sample_load(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_object_property_set_value(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_get(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv17_tv_mode_valid(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %35

8:                                                ; preds = %2
  %9 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %4, i32 1
  %10 = load i32, ptr %1, align 4
  %11 = icmp sgt i32 %10, 400000
  br i1 %11, label %52, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_display_mode, ptr %9, i32 0, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = icmp ugt i16 %14, %16
  br i1 %17, label %52, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %20 = load i16, ptr %19, align 2
  %21 = getelementptr inbounds %struct.drm_display_mode, ptr %9, i32 0, i32 6
  %22 = load i16, ptr %21, align 2
  %23 = icmp ugt i16 %20, %22
  br i1 %23, label %52, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 11
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_display_mode, ptr %9, i32 0, i32 11
  %28 = load i32, ptr %27, align 4
  %29 = xor i32 %28, %26
  %30 = and i32 %29, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %24
  %33 = and i32 %26, 32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %51, label %52

35:                                               ; preds = %2
  %36 = load i32, ptr %1, align 4
  %37 = icmp sgt i32 %36, 70000
  br i1 %37, label %52, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @drm_mode_vrefresh(ptr noundef %1) #8
  %40 = mul i32 %39, 1000
  %41 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %4, i32 1, i32 0, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = sub i32 %40, %42
  %44 = tail call i32 @llvm.abs.i32(i32 %43, i1 false)
  %45 = icmp sgt i32 %44, 600
  br i1 %45, label %52, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 11
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %32
  br label %52

52:                                               ; preds = %51, %46, %38, %35, %32, %24, %18, %12, %8
  %53 = phi i32 [ 0, %51 ], [ 8, %32 ], [ 7, %46 ], [ 7, %24 ], [ -2, %12 ], [ -2, %18 ], [ 15, %8 ], [ 2, %38 ], [ 15, %35 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv17_tv_get_modes(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %86

8:                                                ; preds = %2
  %9 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %4, i32 1
  %10 = getelementptr inbounds %struct.drm_display_mode, ptr %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.drm_display_mode, ptr %9, i32 0, i32 6
  %12 = getelementptr inbounds %struct.drm_display_mode, ptr %9, i32 0, i32 11
  %13 = getelementptr inbounds %struct.drm_display_mode, ptr %9, i32 0, i32 4
  %14 = getelementptr inbounds %struct.drm_display_mode, ptr %9, i32 0, i32 9
  %15 = getelementptr inbounds %struct.drm_display_mode, ptr %9, i32 0, i32 7
  %16 = getelementptr inbounds %struct.drm_display_mode, ptr %9, i32 0, i32 8
  br label %17

17:                                               ; preds = %82, %8
  %18 = phi i32 [ 0, %8 ], [ %83, %82 ]
  %19 = phi i32 [ 0, %8 ], [ %84, %82 ]
  %20 = getelementptr [9 x %struct.anon.205], ptr @__const.nv17_tv_get_hd_modes.modes, i32 0, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = load i16, ptr %10, align 4
  %23 = zext i16 %22 to i32
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %82, label %25

25:                                               ; preds = %17
  %26 = getelementptr [9 x %struct.anon.205], ptr @__const.nv17_tv_get_hd_modes.modes, i32 0, i32 %19, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = load i16, ptr %11, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %82, label %31

31:                                               ; preds = %25
  %32 = icmp eq i32 %21, %23
  %33 = icmp eq i32 %27, %29
  %34 = select i1 %32, i1 %33, i1 false
  %35 = load ptr, ptr %0, align 4
  br i1 %34, label %36, label %41

36:                                               ; preds = %31
  %37 = tail call ptr @drm_mode_duplicate(ptr noundef %35, ptr noundef %9) #8
  %38 = getelementptr inbounds %struct.drm_display_mode, ptr %37, i32 0, i32 28
  %39 = load i8, ptr %38, align 2
  %40 = or i8 %39, 8
  store i8 %40, ptr %38, align 2
  br label %46

41:                                               ; preds = %31
  %42 = load i32, ptr %12, align 4
  %43 = and i32 %42, 16
  %44 = icmp ne i32 %43, 0
  %45 = tail call ptr @drm_cvt_mode(ptr noundef %35, i32 noundef %21, i32 noundef %27, i32 noundef 60, i1 noundef zeroext false, i1 noundef zeroext %44, i1 noundef zeroext false) #8
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi ptr [ %37, %36 ], [ %45, %41 ]
  %48 = load i16, ptr %10, align 4
  %49 = add i16 %48, -1920
  %50 = icmp ult i16 %49, -1199
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = load i16, ptr %13, align 2
  %53 = getelementptr inbounds %struct.drm_display_mode, ptr %47, i32 0, i32 4
  store i16 %52, ptr %53, align 2
  %54 = getelementptr inbounds %struct.drm_display_mode, ptr %47, i32 0, i32 1
  %55 = load i16, ptr %54, align 4
  %56 = zext i16 %55 to i32
  %57 = zext i16 %52 to i32
  %58 = sub nsw i32 %57, %56
  %59 = mul nsw i32 %58, 9
  %60 = sdiv i32 %59, 10
  %61 = trunc i32 %60 to i16
  %62 = add i16 %55, %61
  %63 = and i16 %62, -8
  %64 = getelementptr inbounds %struct.drm_display_mode, ptr %47, i32 0, i32 2
  store i16 %63, ptr %64, align 2
  %65 = add i16 %63, 8
  %66 = getelementptr inbounds %struct.drm_display_mode, ptr %47, i32 0, i32 3
  store i16 %65, ptr %66, align 4
  br label %67

67:                                               ; preds = %51, %46
  %68 = load i16, ptr %11, align 2
  %69 = icmp ugt i16 %68, 1023
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i16, ptr %14, align 4
  %72 = getelementptr inbounds %struct.drm_display_mode, ptr %47, i32 0, i32 9
  store i16 %71, ptr %72, align 4
  %73 = load i16, ptr %15, align 4
  %74 = getelementptr inbounds %struct.drm_display_mode, ptr %47, i32 0, i32 7
  store i16 %73, ptr %74, align 4
  %75 = load i16, ptr %16, align 2
  %76 = getelementptr inbounds %struct.drm_display_mode, ptr %47, i32 0, i32 8
  store i16 %75, ptr %76, align 2
  br label %77

77:                                               ; preds = %70, %67
  %78 = getelementptr inbounds %struct.drm_display_mode, ptr %47, i32 0, i32 28
  %79 = load i8, ptr %78, align 2
  %80 = or i8 %79, 64
  store i8 %80, ptr %78, align 2
  tail call void @drm_mode_probed_add(ptr noundef %1, ptr noundef %47) #8
  %81 = add i32 %18, 1
  br label %82

82:                                               ; preds = %77, %25, %17
  %83 = phi i32 [ %18, %17 ], [ %18, %25 ], [ %81, %77 ]
  %84 = add nuw nsw i32 %19, 1
  %85 = icmp eq i32 %84, 9
  br i1 %85, label %137, label %17

86:                                               ; preds = %2
  %87 = load i16, ptr getelementptr inbounds ([0 x %struct.drm_display_mode], ptr @nv17_tv_modes, i32 0, i32 0, i32 1), align 4
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %137, label %89

89:                                               ; preds = %86
  %90 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %4, i32 1
  %91 = getelementptr inbounds %struct.anon.191, ptr %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.anon.191, ptr %90, i32 0, i32 1
  br label %93

93:                                               ; preds = %131, %89
  %94 = phi i32 [ 0, %89 ], [ %132, %131 ]
  %95 = phi ptr [ @nv17_tv_modes, %89 ], [ %133, %131 ]
  %96 = load ptr, ptr %0, align 4
  %97 = tail call ptr @drm_mode_duplicate(ptr noundef %96, ptr noundef %95) #8
  %98 = load i32, ptr %91, align 4
  %99 = getelementptr inbounds %struct.drm_display_mode, ptr %97, i32 0, i32 4
  %100 = load i16, ptr %99, align 2
  %101 = zext i16 %100 to i32
  %102 = mul i32 %98, %101
  %103 = sdiv i32 %102, 1000
  %104 = getelementptr inbounds %struct.drm_display_mode, ptr %97, i32 0, i32 9
  %105 = load i16, ptr %104, align 4
  %106 = zext i16 %105 to i32
  %107 = mul i32 %103, %106
  %108 = sdiv i32 %107, 1000
  store i32 %108, ptr %97, align 4
  %109 = getelementptr inbounds %struct.drm_display_mode, ptr %97, i32 0, i32 11
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %93
  %114 = shl nsw i32 %108, 1
  store i32 %114, ptr %97, align 4
  br label %115

115:                                              ; preds = %113, %93
  %116 = getelementptr inbounds %struct.drm_display_mode, ptr %97, i32 0, i32 1
  %117 = load i16, ptr %116, align 4
  %118 = zext i16 %117 to i32
  %119 = load i32, ptr %90, align 4
  %120 = icmp eq i32 %119, %118
  br i1 %120, label %121, label %131

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.drm_display_mode, ptr %97, i32 0, i32 6
  %123 = load i16, ptr %122, align 2
  %124 = zext i16 %123 to i32
  %125 = load i32, ptr %92, align 4
  %126 = icmp eq i32 %125, %124
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.drm_display_mode, ptr %97, i32 0, i32 28
  %129 = load i8, ptr %128, align 2
  %130 = or i8 %129, 8
  store i8 %130, ptr %128, align 2
  br label %131

131:                                              ; preds = %127, %121, %115
  tail call void @drm_mode_probed_add(ptr noundef %1, ptr noundef %97) #8
  %132 = add i32 %94, 1
  %133 = getelementptr %struct.drm_display_mode, ptr %95, i32 1
  %134 = getelementptr %struct.drm_display_mode, ptr %95, i32 1, i32 1
  %135 = load i16, ptr %134, align 4
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %137, label %93

137:                                              ; preds = %131, %86, %82
  %138 = phi i32 [ 0, %86 ], [ %83, %82 ], [ %132, %131 ]
  ret i32 %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv17_tv_set_property(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, i64 noundef %3) #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %9
  %11 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 70
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = trunc i64 %3 to i32
  %16 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  %17 = icmp eq ptr %7, null
  br i1 %17, label %88, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %10, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @nv17_ctv_update_rescaler(ptr noundef %0) #8
  br label %88

22:                                               ; preds = %18
  tail call void @nv17_tv_update_rescaler(ptr noundef %0) #8
  br label %88

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 71
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %2
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, ptr %10, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %88

30:                                               ; preds = %27
  %31 = trunc i64 %3 to i32
  %32 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 5
  store i32 %31, ptr %32, align 4
  tail call void @nv17_tv_update_properties(ptr noundef %0) #8
  br label %88

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 72
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %2
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, ptr %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %88

40:                                               ; preds = %37
  %41 = trunc i64 %3 to i32
  %42 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 6
  store i32 %41, ptr %42, align 4
  tail call void @nv17_tv_update_properties(ptr noundef %0) #8
  br label %88

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 69
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %2
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32, ptr %10, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %47
  %51 = trunc i64 %3 to i32
  %52 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 4
  store i32 %51, ptr %52, align 4
  %53 = icmp eq ptr %7, null
  br i1 %53, label %88, label %54

54:                                               ; preds = %50
  tail call void @nv17_tv_update_rescaler(ptr noundef %0) #8
  br label %88

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 62
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %2
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 34
  %61 = load i32, ptr %60, align 8
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %88

63:                                               ; preds = %59
  %64 = trunc i64 %3 to i32
  store i32 %64, ptr %8, align 4
  %65 = tail call i32 @drm_helper_probe_single_connector_modes(ptr noundef %1, i32 noundef 0, i32 noundef 0) #8
  %66 = icmp eq ptr %7, null
  br i1 %66, label %88, label %77

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 61
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %2
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load i32, ptr %10, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = trunc i64 %3 to i32
  %76 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %0, i32 0, i32 9
  store i32 %75, ptr %76, align 4
  tail call void @nv17_tv_update_properties(ptr noundef %0) #8
  br label %88

77:                                               ; preds = %63
  %78 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 12
  %79 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 14
  %80 = load i32, ptr %79, align 8
  %81 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 15
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 6
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.drm_plane, ptr %84, i32 0, i32 12
  %86 = load ptr, ptr %85, align 8
  %87 = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %7, ptr noundef %78, i32 noundef %80, i32 noundef %82, ptr noundef %86) #8
  br label %88

88:                                               ; preds = %77, %74, %71, %67, %63, %59, %54, %50, %47, %40, %37, %30, %27, %22, %21, %14
  %89 = phi i32 [ -22, %27 ], [ -22, %37 ], [ -22, %47 ], [ -22, %59 ], [ -22, %71 ], [ -22, %67 ], [ 0, %50 ], [ 0, %14 ], [ 0, %74 ], [ 0, %54 ], [ 0, %40 ], [ 0, %30 ], [ 0, %22 ], [ 0, %21 ], [ 0, %63 ], [ 0, %77 ]
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_cvt_mode(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_helper_set_mode(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv17_tv_state_save(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_tv_properties(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind }
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
!8 = !{i8 0, i8 9}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 3347777}
!11 = !{i64 2150887230}
!12 = !{i64 2150888452}
!13 = !{i64 3347359}
!14 = !{i8 0, i8 2}
