; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_fbcon.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_fbcon.c"
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.67 }
%union.anon.67 = type { ptr }
%struct.lock_class_key = type {}
%struct.drm_fb_helper_funcs = type { ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.77, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.83, ptr, i32, ptr, i8, i32 }
%struct.anon.77 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.83 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.88, %struct.anon.89, %struct.anon.94, ptr, %struct.anon.95, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.96, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.108 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.88 = type { ptr, i32, i32, i8 }
%struct.anon.89 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.90] }
%struct.anon.90 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.94 = type { i64, i64 }
%struct.anon.95 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.84 }
%struct.anon.84 = type { ptr, i64 }
%struct.anon.96 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.103, %struct.anon.104, %struct.anon.105, %struct.anon.106 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.97, i8 }
%union.anon.97 = type { %struct.anon.101 }
%struct.anon.101 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.103 = type { i32 }
%struct.anon.104 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.105 = type { i16, i16 }
%struct.anon.106 = type { i16, i16, i16, %struct.anon.107, i16 }
%struct.anon.107 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.108 = type { ptr, %struct.mutex, i8 }
%struct.drm_fb_helper = type { %struct.drm_client_dev, ptr, ptr, ptr, ptr, ptr, [17 x i32], %struct.drm_clip_rect, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.mutex, %struct.list_head, i8, i8, i32 }
%struct.drm_client_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, ptr }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.82, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.82 = type { ptr }
%struct.nouveau_fbdev = type { %struct.drm_fb_helper, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, ptr, %struct.mutex, i8 }
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
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_fb_helper_surface_size = type { i32, i32, i32, i32, i32, i32 }
%struct.nouveau_channel = type { %struct.anon.91, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.92, i8, ptr, %struct.anon.93, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.91 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.92 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.93 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_nofbaccel281 = internal constant [42 x i8] c"parm=nofbaccel:Disable fbcon acceleration\00", section ".modinfo", align 1
@nouveau_nofbaccel = dso_local global i32 0, align 4
@__param_str_nofbaccel = internal constant [10 x i8] c"nofbaccel\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_nofbaccel = internal constant %struct.kernel_param { ptr @__param_str_nofbaccel, ptr @__this_module, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.67 { ptr @nouveau_nofbaccel } }, section "__param", align 4
@__UNIQUE_ID_nofbacceltype282 = internal constant [23 x i8] c"parmtype=nofbaccel:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fbcon_bpp283 = internal constant [52 x i8] c"parm=fbcon_bpp:fbcon bits-per-pixel (default: auto)\00", section ".modinfo", align 1
@__param_str_fbcon_bpp = internal constant [10 x i8] c"fbcon_bpp\00", align 1
@nouveau_fbcon_bpp = internal global i32 0, align 4
@__param_fbcon_bpp = internal constant %struct.kernel_param { ptr @__param_str_fbcon_bpp, ptr @__this_module, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.67 { ptr @nouveau_fbcon_bpp } }, section "__param", align 4
@__UNIQUE_ID_fbcon_bpptype284 = internal constant [23 x i8] c"parmtype=fbcon_bpp:int\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [46 x i8] c"%s: GPU lockup - switching to software fbcon\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"%s: fbcon HPD event deferred until runtime resume\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"\014[drm] fbcon HPD event lost due to RPM failure: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"%s: Handling deferred fbcon HPD events\0A\00", align 1
@nouveau_fbcon_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"&fbcon->hotplug_lock\00", align 1
@nouveau_fbcon_helper_funcs = internal constant %struct.drm_fb_helper_funcs { ptr @nouveau_fbcon_create }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"%s: failed to allocate framebuffer\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"%s: failed to pin fb: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%s: failed to map fb: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"%s: failed to map fb into chan: %d\0A\00", align 1
@nouveau_fbcon_sw_ops = internal constant %struct.fb_ops { ptr @__this_module, ptr @nouveau_fbcon_open, ptr @nouveau_fbcon_release, ptr null, ptr null, ptr @drm_fb_helper_check_var, ptr @drm_fb_helper_set_par, ptr null, ptr @drm_fb_helper_setcmap, ptr @drm_fb_helper_blank, ptr @drm_fb_helper_pan_display, ptr @drm_fb_helper_cfb_fillrect, ptr @drm_fb_helper_cfb_copyarea, ptr @drm_fb_helper_cfb_imageblit, ptr null, ptr null, ptr @drm_fb_helper_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @drm_fb_helper_debug_enter, ptr @drm_fb_helper_debug_leave }, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"%s: allocated %dx%d fb: 0x%llx, bo %p\0A\00", align 1
@nvbo_kmap_obj_iovirtual.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"drivers/gpu/drm/nouveau/nouveau_bo.h\00", align 1
@nouveau_fbcon_ops = internal constant %struct.fb_ops { ptr @__this_module, ptr @nouveau_fbcon_open, ptr @nouveau_fbcon_release, ptr null, ptr null, ptr @drm_fb_helper_check_var, ptr @drm_fb_helper_set_par, ptr null, ptr @drm_fb_helper_setcmap, ptr @drm_fb_helper_blank, ptr @drm_fb_helper_pan_display, ptr @nouveau_fbcon_fillrect, ptr @nouveau_fbcon_copyarea, ptr @nouveau_fbcon_imageblit, ptr null, ptr @nouveau_fbcon_sync, ptr @drm_fb_helper_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @drm_fb_helper_debug_enter, ptr @drm_fb_helper_debug_leave }, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_fbcon_bpp283, ptr @__UNIQUE_ID_fbcon_bpptype284, ptr @__UNIQUE_ID_nofbaccel281, ptr @__UNIQUE_ID_nofbacceltype282, ptr @__param_fbcon_bpp, ptr @__param_nofbaccel], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @nouveau_fbcon_accel_save_disable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.drm_fb_helper, ptr %5, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nouveau_fbdev, ptr %5, i32 0, i32 1
  store i32 %13, ptr %14, align 8
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.drm_fb_helper, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.fb_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, 2
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %11, %7, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @nouveau_fbcon_accel_restore(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.drm_fb_helper, ptr %5, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nouveau_fbdev, ptr %5, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_fbcon_gpu_lockup(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_fb_helper, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef %14) #9
  %15 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 2
  store i32 %17, ptr %15, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_fbcon_set_suspend(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 24
  store i32 %1, ptr %9, align 8
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 23
  %11 = load ptr, ptr @system_wq, align 4
  %12 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %11, ptr noundef %10) #10
  br label %13

13:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_fbcon_output_poll_changed(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nouveau_fbdev, ptr %5, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 5) #10
  switch i32 %11, label %42 [
    i32 -13, label %12
    i32 1, label %12
    i32 0, label %19
  ]

12:                                               ; preds = %7, %7
  %13 = tail call i32 @drm_fb_helper_hotplug_event(ptr noundef nonnull %5) #10
  %14 = load ptr, ptr %9, align 4
  %15 = tail call i64 @ktime_get_mono_fast_ns() #10
  %16 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 22
  store volatile i64 %15, ptr %16, align 8
  %17 = load ptr, ptr %9, align 4
  %18 = tail call i32 @__pm_runtime_suspend(ptr noundef %17, i32 noundef 13) #10
  br label %44

19:                                               ; preds = %7
  %20 = load i32, ptr @__drm_debug, align 4
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.1, ptr noundef %30) #9
  br label %31

31:                                               ; preds = %23, %19
  %32 = getelementptr inbounds %struct.nouveau_fbdev, ptr %5, i32 0, i32 11
  store i8 1, ptr %32, align 8
  %33 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #10, !srcloc !9
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 0, i32 -1, ptr elementtype(i32) %37) #10, !srcloc !10
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  br label %44

42:                                               ; preds = %7
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %11) #9
  br label %44

44:                                               ; preds = %42, %41, %31, %12
  tail call void @mutex_unlock(ptr noundef %8) #10
  br label %45

45:                                               ; preds = %44, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_hotplug_event(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_fbcon_hotplug_resume(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.drm_fb_helper, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_fbdev, ptr %0, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = getelementptr inbounds %struct.nouveau_fbdev, ptr %0, i32 0, i32 11
  %10 = load i8, ptr %9, align 8, !range !12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %3
  store i8 0, ptr %9, align 8
  %13 = load i32, ptr @__drm_debug, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.3, ptr noundef %23) #9
  br label %24

24:                                               ; preds = %16, %12
  %25 = tail call i32 @drm_fb_helper_hotplug_event(ptr noundef nonnull %0) #10
  br label %26

26:                                               ; preds = %24, %3
  tail call void @mutex_unlock(ptr noundef %8) #10
  br label %27

27:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_fbcon_init(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @nouveau_fbcon_bpp, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 19
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %68, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 -96
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, -256
  %14 = icmp eq i32 %13, 196608
  br i1 %14, label %15, label %68

15:                                               ; preds = %8
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 536) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %68, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 15
  store ptr %17, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 23
  store i32 -32, ptr %21, align 8
  %22 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 23, i32 1
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 23, i32 1, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 23, i32 2
  store ptr @nouveau_fbcon_set_suspend_work, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nouveau_fbdev, ptr %17, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %25, ptr noundef nonnull @.str.4, ptr noundef nonnull @nouveau_fbcon_init.__key) #10
  tail call void @drm_fb_helper_prepare(ptr noundef %0, ptr noundef nonnull %17, ptr noundef nonnull @nouveau_fbcon_helper_funcs) #10
  %26 = tail call i32 @drm_fb_helper_init(ptr noundef %0, ptr noundef nonnull %17) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %19
  switch i32 %4, label %29 [
    i32 32, label %36
    i32 16, label %36
    i32 8, label %36
  ]

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 6
  %31 = load i64, ptr %30, align 8
  %32 = icmp ult i64 %31, 33554433
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = icmp ult i64 %31, 67108865
  %35 = select i1 %34, i32 16, i32 32
  br label %36

36:                                               ; preds = %33, %29, %28, %28, %28
  %37 = phi i32 [ %4, %28 ], [ %4, %28 ], [ %4, %28 ], [ 8, %29 ], [ %35, %33 ]
  %38 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.drm_driver, ptr %39, i32 0, i32 24
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %41, 16
  %45 = and i32 %44, %43
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 27
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %49, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %47
  tail call void @drm_helper_disable_unused_functions(ptr noundef %0) #10
  br label %56

56:                                               ; preds = %55, %51, %36
  %57 = tail call i32 @drm_fb_helper_initial_config(ptr noundef nonnull %17, i32 noundef %37) #10
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.drm_fb_helper, ptr %17, i32 0, i32 5
  %61 = load ptr, ptr %60, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.fb_info, ptr %61, i32 0, i32 10, i32 3
  store i32 4, ptr %64, align 4
  br label %68

65:                                               ; preds = %56
  tail call void @drm_fb_helper_fini(ptr noundef nonnull %17) #10
  br label %66

66:                                               ; preds = %65, %19
  %67 = phi i32 [ %26, %19 ], [ %57, %65 ]
  tail call void @kfree(ptr noundef nonnull %17) #10
  store ptr null, ptr %20, align 4
  br label %68

68:                                               ; preds = %66, %63, %59, %15, %8, %1
  %69 = phi i32 [ %67, %66 ], [ 0, %8 ], [ 0, %1 ], [ -12, %15 ], [ 0, %63 ], [ 0, %59 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_fbcon_set_suspend_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 16
  %3 = load volatile i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -2552
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #10
  tail call void @console_lock() #10
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %50, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.drm_fb_helper, ptr %15, i32 0, i32 5
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %50, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nouveau_fbdev, ptr %15, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.fb_info, ptr %19, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  br label %50

25:                                               ; preds = %1
  tail call void @console_lock() #10
  %26 = getelementptr i8, ptr %0, i32 -988
  %27 = load ptr, ptr %26, align 4
  tail call void @drm_fb_helper_set_suspend(ptr noundef %27, i1 noundef zeroext true) #10
  %28 = getelementptr i8, ptr %0, i32 -2552
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 15
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.drm_fb_helper, ptr %33, i32 0, i32 5
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.fb_info, ptr %37, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nouveau_fbdev, ptr %33, i32 0, i32 1
  store i32 %41, ptr %42, align 8
  %43 = load ptr, ptr %32, align 4
  %44 = getelementptr inbounds %struct.drm_fb_helper, ptr %43, i32 0, i32 5
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.fb_info, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, 2
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %39, %35, %25
  tail call void @console_unlock() #10
  br label %89

50:                                               ; preds = %21, %17, %5
  %51 = getelementptr i8, ptr %0, i32 -988
  %52 = load ptr, ptr %51, align 4
  tail call void @drm_fb_helper_set_suspend(ptr noundef %52, i1 noundef zeroext false) #10
  tail call void @console_unlock() #10
  %53 = load ptr, ptr %51, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %79, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.drm_fb_helper, ptr %53, i32 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.drm_device, ptr %57, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nouveau_fbdev, ptr %53, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %60) #10
  %61 = getelementptr inbounds %struct.nouveau_fbdev, ptr %53, i32 0, i32 11
  %62 = load i8, ptr %61, align 8, !range !12
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %55
  store i8 0, ptr %61, align 8
  %65 = load i32, ptr @__drm_debug, align 4
  %66 = and i32 %65, 2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.nouveau_drm, ptr %59, i32 0, i32 2, i32 1
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.nouveau_drm, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.drm_device, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.nouveau_drm, ptr %59, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %74, ptr noundef nonnull @.str.3, ptr noundef %75) #9
  br label %76

76:                                               ; preds = %68, %64
  %77 = tail call i32 @drm_fb_helper_hotplug_event(ptr noundef nonnull %53) #10
  br label %78

78:                                               ; preds = %76, %55
  tail call void @mutex_unlock(ptr noundef %60) #10
  br label %79

79:                                               ; preds = %78, %50
  %80 = load ptr, ptr %6, align 8
  %81 = getelementptr inbounds %struct.drm_device, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = tail call i64 @ktime_get_mono_fast_ns() #10
  %84 = getelementptr inbounds %struct.device, ptr %82, i32 0, i32 11, i32 22
  store volatile i64 %83, ptr %84, align 8
  %85 = load ptr, ptr %6, align 8
  %86 = getelementptr inbounds %struct.drm_device, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = tail call i32 @__pm_runtime_idle(ptr noundef %87, i32 noundef 4) #10
  br label %89

89:                                               ; preds = %79, %49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_disable_unused_functions(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_initial_config(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_fbcon_fini(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  tail call void @console_lock() #10
  %12 = getelementptr inbounds %struct.drm_fb_helper, ptr %5, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 2
  store i32 %18, ptr %16, align 4
  br label %19

19:                                               ; preds = %15, %11
  tail call void @console_unlock() #10
  %20 = load ptr, ptr %8, align 4
  %21 = tail call i32 @nouveau_channel_idle(ptr noundef %20) #10
  %22 = getelementptr inbounds %struct.nouveau_fbdev, ptr %5, i32 0, i32 8
  tail call void @nvif_object_dtor(ptr noundef %22) #10
  %23 = getelementptr inbounds %struct.nouveau_fbdev, ptr %5, i32 0, i32 7
  tail call void @nvif_object_dtor(ptr noundef %23) #10
  %24 = getelementptr inbounds %struct.nouveau_fbdev, ptr %5, i32 0, i32 6
  tail call void @nvif_object_dtor(ptr noundef %24) #10
  %25 = getelementptr inbounds %struct.nouveau_fbdev, ptr %5, i32 0, i32 5
  tail call void @nvif_object_dtor(ptr noundef %25) #10
  %26 = getelementptr inbounds %struct.nouveau_fbdev, ptr %5, i32 0, i32 4
  tail call void @nvif_object_dtor(ptr noundef %26) #10
  %27 = getelementptr inbounds %struct.nouveau_fbdev, ptr %5, i32 0, i32 3
  tail call void @nvif_object_dtor(ptr noundef %27) #10
  %28 = getelementptr inbounds %struct.nouveau_fbdev, ptr %5, i32 0, i32 2
  tail call void @nvif_object_dtor(ptr noundef %28) #10
  %29 = load ptr, ptr %4, align 4
  br label %30

30:                                               ; preds = %19, %7
  %31 = phi ptr [ %5, %7 ], [ %29, %19 ]
  %32 = getelementptr inbounds %struct.drm_fb_helper, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  tail call void @drm_fb_helper_unregister_fbi(ptr noundef %31) #10
  tail call void @drm_fb_helper_fini(ptr noundef %31) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.drm_framebuffer, ptr %33, i32 0, i32 15
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.nouveau_fbdev, ptr %31, i32 0, i32 9
  tail call void @nouveau_vma_del(ptr noundef %40) #10
  tail call void @nouveau_bo_unmap(ptr noundef nonnull %37) #10
  %41 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %37) #10
  %42 = getelementptr inbounds %struct.drm_framebuffer, ptr %33, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %42) #10
  br label %43

43:                                               ; preds = %39, %35, %30
  %44 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %44) #10
  store ptr null, ptr %4, align 4
  br label %45

45:                                               ; preds = %43, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_set_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_fbcon_create(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.fb_fillrect, align 8
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.drm_mode_fb_cmd2, align 8
  %7 = getelementptr inbounds %struct.drm_fb_helper, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %6, i8 0, i32 104, i1 false)
  %12 = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %6, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %6, i32 0, i32 2
  store i32 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 3
  %21 = mul i32 %20, %13
  %22 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %6, i32 0, i32 6
  %23 = add i32 %21, 255
  %24 = and i32 %23, -256
  store i32 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %1, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @drm_mode_legacy_fb_format(i32 noundef %19, i32 noundef %26) #10
  %28 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %6, i32 0, i32 3
  store i32 %27, ptr %28, align 4
  %29 = mul i32 %16, %24
  %30 = zext i32 %29 to i64
  %31 = call i32 @nouveau_gem_new(ptr noundef %11, i64 noundef %30, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nouveau_drm, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.5, ptr noundef %40) #9
  br label %168

41:                                               ; preds = %2
  %42 = load ptr, ptr %5, align 4
  %43 = call i32 @nouveau_framebuffer_new(ptr noundef %8, ptr noundef nonnull %6, ptr noundef %42, ptr noundef nonnull %4) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %163

45:                                               ; preds = %41
  %46 = load ptr, ptr %5, align 4
  %47 = call i32 @nouveau_bo_pin(ptr noundef %46, i32 noundef 2, i1 noundef zeroext false) #10
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 3
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.drm_device, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.6, ptr noundef %56, i32 noundef %47) #9
  br label %163

57:                                               ; preds = %45
  %58 = load ptr, ptr %5, align 4
  %59 = call i32 @nouveau_bo_map(ptr noundef %58) #10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 1
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.nouveau_drm, ptr %63, i32 0, i32 3
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.drm_device, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.7, ptr noundef %68, i32 noundef %59) #9
  br label %159

69:                                               ; preds = %57
  %70 = load i32, ptr @nouveau_nofbaccel, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 13
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %95, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3, i32 1, i32 4
  %78 = load i8, ptr %77, align 1
  %79 = icmp ugt i8 %78, 5
  br i1 %79, label %80, label %95

80:                                               ; preds = %76
  %81 = load ptr, ptr %5, align 4
  %82 = getelementptr inbounds %struct.nouveau_channel, ptr %74, i32 0, i32 3
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.nouveau_fbdev, ptr %0, i32 0, i32 9
  %85 = call i32 @nouveau_vma_new(ptr noundef %81, ptr noundef %83, ptr noundef %84) #10
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 1
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.nouveau_drm, ptr %89, i32 0, i32 3
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.drm_device, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.8, ptr noundef %94, i32 noundef %85) #9
  br label %95

95:                                               ; preds = %87, %80, %76, %72, %69
  %96 = phi ptr [ null, %87 ], [ %74, %80 ], [ %74, %76 ], [ null, %72 ], [ null, %69 ]
  %97 = call ptr @drm_fb_helper_alloc_fbi(ptr noundef %0) #10
  %98 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = ptrtoint ptr %97 to i32
  %101 = icmp eq ptr %96, null
  br i1 %101, label %157, label %155

102:                                              ; preds = %95
  %103 = load ptr, ptr %4, align 4
  %104 = getelementptr inbounds %struct.drm_fb_helper, ptr %0, i32 0, i32 2
  store ptr %103, ptr %104, align 4
  %105 = icmp eq ptr %96, null
  %106 = select i1 %105, i32 2, i32 1792
  %107 = getelementptr inbounds %struct.fb_info, ptr %97, i32 0, i32 2
  store i32 %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.fb_info, ptr %97, i32 0, i32 20
  store ptr @nouveau_fbcon_sw_ops, ptr %108, align 4
  %109 = load ptr, ptr %5, align 4
  %110 = getelementptr inbounds %struct.ttm_buffer_object, ptr %109, i32 0, i32 6
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.ttm_resource, ptr %111, i32 0, i32 4, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr inbounds %struct.fb_info, ptr %97, i32 0, i32 7, i32 1
  store i32 %113, ptr %114, align 4
  %115 = getelementptr inbounds %struct.drm_gem_object, ptr %109, i32 0, i32 5
  %116 = load i32, ptr %115, align 8
  %117 = getelementptr inbounds %struct.fb_info, ptr %97, i32 0, i32 7, i32 2
  store i32 %116, ptr %117, align 4
  %118 = call fastcc ptr @nvbo_kmap_obj_iovirtual(ptr noundef %109)
  %119 = getelementptr inbounds %struct.fb_info, ptr %97, i32 0, i32 24
  store ptr %118, ptr %119, align 4
  %120 = load ptr, ptr %5, align 4
  %121 = getelementptr inbounds %struct.drm_gem_object, ptr %120, i32 0, i32 5
  %122 = load i32, ptr %121, align 8
  %123 = getelementptr inbounds %struct.fb_info, ptr %97, i32 0, i32 25
  store i32 %122, ptr %123, align 4
  call void @drm_fb_helper_fill_info(ptr noundef %97, ptr noundef %0, ptr noundef %1) #10
  br i1 %105, label %125, label %124

124:                                              ; preds = %102
  call fastcc void @nouveau_fbcon_accel_init(ptr noundef %8)
  br label %125

125:                                              ; preds = %124, %102
  %126 = getelementptr inbounds %struct.drm_fb_helper, ptr %0, i32 0, i32 5
  %127 = load ptr, ptr %126, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %128 = getelementptr inbounds %struct.fb_info, ptr %127, i32 0, i32 6, i32 2
  store i64 0, ptr %3, align 8
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.fb_fillrect, ptr %3, i32 0, i32 2
  store i32 %129, ptr %130, align 8
  %131 = getelementptr inbounds %struct.fb_info, ptr %127, i32 0, i32 6, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.fb_fillrect, ptr %3, i32 0, i32 3
  store i32 %132, ptr %133, align 4
  %134 = getelementptr inbounds %struct.fb_fillrect, ptr %3, i32 0, i32 4
  store i32 0, ptr %134, align 8
  %135 = getelementptr inbounds %struct.fb_fillrect, ptr %3, i32 0, i32 5
  store i32 0, ptr %135, align 4
  %136 = getelementptr inbounds %struct.fb_info, ptr %127, i32 0, i32 20
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.fb_ops, ptr %137, i32 0, i32 11
  %139 = load ptr, ptr %138, align 4
  call void %139(ptr noundef %127, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  %140 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 1
  %141 = load ptr, ptr %140, align 8
  %142 = getelementptr inbounds %struct.nouveau_drm, ptr %141, i32 0, i32 3
  %143 = load ptr, ptr %142, align 8
  %144 = getelementptr inbounds %struct.drm_device, ptr %143, i32 0, i32 2
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 12
  %147 = load ptr, ptr %4, align 4
  %148 = getelementptr inbounds %struct.drm_framebuffer, ptr %147, i32 0, i32 9
  %149 = load i32, ptr %148, align 8
  %150 = getelementptr inbounds %struct.drm_framebuffer, ptr %147, i32 0, i32 10
  %151 = load i32, ptr %150, align 4
  %152 = load ptr, ptr %5, align 4
  %153 = getelementptr inbounds %struct.nouveau_bo, ptr %152, i32 0, i32 13
  %154 = load i64, ptr %153, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %145, ptr noundef nonnull @.str.9, ptr noundef %146, i32 noundef %149, i32 noundef %151, i64 noundef %154, ptr noundef %152) #9
  br label %168

155:                                              ; preds = %99
  %156 = getelementptr inbounds %struct.nouveau_fbdev, ptr %0, i32 0, i32 9
  call void @nouveau_vma_del(ptr noundef %156) #10
  br label %157

157:                                              ; preds = %155, %99
  %158 = load ptr, ptr %5, align 4
  call void @nouveau_bo_unmap(ptr noundef %158) #10
  br label %159

159:                                              ; preds = %157, %61
  %160 = phi i32 [ %59, %61 ], [ %100, %157 ]
  %161 = load ptr, ptr %5, align 4
  %162 = call i32 @nouveau_bo_unpin(ptr noundef %161) #10
  br label %163

163:                                              ; preds = %159, %49, %41
  %164 = phi i32 [ %43, %41 ], [ %47, %49 ], [ %160, %159 ]
  %165 = load ptr, ptr %5, align 4
  store ptr null, ptr %5, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  call void @ttm_bo_put(ptr noundef nonnull %165) #10
  br label %168

168:                                              ; preds = %167, %163, %125, %33
  %169 = phi i32 [ %31, %33 ], [ 0, %125 ], [ %164, %163 ], [ %164, %167 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %169
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_legacy_fb_format(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_gem_new(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_framebuffer_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_map(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_vma_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_helper_alloc_fbi(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nvbo_kmap_obj_iovirtual(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 6, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = icmp ne ptr %5, null
  %7 = and i32 %4, 128
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  %10 = load i1, ptr @nvbo_kmap_obj_iovirtual.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !14

13:                                               ; preds = %1
  store i1 true, ptr @nvbo_kmap_obj_iovirtual.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 106, i32 noundef 9, ptr noundef null) #10
  br label %14

14:                                               ; preds = %13, %1
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_fill_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nouveau_fbcon_accel_init(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_fb_helper, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %9 = load i8, ptr %8, align 1
  %10 = icmp ult i8 %9, 6
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = tail call i32 @nv04_fbcon_accel_init(ptr noundef %7) #10
  br label %19

13:                                               ; preds = %1
  %14 = icmp eq i8 %9, 6
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = tail call i32 @nv50_fbcon_accel_init(ptr noundef %7) #10
  br label %19

17:                                               ; preds = %13
  %18 = tail call i32 @nvc0_fbcon_accel_init(ptr noundef %7) #10
  br label %19

19:                                               ; preds = %17, %15, %11
  %20 = phi i32 [ %12, %11 ], [ %16, %15 ], [ %18, %17 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 20
  store ptr @nouveau_fbcon_ops, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vma_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_unmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_fbcon_open(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_fb_helper, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #10
  %14 = icmp slt i32 %13, 0
  %15 = icmp ne i32 %13, -13
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load ptr, ptr %9, align 8
  %19 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @__pm_runtime_idle(ptr noundef %20, i32 noundef 5) #10
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi i32 [ %13, %17 ], [ 0, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_fbcon_release(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_fb_helper, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 5) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_check_var(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_set_par(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_setcmap(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_blank(i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_pan_display(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_cfb_fillrect(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_cfb_copyarea(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_cfb_imageblit(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_ioctl(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_debug_enter(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_debug_leave(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_fbcon_accel_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_fbcon_accel_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvc0_fbcon_accel_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_fbcon_fillrect(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_fb_helper, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 27
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %63

12:                                               ; preds = %2
  %13 = tail call ptr @llvm.thread.pointer() #10
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 15728640
  %17 = load volatile i32, ptr %14, align 4
  %18 = and i32 %17, 983040
  %19 = or i32 %18, %16
  %20 = load volatile i32, ptr %14, align 4
  %21 = and i32 %20, 65280
  %22 = or i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 2
  %31 = tail call i32 @mutex_trylock(ptr noundef %30) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %62, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3, i32 1, i32 4
  %35 = load i8, ptr %34, align 1
  %36 = icmp ult i8 %35, 6
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = tail call i32 @nv04_fbcon_fillrect(ptr noundef %0, ptr noundef %1) #10
  br label %45

39:                                               ; preds = %33
  %40 = icmp eq i8 %35, 6
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = tail call i32 @nv50_fbcon_fillrect(ptr noundef %0, ptr noundef %1) #10
  br label %45

43:                                               ; preds = %39
  %44 = tail call i32 @nvc0_fbcon_fillrect(ptr noundef %0, ptr noundef %1) #10
  br label %45

45:                                               ; preds = %43, %41, %37
  %46 = phi i32 [ %38, %37 ], [ %42, %41 ], [ %44, %43 ]
  tail call void @mutex_unlock(ptr noundef %30) #10
  switch i32 %46, label %47 [
    i32 0, label %63
    i32 -19, label %62
  ]

47:                                               ; preds = %45
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr inbounds %struct.drm_fb_helper, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.drm_device, ptr %50, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nouveau_drm, ptr %52, i32 0, i32 2, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.nouveau_drm, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.drm_device, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nouveau_drm, ptr %52, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str, ptr noundef %59) #9
  %60 = load i32, ptr %25, align 4
  %61 = or i32 %60, 2
  store i32 %61, ptr %25, align 4
  br label %62

62:                                               ; preds = %47, %45, %29, %24, %12
  tail call void @drm_fb_helper_cfb_fillrect(ptr noundef %0, ptr noundef %1) #10
  br label %63

63:                                               ; preds = %62, %45, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_fbcon_copyarea(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_fb_helper, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 27
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %63

12:                                               ; preds = %2
  %13 = tail call ptr @llvm.thread.pointer() #10
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 15728640
  %17 = load volatile i32, ptr %14, align 4
  %18 = and i32 %17, 983040
  %19 = or i32 %18, %16
  %20 = load volatile i32, ptr %14, align 4
  %21 = and i32 %20, 65280
  %22 = or i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 2
  %31 = tail call i32 @mutex_trylock(ptr noundef %30) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %62, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3, i32 1, i32 4
  %35 = load i8, ptr %34, align 1
  %36 = icmp ult i8 %35, 6
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = tail call i32 @nv04_fbcon_copyarea(ptr noundef %0, ptr noundef %1) #10
  br label %45

39:                                               ; preds = %33
  %40 = icmp eq i8 %35, 6
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = tail call i32 @nv50_fbcon_copyarea(ptr noundef %0, ptr noundef %1) #10
  br label %45

43:                                               ; preds = %39
  %44 = tail call i32 @nvc0_fbcon_copyarea(ptr noundef %0, ptr noundef %1) #10
  br label %45

45:                                               ; preds = %43, %41, %37
  %46 = phi i32 [ %38, %37 ], [ %42, %41 ], [ %44, %43 ]
  tail call void @mutex_unlock(ptr noundef %30) #10
  switch i32 %46, label %47 [
    i32 0, label %63
    i32 -19, label %62
  ]

47:                                               ; preds = %45
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr inbounds %struct.drm_fb_helper, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.drm_device, ptr %50, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nouveau_drm, ptr %52, i32 0, i32 2, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.nouveau_drm, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.drm_device, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nouveau_drm, ptr %52, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str, ptr noundef %59) #9
  %60 = load i32, ptr %25, align 4
  %61 = or i32 %60, 2
  store i32 %61, ptr %25, align 4
  br label %62

62:                                               ; preds = %47, %45, %29, %24, %12
  tail call void @drm_fb_helper_cfb_copyarea(ptr noundef %0, ptr noundef %1) #10
  br label %63

63:                                               ; preds = %62, %45, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_fbcon_imageblit(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_fb_helper, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 27
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %63

12:                                               ; preds = %2
  %13 = tail call ptr @llvm.thread.pointer() #10
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 15728640
  %17 = load volatile i32, ptr %14, align 4
  %18 = and i32 %17, 983040
  %19 = or i32 %18, %16
  %20 = load volatile i32, ptr %14, align 4
  %21 = and i32 %20, 65280
  %22 = or i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 2
  %31 = tail call i32 @mutex_trylock(ptr noundef %30) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %62, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3, i32 1, i32 4
  %35 = load i8, ptr %34, align 1
  %36 = icmp ult i8 %35, 6
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = tail call i32 @nv04_fbcon_imageblit(ptr noundef %0, ptr noundef %1) #10
  br label %45

39:                                               ; preds = %33
  %40 = icmp eq i8 %35, 6
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = tail call i32 @nv50_fbcon_imageblit(ptr noundef %0, ptr noundef %1) #10
  br label %45

43:                                               ; preds = %39
  %44 = tail call i32 @nvc0_fbcon_imageblit(ptr noundef %0, ptr noundef %1) #10
  br label %45

45:                                               ; preds = %43, %41, %37
  %46 = phi i32 [ %38, %37 ], [ %42, %41 ], [ %44, %43 ]
  tail call void @mutex_unlock(ptr noundef %30) #10
  switch i32 %46, label %47 [
    i32 0, label %63
    i32 -19, label %62
  ]

47:                                               ; preds = %45
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr inbounds %struct.drm_fb_helper, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.drm_device, ptr %50, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nouveau_drm, ptr %52, i32 0, i32 2, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.nouveau_drm, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.drm_device, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nouveau_drm, ptr %52, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str, ptr noundef %59) #9
  %60 = load i32, ptr %25, align 4
  %61 = or i32 %60, 2
  store i32 %61, ptr %25, align 4
  br label %62

62:                                               ; preds = %47, %45, %29, %24, %12
  tail call void @drm_fb_helper_cfb_imageblit(ptr noundef %0, ptr noundef %1) #10
  br label %63

63:                                               ; preds = %62, %45, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_fbcon_sync(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_fb_helper, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %45, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.nouveau_channel, ptr %9, i32 0, i32 11
  %13 = load i8, ptr %12, align 8, !range !12
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @llvm.thread.pointer() #10
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 15728640
  %20 = load volatile i32, ptr %17, align 4
  %21 = and i32 %20, 983040
  %22 = or i32 %21, %19
  %23 = load volatile i32, ptr %17, align 4
  %24 = and i32 %23, 65280
  %25 = or i32 %22, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 27
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 2
  %38 = tail call i32 @mutex_trylock(ptr noundef %37) #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @nouveau_channel_idle(ptr noundef nonnull %9) #10
  tail call void @mutex_unlock(ptr noundef %37) #10
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void @nouveau_fbcon_gpu_lockup(ptr noundef %0)
  br label %45

44:                                               ; preds = %40
  store i8 0, ptr %12, align 8
  br label %45

45:                                               ; preds = %44, %43, %36, %31, %27, %15, %11, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_fbcon_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_fbcon_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvc0_fbcon_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_fbcon_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_fbcon_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvc0_fbcon_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_fbcon_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_fbcon_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvc0_fbcon_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_channel_idle(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_unregister_fbi(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!8 = !{i64 2148056968}
!9 = !{i64 556075, i64 2148046046, i64 2148046072, i64 2148046119, i64 2148046141, i64 2148046169, i64 2148046189}
!10 = !{i64 542644, i64 542669, i64 542691, i64 542707, i64 542719, i64 542739, i64 542763, i64 542779, i64 542791}
!11 = !{i64 2148057094}
!12 = !{i8 0, i8 2}
!13 = !{!"auto-init"}
!14 = !{!"branch_weights", i32 1, i32 2000}
