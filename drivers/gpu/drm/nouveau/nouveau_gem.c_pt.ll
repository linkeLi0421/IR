; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_gem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ww_class = type { %struct.atomic_t, %struct.lock_class_key, %struct.lock_class_key, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
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
%struct.anon.73 = type { i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.80 }
%struct.anon.80 = type { ptr, i64 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.78] }
%struct.anon.78 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.nouveau_vma = type { ptr, i32, %struct.list_head, i64, ptr, ptr }
%struct.nouveau_gem_object_unmap = type { %struct.nouveau_cli_work, ptr }
%struct.nouveau_cli_work = type { ptr, ptr, %struct.list_head, ptr, %struct.dma_fence_cb }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.86, %struct.anon.87, %struct.anon.88, ptr, %struct.anon.89, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.90, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.102 }
%struct.nvif_parent = type { ptr }
%struct.anon.86 = type { ptr, i32, i32, i8 }
%struct.anon.87 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.anon.88 = type { i64, i64 }
%struct.anon.89 = type { i32, i64 }
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
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.drm_nouveau_gem_info = type { i32, i32, i64, i64, i64, i32, i32 }
%struct.drm_nouveau_gem_new = type { %struct.drm_nouveau_gem_info, i32, i32 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.validate_op = type { %struct.list_head, %struct.ww_acquire_ctx }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.nouveau_abi16 = type { %struct.nvif_device, %struct.list_head, i64 }
%struct.nouveau_abi16_chan = type { %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nouveau_channel = type { %struct.anon.79, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.82, i8, ptr, %struct.anon.85, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.79 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.82 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.85 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.drm_nouveau_gem_pushbuf = type { i32, i32, i64, i32, i32, i64, i64, i32, i32, i64, i64 }
%struct.drm_nouveau_gem_pushbuf_push = type { i32, i32, i64, i64 }
%struct.drm_nouveau_gem_pushbuf_bo = type { i64, i32, i32, i32, i32, %struct.drm_nouveau_gem_pushbuf_bo_presumed }
%struct.drm_nouveau_gem_pushbuf_bo_presumed = type { i32, i32, i64 }
%struct.drm_nouveau_gem_pushbuf_reloc = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_nouveau_gem_cpu_prep = type { i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.vm_fault = type { %struct.anon.11, i32, ptr, ptr, %union.anon.12, ptr, ptr, ptr, ptr, ptr }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%union.anon.12 = type { i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.74, i64, i64, i32, %struct.kref, i32 }
%union.anon.74 = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"drivers/gpu/drm/nouveau/nouveau_gem.c\00", align 1
@nouveau_ttm_vm_ops = internal constant %struct.vm_operations_struct { ptr @ttm_bo_vm_open, ptr @ttm_bo_vm_close, ptr null, ptr null, ptr null, ptr @nouveau_ttm_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ttm_bo_vm_access, ptr null, ptr null }, align 4
@nouveau_gem_object_funcs = dso_local constant %struct.drm_gem_object_funcs { ptr @nouveau_gem_object_del, ptr @nouveau_gem_object_open, ptr @nouveau_gem_object_close, ptr null, ptr null, ptr @nouveau_gem_prime_pin, ptr @nouveau_gem_prime_unpin, ptr @nouveau_gem_prime_get_sg_table, ptr @drm_gem_ttm_vmap, ptr @drm_gem_ttm_vunmap, ptr @drm_gem_ttm_mmap, ptr @nouveau_ttm_vm_ops }, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"%s: pushbuf push count exceeds limit: %d max %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"%s: pushbuf bo count exceeds limit: %d max %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"%s: pushbuf reloc count exceeds limit: %d max %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%s: push %d buffer not in list\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"%s: validate: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"%s: reloc apply: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"%s: nv50cal_space: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"%s: cal_space: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"%s: jmp_space: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%s: error fencing pushbuf: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"%s: validate_init\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"%s: validating bo list\0A\00", align 1
@reservation_ww_class = external dso_local global %struct.ww_class, align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"%s: %s failed and gave up.\0A\00", align 1
@__func__.validate_init = private unnamed_addr constant [14 x i8] c"validate_init\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"%s: Unknown handle 0x%08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"%s: multiple instances of buffer %d on validation list\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"%s: fail reserve\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"%s: vma not found!\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"%s: invalid valid domains: 0x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"%s: fail set_domain\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"%s: fail ttm_validate\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"%s: fail post-validate sync\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"%s: reloc bo index invalid\0A\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"%s: reloc container bo index invalid\0A\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"%s: reloc outside of bo\0A\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"%s: failed kmap for reloc\0A\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"%s: reloc wait_idle failed: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_gem_object_del(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -56
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #10
  %9 = icmp slt i32 %8, 0
  %10 = icmp ne i32 %8, -13
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 85, i32 noundef 9, ptr noundef null) #10
  br label %23

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 4
  tail call void @drm_prime_gem_destroy(ptr noundef %0, ptr noundef %19) #10
  br label %20

20:                                               ; preds = %17, %13
  tail call void @ttm_bo_put(ptr noundef %0) #10
  %21 = tail call i64 @ktime_get_mono_fast_ns() #10
  %22 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 22
  store volatile i64 %21, ptr %22, align 8
  br label %23

23:                                               ; preds = %20, %12
  %24 = tail call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_prime_gem_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_gem_object_open(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  %10 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 -56
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nouveau_cli, ptr %9, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %struct.nouveau_cli, ptr %9, i32 0, i32 5
  %20 = select i1 %18, ptr %19, ptr %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !9
  %21 = getelementptr inbounds %struct.nouveau_vmm, ptr %20, i32 0, i32 1, i32 0, i32 4
  %22 = load i32, ptr %21, align 8
  %23 = icmp ult i32 %22, -2147463155
  br i1 %23, label %54, label %24

24:                                               ; preds = %8
  %25 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %26 = load ptr, ptr %25, align 8
  %27 = tail call i32 @ww_mutex_lock(ptr noundef %26, ptr noundef null) #10
  %28 = icmp eq i32 %27, -4
  %29 = select i1 %28, i32 -512, i32 %27
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %24
  %32 = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #10
  %33 = icmp slt i32 %32, 0
  %34 = icmp ne i32 %32, -13
  %35 = and i1 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = tail call i32 @__pm_runtime_suspend(ptr noundef %15, i32 noundef 13) #10
  br label %43

38:                                               ; preds = %31
  %39 = call i32 @nouveau_vma_new(ptr noundef %0, ptr noundef %20, ptr noundef nonnull %3) #10
  %40 = call i64 @ktime_get_mono_fast_ns() #10
  %41 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 11, i32 22
  store volatile i64 %40, ptr %41, align 8
  %42 = call i32 @__pm_runtime_suspend(ptr noundef %15, i32 noundef 13) #10
  br label %43

43:                                               ; preds = %38, %36
  %44 = phi i32 [ %32, %36 ], [ %39, %38 ]
  %45 = load ptr, ptr %10, align 8
  %46 = getelementptr inbounds %struct.ttm_device, ptr %45, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %46) #10
  %47 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %48 = load ptr, ptr %47, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %0, ptr noundef %48, ptr noundef null) #10
  %49 = load ptr, ptr %10, align 8
  %50 = getelementptr inbounds %struct.ttm_device, ptr %49, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %51 = load i16, ptr %50, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %50, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %53 = load ptr, ptr %25, align 8
  call void @ww_mutex_unlock(ptr noundef %53) #10
  br label %54

54:                                               ; preds = %43, %24, %8
  %55 = phi i32 [ %44, %43 ], [ 0, %8 ], [ %29, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_vma_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_gem_object_close(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 -56
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nouveau_cli, ptr %10, i32 0, i32 6
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %struct.nouveau_cli, ptr %10, i32 0, i32 5
  %21 = select i1 %19, ptr %20, ptr %17
  %22 = getelementptr inbounds %struct.nouveau_vmm, ptr %21, i32 0, i32 1, i32 0, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = icmp ult i32 %23, -2147463155
  br i1 %24, label %82, label %25

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 @ww_mutex_lock(ptr noundef %27, ptr noundef null) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %82

30:                                               ; preds = %25
  %31 = tail call ptr @nouveau_vma_find(ptr noundef %0, ptr noundef %21) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %72, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.nouveau_vma, ptr %31, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %33
  %39 = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #10
  %40 = icmp slt i32 %39, 0
  %41 = icmp ne i32 %39, -13
  %42 = and i1 %40, %41
  br i1 %42, label %43, label %44, !prof !8

43:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 198, i32 noundef 9, ptr noundef null) #10
  br label %70

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.nouveau_vma, ptr %31, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  %48 = getelementptr inbounds %struct.nouveau_vma, ptr %31, i32 0, i32 2
  %49 = getelementptr inbounds %struct.nouveau_vma, ptr %31, i32 0, i32 2, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %48, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %50, ptr %52, align 4
  store volatile ptr %51, ptr %50, align 4
  store volatile ptr %48, ptr %48, align 4
  store ptr %48, ptr %49, align 4
  br i1 %47, label %53, label %54

53:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr %31, ptr %4, align 4
  tail call void @nouveau_fence_unref(ptr noundef %45) #10
  call void @nouveau_vma_del(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %67

54:                                               ; preds = %44
  %55 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %56 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3264, i32 noundef 36) #11
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = tail call i32 @dma_fence_wait_timeout(ptr noundef nonnull %46, i1 noundef zeroext false, i32 noundef 200) #10
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %61, label %62, !prof !8

61:                                               ; preds = %58
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 9, ptr noundef null) #10
  br label %62

62:                                               ; preds = %61, %58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr %31, ptr %3, align 4
  tail call void @nouveau_fence_unref(ptr noundef %45) #10
  call void @nouveau_vma_del(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %67

63:                                               ; preds = %54
  store ptr @nouveau_gem_object_delete_work, ptr %56, align 8
  %64 = getelementptr inbounds %struct.nouveau_gem_object_unmap, ptr %56, i32 0, i32 1
  store ptr %31, ptr %64, align 8
  %65 = load ptr, ptr %31, align 8
  %66 = load ptr, ptr %65, align 8
  tail call void @nouveau_cli_work_queue(ptr noundef %66, ptr noundef nonnull %46, ptr noundef nonnull %56) #10
  br label %67

67:                                               ; preds = %63, %62, %53
  %68 = call i64 @ktime_get_mono_fast_ns() #10
  %69 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 11, i32 22
  store volatile i64 %68, ptr %69, align 8
  br label %70

70:                                               ; preds = %67, %43
  %71 = call i32 @__pm_runtime_suspend(ptr noundef %16, i32 noundef 13) #10
  br label %72

72:                                               ; preds = %70, %33, %30
  %73 = load ptr, ptr %11, align 8
  %74 = getelementptr inbounds %struct.ttm_device, ptr %73, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %74) #10
  %75 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %76 = load ptr, ptr %75, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %0, ptr noundef %76, ptr noundef null) #10
  %77 = load ptr, ptr %11, align 8
  %78 = getelementptr inbounds %struct.ttm_device, ptr %77, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %79 = load i16, ptr %78, align 4
  %80 = add i16 %79, 1
  store i16 %80, ptr %78, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %81 = load ptr, ptr %26, align 8
  call void @ww_mutex_unlock(ptr noundef %81) #10
  br label %82

82:                                               ; preds = %72, %25, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_vma_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_gem_prime_pin(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_gem_prime_unpin(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_gem_prime_get_sg_table(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_ttm_vmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_ttm_vunmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_ttm_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_gem_new(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %1, ptr %8, align 8
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = and i32 %3, 6
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = or i32 %14, %3
  %16 = call ptr @nouveau_bo_alloc(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %15, i32 noundef %4, i32 noundef %5) #10
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %7
  %19 = ptrtoint ptr %16 to i32
  br label %40

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.drm_gem_object, ptr %16, i32 0, i32 11
  store ptr @nouveau_gem_object_funcs, ptr %21, align 8
  %22 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = load i64, ptr %8, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @drm_gem_object_init(ptr noundef %23, ptr noundef %16, i32 noundef %25) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  call void @drm_gem_object_release(ptr noundef %16) #10
  call void @kfree(ptr noundef %16) #10
  br label %40

29:                                               ; preds = %20
  %30 = load i64, ptr %8, align 8
  %31 = load i32, ptr %9, align 4
  %32 = call i32 @nouveau_bo_init(ptr noundef %16, i64 noundef %30, i32 noundef %31, i32 noundef %15, ptr noundef null, ptr noundef null) #10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.nouveau_bo, ptr %16, i32 0, i32 2
  store i32 6, ptr %35, align 8
  %36 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 3, i32 1, i32 4
  %37 = load i8, ptr %36, align 1
  %38 = icmp ugt i8 %37, 5
  %39 = select i1 %38, i32 %12, i32 6
  store i32 %39, ptr %35, align 8
  store ptr %16, ptr %6, align 4
  br label %40

40:                                               ; preds = %34, %29, %28, %18
  %41 = phi i32 [ %19, %18 ], [ %26, %28 ], [ 0, %34 ], [ %32, %29 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_bo_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_init(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_gem_ioctl_new(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = icmp eq ptr %2, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi ptr [ %8, %6 ], [ null, %3 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4
  %11 = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %1, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.drm_nouveau_gem_new, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %1, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = call i32 @nouveau_gem_new(ptr noundef %10, i64 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, ptr noundef nonnull %4)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %9
  %24 = load ptr, ptr %4, align 4
  %25 = tail call i32 @drm_gem_handle_create(ptr noundef %2, ptr noundef %24, ptr noundef %1) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = tail call fastcc i32 @nouveau_gem_info(ptr noundef %2, ptr noundef %24, ptr noundef %1)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %1, align 8
  %32 = tail call i32 @drm_gem_handle_delete(ptr noundef %2, i32 noundef %31) #10
  br label %33

33:                                               ; preds = %30, %27, %23
  %34 = phi i32 [ %28, %30 ], [ 0, %27 ], [ %25, %23 ]
  %35 = icmp eq ptr %24, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %24) #10, !srcloc !15
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %24, ptr nonnull %24, i32 1, ptr nonnull elementtype(i32) %24) #10, !srcloc !16
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %44, label %42, !prof !17

42:                                               ; preds = %40
  tail call void @refcount_warn_saturate(ptr noundef nonnull %24, i32 noundef 3) #10
  br label %44

43:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %24) #10
  br label %44

44:                                               ; preds = %43, %42, %40, %33, %9
  %45 = phi i32 [ %21, %9 ], [ %34, %33 ], [ %34, %40 ], [ %34, %42 ], [ %34, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nouveau_gem_info(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi ptr [ %7, %5 ], [ null, %3 ]
  %10 = getelementptr inbounds %struct.nouveau_cli, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.nouveau_cli, ptr %9, i32 0, i32 5
  %14 = select i1 %12, ptr %13, ptr %10
  %15 = getelementptr inbounds %struct.nouveau_bo, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #10, !range !19
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %2, i32 0, i32 1
  store i32 %16, ptr %20, align 4
  br label %30

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.ttm_buffer_object, ptr %1, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ttm_resource, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 1
  %27 = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %2, i32 0, i32 1
  br i1 %26, label %28, label %29

28:                                               ; preds = %21
  store i32 4, ptr %27, align 4
  br label %30

29:                                               ; preds = %21
  store i32 2, ptr %27, align 4
  br label %30

30:                                               ; preds = %29, %28, %19
  %31 = getelementptr inbounds %struct.nouveau_bo, ptr %1, i32 0, i32 13
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %2, i32 0, i32 3
  store i64 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.nouveau_vmm, ptr %14, i32 0, i32 1, i32 0, i32 4
  %35 = load i32, ptr %34, align 8
  %36 = icmp ugt i32 %35, -2147463156
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = tail call ptr @nouveau_vma_find(ptr noundef %1, ptr noundef %14) #10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %80, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.nouveau_vma, ptr %38, i32 0, i32 3
  %42 = load i64, ptr %41, align 8
  store i64 %42, ptr %33, align 8
  br label %43

43:                                               ; preds = %40, %30
  %44 = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 5
  %45 = load i32, ptr %44, align 8
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %2, i32 0, i32 2
  store i64 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 4, i32 1, i32 1
  %49 = load i64, ptr %48, align 8
  %50 = shl i64 %49, 12
  %51 = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %2, i32 0, i32 4
  store i64 %50, ptr %51, align 8
  %52 = getelementptr inbounds %struct.nouveau_bo, ptr %1, i32 0, i32 16
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %2, i32 0, i32 5
  store i32 %53, ptr %54, align 8
  %55 = getelementptr inbounds %struct.nouveau_bo, ptr %1, i32 0, i32 15
  %56 = load i32, ptr %55, align 8
  %57 = shl i32 %56, 3
  %58 = and i32 %57, 8
  %59 = xor i32 %58, 8
  %60 = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %2, i32 0, i32 6
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.nouveau_cli, ptr %9, i32 0, i32 3, i32 1, i32 4
  %62 = load i8, ptr %61, align 1
  %63 = icmp ugt i8 %62, 6
  br i1 %63, label %64, label %68

64:                                               ; preds = %43
  %65 = load i32, ptr %55, align 8
  %66 = shl i32 %65, 2
  %67 = and i32 %66, 65280
  br label %77

68:                                               ; preds = %43
  %69 = icmp eq i8 %62, 6
  %70 = load i32, ptr %55, align 8
  br i1 %69, label %71, label %74

71:                                               ; preds = %68
  %72 = shl i32 %70, 2
  %73 = and i32 %72, 524032
  br label %77

74:                                               ; preds = %68
  %75 = lshr i32 %70, 17
  %76 = and i32 %75, 7
  br label %77

77:                                               ; preds = %74, %71, %64
  %78 = phi i32 [ %67, %64 ], [ %76, %74 ], [ %73, %71 ]
  %79 = or i32 %78, %59
  store i32 %79, ptr %60, align 4
  br label %80

80:                                               ; preds = %77, %37
  %81 = phi i32 [ -22, %37 ], [ 0, %77 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_gem_ioctl_pushbuf(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = alloca %struct.list_head, align 8
  %6 = alloca %struct.list_head, align 8
  %7 = alloca %struct.validate_op, align 4
  %8 = alloca ptr, align 4
  %9 = tail call ptr @nouveau_abi16_get(ptr noundef %2) #10
  %10 = icmp eq ptr %2, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi ptr [ %13, %11 ], [ null, %3 ]
  %16 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store ptr null, ptr %8, align 4
  %18 = icmp eq ptr %9, null
  br i1 %18, label %945, label %19, !prof !8

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.nouveau_abi16, ptr %9, i32 0, i32 1
  br label %21

21:                                               ; preds = %25, %19
  %22 = phi ptr [ %20, %19 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %20
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %23, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nouveau_channel, ptr %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %1, align 8
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %21

32:                                               ; preds = %25
  %33 = icmp eq ptr %27, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %32, %21
  %35 = tail call i32 @nouveau_abi16_put(ptr noundef nonnull %9, i32 noundef -2) #10
  br label %945

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.nouveau_channel, ptr %27, i32 0, i32 19
  %38 = load volatile i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40, !prof !17

40:                                               ; preds = %36
  %41 = tail call i32 @nouveau_abi16_put(ptr noundef nonnull %9, i32 noundef -19) #10
  br label %945

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %1, i32 0, i32 9
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 1
  %46 = icmp eq i64 %45, 0
  %47 = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 9
  %48 = load i64, ptr %47, align 8
  store i64 %48, ptr %43, align 8
  %49 = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 9, i32 1
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %1, i32 0, i32 10
  store i64 %50, ptr %51, align 8
  %52 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %1, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %921, label %55, !prof !8

55:                                               ; preds = %42
  %56 = icmp ugt i32 %53, 512
  br i1 %56, label %57, label %66, !prof !8

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.nouveau_drm, ptr %59, i32 0, i32 3
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.drm_device, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.1, ptr noundef %64, i32 noundef %53, i32 noundef 512) #12
  %65 = tail call i32 @nouveau_abi16_put(ptr noundef nonnull %9, i32 noundef -22) #10
  br label %945

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %1, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = icmp ugt i32 %68, 1024
  br i1 %69, label %70, label %79, !prof !8

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 1
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.nouveau_drm, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.drm_device, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.2, ptr noundef %77, i32 noundef %68, i32 noundef 1024) #12
  %78 = tail call i32 @nouveau_abi16_put(ptr noundef nonnull %9, i32 noundef -22) #10
  br label %945

79:                                               ; preds = %66
  %80 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %1, i32 0, i32 3
  %81 = load i32, ptr %80, align 8
  %82 = icmp ugt i32 %81, 1024
  br i1 %82, label %83, label %92, !prof !8

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.nouveau_drm, ptr %85, i32 0, i32 3
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.drm_device, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.3, ptr noundef %90, i32 noundef %81, i32 noundef 1024) #12
  %91 = tail call i32 @nouveau_abi16_put(ptr noundef nonnull %9, i32 noundef -22) #10
  br label %945

92:                                               ; preds = %79
  %93 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %1, i32 0, i32 6
  %94 = load i64, ptr %93, align 8
  %95 = tail call fastcc ptr @u_memcpya(i64 noundef %94, i32 noundef %53, i32 noundef 24)
  %96 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = ptrtoint ptr %95 to i32
  %99 = tail call i32 @nouveau_abi16_put(ptr noundef nonnull %9, i32 noundef %98) #10
  br label %945

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %1, i32 0, i32 2
  %102 = load i64, ptr %101, align 8
  %103 = load i32, ptr %67, align 4
  %104 = tail call fastcc ptr @u_memcpya(i64 noundef %102, i32 noundef %103, i32 noundef 40)
  %105 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %105, label %111, label %106

106:                                              ; preds = %100
  %107 = load i32, ptr %52, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = load i32, ptr %67, align 4
  br label %128

111:                                              ; preds = %100
  tail call void @kvfree(ptr noundef %95) #10
  %112 = ptrtoint ptr %104 to i32
  %113 = tail call i32 @nouveau_abi16_put(ptr noundef nonnull %9, i32 noundef %112) #10
  br label %945

114:                                              ; preds = %141, %106
  %115 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %116 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %117 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %118 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %119 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %120 = getelementptr inbounds %struct.validate_op, ptr %7, i32 0, i32 1
  %121 = getelementptr inbounds %struct.validate_op, ptr %7, i32 0, i32 1, i32 1
  %122 = getelementptr inbounds %struct.validate_op, ptr %7, i32 0, i32 1, i32 2
  %123 = getelementptr inbounds %struct.validate_op, ptr %7, i32 0, i32 1, i32 3
  %124 = getelementptr inbounds %struct.validate_op, ptr %7, i32 0, i32 1, i32 4
  %125 = getelementptr inbounds %struct.nouveau_channel, ptr %27, i32 0, i32 3
  %126 = getelementptr inbounds %struct.nouveau_channel, ptr %27, i32 0, i32 2
  %127 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %1, i32 0, i32 5
  br label %144

128:                                              ; preds = %141, %109
  %129 = phi i32 [ 0, %109 ], [ %142, %141 ]
  %130 = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %95, i32 %129
  %131 = load i32, ptr %130, align 8
  %132 = icmp ult i32 %131, %110
  br i1 %132, label %141, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 1
  %135 = load ptr, ptr %134, align 8
  %136 = getelementptr inbounds %struct.nouveau_drm, ptr %135, i32 0, i32 3
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds %struct.drm_device, ptr %137, i32 0, i32 2
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.4, ptr noundef %140, i32 noundef %129) #12
  br label %916

141:                                              ; preds = %128
  %142 = add nuw i32 %129, 1
  %143 = icmp eq i32 %142, %107
  br i1 %143, label %114, label %128

144:                                              ; preds = %504, %114
  %145 = phi i8 [ %502, %504 ], [ 0, %114 ]
  %146 = phi ptr [ %507, %504 ], [ null, %114 ]
  %147 = load i32, ptr %67, align 4
  br i1 %10, label %148, label %150

148:                                              ; preds = %144
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %116, align 4
  %149 = icmp eq i32 %147, 0
  br i1 %149, label %499, label %153

150:                                              ; preds = %144
  %151 = load ptr, ptr %115, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %116, align 4
  %152 = icmp eq i32 %147, 0
  br i1 %152, label %499, label %153

153:                                              ; preds = %150, %148
  %154 = phi ptr [ null, %148 ], [ %151, %150 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store ptr %4, ptr %4, align 8
  store ptr %4, ptr %117, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store ptr %5, ptr %5, align 8
  store ptr %5, ptr %118, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store ptr %6, ptr %6, align 8
  store ptr %6, ptr %119, align 4
  %155 = tail call ptr @llvm.thread.pointer() #10
  store ptr %155, ptr %120, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @reservation_ww_class) #10, !srcloc !15
  %156 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @reservation_ww_class, ptr nonnull @reservation_ww_class, i32 1, ptr nonnull elementtype(i32) @reservation_ww_class) #10, !srcloc !20
  %157 = extractvalue { i32, i32 } %156, 0
  store i32 %157, ptr %121, align 4
  store i32 0, ptr %122, align 4
  store i16 0, ptr %123, align 4
  %158 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 5), align 4
  %159 = trunc i32 %158 to i16
  store i16 %159, ptr %124, align 2
  %160 = icmp sgt i32 %147, 0
  br i1 %160, label %164, label %336

161:                                              ; preds = %329
  %162 = add nuw nsw i32 %165, 1
  %163 = icmp eq i32 %162, 100001
  br i1 %163, label %168, label %164

164:                                              ; preds = %161, %153
  %165 = phi i32 [ %162, %161 ], [ 1, %153 ]
  %166 = phi i32 [ 0, %161 ], [ -22, %153 ]
  %167 = phi ptr [ %183, %161 ], [ null, %153 ]
  br label %176

168:                                              ; preds = %161
  %169 = getelementptr inbounds %struct.nouveau_cli, ptr %154, i32 0, i32 1
  %170 = load ptr, ptr %169, align 8
  %171 = getelementptr inbounds %struct.nouveau_drm, ptr %170, i32 0, i32 3
  %172 = load ptr, ptr %171, align 8
  %173 = getelementptr inbounds %struct.drm_device, ptr %172, i32 0, i32 2
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.nouveau_cli, ptr %154, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %174, ptr noundef nonnull @.str.16, ptr noundef %175, ptr noundef nonnull @__func__.validate_init) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %365

176:                                              ; preds = %331, %164
  %177 = phi i32 [ %333, %331 ], [ %166, %164 ]
  %178 = phi i32 [ %334, %331 ], [ 0, %164 ]
  %179 = phi ptr [ %332, %331 ], [ %167, %164 ]
  %180 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %178
  %181 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %178, i32 1
  %182 = load i32, ptr %181, align 8
  %183 = call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %182) #10
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %194

185:                                              ; preds = %176
  %186 = getelementptr inbounds %struct.nouveau_cli, ptr %154, i32 0, i32 1
  %187 = load ptr, ptr %186, align 8
  %188 = getelementptr inbounds %struct.nouveau_drm, ptr %187, i32 0, i32 3
  %189 = load ptr, ptr %188, align 8
  %190 = getelementptr inbounds %struct.drm_device, ptr %189, i32 0, i32 2
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.nouveau_cli, ptr %154, i32 0, i32 12
  %193 = load i32, ptr %181, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %191, ptr noundef nonnull @.str.17, ptr noundef %192, i32 noundef %193) #12
  br label %336

194:                                              ; preds = %176
  %195 = icmp eq ptr %183, %179
  br i1 %195, label %196, label %204

196:                                              ; preds = %194
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %179) #10, !srcloc !15
  %197 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %179, ptr nonnull %179, i32 1, ptr nonnull elementtype(i32) %179) #10, !srcloc !16
  %198 = extractvalue { i32, i32, i32 } %197, 0
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %203, label %200

200:                                              ; preds = %196
  %201 = icmp sgt i32 %198, 0
  br i1 %201, label %331, label %202, !prof !17

202:                                              ; preds = %200
  call void @refcount_warn_saturate(ptr noundef nonnull %179, i32 noundef 3) #10
  br label %331

203:                                              ; preds = %196
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  call void @drm_gem_object_free(ptr noundef nonnull %179) #10
  br label %331

204:                                              ; preds = %194
  %205 = getelementptr inbounds %struct.nouveau_bo, ptr %183, i32 0, i32 9
  %206 = load ptr, ptr %205, align 8
  %207 = icmp ne ptr %206, null
  %208 = icmp eq ptr %206, %2
  %209 = and i1 %207, %208
  br i1 %209, label %210, label %226

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.nouveau_cli, ptr %154, i32 0, i32 1
  %212 = load ptr, ptr %211, align 8
  %213 = getelementptr inbounds %struct.nouveau_drm, ptr %212, i32 0, i32 3
  %214 = load ptr, ptr %213, align 8
  %215 = getelementptr inbounds %struct.drm_device, ptr %214, i32 0, i32 2
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.nouveau_cli, ptr %154, i32 0, i32 12
  %218 = load i32, ptr %181, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %216, ptr noundef nonnull @.str.18, ptr noundef %217, i32 noundef %218) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %183) #10, !srcloc !15
  %219 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %183, ptr nonnull %183, i32 1, ptr nonnull elementtype(i32) %183) #10, !srcloc !16
  %220 = extractvalue { i32, i32, i32 } %219, 0
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %225, label %222

222:                                              ; preds = %210
  %223 = icmp sgt i32 %220, 0
  br i1 %223, label %336, label %224, !prof !17

224:                                              ; preds = %222
  call void @refcount_warn_saturate(ptr noundef nonnull %183, i32 noundef 3) #10
  br label %336

225:                                              ; preds = %210
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  call void @drm_gem_object_free(ptr noundef nonnull %183) #10
  br label %336

226:                                              ; preds = %204
  %227 = getelementptr inbounds %struct.drm_gem_object, ptr %183, i32 0, i32 9
  %228 = load ptr, ptr %227, align 8
  %229 = call i32 @ww_mutex_lock_interruptible(ptr noundef %228, ptr noundef %120) #10
  %230 = icmp eq i32 %229, -4
  %231 = select i1 %230, i32 -512, i32 %229
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %274, label %233

233:                                              ; preds = %226
  %234 = load volatile ptr, ptr %5, align 8
  %235 = icmp eq ptr %234, %5
  br i1 %235, label %240, label %236

236:                                              ; preds = %233
  %237 = load ptr, ptr %116, align 4
  %238 = load ptr, ptr %118, align 4
  %239 = getelementptr inbounds %struct.list_head, ptr %234, i32 0, i32 1
  store ptr %237, ptr %239, align 4
  store ptr %234, ptr %237, align 4
  store ptr %7, ptr %238, align 4
  store ptr %238, ptr %116, align 4
  store volatile ptr %5, ptr %5, align 8
  store ptr %5, ptr %118, align 4
  br label %240

240:                                              ; preds = %236, %233
  %241 = load volatile ptr, ptr %4, align 8
  %242 = icmp eq ptr %241, %4
  br i1 %242, label %247, label %243

243:                                              ; preds = %240
  %244 = load ptr, ptr %116, align 4
  %245 = load ptr, ptr %117, align 4
  %246 = getelementptr inbounds %struct.list_head, ptr %241, i32 0, i32 1
  store ptr %244, ptr %246, align 4
  store ptr %241, ptr %244, align 4
  store ptr %7, ptr %245, align 4
  store ptr %245, ptr %116, align 4
  store volatile ptr %4, ptr %4, align 8
  store ptr %4, ptr %117, align 4
  br label %247

247:                                              ; preds = %243, %240
  %248 = load volatile ptr, ptr %6, align 8
  %249 = icmp eq ptr %248, %6
  br i1 %249, label %254, label %250

250:                                              ; preds = %247
  %251 = load ptr, ptr %116, align 4
  %252 = load ptr, ptr %119, align 4
  %253 = getelementptr inbounds %struct.list_head, ptr %248, i32 0, i32 1
  store ptr %251, ptr %253, align 4
  store ptr %248, ptr %251, align 4
  store ptr %7, ptr %252, align 4
  store ptr %252, ptr %116, align 4
  store volatile ptr %6, ptr %6, align 8
  store ptr %6, ptr %119, align 4
  br label %254

254:                                              ; preds = %250, %247
  call fastcc void @validate_fini_no_ticket(ptr noundef nonnull %7, ptr noundef nonnull %27, ptr noundef null, ptr noundef null) #10
  %255 = icmp eq i32 %231, -35
  br i1 %255, label %256, label %263, !prof !8

256:                                              ; preds = %254
  %257 = load ptr, ptr %227, align 8
  %258 = call i32 @ww_mutex_lock_interruptible(ptr noundef %257, ptr noundef %120) #10
  %259 = icmp eq i32 %258, -4
  %260 = select i1 %259, i32 -512, i32 %258
  %261 = icmp eq i32 %260, 0
  %262 = select i1 %261, ptr %183, ptr %179
  br label %263

263:                                              ; preds = %256, %254
  %264 = phi ptr [ %179, %254 ], [ %262, %256 ]
  %265 = phi i32 [ %231, %254 ], [ %260, %256 ]
  switch i32 %265, label %266 [
    i32 0, label %274
    i32 -512, label %336
  ], !prof !21

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.nouveau_cli, ptr %154, i32 0, i32 1
  %268 = load ptr, ptr %267, align 8
  %269 = getelementptr inbounds %struct.nouveau_drm, ptr %268, i32 0, i32 3
  %270 = load ptr, ptr %269, align 8
  %271 = getelementptr inbounds %struct.drm_device, ptr %270, i32 0, i32 2
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.nouveau_cli, ptr %154, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %272, ptr noundef nonnull @.str.19, ptr noundef %273) #12
  br label %336

274:                                              ; preds = %263, %226
  %275 = phi ptr [ %264, %263 ], [ %179, %226 ]
  %276 = load ptr, ptr %125, align 8
  %277 = getelementptr inbounds %struct.nouveau_vmm, ptr %276, i32 0, i32 1, i32 0, i32 4
  %278 = load i32, ptr %277, align 8
  %279 = icmp ugt i32 %278, -2147463156
  br i1 %279, label %280, label %291

280:                                              ; preds = %274
  %281 = call ptr @nouveau_vma_find(ptr noundef nonnull %183, ptr noundef %276) #10
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %291

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct.nouveau_cli, ptr %154, i32 0, i32 1
  %285 = load ptr, ptr %284, align 8
  %286 = getelementptr inbounds %struct.nouveau_drm, ptr %285, i32 0, i32 3
  %287 = load ptr, ptr %286, align 8
  %288 = getelementptr inbounds %struct.drm_device, ptr %287, i32 0, i32 2
  %289 = load ptr, ptr %288, align 4
  %290 = getelementptr inbounds %struct.nouveau_cli, ptr %154, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %289, ptr noundef nonnull @.str.20, ptr noundef %290) #12
  br label %336

291:                                              ; preds = %280, %274
  %292 = phi ptr [ %281, %280 ], [ %183, %274 ]
  %293 = ptrtoint ptr %292 to i32
  %294 = zext i32 %293 to i64
  store i64 %294, ptr %180, align 8
  store ptr %2, ptr %205, align 8
  %295 = getelementptr inbounds %struct.nouveau_bo, ptr %183, i32 0, i32 11
  store i32 %178, ptr %295, align 4
  %296 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %178, i32 4
  %297 = load i32, ptr %296, align 4
  %298 = and i32 %297, 4
  %299 = icmp eq i32 %298, 0
  %300 = and i32 %297, 6
  %301 = icmp eq i32 %300, 6
  br i1 %301, label %302, label %306

302:                                              ; preds = %291
  %303 = getelementptr inbounds %struct.nouveau_bo, ptr %183, i32 0, i32 10
  %304 = load ptr, ptr %119, align 4
  store ptr %303, ptr %119, align 4
  store ptr %6, ptr %303, align 4
  %305 = getelementptr inbounds %struct.nouveau_bo, ptr %183, i32 0, i32 10, i32 1
  store ptr %304, ptr %305, align 4
  store volatile ptr %303, ptr %304, align 4
  br label %329

306:                                              ; preds = %291
  %307 = and i32 %297, 2
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %313, label %309

309:                                              ; preds = %306
  %310 = getelementptr inbounds %struct.nouveau_bo, ptr %183, i32 0, i32 10
  %311 = load ptr, ptr %118, align 4
  store ptr %310, ptr %118, align 4
  store ptr %5, ptr %310, align 4
  %312 = getelementptr inbounds %struct.nouveau_bo, ptr %183, i32 0, i32 10, i32 1
  store ptr %311, ptr %312, align 4
  store volatile ptr %310, ptr %311, align 4
  br label %329

313:                                              ; preds = %306
  br i1 %299, label %318, label %314

314:                                              ; preds = %313
  %315 = getelementptr inbounds %struct.nouveau_bo, ptr %183, i32 0, i32 10
  %316 = load ptr, ptr %117, align 4
  store ptr %315, ptr %117, align 4
  store ptr %4, ptr %315, align 4
  %317 = getelementptr inbounds %struct.nouveau_bo, ptr %183, i32 0, i32 10, i32 1
  store ptr %316, ptr %317, align 4
  store volatile ptr %315, ptr %316, align 4
  br label %329

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.nouveau_cli, ptr %154, i32 0, i32 1
  %320 = load ptr, ptr %319, align 8
  %321 = getelementptr inbounds %struct.nouveau_drm, ptr %320, i32 0, i32 3
  %322 = load ptr, ptr %321, align 8
  %323 = getelementptr inbounds %struct.drm_device, ptr %322, i32 0, i32 2
  %324 = load ptr, ptr %323, align 4
  %325 = getelementptr inbounds %struct.nouveau_cli, ptr %154, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %324, ptr noundef nonnull @.str.21, ptr noundef %325, i32 noundef %297) #12
  %326 = getelementptr inbounds %struct.nouveau_bo, ptr %183, i32 0, i32 10
  %327 = load ptr, ptr %119, align 4
  store ptr %326, ptr %119, align 4
  store ptr %6, ptr %326, align 4
  %328 = getelementptr inbounds %struct.nouveau_bo, ptr %183, i32 0, i32 10, i32 1
  store ptr %327, ptr %328, align 4
  store volatile ptr %326, ptr %327, align 4
  br label %336

329:                                              ; preds = %314, %309, %302
  %330 = icmp eq ptr %183, %275
  br i1 %330, label %161, label %331

331:                                              ; preds = %329, %203, %202, %200
  %332 = phi ptr [ null, %203 ], [ null, %202 ], [ null, %200 ], [ %275, %329 ]
  %333 = phi i32 [ %177, %203 ], [ %177, %202 ], [ %177, %200 ], [ 0, %329 ]
  %334 = add nuw nsw i32 %178, 1
  %335 = icmp eq i32 %334, %147
  br i1 %335, label %336, label %176

336:                                              ; preds = %331, %318, %283, %266, %263, %225, %224, %222, %185, %153
  %337 = phi i32 [ -22, %283 ], [ -22, %225 ], [ -22, %224 ], [ -22, %222 ], [ %265, %266 ], [ -2, %185 ], [ -22, %318 ], [ -22, %153 ], [ %333, %331 ], [ %265, %263 ]
  %338 = load volatile ptr, ptr %5, align 8
  %339 = icmp eq ptr %338, %5
  br i1 %339, label %344, label %340

340:                                              ; preds = %336
  %341 = load ptr, ptr %116, align 4
  %342 = load ptr, ptr %118, align 4
  %343 = getelementptr inbounds %struct.list_head, ptr %338, i32 0, i32 1
  store ptr %341, ptr %343, align 4
  store ptr %338, ptr %341, align 4
  store ptr %7, ptr %342, align 4
  store ptr %342, ptr %116, align 4
  br label %344

344:                                              ; preds = %340, %336
  %345 = load volatile ptr, ptr %4, align 8
  %346 = icmp eq ptr %345, %4
  br i1 %346, label %351, label %347

347:                                              ; preds = %344
  %348 = load ptr, ptr %116, align 4
  %349 = load ptr, ptr %117, align 4
  %350 = getelementptr inbounds %struct.list_head, ptr %345, i32 0, i32 1
  store ptr %348, ptr %350, align 4
  store ptr %345, ptr %348, align 4
  store ptr %7, ptr %349, align 4
  store ptr %349, ptr %116, align 4
  br label %351

351:                                              ; preds = %347, %344
  %352 = load volatile ptr, ptr %6, align 8
  %353 = icmp eq ptr %352, %6
  br i1 %353, label %358, label %354

354:                                              ; preds = %351
  %355 = load ptr, ptr %116, align 4
  %356 = load ptr, ptr %119, align 4
  %357 = getelementptr inbounds %struct.list_head, ptr %352, i32 0, i32 1
  store ptr %355, ptr %357, align 4
  store ptr %352, ptr %355, align 4
  store ptr %7, ptr %356, align 4
  store ptr %356, ptr %116, align 4
  br label %358

358:                                              ; preds = %354, %351
  %359 = icmp eq i32 %337, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %358
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %361 = load ptr, ptr %7, align 4
  %362 = icmp eq ptr %361, %7
  br i1 %362, label %499, label %374

363:                                              ; preds = %358
  call fastcc void @validate_fini_no_ticket(ptr noundef nonnull %7, ptr noundef nonnull %27, ptr noundef null, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %364 = icmp eq i32 %337, -512
  br i1 %364, label %912, label %365, !prof !22

365:                                              ; preds = %363, %168
  %366 = phi i32 [ -22, %168 ], [ %337, %363 ]
  %367 = getelementptr inbounds %struct.nouveau_cli, ptr %154, i32 0, i32 1
  %368 = load ptr, ptr %367, align 8
  %369 = getelementptr inbounds %struct.nouveau_drm, ptr %368, i32 0, i32 3
  %370 = load ptr, ptr %369, align 8
  %371 = getelementptr inbounds %struct.drm_device, ptr %370, i32 0, i32 2
  %372 = load ptr, ptr %371, align 4
  %373 = getelementptr inbounds %struct.nouveau_cli, ptr %154, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %372, ptr noundef nonnull @.str.14, ptr noundef %373) #12
  br label %488

374:                                              ; preds = %360
  %375 = load ptr, ptr %126, align 4
  %376 = getelementptr inbounds %struct.nouveau_drm, ptr %375, i32 0, i32 2, i32 3, i32 1, i32 4
  br label %377

377:                                              ; preds = %457, %374
  %378 = phi ptr [ %361, %374 ], [ %459, %457 ]
  %379 = phi i32 [ 0, %374 ], [ %458, %457 ]
  %380 = getelementptr i8, ptr %378, i32 -428
  %381 = getelementptr i8, ptr %378, i32 8
  %382 = load i32, ptr %381, align 4
  %383 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %382, i32 2
  %384 = load i32, ptr %383, align 4
  %385 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %382, i32 3
  %386 = load i32, ptr %385, align 8
  %387 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %382, i32 4
  %388 = load i32, ptr %387, align 4
  %389 = getelementptr i8, ptr %378, i32 -140
  %390 = load i32, ptr %389, align 8
  %391 = icmp eq i32 %386, 0
  %392 = select i1 %391, i32 %384, i32 %386
  %393 = and i32 %392, %388
  %394 = and i32 %393, %390
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %461, label %396

396:                                              ; preds = %377
  %397 = and i32 %388, -7
  %398 = and i32 %394, 2
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %406, label %400

400:                                              ; preds = %396
  %401 = getelementptr i8, ptr %378, i32 -200
  %402 = load ptr, ptr %401, align 4
  %403 = getelementptr inbounds %struct.ttm_resource, ptr %402, i32 0, i32 2
  %404 = load i32, ptr %403, align 4
  %405 = icmp eq i32 %404, 2
  br i1 %405, label %417, label %406

406:                                              ; preds = %400, %396
  %407 = and i32 %394, 4
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %415, label %409

409:                                              ; preds = %406
  %410 = getelementptr i8, ptr %378, i32 -200
  %411 = load ptr, ptr %410, align 4
  %412 = getelementptr inbounds %struct.ttm_resource, ptr %411, i32 0, i32 2
  %413 = load i32, ptr %412, align 4
  %414 = icmp eq i32 %413, 1
  br i1 %414, label %417, label %415

415:                                              ; preds = %409, %406
  %416 = select i1 %399, i32 4, i32 2
  br label %417

417:                                              ; preds = %415, %409, %400
  %418 = phi i32 [ 2, %400 ], [ 4, %409 ], [ %416, %415 ]
  call void @nouveau_bo_placement_set(ptr noundef %380, i32 noundef %418, i32 noundef %397) #10
  %419 = call i32 @nouveau_bo_validate(ptr noundef %380, i1 noundef zeroext true, i1 noundef zeroext false) #10
  switch i32 %419, label %461 [
    i32 0, label %420
    i32 -512, label %484
  ], !prof !21

420:                                              ; preds = %417
  %421 = load i32, ptr %385, align 8
  %422 = icmp ne i32 %421, 0
  %423 = call i32 @nouveau_fence_sync(ptr noundef %380, ptr noundef nonnull %27, i1 noundef zeroext %422, i1 noundef zeroext true) #10
  switch i32 %423, label %461 [
    i32 0, label %424
    i32 -512, label %484
  ], !prof !21

424:                                              ; preds = %420
  %425 = load i8, ptr %376, align 1
  %426 = icmp ult i8 %425, 6
  br i1 %426, label %427, label %457

427:                                              ; preds = %424
  %428 = getelementptr i8, ptr %378, i32 20
  %429 = load i64, ptr %428, align 8
  %430 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %382, i32 5
  %431 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %382, i32 5, i32 2
  %432 = load i64, ptr %431, align 8
  %433 = icmp eq i64 %429, %432
  %434 = getelementptr i8, ptr %378, i32 -200
  %435 = load ptr, ptr %434, align 4
  %436 = getelementptr inbounds %struct.ttm_resource, ptr %435, i32 0, i32 2
  %437 = load i32, ptr %436, align 4
  br i1 %433, label %438, label %449

438:                                              ; preds = %427
  switch i32 %437, label %451 [
    i32 2, label %439
    i32 1, label %444
  ]

439:                                              ; preds = %438
  %440 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %382, i32 5, i32 1
  %441 = load i32, ptr %440, align 4
  %442 = and i32 %441, 2
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %451, label %457

444:                                              ; preds = %438
  %445 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %382, i32 5, i32 1
  %446 = load i32, ptr %445, align 4
  %447 = and i32 %446, 4
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %452, label %457

449:                                              ; preds = %427
  %450 = icmp eq i32 %437, 1
  br i1 %450, label %452, label %451

451:                                              ; preds = %449, %439, %438
  br label %452

452:                                              ; preds = %451, %449, %444
  %453 = phi i32 [ 2, %451 ], [ 4, %449 ], [ 4, %444 ]
  %454 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %382, i32 5, i32 1
  store i32 %453, ptr %454, align 4
  %455 = load i64, ptr %428, align 8
  store i64 %455, ptr %431, align 8
  store i32 0, ptr %430, align 8
  %456 = add i32 %379, 1
  br label %457

457:                                              ; preds = %452, %444, %439, %424
  %458 = phi i32 [ %379, %444 ], [ %379, %439 ], [ %456, %452 ], [ %379, %424 ]
  %459 = load ptr, ptr %378, align 4
  %460 = icmp eq ptr %459, %7
  br i1 %460, label %471, label %377

461:                                              ; preds = %420, %417, %377
  %462 = phi ptr [ @.str.22, %377 ], [ @.str.23, %417 ], [ @.str.24, %420 ]
  %463 = phi i32 [ -22, %377 ], [ %419, %417 ], [ %423, %420 ]
  %464 = getelementptr inbounds %struct.nouveau_cli, ptr %154, i32 0, i32 1
  %465 = load ptr, ptr %464, align 8
  %466 = getelementptr inbounds %struct.nouveau_drm, ptr %465, i32 0, i32 3
  %467 = load ptr, ptr %466, align 8
  %468 = getelementptr inbounds %struct.drm_device, ptr %467, i32 0, i32 2
  %469 = load ptr, ptr %468, align 4
  %470 = getelementptr inbounds %struct.nouveau_cli, ptr %154, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %469, ptr noundef nonnull %462, ptr noundef %470) #12
  br label %471

471:                                              ; preds = %461, %457
  %472 = phi i32 [ %463, %461 ], [ %458, %457 ]
  %473 = icmp slt i32 %472, 0
  br i1 %473, label %474, label %486, !prof !8

474:                                              ; preds = %471
  %475 = icmp eq i32 %472, -512
  br i1 %475, label %484, label %476

476:                                              ; preds = %474
  %477 = getelementptr inbounds %struct.nouveau_cli, ptr %154, i32 0, i32 1
  %478 = load ptr, ptr %477, align 8
  %479 = getelementptr inbounds %struct.nouveau_drm, ptr %478, i32 0, i32 3
  %480 = load ptr, ptr %479, align 8
  %481 = getelementptr inbounds %struct.drm_device, ptr %480, i32 0, i32 2
  %482 = load ptr, ptr %481, align 4
  %483 = getelementptr inbounds %struct.nouveau_cli, ptr %154, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %482, ptr noundef nonnull @.str.15, ptr noundef %483) #12
  br label %484

484:                                              ; preds = %476, %474, %420, %417
  %485 = phi i32 [ %472, %476 ], [ -512, %474 ], [ %423, %420 ], [ %419, %417 ]
  call fastcc void @validate_fini_no_ticket(ptr noundef nonnull %7, ptr noundef nonnull %27, ptr noundef null, ptr noundef null) #10
  br label %488

486:                                              ; preds = %471
  %487 = icmp eq i32 %472, 0
  br i1 %487, label %499, label %501

488:                                              ; preds = %484, %365
  %489 = phi i32 [ %485, %484 ], [ %366, %365 ]
  %490 = icmp eq i32 %489, -512
  br i1 %490, label %912, label %491

491:                                              ; preds = %488
  %492 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 1
  %493 = load ptr, ptr %492, align 8
  %494 = getelementptr inbounds %struct.nouveau_drm, ptr %493, i32 0, i32 3
  %495 = load ptr, ptr %494, align 8
  %496 = getelementptr inbounds %struct.drm_device, ptr %495, i32 0, i32 2
  %497 = load ptr, ptr %496, align 4
  %498 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %497, ptr noundef nonnull @.str.5, ptr noundef %498, i32 noundef %489) #12
  br label %912

499:                                              ; preds = %486, %360, %150, %148
  %500 = icmp eq i8 %145, 0
  br i1 %500, label %654, label %501

501:                                              ; preds = %499, %486
  %502 = phi i8 [ %145, %499 ], [ 1, %486 ]
  %503 = icmp eq ptr %146, null
  br i1 %503, label %504, label %511

504:                                              ; preds = %501
  call fastcc void @validate_fini_no_ticket(ptr noundef nonnull %7, ptr noundef nonnull %27, ptr noundef null, ptr noundef %104) #10
  %505 = load i64, ptr %127, align 8
  %506 = load i32, ptr %80, align 8
  %507 = call fastcc ptr @u_memcpya(i64 noundef %505, i32 noundef %506, i32 noundef 28)
  %508 = icmp ugt ptr %507, inttoptr (i32 -4096 to ptr)
  br i1 %508, label %509, label %144

509:                                              ; preds = %504
  %510 = ptrtoint ptr %507 to i32
  br label %912

511:                                              ; preds = %501
  %512 = load i32, ptr %80, align 8
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %654, label %514

514:                                              ; preds = %641, %511
  %515 = phi i32 [ %642, %641 ], [ %512, %511 ]
  %516 = phi i32 [ %643, %641 ], [ 0, %511 ]
  %517 = getelementptr %struct.drm_nouveau_gem_pushbuf_reloc, ptr %146, i32 %516
  %518 = getelementptr %struct.drm_nouveau_gem_pushbuf_reloc, ptr %146, i32 %516, i32 2
  %519 = load i32, ptr %518, align 4
  %520 = load i32, ptr %67, align 4
  %521 = icmp ult i32 %519, %520
  br i1 %521, label %530, label %522, !prof !17

522:                                              ; preds = %514
  %523 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 1
  %524 = load ptr, ptr %523, align 8
  %525 = getelementptr inbounds %struct.nouveau_drm, ptr %524, i32 0, i32 3
  %526 = load ptr, ptr %525, align 8
  %527 = getelementptr inbounds %struct.drm_device, ptr %526, i32 0, i32 2
  %528 = load ptr, ptr %527, align 4
  %529 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %528, ptr noundef nonnull @.str.25, ptr noundef %529) #12
  br label %645

530:                                              ; preds = %514
  %531 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %519, i32 5
  %532 = load i32, ptr %531, align 8
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %641

534:                                              ; preds = %530
  %535 = load i32, ptr %517, align 4
  %536 = icmp ult i32 %535, %520
  br i1 %536, label %545, label %537, !prof !17

537:                                              ; preds = %534
  %538 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 1
  %539 = load ptr, ptr %538, align 8
  %540 = getelementptr inbounds %struct.nouveau_drm, ptr %539, i32 0, i32 3
  %541 = load ptr, ptr %540, align 8
  %542 = getelementptr inbounds %struct.drm_device, ptr %541, i32 0, i32 2
  %543 = load ptr, ptr %542, align 4
  %544 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %543, ptr noundef nonnull @.str.26, ptr noundef %544) #12
  br label %645

545:                                              ; preds = %534
  %546 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %535
  %547 = load i64, ptr %546, align 8
  %548 = trunc i64 %547 to i32
  %549 = inttoptr i32 %548 to ptr
  %550 = getelementptr %struct.drm_nouveau_gem_pushbuf_reloc, ptr %146, i32 %516, i32 1
  %551 = load i32, ptr %550, align 4
  %552 = add i32 %551, 4
  %553 = getelementptr inbounds %struct.drm_gem_object, ptr %549, i32 0, i32 5
  %554 = load i32, ptr %553, align 8
  %555 = icmp ugt i32 %552, %554
  br i1 %555, label %556, label %564, !prof !8

556:                                              ; preds = %545
  %557 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 1
  %558 = load ptr, ptr %557, align 8
  %559 = getelementptr inbounds %struct.nouveau_drm, ptr %558, i32 0, i32 3
  %560 = load ptr, ptr %559, align 8
  %561 = getelementptr inbounds %struct.drm_device, ptr %560, i32 0, i32 2
  %562 = load ptr, ptr %561, align 4
  %563 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %562, ptr noundef nonnull @.str.27, ptr noundef %563) #12
  br label %645

564:                                              ; preds = %545
  %565 = getelementptr inbounds %struct.nouveau_bo, ptr %549, i32 0, i32 6
  %566 = load ptr, ptr %565, align 8
  %567 = icmp eq ptr %566, null
  br i1 %567, label %568, label %585

568:                                              ; preds = %564
  %569 = getelementptr inbounds %struct.ttm_buffer_object, ptr %549, i32 0, i32 6
  %570 = load ptr, ptr %569, align 4
  %571 = getelementptr inbounds %struct.ttm_resource, ptr %570, i32 0, i32 1
  %572 = load i32, ptr %571, align 4
  %573 = call i32 @ttm_bo_kmap(ptr noundef %549, i32 noundef 0, i32 noundef %572, ptr noundef %565) #10
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %583, label %575

575:                                              ; preds = %568
  %576 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 1
  %577 = load ptr, ptr %576, align 8
  %578 = getelementptr inbounds %struct.nouveau_drm, ptr %577, i32 0, i32 3
  %579 = load ptr, ptr %578, align 8
  %580 = getelementptr inbounds %struct.drm_device, ptr %579, i32 0, i32 2
  %581 = load ptr, ptr %580, align 4
  %582 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %581, ptr noundef nonnull @.str.28, ptr noundef %582) #12
  br label %645

583:                                              ; preds = %568
  %584 = getelementptr inbounds %struct.nouveau_bo, ptr %549, i32 0, i32 12
  store i8 1, ptr %584, align 8
  br label %585

585:                                              ; preds = %583, %564
  %586 = getelementptr %struct.drm_nouveau_gem_pushbuf_reloc, ptr %146, i32 %516, i32 3
  %587 = load i32, ptr %586, align 4
  %588 = and i32 %587, 1
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %597, label %590

590:                                              ; preds = %585
  %591 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %519, i32 5, i32 2
  %592 = load i64, ptr %591, align 8
  %593 = getelementptr %struct.drm_nouveau_gem_pushbuf_reloc, ptr %146, i32 %516, i32 4
  %594 = load i32, ptr %593, align 4
  %595 = trunc i64 %592 to i32
  %596 = add i32 %594, %595
  br label %612

597:                                              ; preds = %585
  %598 = and i32 %587, 2
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %609, label %600

600:                                              ; preds = %597
  %601 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %519, i32 5, i32 2
  %602 = load i64, ptr %601, align 8
  %603 = getelementptr %struct.drm_nouveau_gem_pushbuf_reloc, ptr %146, i32 %516, i32 4
  %604 = load i32, ptr %603, align 4
  %605 = zext i32 %604 to i64
  %606 = add i64 %602, %605
  %607 = lshr i64 %606, 32
  %608 = trunc i64 %607 to i32
  br label %612

609:                                              ; preds = %597
  %610 = getelementptr %struct.drm_nouveau_gem_pushbuf_reloc, ptr %146, i32 %516, i32 4
  %611 = load i32, ptr %610, align 4
  br label %612

612:                                              ; preds = %609, %600, %590
  %613 = phi i32 [ %596, %590 ], [ %608, %600 ], [ %611, %609 ]
  %614 = and i32 %587, 4
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %625, label %616

616:                                              ; preds = %612
  %617 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %519, i32 5, i32 1
  %618 = load i32, ptr %617, align 4
  %619 = icmp eq i32 %618, 4
  %620 = getelementptr %struct.drm_nouveau_gem_pushbuf_reloc, ptr %146, i32 %516, i32 6
  %621 = getelementptr %struct.drm_nouveau_gem_pushbuf_reloc, ptr %146, i32 %516, i32 5
  %622 = select i1 %619, ptr %620, ptr %621
  %623 = load i32, ptr %622, align 4
  %624 = or i32 %623, %613
  br label %625

625:                                              ; preds = %616, %612
  %626 = phi i32 [ %613, %612 ], [ %624, %616 ]
  %627 = call i32 @ttm_bo_wait(ptr noundef %549, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %637, label %629

629:                                              ; preds = %625
  %630 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 1
  %631 = load ptr, ptr %630, align 8
  %632 = getelementptr inbounds %struct.nouveau_drm, ptr %631, i32 0, i32 3
  %633 = load ptr, ptr %632, align 8
  %634 = getelementptr inbounds %struct.drm_device, ptr %633, i32 0, i32 2
  %635 = load ptr, ptr %634, align 4
  %636 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %635, ptr noundef nonnull @.str.29, ptr noundef %636, i32 noundef %627) #12
  br label %645

637:                                              ; preds = %625
  %638 = load i32, ptr %550, align 4
  %639 = lshr i32 %638, 2
  call void @nouveau_bo_wr32(ptr noundef %549, i32 noundef %639, i32 noundef %626) #10
  %640 = load i32, ptr %80, align 8
  br label %641

641:                                              ; preds = %637, %530
  %642 = phi i32 [ %640, %637 ], [ %515, %530 ]
  %643 = add nuw i32 %516, 1
  %644 = icmp ult i32 %643, %642
  br i1 %644, label %514, label %654

645:                                              ; preds = %629, %575, %556, %537, %522
  %646 = phi i32 [ -22, %522 ], [ -22, %537 ], [ -22, %556 ], [ %627, %629 ], [ %573, %575 ]
  %647 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 1
  %648 = load ptr, ptr %647, align 8
  %649 = getelementptr inbounds %struct.nouveau_drm, ptr %648, i32 0, i32 3
  %650 = load ptr, ptr %649, align 8
  %651 = getelementptr inbounds %struct.drm_device, ptr %650, i32 0, i32 2
  %652 = load ptr, ptr %651, align 4
  %653 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %652, ptr noundef nonnull @.str.6, ptr noundef %653, i32 noundef %646) #12
  br label %877

654:                                              ; preds = %641, %511, %499
  %655 = phi i1 [ false, %511 ], [ false, %641 ], [ true, %499 ]
  %656 = getelementptr inbounds %struct.nouveau_channel, ptr %27, i32 0, i32 13, i32 5
  %657 = load i32, ptr %656, align 4
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %694, label %659

659:                                              ; preds = %654
  %660 = load i32, ptr %52, align 4
  %661 = add i32 %660, 1
  %662 = call i32 @nouveau_dma_wait(ptr noundef nonnull %27, i32 noundef %661, i32 noundef 16) #10
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %664, label %667

664:                                              ; preds = %659
  %665 = load i32, ptr %52, align 4
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %853, label %675

667:                                              ; preds = %659
  %668 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 1
  %669 = load ptr, ptr %668, align 8
  %670 = getelementptr inbounds %struct.nouveau_drm, ptr %669, i32 0, i32 3
  %671 = load ptr, ptr %670, align 8
  %672 = getelementptr inbounds %struct.drm_device, ptr %671, i32 0, i32 2
  %673 = load ptr, ptr %672, align 4
  %674 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %673, ptr noundef nonnull @.str.7, ptr noundef %674, i32 noundef %662) #12
  br label %877

675:                                              ; preds = %675, %664
  %676 = phi i32 [ %691, %675 ], [ 0, %664 ]
  %677 = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %95, i32 %676
  %678 = load i32, ptr %677, align 8
  %679 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %678
  %680 = load i64, ptr %679, align 8
  %681 = trunc i64 %680 to i32
  %682 = inttoptr i32 %681 to ptr
  %683 = getelementptr inbounds %struct.nouveau_vma, ptr %682, i32 0, i32 3
  %684 = load i64, ptr %683, align 8
  %685 = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %95, i32 %676, i32 2
  %686 = load i64, ptr %685, align 8
  %687 = add i64 %686, %684
  %688 = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %95, i32 %676, i32 3
  %689 = load i64, ptr %688, align 8
  %690 = trunc i64 %689 to i32
  call void @nv50_dma_push(ptr noundef nonnull %27, i64 noundef %687, i32 noundef %690) #10
  %691 = add nuw i32 %676, 1
  %692 = load i32, ptr %52, align 4
  %693 = icmp ult i32 %691, %692
  br i1 %693, label %675, label %853

694:                                              ; preds = %654
  %695 = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 2, i32 3, i32 1, i32 2
  %696 = load i16, ptr %695, align 2
  %697 = icmp ugt i16 %696, 36
  %698 = getelementptr inbounds %struct.anon.79, ptr %27, i32 0, i32 1
  %699 = load ptr, ptr %698, align 8
  %700 = load i32, ptr %52, align 4
  br i1 %697, label %701, label %753

701:                                              ; preds = %694
  %702 = shl i32 %700, 1
  %703 = getelementptr inbounds %struct.nvif_push, ptr %699, i32 0, i32 4
  %704 = load ptr, ptr %703, align 4
  %705 = getelementptr i32, ptr %704, i32 %702
  %706 = getelementptr inbounds %struct.nvif_push, ptr %699, i32 0, i32 6
  %707 = load ptr, ptr %706, align 4
  %708 = icmp ult ptr %705, %707
  br i1 %708, label %715, label %709

709:                                              ; preds = %701
  %710 = load ptr, ptr %699, align 8
  %711 = call i32 %710(ptr noundef %699, i32 noundef %702) #10
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %713, label %718

713:                                              ; preds = %709
  %714 = load i32, ptr %52, align 4
  br label %715

715:                                              ; preds = %713, %701
  %716 = phi i32 [ %714, %713 ], [ %700, %701 ]
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %853, label %726

718:                                              ; preds = %709
  %719 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 1
  %720 = load ptr, ptr %719, align 8
  %721 = getelementptr inbounds %struct.nouveau_drm, ptr %720, i32 0, i32 3
  %722 = load ptr, ptr %721, align 8
  %723 = getelementptr inbounds %struct.drm_device, ptr %722, i32 0, i32 2
  %724 = load ptr, ptr %723, align 4
  %725 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %724, ptr noundef nonnull @.str.8, ptr noundef %725, i32 noundef %711) #12
  br label %877

726:                                              ; preds = %726, %715
  %727 = phi i32 [ %750, %726 ], [ 0, %715 ]
  %728 = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %95, i32 %727
  %729 = load i32, ptr %728, align 8
  %730 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %729
  %731 = load i64, ptr %730, align 8
  %732 = trunc i64 %731 to i32
  %733 = inttoptr i32 %732 to ptr
  %734 = load ptr, ptr %698, align 8
  %735 = getelementptr inbounds %struct.nouveau_bo, ptr %733, i32 0, i32 13
  %736 = load i64, ptr %735, align 8
  %737 = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %95, i32 %727, i32 2
  %738 = load i64, ptr %737, align 8
  %739 = add i64 %738, %736
  %740 = trunc i64 %739 to i32
  %741 = and i32 %740, -4
  %742 = or i32 %741, 2
  %743 = getelementptr inbounds %struct.nvif_push, ptr %734, i32 0, i32 4
  %744 = load ptr, ptr %743, align 4
  %745 = getelementptr i32, ptr %744, i32 1
  store ptr %745, ptr %743, align 4
  store i32 %742, ptr %744, align 4
  %746 = load ptr, ptr %698, align 8
  %747 = getelementptr inbounds %struct.nvif_push, ptr %746, i32 0, i32 4
  %748 = load ptr, ptr %747, align 4
  %749 = getelementptr i32, ptr %748, i32 1
  store ptr %749, ptr %747, align 4
  store i32 0, ptr %748, align 4
  %750 = add nuw i32 %727, 1
  %751 = load i32, ptr %52, align 4
  %752 = icmp ult i32 %750, %751
  br i1 %752, label %726, label %853

753:                                              ; preds = %694
  %754 = mul i32 %700, 34
  %755 = getelementptr inbounds %struct.nvif_push, ptr %699, i32 0, i32 4
  %756 = load ptr, ptr %755, align 4
  %757 = getelementptr i32, ptr %756, i32 %754
  %758 = getelementptr inbounds %struct.nvif_push, ptr %699, i32 0, i32 6
  %759 = load ptr, ptr %758, align 4
  %760 = icmp ult ptr %757, %759
  br i1 %760, label %767, label %761

761:                                              ; preds = %753
  %762 = load ptr, ptr %699, align 8
  %763 = call i32 %762(ptr noundef %699, i32 noundef %754) #10
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %765, label %774

765:                                              ; preds = %761
  %766 = load i32, ptr %52, align 4
  br label %767

767:                                              ; preds = %765, %753
  %768 = phi i32 [ %766, %765 ], [ %700, %753 ]
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %853, label %770

770:                                              ; preds = %767
  %771 = getelementptr inbounds %struct.nouveau_channel, ptr %27, i32 0, i32 10, i32 3
  %772 = getelementptr inbounds %struct.nouveau_channel, ptr %27, i32 0, i32 13, i32 2
  %773 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %1, i32 0, i32 7
  br label %782

774:                                              ; preds = %761
  %775 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 1
  %776 = load ptr, ptr %775, align 8
  %777 = getelementptr inbounds %struct.nouveau_drm, ptr %776, i32 0, i32 3
  %778 = load ptr, ptr %777, align 8
  %779 = getelementptr inbounds %struct.drm_device, ptr %778, i32 0, i32 2
  %780 = load ptr, ptr %779, align 4
  %781 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %780, ptr noundef nonnull @.str.9, ptr noundef %781, i32 noundef %763) #12
  br label %877

782:                                              ; preds = %849, %770
  %783 = phi i32 [ 0, %770 ], [ %850, %849 ]
  %784 = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %95, i32 %783
  %785 = load i32, ptr %784, align 8
  %786 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %785
  %787 = load i64, ptr %786, align 8
  %788 = trunc i64 %787 to i32
  %789 = inttoptr i32 %788 to ptr
  %790 = load i64, ptr %771, align 8
  %791 = load i32, ptr %772, align 8
  %792 = shl i32 %791, 2
  %793 = trunc i64 %790 to i32
  %794 = add i32 %793, 8
  %795 = add i32 %794, %792
  %796 = or i32 %795, 536870912
  %797 = load i32, ptr %773, align 8
  %798 = icmp eq i32 %796, %797
  br i1 %798, label %821, label %799, !prof !17

799:                                              ; preds = %782
  %800 = getelementptr inbounds %struct.nouveau_bo, ptr %789, i32 0, i32 6
  %801 = load ptr, ptr %800, align 8
  %802 = icmp eq ptr %801, null
  br i1 %802, label %803, label %812

803:                                              ; preds = %799
  %804 = getelementptr inbounds %struct.ttm_buffer_object, ptr %789, i32 0, i32 6
  %805 = load ptr, ptr %804, align 4
  %806 = getelementptr inbounds %struct.ttm_resource, ptr %805, i32 0, i32 1
  %807 = load i32, ptr %806, align 4
  %808 = call i32 @ttm_bo_kmap(ptr noundef %789, i32 noundef 0, i32 noundef %807, ptr noundef %800) #10
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %810, label %846

810:                                              ; preds = %803
  %811 = getelementptr inbounds %struct.nouveau_bo, ptr %789, i32 0, i32 12
  store i8 1, ptr %811, align 8
  br label %812

812:                                              ; preds = %810, %799
  %813 = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %95, i32 %783, i32 2
  %814 = load i64, ptr %813, align 8
  %815 = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %95, i32 %783, i32 3
  %816 = load i64, ptr %815, align 8
  %817 = add i64 %814, 17179869176
  %818 = add i64 %817, %816
  %819 = lshr i64 %818, 2
  %820 = trunc i64 %819 to i32
  call void @nouveau_bo_wr32(ptr noundef %789, i32 noundef %820, i32 noundef %796) #10
  br label %821

821:                                              ; preds = %812, %782
  %822 = load ptr, ptr %698, align 8
  %823 = getelementptr inbounds %struct.nouveau_bo, ptr %789, i32 0, i32 13
  %824 = load i64, ptr %823, align 8
  %825 = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %95, i32 %783, i32 2
  %826 = load i64, ptr %825, align 8
  %827 = add i64 %826, %824
  %828 = trunc i64 %827 to i32
  %829 = and i32 %828, 536870908
  %830 = or i32 %829, 536870912
  %831 = getelementptr inbounds %struct.nvif_push, ptr %822, i32 0, i32 4
  %832 = load ptr, ptr %831, align 4
  %833 = getelementptr i32, ptr %832, i32 1
  store ptr %833, ptr %831, align 4
  store i32 %830, ptr %832, align 4
  %834 = load ptr, ptr %698, align 8
  %835 = getelementptr inbounds %struct.nvif_push, ptr %834, i32 0, i32 4
  %836 = load ptr, ptr %835, align 4
  %837 = getelementptr i32, ptr %836, i32 1
  store ptr %837, ptr %835, align 4
  store i32 0, ptr %836, align 4
  br label %838

838:                                              ; preds = %838, %821
  %839 = phi i32 [ 0, %821 ], [ %844, %838 ]
  %840 = load ptr, ptr %698, align 8
  %841 = getelementptr inbounds %struct.nvif_push, ptr %840, i32 0, i32 4
  %842 = load ptr, ptr %841, align 4
  %843 = getelementptr i32, ptr %842, i32 1
  store ptr %843, ptr %841, align 4
  store i32 0, ptr %842, align 4
  %844 = add nuw nsw i32 %839, 1
  %845 = icmp eq i32 %844, 32
  br i1 %845, label %849, label %838

846:                                              ; preds = %803
  %847 = getelementptr inbounds %struct.nouveau_channel, ptr %27, i32 0, i32 13, i32 3
  %848 = load i32, ptr %847, align 4
  store i32 %848, ptr %772, align 8
  br label %877

849:                                              ; preds = %838
  %850 = add nuw i32 %783, 1
  %851 = load i32, ptr %52, align 4
  %852 = icmp ult i32 %850, %851
  br i1 %852, label %782, label %853

853:                                              ; preds = %849, %767, %726, %715, %675, %664
  %854 = call i32 @nouveau_fence_new(ptr noundef nonnull %27, i1 noundef zeroext false, ptr noundef nonnull %8) #10
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %867, label %856

856:                                              ; preds = %853
  %857 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 1
  %858 = load ptr, ptr %857, align 8
  %859 = getelementptr inbounds %struct.nouveau_drm, ptr %858, i32 0, i32 3
  %860 = load ptr, ptr %859, align 8
  %861 = getelementptr inbounds %struct.drm_device, ptr %860, i32 0, i32 2
  %862 = load ptr, ptr %861, align 4
  %863 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %862, ptr noundef nonnull @.str.10, ptr noundef %863, i32 noundef %854) #12
  %864 = getelementptr inbounds %struct.nouveau_channel, ptr %27, i32 0, i32 13, i32 3
  %865 = load i32, ptr %864, align 4
  %866 = getelementptr inbounds %struct.nouveau_channel, ptr %27, i32 0, i32 13, i32 2
  store i32 %865, ptr %866, align 8
  br label %877

867:                                              ; preds = %853
  br i1 %46, label %877, label %868

868:                                              ; preds = %867
  %869 = load ptr, ptr %8, align 4
  %870 = call i32 @nouveau_fence_wait(ptr noundef %869, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %872, label %877

872:                                              ; preds = %868
  %873 = load ptr, ptr %8, align 4
  %874 = call i32 @dma_fence_get_status(ptr noundef %873) #10
  %875 = icmp eq i32 %874, 1
  %876 = select i1 %875, i32 0, i32 %874
  br label %877

877:                                              ; preds = %872, %868, %867, %856, %846, %774, %718, %667, %645
  %878 = phi i1 [ false, %645 ], [ %655, %667 ], [ %655, %856 ], [ %655, %868 ], [ %655, %872 ], [ %655, %867 ], [ %655, %718 ], [ %655, %774 ], [ %655, %846 ]
  %879 = phi i32 [ %646, %645 ], [ %662, %667 ], [ %854, %856 ], [ %870, %868 ], [ %876, %872 ], [ 0, %867 ], [ %711, %718 ], [ %763, %774 ], [ %808, %846 ]
  %880 = load ptr, ptr %8, align 4
  call fastcc void @validate_fini_no_ticket(ptr noundef nonnull %7, ptr noundef nonnull %27, ptr noundef %880, ptr noundef %104) #10
  call void @nouveau_fence_unref(ptr noundef nonnull %8) #10
  br i1 %878, label %912, label %881

881:                                              ; preds = %877
  %882 = load i64, ptr %101, align 8
  %883 = trunc i64 %882 to i32
  %884 = inttoptr i32 %883 to ptr
  %885 = load i32, ptr %67, align 4
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %912, label %887

887:                                              ; preds = %908, %881
  %888 = phi i32 [ %909, %908 ], [ %885, %881 ]
  %889 = phi i32 [ %910, %908 ], [ 0, %881 ]
  %890 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %104, i32 %889, i32 5
  %891 = load i32, ptr %890, align 8
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %893, label %908

893:                                              ; preds = %887
  %894 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %884, i32 %889, i32 5
  %895 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %894, i32 16, i32 -1090519040) #13, !srcloc !23
  %896 = extractvalue { i32, i32 } %895, 0
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %898, label %912

898:                                              ; preds = %893
  %899 = tail call ptr @llvm.thread.pointer() #10
  %900 = getelementptr inbounds %struct.thread_info, ptr %899, i32 0, i32 3
  %901 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %900) #14, !srcloc !24
  %902 = and i32 %901, -13
  %903 = or i32 %902, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %903) #10, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !26
  %904 = call i32 @arm_copy_to_user(ptr noundef %894, ptr noundef %890, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %901) #10, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !26
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %906, label %912

906:                                              ; preds = %898
  %907 = load i32, ptr %67, align 4
  br label %908

908:                                              ; preds = %906, %887
  %909 = phi i32 [ %907, %906 ], [ %888, %887 ]
  %910 = add nuw i32 %889, 1
  %911 = icmp ult i32 %910, %909
  br i1 %911, label %887, label %912

912:                                              ; preds = %908, %898, %893, %881, %877, %509, %491, %488, %363
  %913 = phi i32 [ %489, %491 ], [ %879, %877 ], [ %510, %509 ], [ -512, %488 ], [ -512, %363 ], [ %879, %881 ], [ -14, %898 ], [ %879, %908 ], [ -14, %893 ]
  %914 = phi ptr [ %146, %491 ], [ %146, %877 ], [ %507, %509 ], [ %146, %488 ], [ %146, %363 ], [ %146, %881 ], [ %146, %893 ], [ %146, %908 ], [ %146, %898 ]
  %915 = icmp ugt ptr %914, inttoptr (i32 -4096 to ptr)
  br i1 %915, label %919, label %916

916:                                              ; preds = %912, %133
  %917 = phi ptr [ null, %133 ], [ %914, %912 ]
  %918 = phi i32 [ -22, %133 ], [ %913, %912 ]
  call void @kvfree(ptr noundef %917) #10
  br label %919

919:                                              ; preds = %916, %912
  %920 = phi i32 [ %918, %916 ], [ %913, %912 ]
  call void @kvfree(ptr noundef %104) #10
  call void @kvfree(ptr noundef %95) #10
  br label %921

921:                                              ; preds = %919, %42
  %922 = phi i32 [ 0, %42 ], [ %920, %919 ]
  %923 = getelementptr inbounds %struct.nouveau_channel, ptr %27, i32 0, i32 13, i32 5
  %924 = load i32, ptr %923, align 4
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %926, label %940

926:                                              ; preds = %921
  %927 = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 2, i32 3, i32 1, i32 2
  %928 = load i16, ptr %927, align 2
  %929 = icmp ugt i16 %928, 36
  br i1 %929, label %940, label %930

930:                                              ; preds = %926
  %931 = getelementptr inbounds %struct.nouveau_channel, ptr %27, i32 0, i32 10, i32 3
  %932 = load i64, ptr %931, align 8
  %933 = getelementptr inbounds %struct.nouveau_channel, ptr %27, i32 0, i32 13, i32 2
  %934 = load i32, ptr %933, align 8
  %935 = shl i32 %934, 2
  %936 = trunc i64 %932 to i32
  %937 = add i32 %936, 8
  %938 = add i32 %937, %935
  %939 = or i32 %938, 536870912
  br label %940

940:                                              ; preds = %930, %926, %921
  %941 = phi i32 [ %939, %930 ], [ 0, %921 ], [ 131072, %926 ]
  %942 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %1, i32 0, i32 7
  store i32 %941, ptr %942, align 8
  %943 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %1, i32 0, i32 8
  store i32 0, ptr %943, align 4
  %944 = call i32 @nouveau_abi16_put(ptr noundef nonnull %9, i32 noundef %922) #10
  br label %945

945:                                              ; preds = %940, %111, %97, %83, %70, %57, %40, %34, %14
  %946 = phi i32 [ %41, %40 ], [ %944, %940 ], [ %65, %57 ], [ %78, %70 ], [ %91, %83 ], [ %99, %97 ], [ %113, %111 ], [ %35, %34 ], [ -12, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  ret i32 %946
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_abi16_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_abi16_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @u_memcpya(i64 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = mul i32 %2, %1
  %5 = tail call noalias ptr @kvmalloc_node(i32 noundef %4, i32 noundef 3264, i32 noundef -1) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %3
  %8 = trunc i64 %0 to i32
  %9 = inttoptr i32 %8 to ptr
  %10 = icmp slt i32 %4, 0
  %11 = load i1, ptr @check_copy_size.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %7
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %15

15:                                               ; preds = %14, %7
  br i1 %10, label %33, label %16, !prof !8

16:                                               ; preds = %15
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 %4, i32 -1090519040) #13, !srcloc !27
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27, !prof !17

20:                                               ; preds = %16
  %21 = tail call ptr @llvm.thread.pointer() #10
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #14, !srcloc !24
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #10, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !26
  %26 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %9, i32 noundef %4) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #10, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !26
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i32 [ %26, %20 ], [ %4, %16 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !17

30:                                               ; preds = %27
  %31 = sub i32 %4, %28
  %32 = getelementptr i8, ptr %5, i32 %31
  tail call void @llvm.memset.p0.i32(ptr align 1 %32, i8 0, i32 %28, i1 false) #10
  br label %33

33:                                               ; preds = %30, %15
  tail call void @kvfree(ptr noundef nonnull %5) #10
  br label %34

34:                                               ; preds = %33, %27, %3
  %35 = phi ptr [ inttoptr (i32 -14 to ptr), %33 ], [ inttoptr (i32 -12 to ptr), %3 ], [ %5, %27 ]
  ret ptr %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_dma_wait(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_dma_push(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_kmap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fence_new(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fence_wait(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_get_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_gem_ioctl_cpu_prep(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_nouveau_gem_cpu_prep, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %1, align 4
  %7 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %6) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %3
  %10 = and i32 %5, 4
  %11 = icmp ne i32 %10, 0
  %12 = and i32 %5, 1
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.drm_gem_object, ptr %7, i32 0, i32 9
  %15 = load ptr, ptr %14, align 8
  %16 = select i1 %13, i32 3000, i32 0
  %17 = tail call i32 @dma_resv_wait_timeout(ptr noundef %15, i1 noundef zeroext %11, i1 noundef zeroext true, i32 noundef %16) #10
  %18 = icmp eq i32 %17, 0
  %19 = tail call i32 @llvm.smin.i32(i32 %17, i32 0)
  %20 = select i1 %18, i32 -16, i32 %19
  tail call void @nouveau_bo_sync_for_cpu(ptr noundef nonnull %7) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #10, !srcloc !15
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #10, !srcloc !16
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = icmp sgt i32 %22, 0
  br i1 %25, label %28, label %26, !prof !17

26:                                               ; preds = %24
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #10
  br label %28

27:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %7) #10
  br label %28

28:                                               ; preds = %27, %26, %24, %3
  %29 = phi i32 [ -2, %3 ], [ %20, %24 ], [ %20, %26 ], [ %20, %27 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_wait_timeout(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_sync_for_cpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_gem_ioctl_cpu_fini(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4
  %5 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %4) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  tail call void @nouveau_bo_sync_for_device(ptr noundef nonnull %5) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #10, !srcloc !15
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #10, !srcloc !16
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %15, label %13, !prof !17

13:                                               ; preds = %11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #10
  br label %15

14:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %5) #10
  br label %15

15:                                               ; preds = %14, %13, %11, %3
  %16 = phi i32 [ -2, %3 ], [ 0, %11 ], [ 0, %13 ], [ 0, %14 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_sync_for_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_gem_ioctl_info(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8
  %5 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %4) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @nouveau_gem_info(ptr noundef %2, ptr noundef nonnull %5, ptr noundef %1)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #10, !srcloc !15
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #10, !srcloc !16
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %16, label %14, !prof !17

14:                                               ; preds = %12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #10
  br label %16

15:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %5) #10
  br label %16

16:                                               ; preds = %15, %14, %12, %3
  %17 = phi i32 [ -2, %3 ], [ %8, %12 ], [ %8, %14 ], [ %8, %15 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_gem_object_delete_work(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.nouveau_gem_object_unmap, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store ptr %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.nouveau_vma, ptr %4, i32 0, i32 5
  tail call void @nouveau_fence_unref(ptr noundef %5) #10
  call void @nouveau_vma_del(ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_cli_work_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vma_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_vm_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_vm_close(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_ttm_fault(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @ttm_bo_vm_reserve(ptr noundef %4, ptr noundef %0) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = tail call i32 @nouveau_ttm_fault_reserve_notify(ptr noundef %4) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  tail call void @nouveau_bo_del_io_reserve_lru(ptr noundef %4) #10
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @vm_get_page_prot(i32 noundef %12) #10
  %14 = tail call i32 @ttm_bo_vm_fault_reserved(ptr noundef %0, i32 noundef %13, i32 noundef 16) #10
  tail call void @nouveau_bo_add_io_reserve_lru(ptr noundef %4) #10
  %15 = icmp eq i32 %14, 1024
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16, %10, %7
  %22 = phi i32 [ %8, %7 ], [ 1024, %16 ], [ %14, %10 ]
  %23 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 9
  %24 = load ptr, ptr %23, align 8
  tail call void @ww_mutex_unlock(ptr noundef %24) #10
  br label %25

25:                                               ; preds = %21, %16, %1
  %26 = phi i32 [ %22, %21 ], [ %5, %1 ], [ 1024, %16 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_vm_access(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_vm_reserve(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_ttm_fault_reserve_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_del_io_reserve_lru(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_vm_fault_reserved(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_add_io_reserve_lru(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @validate_fini_no_ticket(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = load volatile ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %75, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %2, null
  %9 = getelementptr inbounds %struct.nouveau_channel, ptr %1, i32 0, i32 3
  %10 = getelementptr inbounds %struct.dma_fence, ptr %2, i32 0, i32 6
  br label %11

11:                                               ; preds = %72, %7
  %12 = phi ptr [ %5, %7 ], [ %73, %72 ]
  %13 = getelementptr i8, ptr %12, i32 -428
  %14 = getelementptr i8, ptr %12, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %3, i32 %15
  br i1 %8, label %40, label %17, !prof !8

17:                                               ; preds = %11
  %18 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %3, i32 %15, i32 3
  %19 = load i32, ptr %18, align 8
  %20 = icmp ne i32 %19, 0
  tail call void @nouveau_bo_fence(ptr noundef %13, ptr noundef nonnull %2, i1 noundef zeroext %20) #10
  %21 = load ptr, ptr %9, align 8
  %22 = getelementptr inbounds %struct.nouveau_vmm, ptr %21, i32 0, i32 1, i32 0, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = icmp ugt i32 %23, -2147463156
  br i1 %24, label %25, label %40

25:                                               ; preds = %17
  %26 = load i64, ptr %16, align 8
  %27 = trunc i64 %26 to i32
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.nouveau_vma, ptr %28, i32 0, i32 5
  tail call void @nouveau_fence_unref(ptr noundef %29) #10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #10, !srcloc !15
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #10, !srcloc !28
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33, !prof !8

33:                                               ; preds = %25
  %34 = add i32 %31, 1
  %35 = or i32 %34, %31
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %39, label %37, !prof !17

37:                                               ; preds = %33, %25
  %38 = phi i32 [ 2, %25 ], [ 1, %33 ]
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef %38) #10
  br label %39

39:                                               ; preds = %37, %33
  store ptr %2, ptr %29, align 4
  br label %40

40:                                               ; preds = %39, %17, %11
  %41 = getelementptr i8, ptr %12, i32 12
  %42 = load i8, ptr %41, align 8, !range !29
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44, !prof !17

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %12, i32 -36
  tail call void @ttm_bo_kunmap(ptr noundef %45) #10
  store i8 0, ptr %41, align 8
  br label %46

46:                                               ; preds = %44, %40
  %47 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %12, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %49, ptr %48, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  %51 = getelementptr i8, ptr %12, i32 -4
  store ptr null, ptr %51, align 8
  %52 = getelementptr i8, ptr %12, i32 -220
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.ttm_device, ptr %53, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %54) #10
  %55 = getelementptr i8, ptr %12, i32 -200
  %56 = load ptr, ptr %55, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %13, ptr noundef %56, ptr noundef null) #10
  %57 = load ptr, ptr %52, align 8
  %58 = getelementptr inbounds %struct.ttm_device, ptr %57, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %59 = load i16, ptr %58, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %58, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %61 = getelementptr i8, ptr %12, i32 -268
  %62 = load ptr, ptr %61, align 8
  tail call void @ww_mutex_unlock(ptr noundef %62) #10
  %63 = icmp eq ptr %13, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #10, !srcloc !15
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #10, !srcloc !16
  %66 = extractvalue { i32, i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = icmp sgt i32 %66, 0
  br i1 %69, label %72, label %70, !prof !17

70:                                               ; preds = %68
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef 3) #10
  br label %72

71:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %13) #10
  br label %72

72:                                               ; preds = %71, %70, %68, %46
  %73 = load volatile ptr, ptr %0, align 4
  %74 = icmp eq ptr %73, %0
  br i1 %74, label %75, label %11

75:                                               ; preds = %72, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_fence(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_kunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_validate(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fence_sync(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_placement_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_wait(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind allocsize(0) }

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
!10 = !{i64 2148857597}
!11 = !{i64 2148853421}
!12 = !{i64 2148853496, i64 2148853523, i64 2148853570, i64 2148853592, i64 2148853620, i64 2148853640}
!13 = !{i64 2148880600}
!14 = !{i64 2148292059}
!15 = !{i64 688993, i64 2148178964, i64 2148178990, i64 2148179037, i64 2148179059, i64 2148179087, i64 2148179107}
!16 = !{i64 2148194194, i64 2148194226, i64 2148194255, i64 2148194289, i64 2148194320, i64 2148194343}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2148925585}
!19 = !{i32 0, i32 33}
!20 = !{i64 2148191063, i64 2148191095, i64 2148191124, i64 2148191158, i64 2148191189, i64 2148191212}
!21 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!22 = !{!"branch_weights", i32 1, i32 1}
!23 = !{i64 2151482817, i64 2151482842}
!24 = !{i64 3978351}
!25 = !{i64 3978548}
!26 = !{i64 2151463827}
!27 = !{i64 2151482239, i64 2151482264}
!28 = !{i64 2148191837, i64 2148191869, i64 2148191898, i64 2148191932, i64 2148191963, i64 2148191986}
!29 = !{i8 0, i8 2}
