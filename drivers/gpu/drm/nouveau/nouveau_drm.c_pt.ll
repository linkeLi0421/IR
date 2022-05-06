; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_drm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_drm.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_parent_func = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.nvif_mclass = type { i32, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.80, i64, i64, i32, %struct.kref, i32 }
%union.anon.80 = type { i64 }
%struct.nouveau_cli_work = type { ptr, ptr, %struct.list_head, ptr, %struct.dma_fence_cb }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.74 }
%struct.anon.74 = type { ptr, i64 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.79, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.79 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.86 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.87, %struct.anon.88, %struct.anon.93, ptr, %struct.anon.94, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.96, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.108 }
%struct.nvif_parent = type { ptr }
%struct.anon.87 = type { ptr, i32, i32, i8 }
%struct.anon.88 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.89] }
%struct.anon.89 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.93 = type { i64, i64 }
%struct.anon.94 = type { i32, i64 }
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
%struct.anon.108 = type { ptr, %struct.mutex, i8 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_root = type { ptr }
%struct.nouveau_fence_priv = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.nv_device_v0 = type { i8, i8, [6 x i8], i64 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.nvif_sclass = type { i32, i32, i32 }
%struct.nv_dma_v0 = type { i8, i8, i8, [5 x i8], i64, i64 }
%struct.nouveau_channel = type { %struct.anon.90, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.91, i8, ptr, %struct.anon.92, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.90 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.91 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.92 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.anon.187 = type { %struct.nvkm_object, ptr }
%struct.nvkm_gpuobj = type { %union.anon.95, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.95 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { ptr }
%struct.upid = type { i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.pci_vpd = type { %struct.mutex, i32, i8 }

@__UNIQUE_ID_config281 = internal constant [49 x i8] c"parm=config:option string to pass to driver core\00", section ".modinfo", align 1
@__param_str_config = internal constant [7 x i8] c"config\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@nouveau_config = internal global ptr null, align 4
@__param_config = internal constant %struct.kernel_param { ptr @__param_str_config, ptr @__this_module, ptr @param_ops_charp, i16 256, i8 -1, i8 0, %union.anon.64 { ptr @nouveau_config } }, section "__param", align 4
@__UNIQUE_ID_configtype282 = internal constant [22 x i8] c"parmtype=config:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_debug283 = internal constant [47 x i8] c"parm=debug:debug string to pass to driver core\00", section ".modinfo", align 1
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@nouveau_debug = internal global ptr null, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_charp, i16 256, i8 -1, i8 0, %union.anon.64 { ptr @nouveau_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype284 = internal constant [21 x i8] c"parmtype=debug:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_noaccel285 = internal constant [47 x i8] c"parm=noaccel:disable kernel/abi16 acceleration\00", section ".modinfo", align 1
@__param_str_noaccel = internal constant [8 x i8] c"noaccel\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nouveau_noaccel = internal global i32 0, align 4
@__param_noaccel = internal constant %struct.kernel_param { ptr @__param_str_noaccel, ptr @__this_module, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.64 { ptr @nouveau_noaccel } }, section "__param", align 4
@__UNIQUE_ID_noacceltype286 = internal constant [21 x i8] c"parmtype=noaccel:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modeset287 = internal constant [84 x i8] c"parm=modeset:enable driver (default: auto, 0 = disabled, 1 = enabled, 2 = headless)\00", section ".modinfo", align 1
@nouveau_modeset = dso_local global i32 -1, align 4
@__param_str_modeset = internal constant [8 x i8] c"modeset\00", align 1
@__param_modeset = internal constant %struct.kernel_param { ptr @__param_str_modeset, ptr @__this_module, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.64 { ptr @nouveau_modeset } }, section "__param", align 4
@__UNIQUE_ID_modesettype288 = internal constant [21 x i8] c"parmtype=modeset:int\00", section ".modinfo", align 1
@__UNIQUE_ID_atomic289 = internal constant [52 x i8] c"parm=atomic:Expose atomic ioctl (default: disabled)\00", section ".modinfo", align 1
@__param_str_atomic = internal constant [7 x i8] c"atomic\00", align 1
@nouveau_atomic = internal global i32 0, align 4
@__param_atomic = internal constant %struct.kernel_param { ptr @__param_str_atomic, ptr @__this_module, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.64 { ptr @nouveau_atomic } }, section "__param", align 4
@__UNIQUE_ID_atomictype290 = internal constant [20 x i8] c"parmtype=atomic:int\00", section ".modinfo", align 1
@__UNIQUE_ID_runpm291 = internal constant [68 x i8] c"parm=runpm:disable (0), force enable (1), optimus only default (-1)\00", section ".modinfo", align 1
@__param_str_runpm = internal constant [6 x i8] c"runpm\00", align 1
@nouveau_runtime_pm = internal global i32 -1, align 4
@__param_runpm = internal constant %struct.kernel_param { ptr @__param_str_runpm, ptr @__this_module, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.64 { ptr @nouveau_runtime_pm } }, section "__param", align 4
@__UNIQUE_ID_runpmtype292 = internal constant [19 x i8] c"parmtype=runpm:int\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@driver_platform = internal global %struct.drm_driver zeroinitializer, align 4
@nouveau_drm_pci_table = internal global [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4318, i32 -1, i32 -1, i32 -1, i32 196608, i32 16711680, i32 0, i32 0 }, %struct.pci_device_id { i32 4818, i32 -1, i32 -1, i32 -1, i32 196608, i32 16711680, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@__UNIQUE_ID_author294 = internal constant [23 x i8] c"author=Nouveau Project\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [59 x i8] c"description=nVidia Riva/TNT/GeForce/Quadro/Tesla/Tegra K1+\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [34 x i8] c"license=GPL and additional rights\00", section ".modinfo", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [38 x i8] c"drivers/gpu/drm/nouveau/nouveau_drm.c\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: suspending console...\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: suspending display...\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: evicting buffers...\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"%s: waiting for kernel channels to go idle...\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%s: suspending fence...\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"%s: suspending object tree...\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"%s: resuming display...\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"%s: resuming object tree...\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"%s: Client resume failed with error: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"%s: resuming fence...\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"%s: resuming console...\0A\00", align 1
@nouveau_parent = internal constant %struct.nvif_parent_func { ptr @nouveau_drm_debugf, ptr @nouveau_drm_errorf }, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"DRM-master\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"DRM\00", align 1
@nouveau_drm_device_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"&drm->clients_lock\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"%s: %pV\00", align 1
@nouveau_cli_init.mems = internal constant [4 x %struct.nvif_mclass] [%struct.nvif_mclass { i32 -2147446773, i32 -1 }, %struct.nvif_mclass { i32 -2147463157, i32 -1 }, %struct.nvif_mclass { i32 -2147483637, i32 -1 }, %struct.nvif_mclass zeroinitializer], align 4
@nouveau_cli_init.mmus = internal unnamed_addr constant [4 x %struct.nvif_mclass] [%struct.nvif_mclass { i32 -2147446775, i32 -1 }, %struct.nvif_mclass { i32 -2147463159, i32 -1 }, %struct.nvif_mclass { i32 -2147483639, i32 -1 }, %struct.nvif_mclass zeroinitializer], align 4
@nouveau_cli_init.vmms = internal unnamed_addr constant [6 x %struct.nvif_mclass] [%struct.nvif_mclass { i32 -2147434483, i32 -1 }, %struct.nvif_mclass { i32 -2147438579, i32 -1 }, %struct.nvif_mclass { i32 -2147446771, i32 -1 }, %struct.nvif_mclass { i32 -2147463155, i32 -1 }, %struct.nvif_mclass { i32 -2147483635, i32 -1 }, %struct.nvif_mclass zeroinitializer], align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@nouveau_cli_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"&cli->mutex\00", align 1
@nouveau_cli_init.__key.18 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"&cli->lock\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"%s: Client allocation failed: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"drmDevice\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"%s: Device allocation failed: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"%s: No supported MMU class\0A\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"drmMmu\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"%s: MMU allocation failed: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"%s: No supported VMM class\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"%s: VMM allocation failed: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"%s: No supported MEM class\0A\00", align 1
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.29 = private unnamed_addr constant [45 x i8] c"%s: failed to initialise sync subsystem, %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"drmUsermode\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"%s: failed to create kernel channel, %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"drmNvsw\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"%s: failed to allocate sw class, %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"%s: failed to allocate notifier, %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"drmM2mfNtfy\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"%s: failed to create ce channel, %d\0A\00", align 1
@driver_pci = internal global %struct.drm_driver zeroinitializer, align 4
@driver_stub = internal unnamed_addr constant %struct.drm_driver { ptr null, ptr @nouveau_drm_open, ptr @nouveau_drm_postclose, ptr @nouveau_vga_lastclose, ptr null, ptr null, ptr null, ptr null, ptr @nouveau_drm_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @nouveau_gem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @nouveau_display_dumb_create, ptr @drm_gem_ttm_dumb_map_offset, ptr null, i32 1, i32 3, i32 1, ptr @.str.37, ptr @.str.38, ptr @.str.39, i32 -2147483637, ptr @nouveau_ioctls, i32 69, ptr @nouveau_driver_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@nouveau_platform_driver = external dso_local global %struct.platform_driver, align 4
@nouveau_drm_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.37, ptr @nouveau_drm_pci_table, ptr @nouveau_drm_probe, ptr @nouveau_drm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nouveau_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, align 4
@.str.37 = private unnamed_addr constant [8 x i8] c"nouveau\00", align 1
@.str.38 = private unnamed_addr constant [47 x i8] c"nVidia Riva/TNT/GeForce/Quadro/Tesla/Tegra K1+\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"20120801\00", align 1
@nouveau_ioctls = internal constant [69 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 -1072667584, i32 32, ptr @nouveau_abi16_ioctl_getparam, ptr @.str.41 }, %struct.drm_ioctl_desc { i32 -1072667583, i32 7, ptr @drm_invalid_op, ptr @.str.42 }, %struct.drm_ioctl_desc { i32 -1067948990, i32 32, ptr @nouveau_abi16_ioctl_channel_alloc, ptr @.str.43 }, %struct.drm_ioctl_desc { i32 1074029635, i32 32, ptr @nouveau_abi16_ioctl_channel_free, ptr @.str.44 }, %struct.drm_ioctl_desc { i32 1074553924, i32 32, ptr @nouveau_abi16_ioctl_grobj_alloc, ptr @.str.45 }, %struct.drm_ioctl_desc { i32 -1072667579, i32 32, ptr @nouveau_abi16_ioctl_notifierobj_alloc, ptr @.str.46 }, %struct.drm_ioctl_desc { i32 1074291782, i32 32, ptr @nouveau_abi16_ioctl_gpuobj_free, ptr @.str.47 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072667576, i32 32, ptr @nouveau_svmm_init, ptr @.str.48 }, %struct.drm_ioctl_desc { i32 -1069521847, i32 32, ptr @nouveau_svmm_bind, ptr @.str.49 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1070570368, i32 32, ptr @nouveau_gem_ioctl_new, ptr @.str.50 }, %struct.drm_ioctl_desc { i32 -1069521791, i32 32, ptr @nouveau_gem_ioctl_pushbuf, ptr @.str.51 }, %struct.drm_ioctl_desc { i32 1074291842, i32 32, ptr @nouveau_gem_ioctl_cpu_prep, ptr @.str.52 }, %struct.drm_ioctl_desc { i32 1074029699, i32 32, ptr @nouveau_gem_ioctl_cpu_fini, ptr @.str.53 }, %struct.drm_ioctl_desc { i32 -1071094652, i32 32, ptr @nouveau_gem_ioctl_info, ptr @.str.54 }], align 4
@nouveau_driver_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @nouveau_drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.40 = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"NOUVEAU_GETPARAM\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"NOUVEAU_SETPARAM\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"NOUVEAU_CHANNEL_ALLOC\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"NOUVEAU_CHANNEL_FREE\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"NOUVEAU_GROBJ_ALLOC\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"NOUVEAU_NOTIFIEROBJ_ALLOC\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"NOUVEAU_GPUOBJ_FREE\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"NOUVEAU_SVM_INIT\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"NOUVEAU_SVM_BIND\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"NOUVEAU_GEM_NEW\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"NOUVEAU_GEM_PUSHBUF\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"NOUVEAU_GEM_CPU_PREP\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"NOUVEAU_GEM_CPU_FINI\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"NOUVEAU_GEM_INFO\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"Loading Nouveau with parameters:\0A\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"... tv_disable   : %d\0A\00", align 1
@nouveau_tv_disable = external dso_local local_unnamed_addr global i32, align 4
@.str.57 = private unnamed_addr constant [23 x i8] c"... ignorelid    : %d\0A\00", align 1
@nouveau_ignorelid = external dso_local local_unnamed_addr global i32, align 4
@.str.58 = private unnamed_addr constant [23 x i8] c"... duallink     : %d\0A\00", align 1
@nouveau_duallink = external dso_local local_unnamed_addr global i32, align 4
@.str.59 = private unnamed_addr constant [23 x i8] c"... nofbaccel    : %d\0A\00", align 1
@nouveau_nofbaccel = external dso_local local_unnamed_addr global i32, align 4
@.str.60 = private unnamed_addr constant [23 x i8] c"... config       : %s\0A\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"... debug        : %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"... noaccel      : %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"... modeset      : %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"... runpm        : %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"... vram_pushbuf : %d\0A\00", align 1
@nouveau_vram_pushbuf = external dso_local local_unnamed_addr global i32, align 4
@.str.66 = private unnamed_addr constant [23 x i8] c"... hdmimhz      : %d\0A\00", align 1
@nouveau_hdmimhz = external dso_local local_unnamed_addr global i32, align 4
@nouveau_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @nouveau_pmops_suspend, ptr @nouveau_pmops_resume, ptr @nouveau_pmops_freeze, ptr @nouveau_pmops_thaw, ptr @nouveau_pmops_freeze, ptr @nouveau_pmops_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nouveau_pmops_runtime_suspend, ptr @nouveau_pmops_runtime_resume, ptr @nouveau_pmops_runtime_idle }, align 4
@.str.67 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.68 = private unnamed_addr constant [49 x i8] c"%s: Disabling PCI power management to avoid bug\0A\00", align 1
@.str.69 = private unnamed_addr constant [28 x i8] c"%s: resume failed with: %d\0A\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_atomic289, ptr @__UNIQUE_ID_atomictype290, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_config281, ptr @__UNIQUE_ID_configtype282, ptr @__UNIQUE_ID_debug283, ptr @__UNIQUE_ID_debugtype284, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_license296, ptr @__UNIQUE_ID_modeset287, ptr @__UNIQUE_ID_modesettype288, ptr @__UNIQUE_ID_noaccel285, ptr @__UNIQUE_ID_noacceltype286, ptr @__UNIQUE_ID_runpm291, ptr @__UNIQUE_ID_runpmtype292, ptr @__param_atomic, ptr @__param_config, ptr @__param_debug, ptr @__param_modeset, ptr @__param_noaccel, ptr @__param_runpm], section "llvm.metadata"

@__mod_pci__nouveau_drm_pci_table_device_table = dso_local alias [3 x %struct.pci_device_id], ptr @nouveau_drm_pci_table

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_cli_work_queue(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #13, !srcloc !8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #13, !srcloc !9
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !10

10:                                               ; preds = %5
  %11 = add i32 %8, 1
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %16, label %14, !prof !11

14:                                               ; preds = %10, %5
  %15 = phi i32 [ 2, %5 ], [ 1, %10 ]
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef %15) #13
  br label %16

16:                                               ; preds = %14, %10, %3
  %17 = getelementptr inbounds %struct.nouveau_cli_work, ptr %2, i32 0, i32 3
  store ptr %1, ptr %17, align 4
  %18 = getelementptr %struct.nouveau_cli_work, ptr %2, i32 0, i32 1
  store ptr %0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %19) #13
  %20 = getelementptr inbounds %struct.nouveau_cli_work, ptr %2, i32 0, i32 2
  %21 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 14
  %22 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 14, i32 1
  %23 = load ptr, ptr %22, align 4
  store ptr %20, ptr %22, align 4
  store ptr %21, ptr %20, align 4
  %24 = getelementptr inbounds %struct.nouveau_cli_work, ptr %2, i32 0, i32 2, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %20, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nouveau_cli_work, ptr %2, i32 0, i32 4
  %26 = tail call i32 @dma_fence_add_callback(ptr noundef %1, ptr noundef %25, ptr noundef nonnull @nouveau_cli_work_fence) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %16
  %29 = load ptr, ptr %18, align 4
  %30 = getelementptr inbounds %struct.nouveau_cli, ptr %29, i32 0, i32 13
  %31 = load ptr, ptr @system_wq, align 4
  %32 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %31, ptr noundef %30) #13
  br label %33

33:                                               ; preds = %28, %16
  tail call void @mutex_unlock(ptr noundef %19) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_cli_work_fence(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_cli, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr @system_wq, align 4
  %7 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %6, ptr noundef %5) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_drm_device_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  tail call void @drm_dev_unplug(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = tail call ptr @nvkm_device_find(i64 noundef %8) #13
  store ptr %9, ptr %2, align 4
  tail call fastcc void @nouveau_drm_device_fini(ptr noundef %0)
  tail call void @drm_dev_put(ptr noundef %0) #13
  call void @nvkm_device_del(ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_find(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nouveau_drm_device_fini(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @nouveau_runtime_pm, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #13
  %10 = load ptr, ptr %7, align 4
  tail call void @pm_runtime_forbid(ptr noundef %10) #13
  br label %11

11:                                               ; preds = %6, %1
  tail call void @nouveau_led_fini(ptr noundef %0) #13
  tail call void @nouveau_fbcon_fini(ptr noundef %0) #13
  tail call void @nouveau_hwmon_fini(ptr noundef %0) #13
  tail call void @nouveau_debugfs_fini(ptr noundef %3) #13
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 19
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @nouveau_display_fini(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %16

16:                                               ; preds = %15, %11
  tail call void @nouveau_display_destroy(ptr noundef %0) #13
  tail call fastcc void @nouveau_accel_fini(ptr noundef %3)
  tail call void @nouveau_bios_takedown(ptr noundef %0) #13
  tail call void @nouveau_ttm_fini(ptr noundef %3) #13
  tail call void @nouveau_vga_fini(ptr noundef %3) #13
  %17 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %17) #13
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %35, label %21

21:                                               ; preds = %33, %16
  %22 = phi ptr [ %24, %33 ], [ %19, %16 ]
  %23 = getelementptr i8, ptr %22, i32 -516
  %24 = load ptr, ptr %22, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  store volatile ptr %24, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  %28 = getelementptr i8, ptr %22, i32 -448
  tail call void @mutex_lock(ptr noundef %28) #13
  %29 = getelementptr i8, ptr %22, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  tail call void @nouveau_abi16_fini(ptr noundef nonnull %30) #13
  br label %33

33:                                               ; preds = %32, %21
  tail call void @mutex_unlock(ptr noundef %28) #13
  tail call fastcc void @nouveau_cli_fini(ptr noundef %23)
  tail call void @kfree(ptr noundef %23) #13
  %34 = icmp eq ptr %24, %18
  br i1 %34, label %35, label %21

35:                                               ; preds = %33, %16
  tail call void @mutex_unlock(ptr noundef %17) #13
  %36 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2
  tail call fastcc void @nouveau_cli_fini(ptr noundef %36)
  %37 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 1
  tail call fastcc void @nouveau_cli_fini(ptr noundef %37)
  store ptr null, ptr %3, align 4
  tail call void @kfree(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_pmops_suspend(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 35
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %7 [
    i32 1, label %14
    i32 3, label %14
  ]

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @nouveau_do_suspend(ptr noundef %4, i1 noundef zeroext false)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = tail call i32 @pci_save_state(ptr noundef %2) #13
  tail call void @pci_disable_device(ptr noundef %2) #13
  %12 = tail call i32 @pci_set_power_state(ptr noundef %2, i32 noundef 3) #13
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 42949600) #13
  br label %14

14:                                               ; preds = %10, %7, %1, %1
  %15 = phi i32 [ 0, %10 ], [ 0, %1 ], [ 0, %1 ], [ %8, %7 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nouveau_do_suspend(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  tail call void @nouveau_led_suspend(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 19
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr @__drm_debug, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef %19) #14
  br label %20

20:                                               ; preds = %12, %8
  tail call void @nouveau_fbcon_set_suspend(ptr noundef %0, i32 noundef 1) #13
  %21 = load i32, ptr @__drm_debug, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.2, ptr noundef %31) #14
  br label %32

32:                                               ; preds = %24, %20
  %33 = tail call i32 @nouveau_display_suspend(ptr noundef %0, i1 noundef zeroext %1) #13
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %140

35:                                               ; preds = %32, %2
  %36 = load i32, ptr @__drm_debug, align 4
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.nouveau_drm, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.drm_device, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.3, ptr noundef %46) #14
  br label %47

47:                                               ; preds = %39, %35
  %48 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 8
  %49 = getelementptr %struct.nouveau_drm, ptr %4, i32 0, i32 8, i32 0, i32 3, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 @ttm_resource_manager_evict_all(ptr noundef %48, ptr noundef %50) #13
  %52 = load i32, ptr @__drm_debug, align 4
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.nouveau_drm, ptr %57, i32 0, i32 3
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.drm_device, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.4, ptr noundef %62) #14
  br label %63

63:                                               ; preds = %55, %47
  %64 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 12
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = tail call i32 @nouveau_channel_idle(ptr noundef nonnull %65) #13
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %123

70:                                               ; preds = %67, %63
  %71 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 13
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = tail call i32 @nouveau_channel_idle(ptr noundef nonnull %72) #13
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %123

77:                                               ; preds = %74, %70
  %78 = load i32, ptr @__drm_debug, align 4
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.nouveau_drm, ptr %83, i32 0, i32 3
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.drm_device, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %87, ptr noundef nonnull @.str.5, ptr noundef %88) #14
  br label %89

89:                                               ; preds = %81, %77
  %90 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 10
  %91 = load ptr, ptr %90, align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.nouveau_fence_priv, ptr %91, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = tail call zeroext i1 %95(ptr noundef %4) #13
  br i1 %98, label %99, label %123

99:                                               ; preds = %97, %93, %89
  %100 = load i32, ptr @__drm_debug, align 4
  %101 = and i32 %100, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.nouveau_drm, ptr %105, i32 0, i32 3
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr inbounds %struct.drm_device, ptr %107, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %109, ptr noundef nonnull @.str.6, ptr noundef %110) #14
  br label %111

111:                                              ; preds = %103, %99
  %112 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 1
  %113 = tail call i32 @nvif_client_suspend(ptr noundef %112) #13
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %140, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %90, align 8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.nouveau_fence_priv, ptr %116, i32 0, i32 2
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  tail call void %120(ptr noundef %4) #13
  br label %123

123:                                              ; preds = %122, %118, %115, %97, %74, %67
  %124 = phi i32 [ %68, %67 ], [ %75, %74 ], [ %113, %122 ], [ %113, %118 ], [ %113, %115 ], [ -12, %97 ]
  %125 = load i32, ptr %5, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %140, label %127

127:                                              ; preds = %123
  %128 = load i32, ptr @__drm_debug, align 4
  %129 = and i32 %128, 2
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %struct.nouveau_drm, ptr %133, i32 0, i32 3
  %135 = load ptr, ptr %134, align 8
  %136 = getelementptr inbounds %struct.drm_device, ptr %135, i32 0, i32 2
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %137, ptr noundef nonnull @.str.7, ptr noundef %138) #14
  br label %139

139:                                              ; preds = %131, %127
  tail call void @nouveau_display_resume(ptr noundef %0, i1 noundef zeroext %1) #13
  br label %140

140:                                              ; preds = %139, %123, %111, %32
  %141 = phi i32 [ %33, %32 ], [ 0, %111 ], [ %124, %139 ], [ %124, %123 ]
  ret i32 %141
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_pmops_resume(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 35
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %7 [
    i32 1, label %13
    i32 3, label %13
  ]

7:                                                ; preds = %1
  %8 = tail call i32 @pci_set_power_state(ptr noundef %2, i32 noundef 0) #13
  tail call void @pci_restore_state(ptr noundef %2) #13
  %9 = tail call i32 @pci_enable_device(ptr noundef %2) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  tail call void @pci_set_master(ptr noundef %2) #13
  %12 = tail call fastcc i32 @nouveau_do_resume(ptr noundef %4, i1 noundef zeroext false)
  tail call void @nouveau_display_hpd_resume(ptr noundef %4) #13
  br label %13

13:                                               ; preds = %11, %7, %1, %1
  %14 = phi i32 [ %12, %11 ], [ 0, %1 ], [ 0, %1 ], [ %9, %7 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nouveau_do_resume(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @__drm_debug, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.8, ptr noundef %15) #14
  br label %16

16:                                               ; preds = %8, %2
  %17 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 1
  %18 = tail call i32 @nvif_client_resume(ptr noundef %17) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.9, ptr noundef %27, i32 noundef %18) #14
  br label %80

28:                                               ; preds = %16
  %29 = load i32, ptr @__drm_debug, align 4
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.drm_device, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.10, ptr noundef %39) #14
  br label %40

40:                                               ; preds = %32, %28
  %41 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 10
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.nouveau_fence_priv, ptr %42, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void %46(ptr noundef %4) #13
  br label %49

49:                                               ; preds = %48, %44, %40
  %50 = tail call i32 @nouveau_run_vbios_init(ptr noundef %0) #13
  %51 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 19
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %79, label %54

54:                                               ; preds = %49
  %55 = load i32, ptr @__drm_debug, align 4
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.nouveau_drm, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.drm_device, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.7, ptr noundef %65) #14
  br label %66

66:                                               ; preds = %58, %54
  tail call void @nouveau_display_resume(ptr noundef %0, i1 noundef zeroext %1) #13
  %67 = load i32, ptr @__drm_debug, align 4
  %68 = and i32 %67, 2
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.nouveau_drm, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.drm_device, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %76, ptr noundef nonnull @.str.11, ptr noundef %77) #14
  br label %78

78:                                               ; preds = %70, %66
  tail call void @nouveau_fbcon_set_suspend(ptr noundef %0, i32 noundef 0) #13
  br label %79

79:                                               ; preds = %78, %49
  tail call void @nouveau_led_resume(ptr noundef %0) #13
  br label %80

80:                                               ; preds = %79, %20
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_display_hpd_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nouveau_pmops_runtime() local_unnamed_addr #3 {
  %1 = load i32, ptr @nouveau_runtime_pm, align 4
  %2 = icmp eq i32 %1, 1
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_drm_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_minor, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #13
  %13 = icmp slt i32 %12, 0
  %14 = icmp ne i32 %12, -13
  %15 = and i1 %13, %14
  br i1 %15, label %31, label %16

16:                                               ; preds = %3
  %17 = and i32 %1, 255
  %18 = icmp eq i32 %17, 71
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = inttoptr i32 %2 to ptr
  %21 = lshr i32 %1, 16
  %22 = and i32 %21, 16383
  %23 = tail call i32 @usif_ioctl(ptr noundef %5, ptr noundef %20, i32 noundef %22) #13
  br label %26

24:                                               ; preds = %16
  %25 = tail call i32 @drm_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #13
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i32 [ %23, %19 ], [ %25, %24 ]
  %28 = load ptr, ptr %10, align 4
  %29 = tail call i64 @ktime_get_mono_fast_ns() #13
  %30 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 11, i32 22
  store volatile i64 %29, ptr %30, align 8
  br label %31

31:                                               ; preds = %26, %3
  %32 = phi i32 [ %27, %26 ], [ %12, %3 ]
  %33 = load ptr, ptr %10, align 4
  %34 = tail call i32 @__pm_runtime_suspend(ptr noundef %33, i32 noundef 13) #13
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usif_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nouveau_platform_device_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @nouveau_config, align 4
  %5 = load ptr, ptr @nouveau_debug, align 4
  %6 = tail call i32 @nvkm_device_tegra_new(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext true, i64 noundef -1, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %10 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @driver_platform, ptr noundef %9) #13
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = ptrtoint ptr %10 to i32
  br label %20

14:                                               ; preds = %8
  %15 = tail call fastcc i32 @nouveau_drm_device_init(ptr noundef %10)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  store ptr %10, ptr %18, align 8
  br label %23

19:                                               ; preds = %14
  tail call void @drm_dev_put(ptr noundef %10) #13
  br label %20

20:                                               ; preds = %19, %12, %3
  %21 = phi i32 [ %6, %3 ], [ %13, %12 ], [ %15, %19 ]
  tail call void @nvkm_device_del(ptr noundef %2) #13
  %22 = inttoptr i32 %21 to ptr
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi ptr [ %22, %20 ], [ %10, %17 ]
  ret ptr %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_device_tegra_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nouveau_drm_device_init(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 3992) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %92, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 3
  store ptr %0, ptr %7, align 8
  store ptr @nouveau_parent, ptr %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 1
  store ptr %3, ptr %8, align 8
  %9 = tail call fastcc i32 @nouveau_cli_init(ptr noundef nonnull %3, ptr noundef nonnull @.str.12, ptr noundef %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %90

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2
  %13 = tail call fastcc i32 @nouveau_cli_init(ptr noundef nonnull %3, ptr noundef nonnull @.str.13, ptr noundef %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %88

15:                                               ; preds = %11
  %16 = load ptr, ptr @nouveau_debug, align 4
  %17 = tail call i32 @nvkm_dbgopt(ptr noundef %16, ptr noundef nonnull @.str.13) #13
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_client, ptr %19, i32 0, i32 3
  store i32 %17, ptr %20, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 4
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 4, i32 1
  store ptr %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %23, ptr noundef nonnull @.str.14, ptr noundef nonnull @nouveau_drm_device_init.__key) #13
  %24 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 17, i32 1
  store i32 0, ptr %24, align 8
  %25 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 2
  %27 = load i16, ptr %26, align 2
  %28 = icmp eq i16 %27, 193
  br i1 %28, label %29, label %46

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 6
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33, !prof !10

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %31, i32 557184
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #13, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !13
  br label %38

36:                                               ; preds = %29
  %37 = tail call i32 @nvif_object_rd(ptr noundef %25, i32 noundef 4, i64 noundef 557184) #13
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i32 [ %35, %33 ], [ %37, %36 ]
  %40 = load ptr, ptr %30, align 8
  %41 = icmp eq ptr %40, null
  %42 = and i32 %39, -2049
  br i1 %41, label %45, label %43, !prof !10

43:                                               ; preds = %38
  %44 = getelementptr i8, ptr %40, i32 557184
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !14
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #13, !srcloc !15
  br label %46

45:                                               ; preds = %38
  tail call void @nvif_object_wr(ptr noundef %25, i32 noundef 4, i64 noundef 557184, i32 noundef %42) #13
  br label %46

46:                                               ; preds = %45, %43, %15
  tail call void @nouveau_vga_init(ptr noundef nonnull %3) #13
  %47 = tail call i32 @nouveau_ttm_init(ptr noundef nonnull %3) #13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %86

49:                                               ; preds = %46
  %50 = tail call i32 @nouveau_bios_init(ptr noundef %0) #13
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %84

52:                                               ; preds = %49
  tail call fastcc void @nouveau_accel_init(ptr noundef nonnull %3)
  %53 = tail call i32 @nouveau_display_create(ptr noundef %0) #13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 19
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = tail call i32 @nouveau_display_init(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %59, %55
  %63 = tail call i32 @nouveau_debugfs_init(ptr noundef nonnull %3) #13
  %64 = tail call i32 @nouveau_hwmon_init(ptr noundef %0) #13
  %65 = tail call i32 @nouveau_fbcon_init(ptr noundef %0) #13
  %66 = tail call i32 @nouveau_led_init(ptr noundef %0) #13
  %67 = load i32, ptr @nouveau_runtime_pm, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %92

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %71, i1 noundef zeroext true) #13
  %72 = load ptr, ptr %70, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %72, i32 noundef 5000) #13
  %73 = load ptr, ptr %70, align 4
  %74 = tail call i32 @__pm_runtime_set_status(ptr noundef %73, i32 noundef 0) #13
  %75 = load ptr, ptr %70, align 4
  tail call void @pm_runtime_allow(ptr noundef %75) #13
  %76 = load ptr, ptr %70, align 4
  %77 = tail call i64 @ktime_get_mono_fast_ns() #13
  %78 = getelementptr inbounds %struct.device, ptr %76, i32 0, i32 11, i32 22
  store volatile i64 %77, ptr %78, align 8
  %79 = load ptr, ptr %70, align 4
  %80 = tail call i32 @__pm_runtime_idle(ptr noundef %79, i32 noundef 5) #13
  br label %92

81:                                               ; preds = %59
  tail call void @nouveau_display_destroy(ptr noundef %0) #13
  br label %82

82:                                               ; preds = %81, %52
  %83 = phi i32 [ %53, %52 ], [ %60, %81 ]
  tail call fastcc void @nouveau_accel_fini(ptr noundef nonnull %3)
  tail call void @nouveau_bios_takedown(ptr noundef %0) #13
  br label %84

84:                                               ; preds = %82, %49
  %85 = phi i32 [ %50, %49 ], [ %83, %82 ]
  tail call void @nouveau_ttm_fini(ptr noundef nonnull %3) #13
  br label %86

86:                                               ; preds = %84, %46
  %87 = phi i32 [ %47, %46 ], [ %85, %84 ]
  tail call void @nouveau_vga_fini(ptr noundef nonnull %3) #13
  tail call fastcc void @nouveau_cli_fini(ptr noundef %12)
  br label %88

88:                                               ; preds = %86, %11
  %89 = phi i32 [ %13, %11 ], [ %87, %86 ]
  tail call fastcc void @nouveau_cli_fini(ptr noundef %8)
  br label %90

90:                                               ; preds = %88, %5
  %91 = phi i32 [ %9, %5 ], [ %89, %88 ]
  store ptr null, ptr %3, align 8
  tail call void @kfree(ptr noundef nonnull %3) #13
  br label %92

92:                                               ; preds = %90, %69, %62, %1
  %93 = phi i32 [ %91, %90 ], [ -12, %1 ], [ 0, %69 ], [ 0, %62 ]
  ret i32 %93
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #4 section ".init.text" {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(164) @driver_pci, ptr noundef nonnull align 4 dereferenceable(164) @driver_stub, i32 164, i1 false)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(164) @driver_platform, ptr noundef nonnull align 4 dereferenceable(164) @driver_stub, i32 164, i1 false)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.55) #13
  %1 = load i32, ptr @nouveau_tv_disable, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef %1) #13
  %2 = load i32, ptr @nouveau_ignorelid, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.57, i32 noundef %2) #13
  %3 = load i32, ptr @nouveau_duallink, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.58, i32 noundef %3) #13
  %4 = load i32, ptr @nouveau_nofbaccel, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef %4) #13
  %5 = load ptr, ptr @nouveau_config, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.60, ptr noundef %5) #13
  %6 = load ptr, ptr @nouveau_debug, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.61, ptr noundef %6) #13
  %7 = load i32, ptr @nouveau_noaccel, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef %7) #13
  %8 = load i32, ptr @nouveau_modeset, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.63, i32 noundef %8) #13
  %9 = load i32, ptr @nouveau_runtime_pm, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.64, i32 noundef %9) #13
  %10 = load i32, ptr @nouveau_vram_pushbuf, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.65, i32 noundef %10) #13
  %11 = load i32, ptr @nouveau_hdmimhz, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.66, i32 noundef %11) #13
  %12 = load i32, ptr @nouveau_modeset, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %19

14:                                               ; preds = %0
  %15 = tail call zeroext i1 @drm_firmware_drivers_only() #13
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  store i32 0, ptr @nouveau_modeset, align 4
  br label %25

17:                                               ; preds = %14
  %18 = load i32, ptr @nouveau_modeset, align 4
  br label %19

19:                                               ; preds = %17, %0
  %20 = phi i32 [ %18, %17 ], [ %12, %0 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @__platform_driver_register(ptr noundef nonnull @nouveau_platform_driver, ptr noundef nonnull @__this_module) #13
  tail call void @nouveau_backlight_ctor() #13
  %24 = tail call i32 @__pci_register_driver(ptr noundef nonnull @nouveau_drm_pci_driver, ptr noundef nonnull @__this_module, ptr noundef nonnull @.str.37) #13
  br label %25

25:                                               ; preds = %22, %19, %16
  %26 = phi i32 [ %24, %22 ], [ 0, %19 ], [ 0, %16 ]
  ret i32 %26
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #4 section ".exit.text" {
  %1 = load i32, ptr @nouveau_modeset, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @pci_unregister_driver(ptr noundef nonnull @nouveau_drm_pci_driver) #13
  tail call void @nouveau_backlight_dtor() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @nouveau_platform_driver) #13
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_led_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fbcon_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_hwmon_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_debugfs_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_display_fini(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_display_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nouveau_accel_fini(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @nouveau_channel_idle(ptr noundef %3) #13
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 8, i32 4
  tail call void @nvif_object_dtor(ptr noundef %5) #13
  tail call void @nouveau_channel_del(ptr noundef %2) #13
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @nouveau_channel_idle(ptr noundef %7) #13
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 16
  tail call void @nvif_object_dtor(ptr noundef %9) #13
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 14
  tail call void @nvkm_gpuobj_del(ptr noundef %10) #13
  tail call void @nouveau_channel_del(ptr noundef %6) #13
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr %12, align 4
  tail call void %15(ptr noundef %0) #13
  br label %16

16:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bios_takedown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_ttm_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vga_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_abi16_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nouveau_cli_fini(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 13
  %3 = tail call zeroext i1 @flush_work(ptr noundef %2) #13
  %4 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 14
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %8, label %7, !prof !11

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 179, i32 noundef 9, ptr noundef null) #13
  br label %8

8:                                                ; preds = %7, %1
  tail call void @usif_client_fini(ptr noundef %0) #13
  %9 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 6
  tail call void @nouveau_vmm_fini(ptr noundef %9) #13
  %10 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 5
  tail call void @nouveau_vmm_fini(ptr noundef %10) #13
  %11 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 4
  tail call void @nvif_mmu_dtor(ptr noundef %11) #13
  %12 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 3
  tail call void @nvif_device_dtor(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %14, i32 0, i32 1, i32 15
  tail call void @mutex_lock(ptr noundef %15) #13
  tail call void @nvif_client_dtor(ptr noundef %0) #13
  %16 = load ptr, ptr %13, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, ptr %16, i32 0, i32 1, i32 15
  tail call void @mutex_unlock(ptr noundef %17) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nouveau_accel_gr_fini(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @nouveau_channel_idle(ptr noundef %3) #13
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 16
  tail call void @nvif_object_dtor(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 14
  tail call void @nvkm_gpuobj_del(ptr noundef %6) #13
  tail call void @nouveau_channel_del(ptr noundef %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_channel_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_channel_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_gpuobj_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usif_client_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vmm_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_mmu_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_device_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_client_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_led_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fbcon_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_display_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_resource_manager_evict_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_client_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_display_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_client_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_run_vbios_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_led_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nouveau_cli_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.nv_device_v0, align 8
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, @pci_bus_type
  br i1 %14, label %15, label %37

15:                                               ; preds = %3
  %16 = getelementptr i8, ptr %11, i32 -128
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.pci_bus, ptr %17, i32 0, i32 16
  %19 = load i32, ptr %18, align 8
  %20 = zext i32 %19 to i64
  %21 = shl nuw i64 %20, 32
  %22 = getelementptr inbounds %struct.pci_bus, ptr %17, i32 0, i32 12
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 16
  %26 = zext i32 %25 to i64
  %27 = or i64 %21, %26
  %28 = getelementptr i8, ptr %11, i32 -108
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 %29, 5
  %31 = and i32 %30, 7936
  %32 = zext i32 %31 to i64
  %33 = and i32 %29, 7
  %34 = zext i32 %33 to i64
  %35 = or i64 %27, %34
  %36 = or i64 %35, %32
  br label %41

37:                                               ; preds = %3
  %38 = getelementptr i8, ptr %11, i32 -12
  %39 = load i32, ptr %38, align 4
  %40 = sext i32 %39 to i64
  br label %41

41:                                               ; preds = %37, %15
  %42 = phi i64 [ %36, %15 ], [ %40, %37 ]
  %43 = getelementptr inbounds %struct.nouveau_cli, ptr %2, i32 0, i32 12
  %44 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %43, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef %1)
  %45 = getelementptr inbounds %struct.nouveau_cli, ptr %2, i32 0, i32 1
  store ptr %0, ptr %45, align 8
  %46 = getelementptr inbounds %struct.nouveau_cli, ptr %2, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %46, ptr noundef nonnull @.str.17, ptr noundef nonnull @nouveau_cli_init.__key) #13
  tail call void @usif_client_init(ptr noundef %2) #13
  %47 = getelementptr inbounds %struct.nouveau_cli, ptr %2, i32 0, i32 13
  store i32 -32, ptr %47, align 8
  %48 = getelementptr inbounds %struct.nouveau_cli, ptr %2, i32 0, i32 13, i32 1
  store volatile ptr %48, ptr %48, align 4
  %49 = getelementptr inbounds %struct.nouveau_cli, ptr %2, i32 0, i32 13, i32 1, i32 1
  store ptr %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.nouveau_cli, ptr %2, i32 0, i32 13, i32 2
  store ptr @nouveau_cli_work, ptr %50, align 4
  %51 = getelementptr inbounds %struct.nouveau_cli, ptr %2, i32 0, i32 14
  store volatile ptr %51, ptr %51, align 4
  %52 = getelementptr inbounds %struct.nouveau_cli, ptr %2, i32 0, i32 14, i32 1
  store ptr %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.nouveau_cli, ptr %2, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %53, ptr noundef nonnull @.str.19, ptr noundef nonnull @nouveau_cli_init.__key.18) #13
  %54 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 1
  %55 = icmp eq ptr %54, %2
  br i1 %55, label %56, label %60

56:                                               ; preds = %41
  %57 = load ptr, ptr @nouveau_config, align 4
  %58 = load ptr, ptr @nouveau_debug, align 4
  %59 = tail call i32 @nvif_driver_init(ptr noundef null, ptr noundef %57, ptr noundef %58, ptr noundef %43, i64 noundef %42, ptr noundef %2) #13
  br label %63

60:                                               ; preds = %41
  %61 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 1, i32 15
  tail call void @mutex_lock(ptr noundef %61) #13
  %62 = tail call i32 @nvif_client_ctor(ptr noundef %54, ptr noundef %43, i64 noundef %42, ptr noundef %2) #13
  tail call void @mutex_unlock(ptr noundef %61) #13
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i32 [ %59, %56 ], [ %62, %60 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %45, align 8
  %68 = getelementptr inbounds %struct.nouveau_drm, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.drm_device, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.20, ptr noundef %43, i32 noundef %64) #14
  br label %341

72:                                               ; preds = %63
  store i8 0, ptr %4, align 8
  %73 = getelementptr inbounds %struct.nv_device_v0, ptr %4, i32 0, i32 1
  store i8 1, ptr %73, align 1
  %74 = getelementptr inbounds %struct.nv_device_v0, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(6) %74, i8 0, i32 6, i1 false)
  %75 = getelementptr inbounds %struct.nv_device_v0, ptr %4, i32 0, i32 3
  store i64 -1, ptr %75, align 8
  %76 = getelementptr inbounds %struct.nouveau_cli, ptr %2, i32 0, i32 3
  %77 = call i32 @nvif_device_ctor(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 128, ptr noundef nonnull %4, i32 noundef 16, ptr noundef %76) #13
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = load ptr, ptr %45, align 8
  %81 = getelementptr inbounds %struct.nouveau_drm, ptr %80, i32 0, i32 3
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.drm_device, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.22, ptr noundef %43, i32 noundef %77) #14
  br label %341

85:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !16
  %86 = call i32 @nvif_object_sclass_get(ptr noundef %76, ptr noundef nonnull %5) #13
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = icmp eq i32 %86, 0
  %90 = load ptr, ptr %5, align 4
  br i1 %89, label %92, label %93

91:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %143

92:                                               ; preds = %140, %126, %109, %88
  call void @nvif_object_sclass_put(ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %143

93:                                               ; preds = %106, %88
  %94 = phi i32 [ %107, %106 ], [ 0, %88 ]
  %95 = getelementptr %struct.nvif_sclass, ptr %90, i32 %94
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, -2147446775
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = getelementptr %struct.nvif_sclass, ptr %90, i32 %94, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = icmp sgt i32 %100, -1
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = getelementptr %struct.nvif_sclass, ptr %90, i32 %94, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = icmp slt i32 %104, -1
  br i1 %105, label %106, label %149

106:                                              ; preds = %102, %98, %93
  %107 = add nuw nsw i32 %94, 1
  %108 = icmp eq i32 %107, %86
  br i1 %108, label %109, label %93

109:                                              ; preds = %106
  br i1 %89, label %92, label %110

110:                                              ; preds = %123, %109
  %111 = phi i32 [ %124, %123 ], [ 0, %109 ]
  %112 = getelementptr %struct.nvif_sclass, ptr %90, i32 %111
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, -2147463159
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = getelementptr %struct.nvif_sclass, ptr %90, i32 %111, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = icmp sgt i32 %117, -1
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = getelementptr %struct.nvif_sclass, ptr %90, i32 %111, i32 2
  %121 = load i32, ptr %120, align 4
  %122 = icmp slt i32 %121, -1
  br i1 %122, label %123, label %149

123:                                              ; preds = %119, %115, %110
  %124 = add nuw nsw i32 %111, 1
  %125 = icmp eq i32 %124, %86
  br i1 %125, label %126, label %110

126:                                              ; preds = %123
  br i1 %89, label %92, label %127

127:                                              ; preds = %140, %126
  %128 = phi i32 [ %141, %140 ], [ 0, %126 ]
  %129 = getelementptr %struct.nvif_sclass, ptr %90, i32 %128
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %130, -2147483639
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = getelementptr %struct.nvif_sclass, ptr %90, i32 %128, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = icmp sgt i32 %134, -1
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = getelementptr %struct.nvif_sclass, ptr %90, i32 %128, i32 2
  %138 = load i32, ptr %137, align 4
  %139 = icmp slt i32 %138, -1
  br i1 %139, label %140, label %149

140:                                              ; preds = %136, %132, %127
  %141 = add nuw nsw i32 %128, 1
  %142 = icmp eq i32 %141, %86
  br i1 %142, label %92, label %127

143:                                              ; preds = %92, %91
  %144 = load ptr, ptr %45, align 8
  %145 = getelementptr inbounds %struct.nouveau_drm, ptr %144, i32 0, i32 3
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds %struct.drm_device, ptr %146, i32 0, i32 2
  %148 = load ptr, ptr %147, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.23, ptr noundef %43) #14
  br label %341

149:                                              ; preds = %136, %119, %102
  %150 = phi i32 [ 2, %136 ], [ 1, %119 ], [ 0, %102 ]
  call void @nvif_object_sclass_put(ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  %151 = getelementptr [4 x %struct.nvif_mclass], ptr @nouveau_cli_init.mmus, i32 0, i32 %150
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr inbounds %struct.nouveau_cli, ptr %2, i32 0, i32 4
  %154 = call i32 @nvif_mmu_ctor(ptr noundef %76, ptr noundef nonnull @.str.24, i32 noundef %152, ptr noundef %153) #13
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %149
  %157 = load ptr, ptr %45, align 8
  %158 = getelementptr inbounds %struct.nouveau_drm, ptr %157, i32 0, i32 3
  %159 = load ptr, ptr %158, align 8
  %160 = getelementptr inbounds %struct.drm_device, ptr %159, i32 0, i32 2
  %161 = load ptr, ptr %160, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.25, ptr noundef %43, i32 noundef %154) #14
  br label %341

162:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4, !annotation !16
  %163 = call i32 @nvif_object_sclass_get(ptr noundef %153, ptr noundef nonnull %6) #13
  %164 = icmp sgt i32 %163, -1
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = icmp eq i32 %163, 0
  %167 = load ptr, ptr %6, align 4
  br i1 %166, label %253, label %169

168:                                              ; preds = %162
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %254

169:                                              ; preds = %182, %165
  %170 = phi i32 [ %183, %182 ], [ 0, %165 ]
  %171 = getelementptr %struct.nvif_sclass, ptr %167, i32 %170
  %172 = load i32, ptr %171, align 4
  %173 = icmp eq i32 %172, -2147434483
  br i1 %173, label %174, label %182

174:                                              ; preds = %169
  %175 = getelementptr %struct.nvif_sclass, ptr %167, i32 %170, i32 1
  %176 = load i32, ptr %175, align 4
  %177 = icmp sgt i32 %176, -1
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = getelementptr %struct.nvif_sclass, ptr %167, i32 %170, i32 2
  %180 = load i32, ptr %179, align 4
  %181 = icmp slt i32 %180, -1
  br i1 %181, label %182, label %260

182:                                              ; preds = %178, %174, %169
  %183 = add nuw nsw i32 %170, 1
  %184 = icmp eq i32 %183, %163
  br i1 %184, label %185, label %169

185:                                              ; preds = %182
  br i1 %166, label %253, label %186

186:                                              ; preds = %199, %185
  %187 = phi i32 [ %200, %199 ], [ 0, %185 ]
  %188 = getelementptr %struct.nvif_sclass, ptr %167, i32 %187
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %189, -2147438579
  br i1 %190, label %191, label %199

191:                                              ; preds = %186
  %192 = getelementptr %struct.nvif_sclass, ptr %167, i32 %187, i32 1
  %193 = load i32, ptr %192, align 4
  %194 = icmp sgt i32 %193, -1
  br i1 %194, label %199, label %195

195:                                              ; preds = %191
  %196 = getelementptr %struct.nvif_sclass, ptr %167, i32 %187, i32 2
  %197 = load i32, ptr %196, align 4
  %198 = icmp slt i32 %197, -1
  br i1 %198, label %199, label %260

199:                                              ; preds = %195, %191, %186
  %200 = add nuw nsw i32 %187, 1
  %201 = icmp eq i32 %200, %163
  br i1 %201, label %202, label %186

202:                                              ; preds = %199
  br i1 %166, label %253, label %203

203:                                              ; preds = %216, %202
  %204 = phi i32 [ %217, %216 ], [ 0, %202 ]
  %205 = getelementptr %struct.nvif_sclass, ptr %167, i32 %204
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, -2147446771
  br i1 %207, label %208, label %216

208:                                              ; preds = %203
  %209 = getelementptr %struct.nvif_sclass, ptr %167, i32 %204, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = icmp sgt i32 %210, -1
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  %213 = getelementptr %struct.nvif_sclass, ptr %167, i32 %204, i32 2
  %214 = load i32, ptr %213, align 4
  %215 = icmp slt i32 %214, -1
  br i1 %215, label %216, label %260

216:                                              ; preds = %212, %208, %203
  %217 = add nuw nsw i32 %204, 1
  %218 = icmp eq i32 %217, %163
  br i1 %218, label %219, label %203

219:                                              ; preds = %216
  br i1 %166, label %253, label %220

220:                                              ; preds = %233, %219
  %221 = phi i32 [ %234, %233 ], [ 0, %219 ]
  %222 = getelementptr %struct.nvif_sclass, ptr %167, i32 %221
  %223 = load i32, ptr %222, align 4
  %224 = icmp eq i32 %223, -2147463155
  br i1 %224, label %225, label %233

225:                                              ; preds = %220
  %226 = getelementptr %struct.nvif_sclass, ptr %167, i32 %221, i32 1
  %227 = load i32, ptr %226, align 4
  %228 = icmp sgt i32 %227, -1
  br i1 %228, label %233, label %229

229:                                              ; preds = %225
  %230 = getelementptr %struct.nvif_sclass, ptr %167, i32 %221, i32 2
  %231 = load i32, ptr %230, align 4
  %232 = icmp slt i32 %231, -1
  br i1 %232, label %233, label %260

233:                                              ; preds = %229, %225, %220
  %234 = add nuw nsw i32 %221, 1
  %235 = icmp eq i32 %234, %163
  br i1 %235, label %236, label %220

236:                                              ; preds = %233
  br i1 %166, label %253, label %237

237:                                              ; preds = %250, %236
  %238 = phi i32 [ %251, %250 ], [ 0, %236 ]
  %239 = getelementptr %struct.nvif_sclass, ptr %167, i32 %238
  %240 = load i32, ptr %239, align 4
  %241 = icmp eq i32 %240, -2147483635
  br i1 %241, label %242, label %250

242:                                              ; preds = %237
  %243 = getelementptr %struct.nvif_sclass, ptr %167, i32 %238, i32 1
  %244 = load i32, ptr %243, align 4
  %245 = icmp sgt i32 %244, -1
  br i1 %245, label %250, label %246

246:                                              ; preds = %242
  %247 = getelementptr %struct.nvif_sclass, ptr %167, i32 %238, i32 2
  %248 = load i32, ptr %247, align 4
  %249 = icmp slt i32 %248, -1
  br i1 %249, label %250, label %260

250:                                              ; preds = %246, %242, %237
  %251 = add nuw nsw i32 %238, 1
  %252 = icmp eq i32 %251, %163
  br i1 %252, label %253, label %237

253:                                              ; preds = %250, %236, %219, %202, %185, %165
  call void @nvif_object_sclass_put(ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %254

254:                                              ; preds = %253, %168
  %255 = load ptr, ptr %45, align 8
  %256 = getelementptr inbounds %struct.nouveau_drm, ptr %255, i32 0, i32 3
  %257 = load ptr, ptr %256, align 8
  %258 = getelementptr inbounds %struct.drm_device, ptr %257, i32 0, i32 2
  %259 = load ptr, ptr %258, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %259, ptr noundef nonnull @.str.26, ptr noundef %43) #14
  br label %341

260:                                              ; preds = %246, %229, %212, %195, %178
  %261 = phi i32 [ 0, %178 ], [ 1, %195 ], [ 2, %212 ], [ 3, %229 ], [ 4, %246 ]
  call void @nvif_object_sclass_put(ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  %262 = getelementptr [6 x %struct.nvif_mclass], ptr @nouveau_cli_init.vmms, i32 0, i32 %261
  %263 = load i32, ptr %262, align 4
  %264 = getelementptr inbounds %struct.nouveau_cli, ptr %2, i32 0, i32 5
  %265 = call i32 @nouveau_vmm_init(ptr noundef %2, i32 noundef %263, ptr noundef %264) #13
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %273, label %267

267:                                              ; preds = %260
  %268 = load ptr, ptr %45, align 8
  %269 = getelementptr inbounds %struct.nouveau_drm, ptr %268, i32 0, i32 3
  %270 = load ptr, ptr %269, align 8
  %271 = getelementptr inbounds %struct.drm_device, ptr %270, i32 0, i32 2
  %272 = load ptr, ptr %271, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %272, ptr noundef nonnull @.str.27, ptr noundef %43, i32 noundef %265) #14
  br label %341

273:                                              ; preds = %260
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store ptr null, ptr %7, align 4, !annotation !16
  %274 = call i32 @nvif_object_sclass_get(ptr noundef %153, ptr noundef nonnull %7) #13
  %275 = icmp sgt i32 %274, -1
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = icmp eq i32 %274, 0
  %278 = load ptr, ptr %7, align 4
  br i1 %277, label %280, label %281

279:                                              ; preds = %273
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  br label %331

280:                                              ; preds = %328, %314, %297, %276
  call void @nvif_object_sclass_put(ptr noundef nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  br label %331

281:                                              ; preds = %294, %276
  %282 = phi i32 [ %295, %294 ], [ 0, %276 ]
  %283 = getelementptr %struct.nvif_sclass, ptr %278, i32 %282
  %284 = load i32, ptr %283, align 4
  %285 = icmp eq i32 %284, -2147446773
  br i1 %285, label %286, label %294

286:                                              ; preds = %281
  %287 = getelementptr %struct.nvif_sclass, ptr %278, i32 %282, i32 1
  %288 = load i32, ptr %287, align 4
  %289 = icmp sgt i32 %288, -1
  br i1 %289, label %294, label %290

290:                                              ; preds = %286
  %291 = getelementptr %struct.nvif_sclass, ptr %278, i32 %282, i32 2
  %292 = load i32, ptr %291, align 4
  %293 = icmp slt i32 %292, -1
  br i1 %293, label %294, label %337

294:                                              ; preds = %290, %286, %281
  %295 = add nuw nsw i32 %282, 1
  %296 = icmp eq i32 %295, %274
  br i1 %296, label %297, label %281

297:                                              ; preds = %294
  br i1 %277, label %280, label %298

298:                                              ; preds = %311, %297
  %299 = phi i32 [ %312, %311 ], [ 0, %297 ]
  %300 = getelementptr %struct.nvif_sclass, ptr %278, i32 %299
  %301 = load i32, ptr %300, align 4
  %302 = icmp eq i32 %301, -2147463157
  br i1 %302, label %303, label %311

303:                                              ; preds = %298
  %304 = getelementptr %struct.nvif_sclass, ptr %278, i32 %299, i32 1
  %305 = load i32, ptr %304, align 4
  %306 = icmp sgt i32 %305, -1
  br i1 %306, label %311, label %307

307:                                              ; preds = %303
  %308 = getelementptr %struct.nvif_sclass, ptr %278, i32 %299, i32 2
  %309 = load i32, ptr %308, align 4
  %310 = icmp slt i32 %309, -1
  br i1 %310, label %311, label %337

311:                                              ; preds = %307, %303, %298
  %312 = add nuw nsw i32 %299, 1
  %313 = icmp eq i32 %312, %274
  br i1 %313, label %314, label %298

314:                                              ; preds = %311
  br i1 %277, label %280, label %315

315:                                              ; preds = %328, %314
  %316 = phi i32 [ %329, %328 ], [ 0, %314 ]
  %317 = getelementptr %struct.nvif_sclass, ptr %278, i32 %316
  %318 = load i32, ptr %317, align 4
  %319 = icmp eq i32 %318, -2147483637
  br i1 %319, label %320, label %328

320:                                              ; preds = %315
  %321 = getelementptr %struct.nvif_sclass, ptr %278, i32 %316, i32 1
  %322 = load i32, ptr %321, align 4
  %323 = icmp sgt i32 %322, -1
  br i1 %323, label %328, label %324

324:                                              ; preds = %320
  %325 = getelementptr %struct.nvif_sclass, ptr %278, i32 %316, i32 2
  %326 = load i32, ptr %325, align 4
  %327 = icmp slt i32 %326, -1
  br i1 %327, label %328, label %337

328:                                              ; preds = %324, %320, %315
  %329 = add nuw nsw i32 %316, 1
  %330 = icmp eq i32 %329, %274
  br i1 %330, label %280, label %315

331:                                              ; preds = %280, %279
  %332 = load ptr, ptr %45, align 8
  %333 = getelementptr inbounds %struct.nouveau_drm, ptr %332, i32 0, i32 3
  %334 = load ptr, ptr %333, align 8
  %335 = getelementptr inbounds %struct.drm_device, ptr %334, i32 0, i32 2
  %336 = load ptr, ptr %335, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %336, ptr noundef nonnull @.str.28, ptr noundef %43) #14
  br label %341

337:                                              ; preds = %324, %307, %290
  %338 = phi i32 [ 2, %324 ], [ 1, %307 ], [ 0, %290 ]
  call void @nvif_object_sclass_put(ptr noundef nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  %339 = getelementptr [4 x %struct.nvif_mclass], ptr @nouveau_cli_init.mems, i32 0, i32 %338
  %340 = getelementptr inbounds %struct.nouveau_cli, ptr %2, i32 0, i32 7
  store ptr %339, ptr %340, align 8
  br label %343

341:                                              ; preds = %331, %267, %254, %156, %143, %79, %66
  %342 = phi i32 [ %64, %66 ], [ %77, %79 ], [ -19, %143 ], [ %154, %156 ], [ -19, %254 ], [ %265, %267 ], [ -19, %331 ]
  call fastcc void @nouveau_cli_fini(ptr noundef %2)
  br label %343

343:                                              ; preds = %341, %337
  %344 = phi i32 [ %342, %341 ], [ 0, %337 ]
  ret i32 %344
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_dbgopt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vga_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_ttm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bios_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nouveau_accel_init(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.nv_dma_v0, align 8
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store ptr null, ptr %3, align 4, !annotation !16
  %5 = load i32, ptr @nouveau_noaccel, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %210

7:                                                ; preds = %1
  %8 = tail call i32 @nouveau_channels_init(ptr noundef %0) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %210

10:                                               ; preds = %7
  %11 = call i32 @nvif_object_sclass_get(ptr noundef %4, ptr noundef nonnull %3) #13
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %210, label %13

13:                                               ; preds = %10
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @nvif_object_sclass_put(ptr noundef nonnull %3) #13
  br label %40

16:                                               ; preds = %34, %13
  %17 = phi i32 [ %36, %34 ], [ 0, %13 ]
  %18 = phi i32 [ %35, %34 ], [ -38, %13 ]
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr %struct.nvif_sclass, ptr %19, i32 %17
  %21 = load i32, ptr %20, align 4
  switch i32 %21, label %34 [
    i32 107, label %22
    i32 110, label %24
    i32 5998, label %26
    i32 16494, label %26
    i32 20591, label %28
    i32 33391, label %30
    i32 36975, label %32
    i32 41071, label %32
    i32 41327, label %32
    i32 45167, label %32
    i32 49263, label %32
    i32 50031, label %32
    i32 50287, label %32
    i32 51055, label %32
  ]

22:                                               ; preds = %16
  %23 = call i32 @nv04_fence_create(ptr noundef %0) #13
  br label %34

24:                                               ; preds = %16
  %25 = call i32 @nv10_fence_create(ptr noundef %0) #13
  br label %34

26:                                               ; preds = %16, %16
  %27 = call i32 @nv17_fence_create(ptr noundef %0) #13
  br label %34

28:                                               ; preds = %16
  %29 = call i32 @nv50_fence_create(ptr noundef %0) #13
  br label %34

30:                                               ; preds = %16
  %31 = call i32 @nv84_fence_create(ptr noundef %0) #13
  br label %34

32:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16
  %33 = call i32 @nvc0_fence_create(ptr noundef %0) #13
  br label %34

34:                                               ; preds = %32, %30, %28, %26, %24, %22, %16
  %35 = phi i32 [ %18, %16 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ], [ %23, %22 ]
  %36 = add nuw nsw i32 %17, 1
  %37 = icmp eq i32 %36, %11
  br i1 %37, label %38, label %16

38:                                               ; preds = %34
  call void @nvif_object_sclass_put(ptr noundef nonnull %3) #13
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %38, %15
  %41 = phi i32 [ -38, %15 ], [ %35, %38 ]
  %42 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nouveau_drm, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.drm_device, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.29, ptr noundef %48, i32 noundef %41) #14
  call fastcc void @nouveau_accel_fini(ptr noundef %0)
  br label %210

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 3, i32 1, i32 4
  %51 = load i8, ptr %50, align 1
  %52 = icmp ugt i8 %51, 10
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2)
  br label %61

54:                                               ; preds = %49
  %55 = call i32 @nvif_user_ctor(ptr noundef %4, ptr noundef nonnull @.str.30) #13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %210

57:                                               ; preds = %54
  %58 = load i8, ptr %50, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2)
  %59 = icmp ugt i8 %58, 12
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2)
  br label %175

61:                                               ; preds = %57, %53
  %62 = phi i8 [ %51, %53 ], [ %58, %57 ]
  %63 = icmp ugt i8 %62, 7
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = call i64 @nvif_fifo_runlist(ptr noundef %4, i64 noundef 2) #13
  %66 = trunc i64 %65 to i32
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i32 [ 1, %64 ], [ -2147483645, %61 ]
  %69 = phi i32 [ %66, %64 ], [ -2147483646, %61 ]
  %70 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 13
  %71 = call i32 @nouveau_channel_new(ptr noundef %0, ptr noundef %4, i32 noundef %69, i32 noundef %68, i1 noundef zeroext false, ptr noundef %70) #13
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 1
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 3
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.drm_device, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.31, ptr noundef %80, i32 noundef %71) #14
  %81 = load ptr, ptr %70, align 4
  %82 = call i32 @nouveau_channel_idle(ptr noundef %81) #13
  %83 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 16
  call void @nvif_object_dtor(ptr noundef %83) #13
  %84 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 14
  call void @nvkm_gpuobj_del(ptr noundef %84) #13
  call void @nouveau_channel_del(ptr noundef %70) #13
  br label %172

85:                                               ; preds = %67
  %86 = load ptr, ptr %70, align 4
  %87 = getelementptr inbounds %struct.nouveau_channel, ptr %86, i32 0, i32 9, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %133

90:                                               ; preds = %85
  %91 = load i8, ptr %50, align 1
  %92 = icmp ult i8 %91, 6
  br i1 %92, label %93, label %135

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.nouveau_channel, ptr %86, i32 0, i32 17
  %95 = call i32 @nouveau_abi16_swclass(ptr noundef %0) #13
  %96 = load ptr, ptr %70, align 4
  %97 = getelementptr inbounds %struct.nouveau_channel, ptr %96, i32 0, i32 9
  %98 = call i32 @nvif_object_ctor(ptr noundef %94, ptr noundef nonnull @.str.32, i32 noundef 1431633920, i32 noundef %95, ptr noundef null, i32 noundef 0, ptr noundef %97) #13
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %93
  %101 = load ptr, ptr %70, align 4
  %102 = getelementptr inbounds %struct.anon.90, ptr %101, i32 0, i32 1
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.nvif_push, ptr %103, i32 0, i32 4
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr i32, ptr %105, i32 2
  %107 = getelementptr inbounds %struct.nvif_push, ptr %103, i32 0, i32 6
  %108 = load ptr, ptr %107, align 4
  %109 = icmp ult ptr %106, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %100
  %111 = load ptr, ptr %103, align 8
  %112 = call i32 %111(ptr noundef %103, i32 noundef 2) #13
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = load ptr, ptr %104, align 4
  br label %116

116:                                              ; preds = %114, %100
  %117 = phi ptr [ %115, %114 ], [ %105, %100 ]
  %118 = getelementptr i32, ptr %117, i32 1
  store ptr %118, ptr %104, align 4
  store i32 270336, ptr %117, align 4
  %119 = load ptr, ptr %70, align 4
  %120 = getelementptr inbounds %struct.nouveau_channel, ptr %119, i32 0, i32 9, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = load ptr, ptr %104, align 4
  %123 = getelementptr i32, ptr %122, i32 1
  store ptr %123, ptr %104, align 4
  store i32 %121, ptr %122, align 4
  br label %133

124:                                              ; preds = %110, %93
  %125 = phi i32 [ %112, %110 ], [ %98, %93 ]
  %126 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 1
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr inbounds %struct.nouveau_drm, ptr %127, i32 0, i32 3
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %struct.drm_device, ptr %129, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.33, ptr noundef %132, i32 noundef %125) #14
  call fastcc void @nouveau_accel_gr_fini(ptr noundef %0) #13
  br label %172

133:                                              ; preds = %116, %85
  %134 = load i8, ptr %50, align 1
  br label %135

135:                                              ; preds = %133, %90
  %136 = phi i8 [ %134, %133 ], [ %91, %90 ]
  %137 = icmp ult i8 %136, 7
  br i1 %137, label %138, label %172

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 3, i32 0, i32 5
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.anon.187, ptr %140, i32 0, i32 1
  %142 = load ptr, ptr %141, align 8
  %143 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 14
  %144 = call i32 @nvkm_gpuobj_new(ptr noundef %142, i32 noundef 32, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, ptr noundef %143) #13
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %138
  %147 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 1
  %148 = load ptr, ptr %147, align 8
  %149 = getelementptr inbounds %struct.nouveau_drm, ptr %148, i32 0, i32 3
  %150 = load ptr, ptr %149, align 8
  %151 = getelementptr inbounds %struct.drm_device, ptr %150, i32 0, i32 2
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.34, ptr noundef %153, i32 noundef %144) #14
  call fastcc void @nouveau_accel_gr_fini(ptr noundef %0) #13
  br label %172

154:                                              ; preds = %138
  %155 = load ptr, ptr %70, align 4
  %156 = getelementptr inbounds %struct.nouveau_channel, ptr %155, i32 0, i32 17
  store i8 0, ptr %2, align 8
  %157 = getelementptr inbounds %struct.nv_dma_v0, ptr %2, i32 0, i32 1
  store i8 1, ptr %157, align 1
  %158 = getelementptr inbounds %struct.nv_dma_v0, ptr %2, i32 0, i32 2
  store i8 3, ptr %158, align 2
  %159 = getelementptr inbounds %struct.nv_dma_v0, ptr %2, i32 0, i32 3
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %159, i8 0, i32 5, i1 false) #13
  %160 = getelementptr inbounds %struct.nv_dma_v0, ptr %2, i32 0, i32 4
  %161 = load ptr, ptr %143, align 8
  %162 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %161, i32 0, i32 4
  %163 = load i64, ptr %162, align 8
  store i64 %163, ptr %160, align 8
  %164 = getelementptr inbounds %struct.nv_dma_v0, ptr %2, i32 0, i32 5
  %165 = add i64 %163, 31
  store i64 %165, ptr %164, align 8
  %166 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 16
  %167 = call i32 @nvif_object_ctor(ptr noundef %156, ptr noundef nonnull @.str.35, i32 noundef -2147483642, i32 noundef 61, ptr noundef nonnull %2, i32 noundef 24, ptr noundef %166) #13
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %154
  %170 = load ptr, ptr %70, align 4
  %171 = call i32 @nouveau_channel_idle(ptr noundef %170) #13
  call void @nvif_object_dtor(ptr noundef %166) #13
  call void @nvkm_gpuobj_del(ptr noundef %143) #13
  call void @nouveau_channel_del(ptr noundef %70) #13
  br label %172

172:                                              ; preds = %169, %154, %146, %135, %124, %73
  %173 = load i8, ptr %50, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2)
  %174 = icmp ugt i8 %173, 7
  br i1 %174, label %175, label %189

175:                                              ; preds = %172, %60
  %176 = call i64 @nvif_fifo_runlist(ptr noundef %4, i64 noundef 2) #13
  %177 = call i64 @nvif_fifo_runlist(ptr noundef %4, i64 noundef 128) #13
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %175
  %180 = xor i64 %176, -1
  %181 = and i64 %177, %180
  %182 = icmp eq i64 %181, 0
  %183 = select i1 %182, i64 %176, i64 %181
  %184 = trunc i64 %183 to i32
  br label %185

185:                                              ; preds = %179, %175
  %186 = phi i32 [ 0, %175 ], [ %184, %179 ]
  %187 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 12
  %188 = call i32 @nouveau_channel_new(ptr noundef %0, ptr noundef %4, i32 noundef %186, i32 noundef 0, i1 noundef zeroext true, ptr noundef %187) #13
  br label %198

189:                                              ; preds = %172
  %190 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 3, i32 1, i32 2
  %191 = load i16, ptr %190, align 2
  %192 = freeze i16 %191
  %193 = icmp ult i16 %192, 163
  br i1 %193, label %209, label %194

194:                                              ; preds = %189
  switch i16 %192, label %195 [
    i16 172, label %209
    i16 170, label %209
  ]

195:                                              ; preds = %194
  %196 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 12
  %197 = call i32 @nouveau_channel_new(ptr noundef %0, ptr noundef %4, i32 noundef -2147483646, i32 noundef -2147483645, i1 noundef zeroext false, ptr noundef %196) #13
  br label %198

198:                                              ; preds = %195, %185
  %199 = phi i32 [ %188, %185 ], [ %197, %195 ]
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %209, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 1
  %203 = load ptr, ptr %202, align 8
  %204 = getelementptr inbounds %struct.nouveau_drm, ptr %203, i32 0, i32 3
  %205 = load ptr, ptr %204, align 8
  %206 = getelementptr inbounds %struct.drm_device, ptr %205, i32 0, i32 2
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %207, ptr noundef nonnull @.str.36, ptr noundef %208, i32 noundef %199) #14
  br label %209

209:                                              ; preds = %201, %198, %194, %194, %189
  call void @nouveau_bo_move_init(ptr noundef %0) #13
  br label %210

210:                                              ; preds = %209, %54, %40, %10, %7, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_display_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_display_init(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_debugfs_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_hwmon_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fbcon_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_led_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_drm_debugf(ptr nocapture noundef readonly %0, ptr noundef %1, ...) #0 {
  %3 = alloca %struct.va_format, align 8
  %4 = alloca %struct.__va_list, align 4
  %5 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !16
  call void @llvm.va_start(ptr nonnull %4)
  store ptr %1, ptr %3, align 8
  %6 = getelementptr inbounds %struct.va_format, ptr %3, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  %7 = load i32, ptr @__drm_debug, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.15, ptr noundef %17, ptr noundef nonnull %3) #14
  br label %18

18:                                               ; preds = %10, %2
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_drm_errorf(ptr nocapture noundef readonly %0, ptr noundef %1, ...) #0 {
  %3 = alloca %struct.va_format, align 8
  %4 = alloca %struct.__va_list, align 4
  %5 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !16
  call void @llvm.va_start(ptr nonnull %4)
  store ptr %1, ptr %3, align 8
  %6 = getelementptr inbounds %struct.va_format, ptr %3, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.15, ptr noundef %13, ptr noundef nonnull %3) #14
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @usif_client_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_cli_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 24
  tail call void @mutex_lock(ptr noundef %2) #13
  %3 = getelementptr i8, ptr %0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %45, label %6

6:                                                ; preds = %43, %1
  %7 = phi ptr [ %9, %43 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -8
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr i8, ptr %7, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 5
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dma_fence_ops, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24

24:                                               ; preds = %18
  %25 = tail call zeroext i1 %22(ptr noundef nonnull %11) #13
  br i1 %25, label %26, label %43

26:                                               ; preds = %24
  %27 = tail call i32 @dma_fence_signal(ptr noundef nonnull %11) #13
  br label %28

28:                                               ; preds = %26, %13
  %29 = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #13, !srcloc !8
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #13, !srcloc !18
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = icmp sgt i32 %31, 0
  br i1 %34, label %37, label %35, !prof !11

35:                                               ; preds = %33
  tail call void @refcount_warn_saturate(ptr noundef %29, i32 noundef 3) #13
  br label %37

36:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void @dma_fence_release(ptr noundef %29) #13
  br label %37

37:                                               ; preds = %36, %35, %33, %6
  %38 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %7, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %39, ptr %41, align 4
  store volatile ptr %40, ptr %39, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %38, align 4
  %42 = load ptr, ptr %8, align 4
  tail call void %42(ptr noundef %8) #13
  br label %43

43:                                               ; preds = %37, %24, %18
  %44 = icmp eq ptr %9, %3
  br i1 %44, label %45, label %6

45:                                               ; preds = %43, %1
  tail call void @mutex_unlock(ptr noundef %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_driver_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_client_ctor(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_device_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_sclass_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_sclass_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_mmu_ctor(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_vmm_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_channels_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_fence_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv10_fence_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv17_fence_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_fence_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv84_fence_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvc0_fence_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_user_ctor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_move_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_fifo_runlist(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_channel_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_abi16_swclass(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_firmware_drivers_only() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_backlight_ctor() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_drm_open(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [32 x i8], align 1
  %4 = alloca [16 x i8], align 1
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !16
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #13
  %10 = icmp slt i32 %9, 0
  %11 = icmp ne i32 %9, -13
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load ptr, ptr %7, align 4
  %15 = tail call i32 @__pm_runtime_suspend(ptr noundef %14, i32 noundef 13) #13
  br label %50

16:                                               ; preds = %2
  %17 = tail call ptr @llvm.thread.pointer() #13
  %18 = call ptr @__get_task_comm(ptr noundef nonnull %4, i32 noundef 16, ptr noundef %17) #13
  %19 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.pid, ptr %20, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi i32 [ %24, %22 ], [ 0, %16 ]
  %27 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.40, ptr noundef nonnull %4, i32 noundef %26)
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %29 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 624) #15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %25
  %32 = call fastcc i32 @nouveau_cli_init(ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull %29)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  store ptr %29, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 5
  call void @mutex_lock(ptr noundef %36) #13
  %37 = getelementptr inbounds %struct.nouveau_cli, ptr %29, i32 0, i32 8
  %38 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %37, ptr %40, align 4
  store ptr %39, ptr %37, align 4
  %41 = getelementptr inbounds %struct.nouveau_cli, ptr %29, i32 0, i32 8, i32 1
  store ptr %38, ptr %41, align 8
  store volatile ptr %37, ptr %38, align 4
  call void @mutex_unlock(ptr noundef %36) #13
  br label %43

42:                                               ; preds = %31
  call fastcc void @nouveau_cli_fini(ptr noundef nonnull %29)
  call void @kfree(ptr noundef nonnull %29) #13
  br label %43

43:                                               ; preds = %42, %34, %25
  %44 = phi i32 [ %32, %42 ], [ -12, %25 ], [ 0, %34 ]
  %45 = load ptr, ptr %7, align 4
  %46 = call i64 @ktime_get_mono_fast_ns() #13
  %47 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 11, i32 22
  store volatile i64 %46, ptr %47, align 8
  %48 = load ptr, ptr %7, align 4
  %49 = call i32 @__pm_runtime_suspend(ptr noundef %48, i32 noundef 13) #13
  br label %50

50:                                               ; preds = %43, %13
  %51 = phi i32 [ %9, %13 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_drm_postclose(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  %10 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !16
  %12 = call zeroext i1 @drm_dev_enter(ptr noundef %0, ptr noundef nonnull %3) #13
  br i1 %12, label %13, label %35

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #13
  %17 = getelementptr inbounds %struct.nouveau_cli, ptr %9, i32 0, i32 2
  call void @mutex_lock(ptr noundef %17) #13
  %18 = getelementptr inbounds %struct.nouveau_cli, ptr %9, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  call void @nouveau_abi16_fini(ptr noundef nonnull %19) #13
  br label %22

22:                                               ; preds = %21, %13
  call void @mutex_unlock(ptr noundef %17) #13
  %23 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 5
  call void @mutex_lock(ptr noundef %23) #13
  %24 = getelementptr inbounds %struct.nouveau_cli, ptr %9, i32 0, i32 8
  %25 = getelementptr inbounds %struct.nouveau_cli, ptr %9, i32 0, i32 8, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  call void @mutex_unlock(ptr noundef %23) #13
  call fastcc void @nouveau_cli_fini(ptr noundef %9)
  call void @kfree(ptr noundef %9) #13
  %29 = load ptr, ptr %14, align 4
  %30 = call i64 @ktime_get_mono_fast_ns() #13
  %31 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 11, i32 22
  store volatile i64 %30, ptr %31, align 8
  %32 = load ptr, ptr %14, align 4
  %33 = call i32 @__pm_runtime_suspend(ptr noundef %32, i32 noundef 13) #13
  %34 = load i32, ptr %3, align 4
  call void @drm_dev_exit(i32 noundef %34) #13
  br label %35

35:                                               ; preds = %22, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vga_lastclose(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_drm_debugfs_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_gem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_display_dumb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_ttm_dumb_map_offset(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_abi16_ioctl_getparam(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_invalid_op(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_abi16_ioctl_channel_alloc(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_abi16_ioctl_channel_free(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_abi16_ioctl_grobj_alloc(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_abi16_ioctl_notifierobj_alloc(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_abi16_ioctl_gpuobj_free(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nouveau_svmm_init(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #12 {
  ret i32 -38
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nouveau_svmm_bind(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #12 {
  ret i32 -38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_gem_ioctl_new(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_gem_ioctl_pushbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_gem_ioctl_cpu_prep(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_gem_ioctl_cpu_fini(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_gem_ioctl_info(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_drm_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store ptr null, ptr %3, align 4, !annotation !16
  %4 = load ptr, ptr @nouveau_config, align 4
  %5 = call i32 @nvkm_device_pci_new(ptr noundef %0, ptr noundef %4, ptr noundef nonnull @.str.67, i1 noundef zeroext true, i1 noundef zeroext false, i64 noundef 0, ptr noundef nonnull %3) #13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %47

7:                                                ; preds = %2
  call void @nvkm_device_del(ptr noundef nonnull %3) #13
  %8 = call i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef %0, ptr noundef nonnull @driver_pci) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %7
  %11 = load ptr, ptr @nouveau_config, align 4
  %12 = load ptr, ptr @nouveau_debug, align 4
  %13 = call i32 @nvkm_device_pci_new(ptr noundef %0, ptr noundef %11, ptr noundef %12, i1 noundef zeroext true, i1 noundef zeroext true, i64 noundef -1, ptr noundef nonnull %3) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %10
  call void @pci_set_master(ptr noundef %0) #13
  %16 = load i32, ptr @nouveau_atomic, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr getelementptr inbounds (%struct.drm_driver, ptr @driver_pci, i32 0, i32 24), align 4
  %20 = or i32 %19, 16
  store i32 %20, ptr getelementptr inbounds (%struct.drm_driver, ptr @driver_pci, i32 0, i32 24), align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %23 = call ptr @drm_dev_alloc(ptr noundef nonnull @driver_pci, ptr noundef %22) #13
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = ptrtoint ptr %23 to i32
  br label %45

27:                                               ; preds = %21
  %28 = call i32 @pci_enable_device(ptr noundef %0) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  store ptr %23, ptr %31, align 8
  %32 = call fastcc i32 @nouveau_drm_device_init(ptr noundef %23)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.pci_device_id, ptr %1, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = call i32 @drm_dev_register(ptr noundef %23, i32 noundef %36) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  call fastcc void @quirk_broken_nv_runpm(ptr noundef %0)
  br label %47

40:                                               ; preds = %34
  call fastcc void @nouveau_drm_device_fini(ptr noundef %23)
  br label %41

41:                                               ; preds = %40, %30
  %42 = phi i32 [ %32, %30 ], [ %37, %40 ]
  call void @pci_disable_device(ptr noundef %0) #13
  br label %43

43:                                               ; preds = %41, %27
  %44 = phi i32 [ %28, %27 ], [ %42, %41 ]
  call void @drm_dev_put(ptr noundef %23) #13
  br label %45

45:                                               ; preds = %43, %25
  %46 = phi i32 [ %26, %25 ], [ %44, %43 ]
  call void @nvkm_device_del(ptr noundef nonnull %3) #13
  br label %47

47:                                               ; preds = %45, %39, %10, %7, %2
  %48 = phi i32 [ %46, %45 ], [ 0, %39 ], [ %5, %2 ], [ %8, %7 ], [ %13, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_drm_remove(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 6
  %8 = load i8, ptr %7, align 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  store i8 %8, ptr %11, align 1
  %12 = load ptr, ptr %5, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = phi ptr [ %12, %10 ], [ %6, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  tail call void @drm_dev_unplug(ptr noundef %4) #13
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %14, i32 0, i32 2, i32 0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_client, ptr %16, i32 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = tail call ptr @nvkm_device_find(i64 noundef %18) #13
  store ptr %19, ptr %2, align 4
  tail call fastcc void @nouveau_drm_device_fini(ptr noundef %4) #13
  tail call void @drm_dev_put(ptr noundef %4) #13
  call void @nvkm_device_del(ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  call void @pci_disable_device(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_device_pci_new(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @quirk_broken_nv_runpm(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 7
  %17 = load i16, ptr %16, align 8
  %18 = icmp eq i16 %17, -32634
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 8
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, 6401
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 6
  store i8 %25, ptr %26, align 8
  store i8 0, ptr %24, align 1
  %27 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nouveau_drm, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.68, ptr noundef %33) #14
  br label %34

34:                                               ; preds = %23, %19, %15, %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_pmops_freeze(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @nouveau_do_suspend(ptr noundef %3, i1 noundef zeroext false)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_pmops_thaw(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @nouveau_do_resume(ptr noundef %3, i1 noundef zeroext false)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_pmops_runtime_suspend(ptr noundef %0) #0 {
  %2 = load i32, ptr @nouveau_runtime_pm, align 4
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @pm_runtime_forbid(ptr noundef %0) #13
  br label %13

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 64
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %0, i32 -136
  %9 = tail call fastcc i32 @nouveau_do_suspend(ptr noundef %7, i1 noundef zeroext true)
  %10 = tail call i32 @pci_save_state(ptr noundef %8) #13
  tail call void @pci_disable_device(ptr noundef %8) #13
  tail call void @pci_ignore_hotplug(ptr noundef %8) #13
  %11 = tail call i32 @pci_set_power_state(ptr noundef %8, i32 noundef 4) #13
  %12 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 35
  store i32 3, ptr %12, align 4
  br label %13

13:                                               ; preds = %5, %4
  %14 = phi i32 [ %9, %5 ], [ -16, %4 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_pmops_runtime_resume(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3
  %8 = load i32, ptr @nouveau_runtime_pm, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void @pm_runtime_forbid(ptr noundef %0) #13
  br label %45

11:                                               ; preds = %1
  %12 = tail call i32 @pci_set_power_state(ptr noundef %2, i32 noundef 0) #13
  tail call void @pci_restore_state(ptr noundef %2) #13
  %13 = tail call i32 @pci_enable_device(ptr noundef %2) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  tail call void @pci_set_master(ptr noundef %2) #13
  %16 = tail call fastcc i32 @nouveau_do_resume(ptr noundef %4, i1 noundef zeroext true)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.69, ptr noundef %25, i32 noundef %16) #14
  br label %45

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 0, i32 6
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30, !prof !10

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %28, i32 558216
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #13, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !13
  br label %35

33:                                               ; preds = %26
  %34 = tail call i32 @nvif_object_rd(ptr noundef %7, i32 noundef 4, i64 noundef 558216) #13
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %32, %30 ], [ %34, %33 ]
  %37 = load ptr, ptr %27, align 8
  %38 = icmp eq ptr %37, null
  %39 = or i32 %36, 33554432
  br i1 %38, label %42, label %40, !prof !10

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %37, i32 558216
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !14
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #13, !srcloc !15
  br label %43

42:                                               ; preds = %35
  tail call void @nvif_object_wr(ptr noundef %7, i32 noundef 4, i64 noundef 558216, i32 noundef %39) #13
  br label %43

43:                                               ; preds = %42, %40
  %44 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 35
  store i32 0, ptr %44, align 4
  tail call void @nouveau_display_hpd_resume(ptr noundef %4) #13
  br label %45

45:                                               ; preds = %43, %18, %11, %10
  %46 = phi i32 [ %16, %18 ], [ 0, %43 ], [ -16, %10 ], [ %13, %11 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_pmops_runtime_idle(ptr noundef %0) #0 {
  %2 = load i32, ptr @nouveau_runtime_pm, align 4
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @pm_runtime_forbid(ptr noundef %0) #13
  br label %9

5:                                                ; preds = %1
  %6 = tail call i64 @ktime_get_mono_fast_ns() #13
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  store volatile i64 %6, ptr %7, align 8
  %8 = tail call i32 @__pm_runtime_suspend(ptr noundef %0, i32 noundef 8) #13
  br label %9

9:                                                ; preds = %5, %4
  %10 = phi i32 [ 1, %5 ], [ -16, %4 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_ignore_hotplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_backlight_dtor() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

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
!8 = !{i64 424075, i64 2147914046, i64 2147914072, i64 2147914119, i64 2147914141, i64 2147914169, i64 2147914189}
!9 = !{i64 2147927716, i64 2147927748, i64 2147927777, i64 2147927811, i64 2147927842, i64 2147927865}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 3857454}
!13 = !{i64 2151396907}
!14 = !{i64 2151398129}
!15 = !{i64 3857036}
!16 = !{!"auto-init"}
!17 = !{i64 2148027914}
!18 = !{i64 2147930073, i64 2147930105, i64 2147930134, i64 2147930168, i64 2147930199, i64 2147930222}
!19 = !{i64 2149275432}
