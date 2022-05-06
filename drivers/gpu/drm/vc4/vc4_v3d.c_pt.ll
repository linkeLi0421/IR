; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_v3d.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_v3d.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.74, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.75, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.73 = type { i32, ptr }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.74 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.75 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc4_v3d = type { ptr, ptr, ptr, ptr, %struct.debugfs_regset32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.vc4_bo = type { %struct.drm_gem_cma_object, i64, i64, i8, %struct.list_head, i32, %struct.list_head, ptr, i32, %struct.refcount_struct, i32, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }

@vc4_v3d_dt_match = dso_local constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-v3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-v3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,vc4-v3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [8 x i8] c"vc4_v3d\00", align 1
@vc4_v3d_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_v3d_runtime_suspend, ptr @vc4_v3d_runtime_resume, ptr null }, align 4
@vc4_v3d_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @vc4_v3d_dev_probe, ptr @vc4_v3d_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vc4_v3d_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_v3d_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [99 x i8] c"Failed to allocate memory for tile binning: %d. You may need to enable CMA or give it more memory.\00", align 1
@bin_bo_alloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"drivers/gpu/drm/vc4/vc4_v3d.c\00", align 1
@bin_bo_release.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vc4_v3d_ops = internal constant %struct.component_ops { ptr @vc4_v3d_bind, ptr @vc4_v3d_unbind }, align 4
@v3d_regs = internal constant [78 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.8, i32 0 }, %struct.debugfs_reg32 { ptr @.str.9, i32 4 }, %struct.debugfs_reg32 { ptr @.str.10, i32 8 }, %struct.debugfs_reg32 { ptr @.str.11, i32 16 }, %struct.debugfs_reg32 { ptr @.str.12, i32 32 }, %struct.debugfs_reg32 { ptr @.str.13, i32 36 }, %struct.debugfs_reg32 { ptr @.str.14, i32 48 }, %struct.debugfs_reg32 { ptr @.str.15, i32 52 }, %struct.debugfs_reg32 { ptr @.str.16, i32 56 }, %struct.debugfs_reg32 { ptr @.str.17, i32 256 }, %struct.debugfs_reg32 { ptr @.str.18, i32 260 }, %struct.debugfs_reg32 { ptr @.str.19, i32 264 }, %struct.debugfs_reg32 { ptr @.str.20, i32 268 }, %struct.debugfs_reg32 { ptr @.str.21, i32 272 }, %struct.debugfs_reg32 { ptr @.str.22, i32 276 }, %struct.debugfs_reg32 { ptr @.str.23, i32 280 }, %struct.debugfs_reg32 { ptr @.str.24, i32 284 }, %struct.debugfs_reg32 { ptr @.str.25, i32 288 }, %struct.debugfs_reg32 { ptr @.str.26, i32 292 }, %struct.debugfs_reg32 { ptr @.str.27, i32 296 }, %struct.debugfs_reg32 { ptr @.str.28, i32 300 }, %struct.debugfs_reg32 { ptr @.str.29, i32 304 }, %struct.debugfs_reg32 { ptr @.str.30, i32 308 }, %struct.debugfs_reg32 { ptr @.str.31, i32 312 }, %struct.debugfs_reg32 { ptr @.str.32, i32 768 }, %struct.debugfs_reg32 { ptr @.str.33, i32 772 }, %struct.debugfs_reg32 { ptr @.str.34, i32 776 }, %struct.debugfs_reg32 { ptr @.str.35, i32 780 }, %struct.debugfs_reg32 { ptr @.str.36, i32 784 }, %struct.debugfs_reg32 { ptr @.str.37, i32 1040 }, %struct.debugfs_reg32 { ptr @.str.38, i32 1044 }, %struct.debugfs_reg32 { ptr @.str.39, i32 1048 }, %struct.debugfs_reg32 { ptr @.str.40, i32 1072 }, %struct.debugfs_reg32 { ptr @.str.41, i32 1076 }, %struct.debugfs_reg32 { ptr @.str.42, i32 1080 }, %struct.debugfs_reg32 { ptr @.str.43, i32 1084 }, %struct.debugfs_reg32 { ptr @.str.44, i32 1280 }, %struct.debugfs_reg32 { ptr @.str.45, i32 1284 }, %struct.debugfs_reg32 { ptr @.str.46, i32 1648 }, %struct.debugfs_reg32 { ptr @.str.47, i32 1652 }, %struct.debugfs_reg32 { ptr @.str.48, i32 1664 }, %struct.debugfs_reg32 { ptr @.str.49, i32 1668 }, %struct.debugfs_reg32 { ptr @.str.50, i32 1672 }, %struct.debugfs_reg32 { ptr @.str.51, i32 1676 }, %struct.debugfs_reg32 { ptr @.str.52, i32 1680 }, %struct.debugfs_reg32 { ptr @.str.53, i32 1684 }, %struct.debugfs_reg32 { ptr @.str.54, i32 1688 }, %struct.debugfs_reg32 { ptr @.str.55, i32 1692 }, %struct.debugfs_reg32 { ptr @.str.56, i32 1696 }, %struct.debugfs_reg32 { ptr @.str.57, i32 1700 }, %struct.debugfs_reg32 { ptr @.str.58, i32 1704 }, %struct.debugfs_reg32 { ptr @.str.59, i32 1708 }, %struct.debugfs_reg32 { ptr @.str.60, i32 1712 }, %struct.debugfs_reg32 { ptr @.str.61, i32 1716 }, %struct.debugfs_reg32 { ptr @.str.62, i32 1720 }, %struct.debugfs_reg32 { ptr @.str.63, i32 1724 }, %struct.debugfs_reg32 { ptr @.str.64, i32 1728 }, %struct.debugfs_reg32 { ptr @.str.65, i32 1732 }, %struct.debugfs_reg32 { ptr @.str.66, i32 1736 }, %struct.debugfs_reg32 { ptr @.str.67, i32 1740 }, %struct.debugfs_reg32 { ptr @.str.68, i32 1744 }, %struct.debugfs_reg32 { ptr @.str.69, i32 1748 }, %struct.debugfs_reg32 { ptr @.str.70, i32 1752 }, %struct.debugfs_reg32 { ptr @.str.71, i32 1756 }, %struct.debugfs_reg32 { ptr @.str.72, i32 1760 }, %struct.debugfs_reg32 { ptr @.str.73, i32 1764 }, %struct.debugfs_reg32 { ptr @.str.74, i32 1768 }, %struct.debugfs_reg32 { ptr @.str.75, i32 1772 }, %struct.debugfs_reg32 { ptr @.str.76, i32 1776 }, %struct.debugfs_reg32 { ptr @.str.77, i32 1780 }, %struct.debugfs_reg32 { ptr @.str.78, i32 1784 }, %struct.debugfs_reg32 { ptr @.str.79, i32 1788 }, %struct.debugfs_reg32 { ptr @.str.80, i32 3840 }, %struct.debugfs_reg32 { ptr @.str.81, i32 3844 }, %struct.debugfs_reg32 { ptr @.str.82, i32 3848 }, %struct.debugfs_reg32 { ptr @.str.83, i32 3852 }, %struct.debugfs_reg32 { ptr @.str.84, i32 3856 }, %struct.debugfs_reg32 { ptr @.str.85, i32 3872 }], align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to get V3D clock: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"V3D_IDENT0 read 0x%08x instead of 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to install IRQ handler\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"v3d_ident\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"v3d_regs\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"V3D_IDENT0\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"V3D_IDENT1\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"V3D_IDENT2\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"V3D_SCRATCH\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"V3D_L2CACTL\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"V3D_SLCACTL\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"V3D_INTCTL\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"V3D_INTENA\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"V3D_INTDIS\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"V3D_CT0CS\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"V3D_CT1CS\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"V3D_CT0EA\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"V3D_CT1EA\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"V3D_CT0CA\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"V3D_CT1CA\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"V3D_CT00RA0\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"V3D_CT01RA0\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"V3D_CT0LC\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"V3D_CT1LC\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"V3D_CT0PC\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"V3D_CT1PC\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"V3D_PCS\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"V3D_BFC\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"V3D_RFC\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"V3D_BPCA\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"V3D_BPCS\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"V3D_BPOA\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"V3D_BPOS\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"V3D_BXCF\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"V3D_SQRSV0\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"V3D_SQRSV1\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"V3D_SQCNTL\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"V3D_SRQPC\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"V3D_SRQUA\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"V3D_SRQUL\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"V3D_SRQCS\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"V3D_VPACNTL\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"V3D_VPMBASE\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"V3D_PCTRC\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"V3D_PCTRE\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"V3D_PCTR(0)\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"V3D_PCTRS(0)\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"V3D_PCTR(1)\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"V3D_PCTRS(1)\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"V3D_PCTR(2)\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"V3D_PCTRS(2)\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"V3D_PCTR(3)\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"V3D_PCTRS(3)\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"V3D_PCTR(4)\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"V3D_PCTRS(4)\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"V3D_PCTR(5)\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"V3D_PCTRS(5)\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"V3D_PCTR(6)\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"V3D_PCTRS(6)\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"V3D_PCTR(7)\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"V3D_PCTRS(7)\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"V3D_PCTR(8)\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"V3D_PCTRS(8)\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"V3D_PCTR(9)\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"V3D_PCTRS(9)\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"V3D_PCTR(10)\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"V3D_PCTRS(10)\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"V3D_PCTR(11)\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"V3D_PCTRS(11)\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"V3D_PCTR(12)\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"V3D_PCTRS(12)\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"V3D_PCTR(13)\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"V3D_PCTRS(13)\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"V3D_PCTR(14)\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"V3D_PCTRS(14)\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"V3D_PCTR(15)\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"V3D_PCTRS(15)\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"V3D_DBGE\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"V3D_FDBGO\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"V3D_FDBGB\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"V3D_FDBGR\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"V3D_FDBGS\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"V3D_ERRSTAT\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"Revision:   %d\0A\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"Slices:     %d\0A\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"TMUs:       %d\0A\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"QPUs:       %d\0A\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"Semaphores: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_v3d_pm_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 32
  tail call void @mutex_lock(ptr noundef %2) #5
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 30
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 8
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vc4_v3d, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %13 = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #5
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load i32, ptr %3, align 8
  %17 = add i32 %16, -1
  store i32 %17, ptr %3, align 8
  br label %18

18:                                               ; preds = %15, %7, %1
  %19 = phi i32 [ %13, %15 ], [ 0, %7 ], [ 0, %1 ]
  tail call void @mutex_unlock(ptr noundef %2) #5
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_v3d_pm_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 32
  tail call void @mutex_lock(ptr noundef %2) #5
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 30
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, -1
  store i32 %5, ptr %3, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vc4_v3d, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i64 @ktime_get_mono_fast_ns() #5
  %13 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %12, ptr %13, align 8
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr inbounds %struct.vc4_v3d, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  %18 = tail call i32 @__pm_runtime_suspend(ptr noundef %17, i32 noundef 13) #5
  br label %19

19:                                               ; preds = %7, %1
  tail call void @mutex_unlock(ptr noundef %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_v3d_get_bin_slot(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 19
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 26
  %4 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 17
  %5 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 17, i32 1
  br label %6

6:                                                ; preds = %28, %1
  %7 = phi i64 [ 0, %1 ], [ %26, %28 ]
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #5
  %9 = load i32, ptr %3, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = xor i32 %9, -1
  %13 = tail call i32 @llvm.cttz.i32(i32 %12, i1 true), !range !8
  %14 = shl nuw i32 1, %13
  %15 = or i32 %14, %9
  store i32 %15, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %8) #5
  br label %31

16:                                               ; preds = %6
  %17 = load volatile ptr, ptr %4, align 4
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i8, ptr %20, i32 -60
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i64, ptr %21, align 8
  br label %25

25:                                               ; preds = %23, %19, %16
  %26 = phi i64 [ %24, %23 ], [ %7, %19 ], [ %7, %16 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %8) #5
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @vc4_wait_for_seqno(ptr noundef %0, i64 noundef %26, i64 noundef -1, i1 noundef zeroext true) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %6, label %31

31:                                               ; preds = %28, %25, %11
  %32 = phi i32 [ %13, %11 ], [ -12, %25 ], [ %29, %28 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_wait_for_seqno(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_v3d_bin_bo_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 39
  tail call void @mutex_lock(ptr noundef %4) #5
  %5 = icmp ne ptr %1, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 1, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %103

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 24
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #5, !srcloc !10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #5, !srcloc !11
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !12

18:                                               ; preds = %13
  %19 = add i32 %16, 1
  %20 = or i32 %19, %16
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %98, label %22, !prof !13

22:                                               ; preds = %18, %13
  %23 = phi i32 [ 2, %13 ], [ 1, %18 ]
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef %23) #5
  br label %98

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %96, label %28

28:                                               ; preds = %24
  store volatile ptr %3, ptr %3, align 8
  %29 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %29, align 4
  %30 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 25
  %31 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 26
  %32 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 27
  %33 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 40
  %34 = getelementptr inbounds %struct.vc4_v3d, ptr %26, i32 0, i32 1
  %35 = call ptr @vc4_bo_create(ptr noundef %0, i32 noundef 16777216, i1 noundef zeroext true, i32 noundef 4) #5
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %42

37:                                               ; preds = %66, %28
  %38 = phi ptr [ %35, %28 ], [ %71, %66 ]
  %39 = ptrtoint ptr %38 to i32
  %40 = load ptr, ptr %34, align 4
  %41 = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.1, i32 noundef %39) #6
  br label %73

42:                                               ; preds = %66, %28
  %43 = phi ptr [ %71, %66 ], [ %35, %28 ]
  %44 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.drm_gem_object, ptr %43, i32 0, i32 5
  %47 = load i32, ptr %46, align 8
  %48 = add i32 %45, -1
  %49 = add i32 %48, %47
  %50 = xor i32 %49, %45
  %51 = icmp ult i32 %50, 268435456
  br i1 %51, label %52, label %66

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.drm_gem_object, ptr %43, i32 0, i32 5
  store ptr %43, ptr %10, align 4
  store i32 524288, ptr %30, align 8
  store i32 0, ptr %31, align 4
  store i32 0, ptr %32, align 8
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, -524288
  %56 = icmp ne i32 %55, 16777216
  %57 = load i1, ptr @bin_bo_alloc.__already_done, align 1
  %58 = xor i1 %57, true
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %61, !prof !12

60:                                               ; preds = %52
  store i1 true, ptr @bin_bo_alloc.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 286, i32 noundef 9, ptr noundef null) #5
  br label %61

61:                                               ; preds = %60, %52
  store volatile i32 1, ptr %33, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  call void @arm_heavy_mb() #5
  %62 = load ptr, ptr %25, align 4
  %63 = getelementptr inbounds %struct.vc4_v3d, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 4) #5, !srcloc !15
  br label %73

66:                                               ; preds = %42
  %67 = getelementptr inbounds %struct.vc4_bo, ptr %43, i32 0, i32 4
  %68 = load ptr, ptr %3, align 8
  %69 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr %67, ptr %69, align 4
  store ptr %68, ptr %67, align 4
  %70 = getelementptr inbounds %struct.vc4_bo, ptr %43, i32 0, i32 4, i32 1
  store ptr %3, ptr %70, align 4
  store volatile ptr %67, ptr %3, align 8
  %71 = call ptr @vc4_bo_create(ptr noundef %0, i32 noundef 16777216, i1 noundef zeroext true, i32 noundef 4) #5
  %72 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %37, label %42

73:                                               ; preds = %61, %37
  %74 = phi i32 [ %39, %37 ], [ 0, %61 ]
  %75 = load volatile ptr, ptr %3, align 8
  %76 = icmp eq ptr %75, %3
  br i1 %76, label %96, label %77

77:                                               ; preds = %93, %73
  %78 = load ptr, ptr %29, align 4
  %79 = getelementptr i8, ptr %78, i32 -244
  %80 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr %78, align 4
  %83 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  store ptr %81, ptr %83, align 4
  store volatile ptr %82, ptr %81, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %78, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %80, align 4
  %84 = icmp eq ptr %79, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %77
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %79) #5, !srcloc !10
  %86 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %79, ptr nonnull %79, i32 1, ptr nonnull elementtype(i32) %79) #5, !srcloc !17
  %87 = extractvalue { i32, i32, i32 } %86, 0
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = icmp sgt i32 %87, 0
  br i1 %90, label %93, label %91, !prof !13

91:                                               ; preds = %89
  call void @refcount_warn_saturate(ptr noundef nonnull %79, i32 noundef 3) #5
  br label %93

92:                                               ; preds = %85
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !18
  call void @drm_gem_object_free(ptr noundef nonnull %79) #5, !callees !19
  br label %93

93:                                               ; preds = %92, %91, %89, %77
  %94 = load volatile ptr, ptr %3, align 8
  %95 = icmp eq ptr %94, %3
  br i1 %95, label %96, label %77

96:                                               ; preds = %93, %73, %24
  %97 = phi i32 [ -19, %24 ], [ %74, %73 ], [ %74, %93 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  br label %98

98:                                               ; preds = %96, %22, %18
  %99 = phi i32 [ %97, %96 ], [ 0, %18 ], [ 0, %22 ]
  %100 = icmp eq i32 %99, 0
  %101 = and i1 %5, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i8 1, ptr %1, align 1
  br label %103

103:                                              ; preds = %102, %98, %6
  %104 = phi i32 [ 0, %6 ], [ 0, %102 ], [ %99, %98 ]
  call void @mutex_unlock(ptr noundef %4) #5
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_v3d_bin_bo_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 39
  tail call void @mutex_lock(ptr noundef %2) #5
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #5, !srcloc !10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #5, !srcloc !17
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %31, label %9, !prof !13

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 3) #5
  br label %31

10:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !18
  %11 = getelementptr %struct.vc4_dev, ptr %0, i32 0, i32 24
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = load i1, ptr @bin_bo_release.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !12

17:                                               ; preds = %10
  store i1 true, ptr @bin_bo_release.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 342, i32 noundef 9, ptr noundef null) #5
  br label %18

18:                                               ; preds = %17, %10
  br i1 %13, label %31, label %19

19:                                               ; preds = %18
  %20 = load ptr, ptr %11, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %20) #5, !srcloc !10
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %20, ptr nonnull %20, i32 1, ptr nonnull elementtype(i32) %20) #5, !srcloc !17
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = icmp sgt i32 %24, 0
  br i1 %27, label %30, label %28, !prof !13

28:                                               ; preds = %26
  tail call void @refcount_warn_saturate(ptr noundef nonnull %20, i32 noundef 3) #5
  br label %30

29:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %20) #5, !callees !19
  br label %30

30:                                               ; preds = %29, %28, %26, %19
  store ptr null, ptr %11, align 4
  br label %31

31:                                               ; preds = %30, %18, %9, %7
  tail call void @mutex_unlock(ptr noundef %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_v3d_dev_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @vc4_v3d_ops) #5
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_v3d_dev_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @vc4_v3d_ops) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_bo_create(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_v3d_bind(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 32, i32 noundef 3520) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %70, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %7, ptr %10, align 8
  %11 = getelementptr inbounds %struct.vc4_v3d, ptr %7, i32 0, i32 1
  store ptr %4, ptr %11, align 4
  %12 = tail call ptr @vc4_ioremap_regs(ptr noundef %4, i32 noundef 0) #5
  %13 = getelementptr inbounds %struct.vc4_v3d, ptr %7, i32 0, i32 2
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = ptrtoint ptr %12 to i32
  br label %70

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.vc4_v3d, ptr %7, i32 0, i32 4
  %19 = getelementptr inbounds %struct.vc4_v3d, ptr %7, i32 0, i32 4, i32 2
  store ptr %12, ptr %19, align 4
  store ptr @v3d_regs, ptr %18, align 4
  %20 = getelementptr inbounds %struct.vc4_v3d, ptr %7, i32 0, i32 4, i32 1
  store i32 78, ptr %20, align 4
  %21 = getelementptr inbounds %struct.vc4_dev, ptr %6, i32 0, i32 3
  store ptr %7, ptr %21, align 4
  store ptr %6, ptr %7, align 4
  %22 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef null) #5
  %23 = getelementptr inbounds %struct.vc4_v3d, ptr %7, i32 0, i32 3
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = ptrtoint ptr %22 to i32
  switch i32 %26, label %28 [
    i32 -2, label %27
    i32 -517, label %70
  ]

27:                                               ; preds = %25
  store ptr null, ptr %23, align 4
  br label %29

28:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %26) #6
  br label %70

29:                                               ; preds = %27, %17
  %30 = load ptr, ptr %21, align 4
  %31 = getelementptr inbounds %struct.vc4_v3d, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %34 = icmp eq i32 %33, 38024022
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %21, align 4
  %37 = getelementptr inbounds %struct.vc4_v3d, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !22
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %39, i32 noundef 38024022) #5
  br label %70

40:                                               ; preds = %29
  %41 = load ptr, ptr %23, align 4
  %42 = tail call i32 @clk_prepare(ptr noundef %41) #5
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = tail call i32 @clk_enable(ptr noundef %41) #5
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void @clk_unprepare(ptr noundef %41) #5
  br label %70

48:                                               ; preds = %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %49 = load ptr, ptr %21, align 4
  %50 = getelementptr inbounds %struct.vc4_v3d, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %53 = load ptr, ptr %21, align 4
  %54 = getelementptr inbounds %struct.vc4_v3d, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 0) #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %57 = load ptr, ptr %21, align 4
  %58 = getelementptr inbounds %struct.vc4_v3d, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 1284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 0) #5, !srcloc !15
  %61 = tail call i32 @platform_get_irq(ptr noundef %4, i32 noundef 0) #5
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %48
  %64 = getelementptr inbounds %struct.vc4_dev, ptr %6, i32 0, i32 1
  store i32 %61, ptr %64, align 4
  %65 = tail call i32 @vc4_irq_install(ptr noundef %6, i32 noundef %61) #5
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #5
  br label %70

68:                                               ; preds = %63
  %69 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #5
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %0, i1 noundef zeroext true) #5
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %0, i32 noundef 40) #5
  tail call void @pm_runtime_enable(ptr noundef %0) #5
  tail call void @vc4_debugfs_add_file(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull @vc4_v3d_debugfs_ident, ptr noundef null) #5
  tail call void @vc4_debugfs_add_regset32(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef %18) #5
  br label %70

70:                                               ; preds = %68, %67, %48, %47, %40, %35, %28, %25, %15, %3
  %71 = phi i32 [ %16, %15 ], [ -22, %35 ], [ %65, %67 ], [ 0, %68 ], [ -12, %3 ], [ %26, %28 ], [ %61, %48 ], [ %26, %25 ], [ %45, %47 ], [ %42, %40 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_v3d_unbind(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #5
  tail call void @vc4_irq_uninstall(ptr noundef %5) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %6 = getelementptr inbounds %struct.vc4_dev, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vc4_v3d, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.vc4_v3d, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #5, !srcloc !15
  store ptr null, ptr %6, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_ioremap_regs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_irq_install(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_v3d_debugfs_ident(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vc4_dev, ptr %7, i32 0, i32 32
  tail call void @mutex_lock(ptr noundef %8) #5
  %9 = getelementptr inbounds %struct.vc4_dev, ptr %7, i32 0, i32 30
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.vc4_dev, ptr %7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.vc4_v3d, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %19 = tail call i32 @__pm_runtime_resume(ptr noundef %18, i32 noundef 4) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, ptr %9, align 8
  %23 = add i32 %22, -1
  store i32 %23, ptr %9, align 8
  br label %56

24:                                               ; preds = %13, %2
  tail call void @mutex_unlock(ptr noundef %8) #5
  %25 = getelementptr inbounds %struct.vc4_dev, ptr %7, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.vc4_v3d, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !28
  %31 = lshr i32 %30, 4
  %32 = and i32 %31, 15
  %33 = lshr i32 %30, 12
  %34 = and i32 %33, 15
  %35 = lshr i32 %30, 8
  %36 = and i32 %35, 15
  %37 = and i32 %30, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.86, i32 noundef %37) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.87, i32 noundef %32) #5
  %38 = mul nuw nsw i32 %32, %34
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.88, i32 noundef %38) #5
  %39 = mul nuw nsw i32 %32, %36
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.89, i32 noundef %39) #5
  %40 = lshr i32 %30, 16
  %41 = and i32 %40, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.90, i32 noundef %41) #5
  tail call void @mutex_lock(ptr noundef %8) #5
  %42 = load i32, ptr %9, align 8
  %43 = add i32 %42, -1
  store i32 %43, ptr %9, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %24
  %46 = load ptr, ptr %25, align 4
  %47 = getelementptr inbounds %struct.vc4_v3d, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i64 @ktime_get_mono_fast_ns() #5
  %50 = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %49, ptr %50, align 8
  %51 = load ptr, ptr %25, align 4
  %52 = getelementptr inbounds %struct.vc4_v3d, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3
  %55 = tail call i32 @__pm_runtime_suspend(ptr noundef %54, i32 noundef 13) #5
  br label %56

56:                                               ; preds = %45, %24, %21
  tail call void @mutex_unlock(ptr noundef %8) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_regset32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_irq_uninstall(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_v3d_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  tail call void @vc4_irq_disable(ptr noundef %4) #5
  %5 = getelementptr inbounds %struct.vc4_v3d, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %6) #5
  tail call void @clk_unprepare(ptr noundef %6) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_v3d_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc4_v3d, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = tail call i32 @clk_enable(ptr noundef %6) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #5
  br label %21

13:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %14 = getelementptr inbounds %struct.vc4_dev, ptr %4, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.vc4_v3d, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 1284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #5, !srcloc !15
  %19 = getelementptr inbounds %struct.vc4_dev, ptr %4, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  tail call void @enable_irq(i32 noundef %20) #5
  tail call void @vc4_irq_enable(ptr noundef %4) #5
  br label %21

21:                                               ; preds = %13, %12, %1
  %22 = phi i32 [ 0, %13 ], [ %10, %12 ], [ %7, %1 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_irq_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_irq_enable(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{i8 0, i8 2}
!10 = !{i64 451596, i64 2147941567, i64 2147941593, i64 2147941640, i64 2147941662, i64 2147941690, i64 2147941710}
!11 = !{i64 2147955237, i64 2147955269, i64 2147955298, i64 2147955332, i64 2147955363, i64 2147955386}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2155554036}
!15 = !{i64 5558779}
!16 = !{i64 2148055435}
!17 = !{i64 2147957594, i64 2147957626, i64 2147957655, i64 2147957689, i64 2147957720, i64 2147957743}
!18 = !{i64 2149530539}
!19 = distinct !{null, ptr @drm_gem_object_free}
!20 = !{i64 5559197}
!21 = !{i64 2155564722}
!22 = !{i64 2155565303}
!23 = !{i64 2155565613}
!24 = !{i64 2155565990}
!25 = !{i64 2155550815}
!26 = !{i64 2155566443}
!27 = !{i64 2155566820}
!28 = !{i64 2155342646}
