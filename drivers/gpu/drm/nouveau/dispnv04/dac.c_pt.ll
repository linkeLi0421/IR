; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv04/dac.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/dac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.86, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.87, %struct.anon.94, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.86 = type { i8, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.94 = type { i8 }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.80, i8 }
%union.anon.80 = type { %struct.anon.84 }
%struct.anon.84 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.77, ptr, i32, ptr, i8, i32 }
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
%struct.anon.77 = type { i32, ptr }
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
%struct.anon.189 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.162, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.162 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv04_display = type { %struct.nv04_mode_state, %struct.nv04_mode_state, [4 x [16384 x i32]], [4 x i32], [2 x ptr], %struct.nvif_notify }
%struct.nv04_mode_state = type { [2 x %struct.nv04_crtc_reg], i32, i32 }
%struct.nv04_crtc_reg = type { i8, [160 x i8], [16 x i8], [5 x i8], [9 x i8], [21 x i8], [768 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_pll_vals, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32], [7 x i32], i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [38 x i32] }
%struct.nvkm_pll_vals = type { %union.anon.167, i32, i32 }
%union.anon.167 = type { %struct.anon.169 }
%struct.anon.169 = type { i16, i16 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.190, %struct.anon.191, %struct.anon.192, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.190 = type { i32, i8, i32, i32 }
%struct.anon.191 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.192 = type { i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.76 }
%union.anon.76 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.nvif_timer_wait = type { ptr, i64, i64, i64, i32 }

@nv17_dac_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr @nv04_dac_dpms, ptr null, ptr @nv04_dac_mode_fixup, ptr @nv04_dac_prepare, ptr @nv04_dac_commit, ptr @nv04_dac_mode_set, ptr null, ptr @nv17_dac_detect, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@nv04_dac_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr @nv04_dac_dpms, ptr null, ptr @nv04_dac_mode_fixup, ptr @nv04_dac_prepare, ptr @nv04_dac_commit, ptr @nv04_dac_mode_set, ptr null, ptr @nv04_dac_detect, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@nv04_dac_funcs = internal constant %struct.drm_encoder_funcs { ptr null, ptr @nv04_dac_destroy, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [53 x i8] c"%s: Setting dpms mode %d on vga encoder (output %d)\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"%s: Output %s is running on CRTC %d using output %c\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: Load detected on output %c\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: Load detected on head A\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @nv04_dac_output_offset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dcb_output, ptr %3, i32 0, i32 9
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 12
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 0, i32 104
  %9 = and i8 %5, 10
  %10 = icmp eq i8 %9, 0
  %11 = or i32 %8, 8192
  %12 = select i1 %10, i32 %8, i32 %11
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv17_dac_sample_load(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.anon.189, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dcb_output, ptr %13, i32 0, i32 9
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 12
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 0, i32 104
  %19 = and i8 %15, 10
  %20 = icmp eq i8 %19, 0
  %21 = or i32 %18, 8192
  %22 = select i1 %20, i32 %18, i32 %21
  %23 = getelementptr inbounds %struct.dcb_output, ptr %13, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 18, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 167936160, i32 %28
  br label %36

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 18, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 335872320, i32 %33
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i32 [ %30, %26 ], [ %35, %31 ]
  %38 = add nuw nsw i32 %22, 6817288
  %39 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 0, i32 6
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42, !prof !8

42:                                               ; preds = %36
  %43 = getelementptr i8, ptr %40, i32 %38
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %48

45:                                               ; preds = %36
  %46 = zext i32 %38 to i64
  %47 = tail call i32 @nvif_object_rd(ptr noundef %5, i32 noundef 4, i64 noundef %46) #9
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i32 [ %44, %42 ], [ %47, %45 ]
  %50 = and i32 %49, -65537
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 2, i32 3, i32 0, i32 6
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55, !prof !8

55:                                               ; preds = %48
  %56 = getelementptr i8, ptr %53, i32 %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %50) #9, !srcloc !12
  br label %60

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 2, i32 3
  %59 = zext i32 %38 to i64
  tail call void @nvif_object_wr(ptr noundef %58, i32 noundef 4, i64 noundef %59, i32 noundef %50) #9
  br label %60

60:                                               ; preds = %57, %55
  %61 = load ptr, ptr %39, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63, !prof !8

63:                                               ; preds = %60
  %64 = getelementptr i8, ptr %61, i32 5512
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %68

66:                                               ; preds = %60
  %67 = tail call i32 @nvif_object_rd(ptr noundef %5, i32 noundef 4, i64 noundef 5512) #9
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i32 [ %65, %63 ], [ %67, %66 ]
  %70 = load ptr, ptr %39, align 8
  %71 = icmp eq ptr %70, null
  %72 = and i32 %69, -671088641
  br i1 %71, label %75, label %73, !prof !8

73:                                               ; preds = %68
  %74 = getelementptr i8, ptr %70, i32 5512
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #9, !srcloc !12
  br label %76

75:                                               ; preds = %68
  tail call void @nvif_object_wr(ptr noundef %5, i32 noundef 4, i64 noundef 5512, i32 noundef %72) #9
  br label %76

76:                                               ; preds = %75, %73
  %77 = icmp eq i32 %22, 104
  br i1 %77, label %78, label %94

78:                                               ; preds = %76
  %79 = load ptr, ptr %39, align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81, !prof !8

81:                                               ; preds = %78
  %82 = getelementptr i8, ptr %79, i32 5520
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %86

84:                                               ; preds = %78
  %85 = tail call i32 @nvif_object_rd(ptr noundef %5, i32 noundef 4, i64 noundef 5520) #9
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i32 [ %83, %81 ], [ %85, %84 ]
  %88 = load ptr, ptr %39, align 8
  %89 = icmp eq ptr %88, null
  %90 = and i32 %87, -49
  br i1 %89, label %93, label %91, !prof !8

91:                                               ; preds = %86
  %92 = getelementptr i8, ptr %88, i32 5520
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #9, !srcloc !12
  br label %94

93:                                               ; preds = %86
  tail call void @nvif_object_wr(ptr noundef %5, i32 noundef 4, i64 noundef 5520, i32 noundef %90) #9
  br label %94

94:                                               ; preds = %93, %91, %76
  %95 = phi i32 [ 0, %76 ], [ %87, %93 ], [ %87, %91 ]
  %96 = icmp eq ptr %11, null
  br i1 %96, label %108, label %97

97:                                               ; preds = %94
  %98 = tail call i32 @nvkm_gpio_get(ptr noundef nonnull %11, i32 noundef 0, i8 noundef zeroext 45, i8 noundef zeroext -1) #9
  %99 = tail call i32 @nvkm_gpio_get(ptr noundef nonnull %11, i32 noundef 0, i8 noundef zeroext 12, i8 noundef zeroext -1) #9
  %100 = load i32, ptr %23, align 4
  %101 = icmp eq i32 %100, 1
  %102 = zext i1 %101 to i32
  %103 = tail call i32 @nvkm_gpio_set(ptr noundef nonnull %11, i32 noundef 0, i8 noundef zeroext 45, i8 noundef zeroext -1, i32 noundef %102) #9
  %104 = load i32, ptr %23, align 4
  %105 = icmp eq i32 %104, 1
  %106 = zext i1 %105 to i32
  %107 = tail call i32 @nvkm_gpio_set(ptr noundef nonnull %11, i32 noundef 0, i8 noundef zeroext 12, i8 noundef zeroext -1, i32 noundef %106) #9
  br label %108

108:                                              ; preds = %97, %94
  %109 = phi i32 [ %99, %97 ], [ 0, %94 ]
  %110 = phi i32 [ %98, %97 ], [ 0, %94 ]
  tail call void @msleep(i32 noundef 4) #9
  %111 = add nuw nsw i32 %22, 6817068
  %112 = load ptr, ptr %3, align 4
  %113 = getelementptr inbounds %struct.nouveau_drm, ptr %112, i32 0, i32 2, i32 3, i32 0, i32 6
  %114 = load ptr, ptr %113, align 8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116, !prof !8

116:                                              ; preds = %108
  %117 = getelementptr i8, ptr %114, i32 %111
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %123

119:                                              ; preds = %108
  %120 = getelementptr inbounds %struct.nouveau_drm, ptr %112, i32 0, i32 2, i32 3
  %121 = zext i32 %111 to i64
  %122 = tail call i32 @nvif_object_rd(ptr noundef %120, i32 noundef 4, i64 noundef %121) #9
  br label %123

123:                                              ; preds = %119, %116
  %124 = phi i32 [ %118, %116 ], [ %122, %119 ]
  %125 = lshr i32 %124, 8
  %126 = and i32 %125, 1
  %127 = load ptr, ptr %3, align 4
  %128 = getelementptr inbounds %struct.nouveau_drm, ptr %127, i32 0, i32 2, i32 3
  %129 = getelementptr inbounds %struct.nouveau_drm, ptr %127, i32 0, i32 2, i32 3, i32 0, i32 6
  %130 = load ptr, ptr %129, align 8
  %131 = icmp eq ptr %130, null
  %132 = shl nuw nsw i32 %126, 13
  %133 = or i32 %132, 6296532
  br i1 %131, label %136, label %134, !prof !8

134:                                              ; preds = %123
  %135 = getelementptr i8, ptr %130, i32 %133
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %135, i8 26) #9, !srcloc !14
  br label %138

136:                                              ; preds = %123
  %137 = zext i32 %133 to i64
  tail call void @nvif_object_wr(ptr noundef %128, i32 noundef 1, i64 noundef %137, i32 noundef 26) #9
  br label %138

138:                                              ; preds = %136, %134
  %139 = load ptr, ptr %129, align 8
  %140 = icmp eq ptr %139, null
  %141 = or i32 %132, 6296533
  br i1 %140, label %146, label %142, !prof !8

142:                                              ; preds = %138
  %143 = getelementptr i8, ptr %139, i32 %141
  %144 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %143) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %145 = zext i8 %144 to i32
  br label %149

146:                                              ; preds = %138
  %147 = zext i32 %141 to i64
  %148 = tail call i32 @nvif_object_rd(ptr noundef %128, i32 noundef 1, i64 noundef %147) #9
  br label %149

149:                                              ; preds = %146, %142
  %150 = phi i32 [ %145, %142 ], [ %148, %146 ]
  %151 = and i32 %150, 192
  %152 = icmp eq i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = xor i32 %126, %153
  %155 = and i32 %124, -306
  %156 = shl nuw nsw i32 %154, 8
  %157 = or i32 %156, %155
  %158 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 1, i32 4
  %159 = load i8, ptr %158, align 1
  %160 = icmp ugt i8 %159, 4
  br i1 %160, label %161, label %168

161:                                              ; preds = %149
  %162 = load i32, ptr %23, align 4
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = or i32 %157, 1703936
  br label %168

166:                                              ; preds = %161
  %167 = and i32 %157, -1703986
  br label %168

168:                                              ; preds = %166, %164, %149
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ], [ %157, %149 ]
  %170 = load ptr, ptr %3, align 4
  %171 = getelementptr inbounds %struct.nouveau_drm, ptr %170, i32 0, i32 2, i32 3, i32 0, i32 6
  %172 = load ptr, ptr %171, align 8
  %173 = icmp eq ptr %172, null
  br i1 %173, label %176, label %174, !prof !8

174:                                              ; preds = %168
  %175 = getelementptr i8, ptr %172, i32 %111
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 %169) #9, !srcloc !12
  br label %179

176:                                              ; preds = %168
  %177 = getelementptr inbounds %struct.nouveau_drm, ptr %170, i32 0, i32 2, i32 3
  %178 = zext i32 %111 to i64
  tail call void @nvif_object_wr(ptr noundef %177, i32 noundef 4, i64 noundef %178, i32 noundef %169) #9
  br label %179

179:                                              ; preds = %176, %174
  tail call void @msleep(i32 noundef 1) #9
  %180 = load ptr, ptr %3, align 4
  %181 = getelementptr inbounds %struct.nouveau_drm, ptr %180, i32 0, i32 2, i32 3, i32 0, i32 6
  %182 = load ptr, ptr %181, align 8
  %183 = icmp eq ptr %182, null
  br i1 %183, label %187, label %184, !prof !8

184:                                              ; preds = %179
  %185 = getelementptr i8, ptr %182, i32 %111
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %185) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %191

187:                                              ; preds = %179
  %188 = getelementptr inbounds %struct.nouveau_drm, ptr %180, i32 0, i32 2, i32 3
  %189 = zext i32 %111 to i64
  %190 = tail call i32 @nvif_object_rd(ptr noundef %188, i32 noundef 4, i64 noundef %189) #9
  br label %191

191:                                              ; preds = %187, %184
  %192 = phi i32 [ %186, %184 ], [ %190, %187 ]
  %193 = or i32 %192, 1
  %194 = load ptr, ptr %3, align 4
  %195 = getelementptr inbounds %struct.nouveau_drm, ptr %194, i32 0, i32 2, i32 3, i32 0, i32 6
  %196 = load ptr, ptr %195, align 8
  %197 = icmp eq ptr %196, null
  br i1 %197, label %200, label %198, !prof !8

198:                                              ; preds = %191
  %199 = getelementptr i8, ptr %196, i32 %111
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %193) #9, !srcloc !12
  br label %203

200:                                              ; preds = %191
  %201 = getelementptr inbounds %struct.nouveau_drm, ptr %194, i32 0, i32 2, i32 3
  %202 = zext i32 %111 to i64
  tail call void @nvif_object_wr(ptr noundef %201, i32 noundef 4, i64 noundef %202, i32 noundef %193) #9
  br label %203

203:                                              ; preds = %200, %198
  %204 = or i32 %37, -2147483648
  %205 = load ptr, ptr %3, align 4
  %206 = icmp eq i32 %154, 0
  %207 = select i1 %206, i32 6817296, i32 6825488
  %208 = getelementptr inbounds %struct.nouveau_drm, ptr %205, i32 0, i32 2, i32 3, i32 0, i32 6
  %209 = load ptr, ptr %208, align 8
  %210 = icmp eq ptr %209, null
  br i1 %210, label %213, label %211, !prof !8

211:                                              ; preds = %203
  %212 = getelementptr i8, ptr %209, i32 %207
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %212, i32 %204) #9, !srcloc !12
  br label %216

213:                                              ; preds = %203
  %214 = getelementptr inbounds %struct.nouveau_drm, ptr %205, i32 0, i32 2, i32 3
  %215 = zext i32 %207 to i64
  tail call void @nvif_object_wr(ptr noundef %214, i32 noundef 4, i64 noundef %215, i32 noundef %204) #9
  br label %216

216:                                              ; preds = %213, %211
  %217 = load ptr, ptr %3, align 4
  %218 = select i1 %206, i32 6817288, i32 6825480
  %219 = getelementptr inbounds %struct.nouveau_drm, ptr %217, i32 0, i32 2, i32 3, i32 0, i32 6
  %220 = load ptr, ptr %219, align 8
  %221 = icmp eq ptr %220, null
  br i1 %221, label %225, label %222, !prof !8

222:                                              ; preds = %216
  %223 = getelementptr i8, ptr %220, i32 %218
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %223) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %229

225:                                              ; preds = %216
  %226 = getelementptr inbounds %struct.nouveau_drm, ptr %217, i32 0, i32 2, i32 3
  %227 = zext i32 %218 to i64
  %228 = tail call i32 @nvif_object_rd(ptr noundef %226, i32 noundef 4, i64 noundef %227) #9
  br label %229

229:                                              ; preds = %225, %222
  %230 = phi i32 [ %224, %222 ], [ %228, %225 ]
  %231 = or i32 %230, 4096
  %232 = load ptr, ptr %3, align 4
  %233 = getelementptr inbounds %struct.nouveau_drm, ptr %232, i32 0, i32 2, i32 3, i32 0, i32 6
  %234 = load ptr, ptr %233, align 8
  %235 = icmp eq ptr %234, null
  br i1 %235, label %238, label %236, !prof !8

236:                                              ; preds = %229
  %237 = getelementptr i8, ptr %234, i32 %218
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 %231) #9, !srcloc !12
  br label %241

238:                                              ; preds = %229
  %239 = getelementptr inbounds %struct.nouveau_drm, ptr %232, i32 0, i32 2, i32 3
  %240 = zext i32 %218 to i64
  tail call void @nvif_object_wr(ptr noundef %239, i32 noundef 4, i64 noundef %240, i32 noundef %231) #9
  br label %241

241:                                              ; preds = %238, %236
  tail call void @msleep(i32 noundef 5) #9
  %242 = load ptr, ptr %3, align 4
  %243 = getelementptr inbounds %struct.nouveau_drm, ptr %242, i32 0, i32 2, i32 3, i32 0, i32 6
  %244 = load ptr, ptr %243, align 8
  %245 = icmp eq ptr %244, null
  br i1 %245, label %249, label %246, !prof !8

246:                                              ; preds = %241
  %247 = getelementptr i8, ptr %244, i32 %38
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %253

249:                                              ; preds = %241
  %250 = getelementptr inbounds %struct.nouveau_drm, ptr %242, i32 0, i32 2, i32 3
  %251 = zext i32 %38 to i64
  %252 = tail call i32 @nvif_object_rd(ptr noundef %250, i32 noundef 4, i64 noundef %251) #9
  br label %253

253:                                              ; preds = %249, %246
  %254 = phi i32 [ %248, %246 ], [ %252, %249 ]
  %255 = load ptr, ptr %3, align 4
  %256 = getelementptr inbounds %struct.nouveau_drm, ptr %255, i32 0, i32 2, i32 3, i32 0, i32 6
  %257 = load ptr, ptr %256, align 8
  %258 = icmp eq ptr %257, null
  br i1 %258, label %262, label %259, !prof !8

259:                                              ; preds = %253
  %260 = getelementptr i8, ptr %257, i32 %38
  %261 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %260) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %266

262:                                              ; preds = %253
  %263 = getelementptr inbounds %struct.nouveau_drm, ptr %255, i32 0, i32 2, i32 3
  %264 = zext i32 %38 to i64
  %265 = tail call i32 @nvif_object_rd(ptr noundef %263, i32 noundef 4, i64 noundef %264) #9
  br label %266

266:                                              ; preds = %262, %259
  %267 = phi i32 [ %261, %259 ], [ %265, %262 ]
  %268 = load ptr, ptr %3, align 4
  %269 = getelementptr inbounds %struct.nouveau_drm, ptr %268, i32 0, i32 2, i32 3, i32 0, i32 6
  %270 = load ptr, ptr %269, align 8
  %271 = icmp eq ptr %270, null
  br i1 %271, label %275, label %272, !prof !8

272:                                              ; preds = %266
  %273 = getelementptr i8, ptr %270, i32 %218
  %274 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %273) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %279

275:                                              ; preds = %266
  %276 = getelementptr inbounds %struct.nouveau_drm, ptr %268, i32 0, i32 2, i32 3
  %277 = zext i32 %218 to i64
  %278 = tail call i32 @nvif_object_rd(ptr noundef %276, i32 noundef 4, i64 noundef %277) #9
  br label %279

279:                                              ; preds = %275, %272
  %280 = phi i32 [ %274, %272 ], [ %278, %275 ]
  %281 = and i32 %280, -4097
  %282 = load ptr, ptr %3, align 4
  %283 = getelementptr inbounds %struct.nouveau_drm, ptr %282, i32 0, i32 2, i32 3, i32 0, i32 6
  %284 = load ptr, ptr %283, align 8
  %285 = icmp eq ptr %284, null
  br i1 %285, label %288, label %286, !prof !8

286:                                              ; preds = %279
  %287 = getelementptr i8, ptr %284, i32 %218
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %287, i32 %281) #9, !srcloc !12
  br label %291

288:                                              ; preds = %279
  %289 = getelementptr inbounds %struct.nouveau_drm, ptr %282, i32 0, i32 2, i32 3
  %290 = zext i32 %218 to i64
  tail call void @nvif_object_wr(ptr noundef %289, i32 noundef 4, i64 noundef %290, i32 noundef %281) #9
  br label %291

291:                                              ; preds = %288, %286
  %292 = load ptr, ptr %3, align 4
  %293 = getelementptr inbounds %struct.nouveau_drm, ptr %292, i32 0, i32 2, i32 3, i32 0, i32 6
  %294 = load ptr, ptr %293, align 8
  %295 = icmp eq ptr %294, null
  br i1 %295, label %298, label %296, !prof !8

296:                                              ; preds = %291
  %297 = getelementptr i8, ptr %294, i32 %207
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %297, i32 0) #9, !srcloc !12
  br label %301

298:                                              ; preds = %291
  %299 = getelementptr inbounds %struct.nouveau_drm, ptr %292, i32 0, i32 2, i32 3
  %300 = zext i32 %207 to i64
  tail call void @nvif_object_wr(ptr noundef %299, i32 noundef 4, i64 noundef %300, i32 noundef 0) #9
  br label %301

301:                                              ; preds = %298, %296
  %302 = load ptr, ptr %3, align 4
  %303 = getelementptr inbounds %struct.nouveau_drm, ptr %302, i32 0, i32 2, i32 3, i32 0, i32 6
  %304 = load ptr, ptr %303, align 8
  %305 = icmp eq ptr %304, null
  br i1 %305, label %308, label %306, !prof !8

306:                                              ; preds = %301
  %307 = getelementptr i8, ptr %304, i32 %111
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %307, i32 %124) #9, !srcloc !12
  br label %311

308:                                              ; preds = %301
  %309 = getelementptr inbounds %struct.nouveau_drm, ptr %302, i32 0, i32 2, i32 3
  %310 = zext i32 %111 to i64
  tail call void @nvif_object_wr(ptr noundef %309, i32 noundef 4, i64 noundef %310, i32 noundef %124) #9
  br label %311

311:                                              ; preds = %308, %306
  %312 = load ptr, ptr %3, align 4
  %313 = getelementptr inbounds %struct.nouveau_drm, ptr %312, i32 0, i32 2, i32 3, i32 0, i32 6
  %314 = load ptr, ptr %313, align 8
  %315 = icmp eq ptr %314, null
  br i1 %315, label %318, label %316, !prof !8

316:                                              ; preds = %311
  %317 = getelementptr i8, ptr %314, i32 %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %317, i32 %49) #9, !srcloc !12
  br label %321

318:                                              ; preds = %311
  %319 = getelementptr inbounds %struct.nouveau_drm, ptr %312, i32 0, i32 2, i32 3
  %320 = zext i32 %38 to i64
  tail call void @nvif_object_wr(ptr noundef %319, i32 noundef 4, i64 noundef %320, i32 noundef %49) #9
  br label %321

321:                                              ; preds = %318, %316
  br i1 %77, label %322, label %328

322:                                              ; preds = %321
  %323 = load ptr, ptr %39, align 8
  %324 = icmp eq ptr %323, null
  br i1 %324, label %327, label %325, !prof !8

325:                                              ; preds = %322
  %326 = getelementptr i8, ptr %323, i32 5520
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %326, i32 %95) #9, !srcloc !12
  br label %328

327:                                              ; preds = %322
  tail call void @nvif_object_wr(ptr noundef %5, i32 noundef 4, i64 noundef 5520, i32 noundef %95) #9
  br label %328

328:                                              ; preds = %327, %325, %321
  %329 = load ptr, ptr %39, align 8
  %330 = icmp eq ptr %329, null
  br i1 %330, label %333, label %331, !prof !8

331:                                              ; preds = %328
  %332 = getelementptr i8, ptr %329, i32 5512
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %332, i32 %69) #9, !srcloc !12
  br label %334

333:                                              ; preds = %328
  tail call void @nvif_object_wr(ptr noundef %5, i32 noundef 4, i64 noundef 5512, i32 noundef %69) #9
  br label %334

334:                                              ; preds = %333, %331
  br i1 %96, label %338, label %335

335:                                              ; preds = %334
  %336 = tail call i32 @nvkm_gpio_set(ptr noundef nonnull %11, i32 noundef 0, i8 noundef zeroext 45, i8 noundef zeroext -1, i32 noundef %110) #9
  %337 = tail call i32 @nvkm_gpio_set(ptr noundef nonnull %11, i32 noundef 0, i8 noundef zeroext 12, i8 noundef zeroext -1, i32 noundef %109) #9
  br label %338

338:                                              ; preds = %335, %334
  %339 = and i32 %267, %254
  ret i32 %339
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_get(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_set(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv04_dac_update_dacclk(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -102
  %11 = load i16, ptr %10, align 2
  %12 = and i16 %11, 4080
  %13 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 1, i32 4
  %14 = load i8, ptr %13, align 1
  %15 = icmp ugt i8 %14, 1
  %16 = icmp ne i16 %12, 256
  %17 = select i1 %15, i1 %16, i1 false
  %18 = icmp ne i16 %12, 336
  %19 = select i1 %17, i1 %18, i1 false
  %20 = icmp ne i16 %12, 416
  %21 = select i1 %19, i1 %20, i1 false
  %22 = icmp ne i16 %12, 512
  %23 = select i1 %21, i1 %22, i1 false
  %24 = icmp ne i16 %12, 272
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %88

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 19
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.dcb_output, ptr %5, i32 0, i32 9
  %31 = load i8, ptr %30, align 1
  %32 = tail call i8 @llvm.cttz.i8(i8 %31, i1 true), !range !17
  %33 = zext i8 %32 to i32
  %34 = icmp eq i8 %31, 0
  %35 = select i1 %34, i32 -1, i32 %33
  %36 = getelementptr %struct.nv04_display, ptr %29, i32 0, i32 3, i32 %35
  %37 = and i8 %31, 12
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, i32 0, i32 104
  %40 = and i8 %31, 10
  %41 = icmp eq i8 %40, 0
  %42 = or i32 %39, 8192
  %43 = select i1 %41, i32 %39, i32 %42
  %44 = add nuw nsw i32 %43, 6817068
  %45 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 0, i32 6
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48, !prof !8

48:                                               ; preds = %26
  %49 = getelementptr i8, ptr %46, i32 %44
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %55

51:                                               ; preds = %26
  %52 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3
  %53 = zext i32 %44 to i64
  %54 = tail call i32 @nvif_object_rd(ptr noundef %52, i32 noundef 4, i64 noundef %53) #9
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i32 [ %50, %48 ], [ %54, %51 ]
  %57 = load i32, ptr %5, align 4
  %58 = shl nuw i32 1, %57
  br i1 %1, label %59, label %72

59:                                               ; preds = %55
  %60 = load i32, ptr %36, align 4
  %61 = or i32 %60, %58
  store i32 %61, ptr %36, align 4
  %62 = or i32 %56, 1
  %63 = load ptr, ptr %6, align 4
  %64 = getelementptr inbounds %struct.nouveau_drm, ptr %63, i32 0, i32 2, i32 3, i32 0, i32 6
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67, !prof !8

67:                                               ; preds = %59
  %68 = getelementptr i8, ptr %65, i32 %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %62) #9, !srcloc !12
  br label %88

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.nouveau_drm, ptr %63, i32 0, i32 2, i32 3
  %71 = zext i32 %44 to i64
  tail call void @nvif_object_wr(ptr noundef %70, i32 noundef 4, i64 noundef %71, i32 noundef %62) #9
  br label %88

72:                                               ; preds = %55
  %73 = xor i32 %58, -1
  %74 = load i32, ptr %36, align 4
  %75 = and i32 %74, %73
  store i32 %75, ptr %36, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = and i32 %56, -2
  %79 = load ptr, ptr %6, align 4
  %80 = getelementptr inbounds %struct.nouveau_drm, ptr %79, i32 0, i32 2, i32 3, i32 0, i32 6
  %81 = load ptr, ptr %80, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83, !prof !8

83:                                               ; preds = %77
  %84 = getelementptr i8, ptr %81, i32 %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %78) #9, !srcloc !12
  br label %88

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.nouveau_drm, ptr %79, i32 0, i32 2, i32 3
  %87 = zext i32 %44 to i64
  tail call void @nvif_object_wr(ptr noundef %86, i32 noundef 4, i64 noundef %87, i32 noundef %78) #9
  br label %88

88:                                               ; preds = %85, %83, %72, %69, %67, %2
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nv04_dac_in_use(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -102
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 4080
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 1, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp ugt i8 %11, 1
  %13 = icmp ne i16 %9, 256
  %14 = select i1 %12, i1 %13, i1 false
  %15 = icmp ne i16 %9, 336
  %16 = select i1 %14, i1 %15, i1 false
  %17 = icmp ne i16 %9, 416
  %18 = select i1 %16, i1 %17, i1 false
  %19 = icmp ne i16 %9, 512
  %20 = select i1 %18, i1 %19, i1 false
  %21 = icmp ne i16 %9, 272
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %42

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 19
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.dcb_output, ptr %25, i32 0, i32 9
  %30 = load i8, ptr %29, align 1
  %31 = tail call i8 @llvm.cttz.i8(i8 %30, i1 true), !range !17
  %32 = zext i8 %31 to i32
  %33 = icmp eq i8 %30, 0
  %34 = select i1 %33, i32 -1, i32 %32
  %35 = getelementptr %struct.nv04_display, ptr %28, i32 0, i32 3, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %25, align 4
  %38 = shl nuw i32 1, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %23, %1
  %43 = phi i1 [ false, %1 ], [ %41, %23 ]
  ret i1 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_dac_create(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 344) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nouveau_encoder, ptr %5, i32 0, i32 1
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 9
  %10 = load i8, ptr %9, align 1
  %11 = tail call i8 @llvm.cttz.i8(i8 %10, i1 true), !range !17
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8 %10, 0
  %14 = select i1 %13, i32 -1, i32 %12
  %15 = getelementptr inbounds %struct.nouveau_encoder, ptr %5, i32 0, i32 2
  store i32 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.nouveau_encoder, ptr %5, i32 0, i32 14
  store ptr @nv04_dac_save, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nouveau_encoder, ptr %5, i32 0, i32 15
  store ptr @nv04_dac_restore, ptr %17, align 8
  %18 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 -102
  %23 = load i16, ptr %22, align 2
  %24 = and i16 %23, 4080
  %25 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 2, i32 3, i32 1, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = icmp ugt i8 %26, 1
  %28 = icmp ne i16 %24, 256
  %29 = select i1 %27, i1 %28, i1 false
  %30 = icmp ne i16 %24, 336
  %31 = select i1 %29, i1 %30, i1 false
  %32 = icmp ne i16 %24, 416
  %33 = select i1 %31, i1 %32, i1 false
  %34 = icmp ne i16 %24, 512
  %35 = select i1 %33, i1 %34, i1 false
  %36 = icmp ne i16 %24, 272
  %37 = select i1 %35, i1 %36, i1 false
  %38 = select i1 %37, ptr @nv17_dac_helper_funcs, ptr @nv04_dac_helper_funcs
  %39 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull @nv04_dac_funcs, i32 noundef 1, ptr noundef null) #9
  %40 = getelementptr inbounds %struct.drm_encoder, ptr %5, i32 0, i32 11
  store ptr %38, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 5
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.drm_encoder, ptr %5, i32 0, i32 6
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.drm_encoder, ptr %5, i32 0, i32 7
  store i32 0, ptr %45, align 8
  %46 = tail call i32 @drm_connector_attach_encoder(ptr noundef %0, ptr noundef nonnull %5) #9
  br label %47

47:                                               ; preds = %7, %2
  %48 = phi i32 [ 0, %7 ], [ -12, %2 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_dac_save(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -102
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 4080
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 1, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp ugt i8 %11, 1
  %13 = icmp ne i16 %9, 256
  %14 = select i1 %12, i1 %13, i1 false
  %15 = icmp ne i16 %9, 336
  %16 = select i1 %14, i1 %15, i1 false
  %17 = icmp ne i16 %9, 416
  %18 = select i1 %16, i1 %17, i1 false
  %19 = icmp ne i16 %9, 512
  %20 = select i1 %18, i1 %19, i1 false
  %21 = icmp ne i16 %9, 272
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %49

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dcb_output, ptr %25, i32 0, i32 9
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 12
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i32 0, i32 104
  %31 = and i8 %27, 10
  %32 = icmp eq i8 %31, 0
  %33 = or i32 %30, 8192
  %34 = select i1 %32, i32 %30, i32 %33
  %35 = add nuw nsw i32 %34, 6817068
  %36 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 0, i32 6
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39, !prof !8

39:                                               ; preds = %23
  %40 = getelementptr i8, ptr %37, i32 %35
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %46

42:                                               ; preds = %23
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3
  %44 = zext i32 %35 to i64
  %45 = tail call i32 @nvif_object_rd(ptr noundef %43, i32 noundef 4, i64 noundef %44) #9
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi i32 [ %41, %39 ], [ %45, %42 ]
  %48 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 11
  store i32 %47, ptr %48, align 4
  br label %49

49:                                               ; preds = %46, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_dac_restore(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -102
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 4080
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 1, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp ugt i8 %11, 1
  %13 = icmp ne i16 %9, 256
  %14 = select i1 %12, i1 %13, i1 false
  %15 = icmp ne i16 %9, 336
  %16 = select i1 %14, i1 %15, i1 false
  %17 = icmp ne i16 %9, 416
  %18 = select i1 %16, i1 %17, i1 false
  %19 = icmp ne i16 %9, 512
  %20 = select i1 %18, i1 %19, i1 false
  %21 = icmp ne i16 %9, 272
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %46

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dcb_output, ptr %25, i32 0, i32 9
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 12
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i32 0, i32 104
  %31 = and i8 %27, 10
  %32 = icmp eq i8 %31, 0
  %33 = or i32 %30, 8192
  %34 = select i1 %32, i32 %30, i32 %33
  %35 = add nuw nsw i32 %34, 6817068
  %36 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 11
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 0, i32 6
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41, !prof !8

41:                                               ; preds = %23
  %42 = getelementptr i8, ptr %39, i32 %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %37) #9, !srcloc !12
  br label %46

43:                                               ; preds = %23
  %44 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3
  %45 = zext i32 %35 to i64
  tail call void @nvif_object_wr(ptr noundef %44, i32 noundef 4, i64 noundef %45, i32 noundef %37) #9
  br label %46

46:                                               ; preds = %43, %41, %1
  %47 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 10
  store i32 128, ptr %47, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_dac_dpms(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  store i32 %1, ptr %6, align 4
  %10 = load i32, ptr @__drm_debug, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  %21 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef %20, i32 noundef %1, i32 noundef %23) #11
  br label %24

24:                                               ; preds = %13, %9
  %25 = icmp eq i32 %1, 0
  tail call void @nv04_dac_update_dacclk(ptr noundef %0, i1 noundef zeroext %25)
  br label %26

26:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nv04_dac_mode_fixup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #4 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -102
  %10 = load i16, ptr %9, align 2
  %11 = and i16 %10, 4080
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 1, i32 4
  %13 = load i8, ptr %12, align 1
  %14 = icmp ugt i8 %13, 1
  %15 = icmp ne i16 %11, 256
  %16 = select i1 %14, i1 %15, i1 false
  %17 = icmp ne i16 %11, 336
  %18 = select i1 %16, i1 %17, i1 false
  %19 = icmp ne i16 %11, 416
  %20 = select i1 %18, i1 %19, i1 false
  %21 = icmp ne i16 %11, 512
  %22 = select i1 %20, i1 %21, i1 false
  %23 = icmp ne i16 %11, 272
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %44

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.dcb_output, ptr %27, i32 0, i32 9
  %32 = load i8, ptr %31, align 1
  %33 = tail call i8 @llvm.cttz.i8(i8 %32, i1 true) #9, !range !17
  %34 = zext i8 %33 to i32
  %35 = icmp eq i8 %32, 0
  %36 = select i1 %35, i32 -1, i32 %34
  %37 = getelementptr %struct.nv04_display, ptr %30, i32 0, i32 3, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = load i32, ptr %27, align 4
  %40 = shl nuw i32 1, %39
  %41 = xor i32 %40, -1
  %42 = and i32 %38, %41
  %43 = icmp eq i32 %42, 0
  br label %44

44:                                               ; preds = %25, %3
  %45 = phi i1 [ true, %3 ], [ %43, %25 ]
  ret i1 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_dac_prepare(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_crtc, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = load ptr, ptr %3, align 4
  tail call void %9(ptr noundef %0, i32 noundef 3) #9
  tail call void @nv04_dfp_disable(ptr noundef %4, i32 noundef %8) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_dac_commit(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0, i32 noundef 0) #9
  %10 = load i32, ptr @__drm_debug, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  %21 = tail call ptr @nv04_encoder_get_connector(ptr noundef %0) #9
  %22 = getelementptr inbounds %struct.drm_connector, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nouveau_crtc, ptr %6, i32 0, i32 1
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dcb_output, ptr %27, i32 0, i32 9
  %29 = load i8, ptr %28, align 1
  %30 = tail call i8 @llvm.cttz.i8(i8 %29, i1 true), !range !17
  %31 = icmp eq i8 %29, 0
  %32 = add nuw nsw i8 %30, 65
  %33 = select i1 %31, i8 64, i8 %32
  %34 = zext i8 %33 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef %20, ptr noundef %23, i32 noundef %25, i32 noundef %34) #11
  br label %35

35:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_dac_mode_set(ptr noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -102
  %10 = load i16, ptr %9, align 2
  %11 = and i16 %10, 4080
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 1, i32 4
  %13 = load i8, ptr %12, align 1
  %14 = icmp ugt i8 %13, 1
  %15 = icmp ne i16 %11, 256
  %16 = select i1 %14, i1 %15, i1 false
  %17 = icmp ne i16 %11, 336
  %18 = select i1 %16, i1 %17, i1 false
  %19 = icmp ne i16 %11, 416
  %20 = select i1 %18, i1 %19, i1 false
  %21 = icmp ne i16 %11, 512
  %22 = select i1 %20, i1 %21, i1 false
  %23 = icmp ne i16 %11, 272
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %105

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nouveau_crtc, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dcb_output, ptr %31, i32 0, i32 9
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, 12
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i32 0, i32 104
  %37 = and i8 %33, 10
  %38 = icmp eq i8 %37, 0
  %39 = or i32 %36, 8192
  %40 = select i1 %38, i32 %36, i32 %39
  %41 = add nuw nsw i32 %40, 6817068
  %42 = shl i32 %29, 8
  %43 = or i32 %42, 1
  %44 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 0, i32 6
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47, !prof !8

47:                                               ; preds = %25
  %48 = getelementptr i8, ptr %45, i32 %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %43) #9, !srcloc !12
  br label %52

49:                                               ; preds = %25
  %50 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3
  %51 = zext i32 %41 to i64
  tail call void @nvif_object_wr(ptr noundef %50, i32 noundef 4, i64 noundef %51, i32 noundef %43) #9
  br label %52

52:                                               ; preds = %49, %47
  %53 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 16
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %105, label %56

56:                                               ; preds = %102, %52
  %57 = phi ptr [ %103, %102 ], [ %54, %52 ]
  %58 = getelementptr i8, ptr %57, i32 -4
  %59 = icmp eq ptr %58, %0
  br i1 %59, label %102, label %60

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %57, i32 80
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.dcb_output, ptr %62, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %102

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.dcb_output, ptr %62, i32 0, i32 9
  %68 = load i8, ptr %67, align 1
  %69 = and i8 %68, 12
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %70, i32 0, i32 104
  %72 = and i8 %68, 10
  %73 = icmp eq i8 %72, 0
  %74 = or i32 %71, 8192
  %75 = select i1 %73, i32 %71, i32 %74
  %76 = add nuw nsw i32 %75, 6817068
  %77 = load ptr, ptr %5, align 4
  %78 = getelementptr inbounds %struct.nouveau_drm, ptr %77, i32 0, i32 2, i32 3, i32 0, i32 6
  %79 = load ptr, ptr %78, align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81, !prof !8

81:                                               ; preds = %66
  %82 = getelementptr i8, ptr %79, i32 %76
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %88

84:                                               ; preds = %66
  %85 = getelementptr inbounds %struct.nouveau_drm, ptr %77, i32 0, i32 2, i32 3
  %86 = zext i32 %76 to i64
  %87 = tail call i32 @nvif_object_rd(ptr noundef %85, i32 noundef 4, i64 noundef %86) #9
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi i32 [ %83, %81 ], [ %87, %84 ]
  %90 = and i32 %89, -257
  %91 = or i32 %90, %42
  %92 = xor i32 %91, 256
  %93 = load ptr, ptr %5, align 4
  %94 = getelementptr inbounds %struct.nouveau_drm, ptr %93, i32 0, i32 2, i32 3, i32 0, i32 6
  %95 = load ptr, ptr %94, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97, !prof !8

97:                                               ; preds = %88
  %98 = getelementptr i8, ptr %95, i32 %76
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %92) #9, !srcloc !12
  br label %102

99:                                               ; preds = %88
  %100 = getelementptr inbounds %struct.nouveau_drm, ptr %93, i32 0, i32 2, i32 3
  %101 = zext i32 %76 to i64
  tail call void @nvif_object_wr(ptr noundef %100, i32 noundef 4, i64 noundef %101, i32 noundef %92) #9
  br label %102

102:                                              ; preds = %99, %97, %60, %56
  %103 = load ptr, ptr %57, align 4
  %104 = icmp eq ptr %103, %53
  br i1 %104, label %105, label %56

105:                                              ; preds = %102, %52, %3
  %106 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 1, i32 2
  %107 = load i16, ptr %106, align 2
  %108 = icmp ult i16 %107, 68
  %109 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.dcb_output, ptr %110, i32 0, i32 9
  %112 = load i8, ptr %111, align 1
  %113 = and i8 %112, 12
  %114 = icmp eq i8 %113, 0
  %115 = select i1 %114, i32 0, i32 104
  %116 = and i8 %112, 10
  %117 = icmp eq i8 %116, 0
  %118 = or i32 %115, 8192
  %119 = select i1 %117, i32 %115, i32 %118
  %120 = add nuw nsw i32 %119, 6817288
  %121 = load ptr, ptr %5, align 4
  %122 = getelementptr inbounds %struct.nouveau_drm, ptr %121, i32 0, i32 2, i32 3, i32 0, i32 6
  %123 = load ptr, ptr %122, align 8
  %124 = icmp eq ptr %123, null
  br i1 %108, label %125, label %131

125:                                              ; preds = %105
  br i1 %124, label %128, label %126, !prof !8

126:                                              ; preds = %125
  %127 = getelementptr i8, ptr %123, i32 %120
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 -268435456) #9, !srcloc !12
  br label %137

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.nouveau_drm, ptr %121, i32 0, i32 2, i32 3
  %130 = zext i32 %120 to i64
  tail call void @nvif_object_wr(ptr noundef %129, i32 noundef 4, i64 noundef %130, i32 noundef -268435456) #9
  br label %137

131:                                              ; preds = %105
  br i1 %124, label %134, label %132, !prof !8

132:                                              ; preds = %131
  %133 = getelementptr i8, ptr %123, i32 %120
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 1048576) #9, !srcloc !12
  br label %137

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.nouveau_drm, ptr %121, i32 0, i32 2, i32 3
  %136 = zext i32 %120 to i64
  tail call void @nvif_object_wr(ptr noundef %135, i32 noundef 4, i64 noundef %136, i32 noundef 1048576) #9
  br label %137

137:                                              ; preds = %134, %132, %128, %126
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv17_dac_detect(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -102
  %11 = load i16, ptr %10, align 2
  %12 = and i16 %11, 4080
  %13 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 4
  %14 = load i8, ptr %13, align 1
  %15 = icmp ugt i8 %14, 1
  %16 = icmp ne i16 %12, 256
  %17 = select i1 %15, i1 %16, i1 false
  %18 = icmp ne i16 %12, 336
  %19 = select i1 %17, i1 %18, i1 false
  %20 = icmp ne i16 %12, 416
  %21 = select i1 %19, i1 %20, i1 false
  %22 = icmp ne i16 %12, 512
  %23 = select i1 %21, i1 %22, i1 false
  %24 = icmp ne i16 %12, 272
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %43

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 19
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 9
  %31 = load i8, ptr %30, align 1
  %32 = tail call i8 @llvm.cttz.i8(i8 %31, i1 true) #9, !range !17
  %33 = zext i8 %32 to i32
  %34 = icmp eq i8 %31, 0
  %35 = select i1 %34, i32 -1, i32 %33
  %36 = getelementptr %struct.nv04_display, ptr %29, i32 0, i32 3, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %7, align 4
  %39 = shl nuw i32 1, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %37, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %26, %2
  %44 = tail call i32 @nv17_dac_sample_load(ptr noundef %0)
  %45 = and i32 %44, 268435456
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr @__drm_debug, align 4
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.nouveau_drm, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.drm_device, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  %59 = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 9
  %60 = load i8, ptr %59, align 1
  %61 = tail call i8 @llvm.cttz.i8(i8 %60, i1 true), !range !17
  %62 = icmp eq i8 %60, 0
  %63 = add nuw nsw i8 %61, 65
  %64 = select i1 %62, i8 64, i8 %63
  %65 = zext i8 %64 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.2, ptr noundef %58, i32 noundef %65) #11
  br label %66

66:                                               ; preds = %51, %47, %43, %26
  %67 = phi i32 [ 2, %26 ], [ 1, %51 ], [ 1, %47 ], [ 2, %43 ]
  ret i32 %67
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_dfp_disable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv04_encoder_get_connector(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_dac_detect(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca %struct.nvif_timer_wait, align 8
  %4 = alloca %struct.nvif_timer_wait, align 8
  %5 = alloca %struct.nvif_timer_wait, align 8
  %6 = alloca [2 x i8], align 2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3
  %11 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 -102
  %14 = load i16, ptr %13, align 2
  %15 = and i16 %14, 4080
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3, i32 1, i32 4
  %17 = load i8, ptr %16, align 1
  %18 = icmp ugt i8 %17, 1
  %19 = icmp ne i16 %15, 256
  %20 = select i1 %18, i1 %19, i1 false
  %21 = icmp ne i16 %15, 336
  %22 = select i1 %20, i1 %21, i1 false
  %23 = icmp ne i16 %15, 416
  %24 = select i1 %22, i1 %23, i1 false
  %25 = icmp ne i16 %15, 512
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  tail call void @NVSetOwner(ptr noundef %7, i32 noundef 0) #9
  %28 = load ptr, ptr %8, align 4
  br label %29

29:                                               ; preds = %27, %2
  %30 = phi ptr [ %28, %27 ], [ %9, %2 ]
  %31 = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 3
  %32 = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 3, i32 0, i32 6
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !8

35:                                               ; preds = %29
  %36 = getelementptr i8, ptr %33, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 23) #9, !srcloc !14
  br label %38

37:                                               ; preds = %29
  tail call void @nvif_object_wr(ptr noundef %31, i32 noundef 1, i64 noundef 6296532, i32 noundef 23) #9
  br label %38

38:                                               ; preds = %37, %35
  %39 = load ptr, ptr %32, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41, !prof !8

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %39, i32 6296533
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %42) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %44 = zext i8 %43 to i32
  br label %47

45:                                               ; preds = %38
  %46 = tail call i32 @nvif_object_rd(ptr noundef %31, i32 noundef 1, i64 noundef 6296533) #9
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %44, %41 ], [ %46, %45 ]
  %49 = trunc i32 %48 to i8
  %50 = or i8 %49, -128
  %51 = load ptr, ptr %8, align 4
  %52 = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 2, i32 3
  %53 = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 2, i32 3, i32 0, i32 6
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56, !prof !8

56:                                               ; preds = %47
  %57 = getelementptr i8, ptr %54, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %57, i8 23) #9, !srcloc !14
  br label %59

58:                                               ; preds = %47
  tail call void @nvif_object_wr(ptr noundef %52, i32 noundef 1, i64 noundef 6296532, i32 noundef 23) #9
  br label %59

59:                                               ; preds = %58, %56
  %60 = load ptr, ptr %53, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62, !prof !8

62:                                               ; preds = %59
  %63 = getelementptr i8, ptr %60, i32 6296533
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %63, i8 %50) #9, !srcloc !14
  br label %66

64:                                               ; preds = %59
  %65 = zext i8 %50 to i32
  tail call void @nvif_object_wr(ptr noundef %52, i32 noundef 1, i64 noundef 6296533, i32 noundef %65) #9
  br label %66

66:                                               ; preds = %64, %62
  %67 = tail call zeroext i8 @NVReadVgaSeq(ptr noundef %7, i32 noundef 0, i8 noundef zeroext 1) #9
  %68 = and i8 %67, -33
  tail call void @NVWriteVgaSeq(ptr noundef %7, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext %68) #9
  %69 = load ptr, ptr %8, align 4
  %70 = getelementptr inbounds %struct.nouveau_drm, ptr %69, i32 0, i32 2, i32 3, i32 0, i32 6
  %71 = load ptr, ptr %70, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73, !prof !8

73:                                               ; preds = %66
  %74 = getelementptr i8, ptr %71, i32 6817288
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %79

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.nouveau_drm, ptr %69, i32 0, i32 2, i32 3
  %78 = tail call i32 @nvif_object_rd(ptr noundef %77, i32 noundef 4, i64 noundef 6817288) #9
  br label %79

79:                                               ; preds = %76, %73
  %80 = phi i32 [ %75, %73 ], [ %78, %76 ]
  %81 = and i32 %80, -65537
  %82 = load ptr, ptr %8, align 4
  %83 = getelementptr inbounds %struct.nouveau_drm, ptr %82, i32 0, i32 2, i32 3, i32 0, i32 6
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86, !prof !8

86:                                               ; preds = %79
  %87 = getelementptr i8, ptr %84, i32 6817288
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %81) #9, !srcloc !12
  br label %90

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.nouveau_drm, ptr %82, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %89, i32 noundef 4, i64 noundef 6817288, i32 noundef %81) #9
  br label %90

90:                                               ; preds = %88, %86
  tail call void @msleep(i32 noundef 10) #9
  %91 = load ptr, ptr %8, align 4
  %92 = getelementptr inbounds %struct.nouveau_drm, ptr %91, i32 0, i32 2, i32 3
  %93 = getelementptr inbounds %struct.nouveau_drm, ptr %91, i32 0, i32 2, i32 3, i32 0, i32 6
  %94 = load ptr, ptr %93, align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96, !prof !8

96:                                               ; preds = %90
  %97 = getelementptr i8, ptr %94, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %97, i8 40) #9, !srcloc !14
  br label %99

98:                                               ; preds = %90
  tail call void @nvif_object_wr(ptr noundef %92, i32 noundef 1, i64 noundef 6296532, i32 noundef 40) #9
  br label %99

99:                                               ; preds = %98, %96
  %100 = load ptr, ptr %93, align 8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102, !prof !8

102:                                              ; preds = %99
  %103 = getelementptr i8, ptr %100, i32 6296533
  %104 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %103) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %105 = zext i8 %104 to i32
  br label %108

106:                                              ; preds = %99
  %107 = tail call i32 @nvif_object_rd(ptr noundef %92, i32 noundef 1, i64 noundef 6296533) #9
  br label %108

108:                                              ; preds = %106, %102
  %109 = phi i32 [ %105, %102 ], [ %107, %106 ]
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 124
  %112 = load ptr, ptr %8, align 4
  %113 = getelementptr inbounds %struct.nouveau_drm, ptr %112, i32 0, i32 2, i32 3
  %114 = getelementptr inbounds %struct.nouveau_drm, ptr %112, i32 0, i32 2, i32 3, i32 0, i32 6
  %115 = load ptr, ptr %114, align 8
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117, !prof !8

117:                                              ; preds = %108
  %118 = getelementptr i8, ptr %115, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %118, i8 40) #9, !srcloc !14
  br label %120

119:                                              ; preds = %108
  tail call void @nvif_object_wr(ptr noundef %113, i32 noundef 1, i64 noundef 6296532, i32 noundef 40) #9
  br label %120

120:                                              ; preds = %119, %117
  %121 = load ptr, ptr %114, align 8
  %122 = icmp eq ptr %121, null
  br i1 %122, label %125, label %123, !prof !8

123:                                              ; preds = %120
  %124 = getelementptr i8, ptr %121, i32 6296533
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %124, i8 %111) #9, !srcloc !14
  br label %127

125:                                              ; preds = %120
  %126 = zext i8 %111 to i32
  tail call void @nvif_object_wr(ptr noundef %113, i32 noundef 1, i64 noundef 6296533, i32 noundef %126) #9
  br label %127

127:                                              ; preds = %125, %123
  %128 = load ptr, ptr %8, align 4
  %129 = getelementptr inbounds %struct.nouveau_drm, ptr %128, i32 0, i32 2, i32 3
  %130 = getelementptr inbounds %struct.nouveau_drm, ptr %128, i32 0, i32 2, i32 3, i32 0, i32 6
  %131 = load ptr, ptr %130, align 8
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133, !prof !8

133:                                              ; preds = %127
  %134 = getelementptr i8, ptr %131, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %134, i8 26) #9, !srcloc !14
  br label %136

135:                                              ; preds = %127
  tail call void @nvif_object_wr(ptr noundef %129, i32 noundef 1, i64 noundef 6296532, i32 noundef 26) #9
  br label %136

136:                                              ; preds = %135, %133
  %137 = load ptr, ptr %130, align 8
  %138 = icmp eq ptr %137, null
  br i1 %138, label %143, label %139, !prof !8

139:                                              ; preds = %136
  %140 = getelementptr i8, ptr %137, i32 6296533
  %141 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %140) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %142 = zext i8 %141 to i32
  br label %145

143:                                              ; preds = %136
  %144 = tail call i32 @nvif_object_rd(ptr noundef %129, i32 noundef 1, i64 noundef 6296533) #9
  br label %145

145:                                              ; preds = %143, %139
  %146 = phi i32 [ %142, %139 ], [ %144, %143 ]
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 63
  %149 = load ptr, ptr %8, align 4
  %150 = getelementptr inbounds %struct.nouveau_drm, ptr %149, i32 0, i32 2, i32 3
  %151 = getelementptr inbounds %struct.nouveau_drm, ptr %149, i32 0, i32 2, i32 3, i32 0, i32 6
  %152 = load ptr, ptr %151, align 8
  %153 = icmp eq ptr %152, null
  br i1 %153, label %156, label %154, !prof !8

154:                                              ; preds = %145
  %155 = getelementptr i8, ptr %152, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %155, i8 26) #9, !srcloc !14
  br label %157

156:                                              ; preds = %145
  tail call void @nvif_object_wr(ptr noundef %150, i32 noundef 1, i64 noundef 6296532, i32 noundef 26) #9
  br label %157

157:                                              ; preds = %156, %154
  %158 = load ptr, ptr %151, align 8
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160, !prof !8

160:                                              ; preds = %157
  %161 = getelementptr i8, ptr %158, i32 6296533
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %161, i8 %148) #9, !srcloc !14
  br label %164

162:                                              ; preds = %157
  %163 = zext i8 %148 to i32
  tail call void @nvif_object_wr(ptr noundef %150, i32 noundef 1, i64 noundef 6296533, i32 noundef %163) #9
  br label %164

164:                                              ; preds = %162, %160
  %165 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3, i32 0, i32 6
  %166 = load ptr, ptr %165, align 8
  %167 = icmp eq ptr %166, null
  br i1 %167, label %170, label %168, !prof !8

168:                                              ; preds = %164
  %169 = getelementptr i8, ptr %166, i32 6820807
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %169, i8 0) #9, !srcloc !14
  br label %171

170:                                              ; preds = %164
  tail call void @nvif_object_wr(ptr noundef %10, i32 noundef 1, i64 noundef 6820807, i32 noundef 0) #9
  br label %171

171:                                              ; preds = %170, %168
  %172 = load ptr, ptr %165, align 8
  %173 = icmp eq ptr %172, null
  br i1 %173, label %178, label %174, !prof !8

174:                                              ; preds = %171
  %175 = getelementptr i8, ptr %172, i32 6820809
  %176 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %175) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %177 = zext i8 %176 to i32
  br label %180

178:                                              ; preds = %171
  %179 = tail call i32 @nvif_object_rd(ptr noundef %10, i32 noundef 1, i64 noundef 6820809) #9
  br label %180

180:                                              ; preds = %178, %174
  %181 = phi i32 [ %177, %174 ], [ %179, %178 ]
  %182 = trunc i32 %181 to i8
  %183 = load ptr, ptr %165, align 8
  %184 = icmp eq ptr %183, null
  br i1 %184, label %189, label %185, !prof !8

185:                                              ; preds = %180
  %186 = getelementptr i8, ptr %183, i32 6820809
  %187 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %186) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %188 = zext i8 %187 to i32
  br label %191

189:                                              ; preds = %180
  %190 = tail call i32 @nvif_object_rd(ptr noundef %10, i32 noundef 1, i64 noundef 6820809) #9
  br label %191

191:                                              ; preds = %189, %185
  %192 = phi i32 [ %188, %185 ], [ %190, %189 ]
  %193 = trunc i32 %192 to i8
  %194 = load ptr, ptr %165, align 8
  %195 = icmp eq ptr %194, null
  br i1 %195, label %200, label %196, !prof !8

196:                                              ; preds = %191
  %197 = getelementptr i8, ptr %194, i32 6820809
  %198 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %197) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %199 = zext i8 %198 to i32
  br label %202

200:                                              ; preds = %191
  %201 = tail call i32 @nvif_object_rd(ptr noundef %10, i32 noundef 1, i64 noundef 6820809) #9
  br label %202

202:                                              ; preds = %200, %196
  %203 = phi i32 [ %199, %196 ], [ %201, %200 ]
  %204 = trunc i32 %203 to i8
  %205 = load ptr, ptr %165, align 8
  %206 = icmp eq ptr %205, null
  br i1 %206, label %211, label %207, !prof !8

207:                                              ; preds = %202
  %208 = getelementptr i8, ptr %205, i32 6820806
  %209 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %208) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %210 = zext i8 %209 to i32
  br label %213

211:                                              ; preds = %202
  %212 = tail call i32 @nvif_object_rd(ptr noundef %10, i32 noundef 1, i64 noundef 6820806) #9
  br label %213

213:                                              ; preds = %211, %207
  %214 = phi i32 [ %210, %207 ], [ %212, %211 ]
  %215 = trunc i32 %214 to i8
  %216 = load ptr, ptr %165, align 8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %220, label %218, !prof !8

218:                                              ; preds = %213
  %219 = getelementptr i8, ptr %216, i32 6820806
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %219, i8 0) #9, !srcloc !14
  br label %221

220:                                              ; preds = %213
  tail call void @nvif_object_wr(ptr noundef %10, i32 noundef 1, i64 noundef 6820806, i32 noundef 0) #9
  br label %221

221:                                              ; preds = %220, %218
  %222 = load ptr, ptr %8, align 4
  %223 = getelementptr inbounds %struct.nouveau_drm, ptr %222, i32 0, i32 2, i32 3, i32 0, i32 6
  %224 = load ptr, ptr %223, align 8
  %225 = icmp eq ptr %224, null
  br i1 %225, label %229, label %226, !prof !8

226:                                              ; preds = %221
  %227 = getelementptr i8, ptr %224, i32 6817280
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %232

229:                                              ; preds = %221
  %230 = getelementptr inbounds %struct.nouveau_drm, ptr %222, i32 0, i32 2, i32 3
  %231 = tail call i32 @nvif_object_rd(ptr noundef %230, i32 noundef 4, i64 noundef 6817280) #9
  br label %232

232:                                              ; preds = %229, %226
  %233 = phi i32 [ %228, %226 ], [ %231, %229 ]
  %234 = and i32 %233, -1179697
  %235 = or i32 %234, 48
  %236 = load ptr, ptr %8, align 4
  %237 = getelementptr inbounds %struct.nouveau_drm, ptr %236, i32 0, i32 2, i32 3, i32 0, i32 6
  %238 = load ptr, ptr %237, align 8
  %239 = icmp eq ptr %238, null
  br i1 %239, label %242, label %240, !prof !8

240:                                              ; preds = %232
  %241 = getelementptr i8, ptr %238, i32 6817280
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %241, i32 %235) #9, !srcloc !12
  br label %244

242:                                              ; preds = %232
  %243 = getelementptr inbounds %struct.nouveau_drm, ptr %236, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %243, i32 noundef 4, i64 noundef 6817280, i32 noundef %235) #9
  br label %244

244:                                              ; preds = %242, %240
  %245 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  br label %246

246:                                              ; preds = %404, %244
  %247 = phi i32 [ %407, %404 ], [ 8, %244 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i16 0, ptr %6, align 2, !annotation !18
  %248 = load ptr, ptr %165, align 8
  %249 = icmp eq ptr %248, null
  br i1 %249, label %252, label %250, !prof !8

250:                                              ; preds = %246
  %251 = getelementptr i8, ptr %248, i32 6820808
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %251, i8 0) #9, !srcloc !14
  br label %253

252:                                              ; preds = %246
  call void @nvif_object_wr(ptr noundef %10, i32 noundef 1, i64 noundef 6820808, i32 noundef 0) #9
  br label %253

253:                                              ; preds = %252, %250
  %254 = load ptr, ptr %165, align 8
  %255 = icmp eq ptr %254, null
  br i1 %255, label %258, label %256, !prof !8

256:                                              ; preds = %253
  %257 = getelementptr i8, ptr %254, i32 6820809
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %257, i8 0) #9, !srcloc !14
  br label %259

258:                                              ; preds = %253
  call void @nvif_object_wr(ptr noundef %10, i32 noundef 1, i64 noundef 6820809, i32 noundef 0) #9
  br label %259

259:                                              ; preds = %258, %256
  %260 = load ptr, ptr %165, align 8
  %261 = icmp eq ptr %260, null
  br i1 %261, label %264, label %262, !prof !8

262:                                              ; preds = %259
  %263 = getelementptr i8, ptr %260, i32 6820809
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %263, i8 0) #9, !srcloc !14
  br label %265

264:                                              ; preds = %259
  call void @nvif_object_wr(ptr noundef %10, i32 noundef 1, i64 noundef 6820809, i32 noundef 0) #9
  br label %265

265:                                              ; preds = %264, %262
  %266 = load ptr, ptr %165, align 8
  %267 = icmp eq ptr %266, null
  br i1 %267, label %271, label %268, !prof !8

268:                                              ; preds = %265
  %269 = getelementptr i8, ptr %266, i32 6820809
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  %270 = trunc i32 %247 to i8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %269, i8 %270) #9, !srcloc !14
  br label %272

271:                                              ; preds = %265
  call void @nvif_object_wr(ptr noundef %10, i32 noundef 1, i64 noundef 6820809, i32 noundef %247) #9
  br label %272

272:                                              ; preds = %271, %268
  br label %273

273:                                              ; preds = %398, %272
  %274 = phi i32 [ %399, %398 ], [ 0, %272 ]
  %275 = load ptr, ptr %8, align 4
  %276 = getelementptr inbounds %struct.nouveau_drm, ptr %275, i32 0, i32 2, i32 3
  %277 = getelementptr inbounds %struct.nouveau_drm, ptr %275, i32 0, i32 2, i32 3, i32 0, i32 6
  br label %278

278:                                              ; preds = %391, %273
  %279 = phi i32 [ 0, %273 ], [ %392, %391 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false) #9, !annotation !18
  call void @nvif_timer_wait_init(ptr noundef %276, i64 noundef 10000000, ptr noundef nonnull %3) #9
  br label %280

280:                                              ; preds = %292, %278
  %281 = load ptr, ptr %277, align 8
  %282 = icmp eq ptr %281, null
  br i1 %282, label %286, label %283, !prof !8

283:                                              ; preds = %280
  %284 = getelementptr i8, ptr %281, i32 6296538
  %285 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %288

286:                                              ; preds = %280
  %287 = call i32 @nvif_object_rd(ptr noundef %276, i32 noundef 4, i64 noundef 6296538) #9
  br label %288

288:                                              ; preds = %286, %283
  %289 = phi i32 [ %285, %283 ], [ %287, %286 ]
  %290 = and i32 %289, 1
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %288
  %293 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %3) #9
  %294 = icmp sgt i64 %293, -1
  br i1 %294, label %280, label %295

295:                                              ; preds = %292
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  br label %403

296:                                              ; preds = %288
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false) #9, !annotation !18
  call void @nvif_timer_wait_init(ptr noundef %276, i64 noundef 10000000, ptr noundef nonnull %4) #9
  br label %297

297:                                              ; preds = %309, %296
  %298 = load ptr, ptr %277, align 8
  %299 = icmp eq ptr %298, null
  br i1 %299, label %303, label %300, !prof !8

300:                                              ; preds = %297
  %301 = getelementptr i8, ptr %298, i32 6296538
  %302 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %301) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %305

303:                                              ; preds = %297
  %304 = call i32 @nvif_object_rd(ptr noundef %276, i32 noundef 4, i64 noundef 6296538) #9
  br label %305

305:                                              ; preds = %303, %300
  %306 = phi i32 [ %302, %300 ], [ %304, %303 ]
  %307 = and i32 %306, 1
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %305
  %310 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %4) #9
  %311 = icmp sgt i64 %310, -1
  br i1 %311, label %297, label %312

312:                                              ; preds = %309
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #9
  br label %403

313:                                              ; preds = %305
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i32 40, i1 false) #9, !annotation !18
  call void @nvif_timer_wait_init(ptr noundef %276, i64 noundef 10000000, ptr noundef nonnull %5) #9
  br label %314

314:                                              ; preds = %326, %313
  %315 = load ptr, ptr %277, align 8
  %316 = icmp eq ptr %315, null
  br i1 %316, label %320, label %317, !prof !8

317:                                              ; preds = %314
  %318 = getelementptr i8, ptr %315, i32 6296538
  %319 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %318) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %322

320:                                              ; preds = %314
  %321 = call i32 @nvif_object_rd(ptr noundef %276, i32 noundef 4, i64 noundef 6296538) #9
  br label %322

322:                                              ; preds = %320, %317
  %323 = phi i32 [ %319, %317 ], [ %321, %320 ]
  %324 = and i32 %323, 1
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %330, label %326

326:                                              ; preds = %322
  %327 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %5) #9
  %328 = icmp sgt i64 %327, -1
  br i1 %328, label %314, label %329

329:                                              ; preds = %326
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #9
  br label %403

330:                                              ; preds = %322
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #9
  %331 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %331(i32 noundef 21474800) #9
  %332 = load ptr, ptr %277, align 8
  %333 = icmp eq ptr %332, null
  br i1 %333, label %338, label %334, !prof !8

334:                                              ; preds = %330
  %335 = getelementptr i8, ptr %332, i32 6296514
  %336 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %335) #9, !srcloc !15
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %337 = zext i8 %336 to i32
  br label %340

338:                                              ; preds = %330
  %339 = call i32 @nvif_object_rd(ptr noundef %276, i32 noundef 1, i64 noundef 6296514) #9
  br label %340

340:                                              ; preds = %338, %334
  %341 = phi i32 [ %337, %334 ], [ %339, %338 ]
  %342 = and i32 %341, 16
  %343 = icmp ne i32 %342, 0
  br label %344

344:                                              ; preds = %383, %340
  %345 = phi i32 [ 0, %340 ], [ %384, %383 ]
  %346 = phi i1 [ %343, %340 ], [ %381, %383 ]
  %347 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %347(i32 noundef 21474800) #9
  %348 = load ptr, ptr %277, align 8
  %349 = icmp eq ptr %348, null
  br i1 %349, label %354, label %350, !prof !8

350:                                              ; preds = %344
  %351 = getelementptr i8, ptr %348, i32 6296514
  %352 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %351) #9, !srcloc !15
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %353 = zext i8 %352 to i32
  br label %356

354:                                              ; preds = %344
  %355 = call i32 @nvif_object_rd(ptr noundef %276, i32 noundef 1, i64 noundef 6296514) #9
  br label %356

356:                                              ; preds = %354, %350
  %357 = phi i32 [ %353, %350 ], [ %355, %354 ]
  %358 = and i32 %357, 16
  %359 = icmp ne i32 %358, 0
  %360 = zext i1 %346 to i32
  %361 = lshr exact i32 %358, 4
  %362 = icmp eq i32 %361, %360
  br i1 %362, label %379, label %363

363:                                              ; preds = %356
  %364 = load ptr, ptr %277, align 8
  %365 = icmp eq ptr %364, null
  br i1 %365, label %370, label %366, !prof !8

366:                                              ; preds = %363
  %367 = getelementptr i8, ptr %364, i32 6296514
  %368 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %367) #9, !srcloc !15
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %369 = zext i8 %368 to i32
  br label %372

370:                                              ; preds = %363
  %371 = call i32 @nvif_object_rd(ptr noundef %276, i32 noundef 1, i64 noundef 6296514) #9
  br label %372

372:                                              ; preds = %370, %366
  %373 = phi i32 [ %369, %366 ], [ %371, %370 ]
  %374 = lshr i32 %373, 4
  %375 = and i32 %374, 1
  %376 = icmp eq i32 %361, %375
  %377 = xor i1 %359, %376
  %378 = select i1 %376, i1 %359, i1 %346
  br label %379

379:                                              ; preds = %372, %356
  %380 = phi i1 [ %359, %356 ], [ %377, %372 ]
  %381 = phi i1 [ %346, %356 ], [ %378, %372 ]
  %382 = xor i1 %380, %381
  br i1 %382, label %383, label %388

383:                                              ; preds = %379
  %384 = add nuw nsw i32 %345, 1
  %385 = icmp eq i32 %384, 20
  br i1 %385, label %386, label %344

386:                                              ; preds = %383
  %387 = getelementptr i8, ptr %6, i32 %279
  store i8 0, ptr %387, align 1
  br label %391

388:                                              ; preds = %379
  %389 = getelementptr i8, ptr %6, i32 %279
  %390 = zext i1 %381 to i8
  store i8 %390, ptr %389, align 1
  br label %391

391:                                              ; preds = %388, %386
  %392 = add nuw nsw i32 %279, 1
  %393 = icmp eq i32 %392, 2
  br i1 %393, label %394, label %278

394:                                              ; preds = %391
  %395 = load i8, ptr %6, align 2, !range !19
  %396 = load i8, ptr %245, align 1, !range !19
  %397 = icmp eq i8 %395, %396
  br i1 %397, label %404, label %398

398:                                              ; preds = %394
  %399 = add nuw nsw i32 %274, 1
  %400 = icmp eq i32 %399, 10
  br i1 %400, label %401, label %273

401:                                              ; preds = %398
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  %402 = add nuw nsw i32 %247, 1
  br label %411

403:                                              ; preds = %329, %312, %295
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  br label %411

404:                                              ; preds = %394
  %405 = icmp ne i32 %274, 10
  %406 = icmp ne i8 %395, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  %407 = add nuw nsw i32 %247, 1
  %408 = icmp ult i32 %247, 23
  %409 = select i1 %408, i1 %405, i1 false
  %410 = select i1 %409, i1 %406, i1 false
  br i1 %410, label %246, label %411

411:                                              ; preds = %404, %403, %401
  %412 = phi i32 [ %247, %403 ], [ %402, %401 ], [ %407, %404 ]
  %413 = trunc i32 %412 to i8
  %414 = load ptr, ptr %165, align 8
  %415 = icmp eq ptr %414, null
  br i1 %415, label %418, label %416, !prof !8

416:                                              ; preds = %411
  %417 = getelementptr i8, ptr %414, i32 6820806
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %417, i8 %215) #9, !srcloc !14
  br label %420

418:                                              ; preds = %411
  %419 = and i32 %214, 255
  call void @nvif_object_wr(ptr noundef %10, i32 noundef 1, i64 noundef 6820806, i32 noundef %419) #9
  br label %420

420:                                              ; preds = %418, %416
  %421 = load ptr, ptr %8, align 4
  %422 = getelementptr inbounds %struct.nouveau_drm, ptr %421, i32 0, i32 2, i32 3, i32 0, i32 6
  %423 = load ptr, ptr %422, align 8
  %424 = icmp eq ptr %423, null
  br i1 %424, label %427, label %425, !prof !8

425:                                              ; preds = %420
  %426 = getelementptr i8, ptr %423, i32 6817280
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %426, i32 %233) #9, !srcloc !12
  br label %429

427:                                              ; preds = %420
  %428 = getelementptr inbounds %struct.nouveau_drm, ptr %421, i32 0, i32 2, i32 3
  call void @nvif_object_wr(ptr noundef %428, i32 noundef 4, i64 noundef 6817280, i32 noundef %233) #9
  br label %429

429:                                              ; preds = %427, %425
  %430 = load ptr, ptr %165, align 8
  %431 = icmp eq ptr %430, null
  br i1 %431, label %434, label %432, !prof !8

432:                                              ; preds = %429
  %433 = getelementptr i8, ptr %430, i32 6820808
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %433, i8 0) #9, !srcloc !14
  br label %435

434:                                              ; preds = %429
  call void @nvif_object_wr(ptr noundef %10, i32 noundef 1, i64 noundef 6820808, i32 noundef 0) #9
  br label %435

435:                                              ; preds = %434, %432
  %436 = load ptr, ptr %165, align 8
  %437 = icmp eq ptr %436, null
  br i1 %437, label %440, label %438, !prof !8

438:                                              ; preds = %435
  %439 = getelementptr i8, ptr %436, i32 6820809
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %439, i8 %182) #9, !srcloc !14
  br label %442

440:                                              ; preds = %435
  %441 = and i32 %181, 255
  call void @nvif_object_wr(ptr noundef %10, i32 noundef 1, i64 noundef 6820809, i32 noundef %441) #9
  br label %442

442:                                              ; preds = %440, %438
  %443 = load ptr, ptr %165, align 8
  %444 = icmp eq ptr %443, null
  br i1 %444, label %447, label %445, !prof !8

445:                                              ; preds = %442
  %446 = getelementptr i8, ptr %443, i32 6820809
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %446, i8 %193) #9, !srcloc !14
  br label %449

447:                                              ; preds = %442
  %448 = and i32 %192, 255
  call void @nvif_object_wr(ptr noundef %10, i32 noundef 1, i64 noundef 6820809, i32 noundef %448) #9
  br label %449

449:                                              ; preds = %447, %445
  %450 = load ptr, ptr %165, align 8
  %451 = icmp eq ptr %450, null
  br i1 %451, label %454, label %452, !prof !8

452:                                              ; preds = %449
  %453 = getelementptr i8, ptr %450, i32 6820809
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %453, i8 %204) #9, !srcloc !14
  br label %456

454:                                              ; preds = %449
  %455 = and i32 %203, 255
  call void @nvif_object_wr(ptr noundef %10, i32 noundef 1, i64 noundef 6820809, i32 noundef %455) #9
  br label %456

456:                                              ; preds = %454, %452
  %457 = load ptr, ptr %8, align 4
  %458 = getelementptr inbounds %struct.nouveau_drm, ptr %457, i32 0, i32 2, i32 3, i32 0, i32 6
  %459 = load ptr, ptr %458, align 8
  %460 = icmp eq ptr %459, null
  br i1 %460, label %463, label %461, !prof !8

461:                                              ; preds = %456
  %462 = getelementptr i8, ptr %459, i32 6817288
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %462, i32 %80) #9, !srcloc !12
  br label %465

463:                                              ; preds = %456
  %464 = getelementptr inbounds %struct.nouveau_drm, ptr %457, i32 0, i32 2, i32 3
  call void @nvif_object_wr(ptr noundef %464, i32 noundef 4, i64 noundef 6817288, i32 noundef %80) #9
  br label %465

465:                                              ; preds = %463, %461
  %466 = load ptr, ptr %8, align 4
  %467 = getelementptr inbounds %struct.nouveau_drm, ptr %466, i32 0, i32 2, i32 3
  %468 = getelementptr inbounds %struct.nouveau_drm, ptr %466, i32 0, i32 2, i32 3, i32 0, i32 6
  %469 = load ptr, ptr %468, align 8
  %470 = icmp eq ptr %469, null
  br i1 %470, label %473, label %471, !prof !8

471:                                              ; preds = %465
  %472 = getelementptr i8, ptr %469, i32 6296532
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %472, i8 40) #9, !srcloc !14
  br label %474

473:                                              ; preds = %465
  call void @nvif_object_wr(ptr noundef %467, i32 noundef 1, i64 noundef 6296532, i32 noundef 40) #9
  br label %474

474:                                              ; preds = %473, %471
  %475 = load ptr, ptr %468, align 8
  %476 = icmp eq ptr %475, null
  br i1 %476, label %479, label %477, !prof !8

477:                                              ; preds = %474
  %478 = getelementptr i8, ptr %475, i32 6296533
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %478, i8 %110) #9, !srcloc !14
  br label %481

479:                                              ; preds = %474
  %480 = and i32 %109, 255
  call void @nvif_object_wr(ptr noundef %467, i32 noundef 1, i64 noundef 6296533, i32 noundef %480) #9
  br label %481

481:                                              ; preds = %479, %477
  %482 = load ptr, ptr %8, align 4
  %483 = getelementptr inbounds %struct.nouveau_drm, ptr %482, i32 0, i32 2, i32 3
  %484 = getelementptr inbounds %struct.nouveau_drm, ptr %482, i32 0, i32 2, i32 3, i32 0, i32 6
  %485 = load ptr, ptr %484, align 8
  %486 = icmp eq ptr %485, null
  br i1 %486, label %489, label %487, !prof !8

487:                                              ; preds = %481
  %488 = getelementptr i8, ptr %485, i32 6296532
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %488, i8 26) #9, !srcloc !14
  br label %490

489:                                              ; preds = %481
  call void @nvif_object_wr(ptr noundef %483, i32 noundef 1, i64 noundef 6296532, i32 noundef 26) #9
  br label %490

490:                                              ; preds = %489, %487
  %491 = load ptr, ptr %484, align 8
  %492 = icmp eq ptr %491, null
  br i1 %492, label %495, label %493, !prof !8

493:                                              ; preds = %490
  %494 = getelementptr i8, ptr %491, i32 6296533
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %494, i8 %147) #9, !srcloc !14
  br label %497

495:                                              ; preds = %490
  %496 = and i32 %146, 255
  call void @nvif_object_wr(ptr noundef %483, i32 noundef 1, i64 noundef 6296533, i32 noundef %496) #9
  br label %497

497:                                              ; preds = %495, %493
  call void @NVWriteVgaSeq(ptr noundef %7, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext %67) #9
  %498 = load ptr, ptr %8, align 4
  %499 = getelementptr inbounds %struct.nouveau_drm, ptr %498, i32 0, i32 2, i32 3
  %500 = getelementptr inbounds %struct.nouveau_drm, ptr %498, i32 0, i32 2, i32 3, i32 0, i32 6
  %501 = load ptr, ptr %500, align 8
  %502 = icmp eq ptr %501, null
  br i1 %502, label %505, label %503, !prof !8

503:                                              ; preds = %497
  %504 = getelementptr i8, ptr %501, i32 6296532
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %504, i8 23) #9, !srcloc !14
  br label %506

505:                                              ; preds = %497
  call void @nvif_object_wr(ptr noundef %499, i32 noundef 1, i64 noundef 6296532, i32 noundef 23) #9
  br label %506

506:                                              ; preds = %505, %503
  %507 = load ptr, ptr %500, align 8
  %508 = icmp eq ptr %507, null
  br i1 %508, label %511, label %509, !prof !8

509:                                              ; preds = %506
  %510 = getelementptr i8, ptr %507, i32 6296533
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %510, i8 %49) #9, !srcloc !14
  br label %513

511:                                              ; preds = %506
  %512 = and i32 %48, 255
  call void @nvif_object_wr(ptr noundef %499, i32 noundef 1, i64 noundef 6296533, i32 noundef %512) #9
  br label %513

513:                                              ; preds = %511, %509
  %514 = icmp eq i8 %413, 24
  br i1 %514, label %515, label %527

515:                                              ; preds = %513
  %516 = load i32, ptr @__drm_debug, align 4
  %517 = and i32 %516, 2
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %527, label %519

519:                                              ; preds = %515
  %520 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 1
  %521 = load ptr, ptr %520, align 8
  %522 = getelementptr inbounds %struct.nouveau_drm, ptr %521, i32 0, i32 3
  %523 = load ptr, ptr %522, align 8
  %524 = getelementptr inbounds %struct.drm_device, ptr %523, i32 0, i32 2
  %525 = load ptr, ptr %524, align 4
  %526 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %525, ptr noundef nonnull @.str.3, ptr noundef %526) #11
  br label %527

527:                                              ; preds = %519, %515, %513
  %528 = phi i32 [ 1, %519 ], [ 1, %515 ], [ 2, %513 ]
  ret i32 %528
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVSetOwner(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @NVReadVgaSeq(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVWriteVgaSeq(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_dac_destroy(ptr noundef %0) #2 {
  tail call void @drm_encoder_cleanup(ptr noundef %0) #9
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!9 = !{i64 3341015}
!10 = !{i64 2150880468}
!11 = !{i64 2150881690}
!12 = !{i64 3340597}
!13 = !{i64 2150880820}
!14 = !{i64 3340400}
!15 = !{i64 3340795}
!16 = !{i64 2150879522}
!17 = !{i8 0, i8 9}
!18 = !{!"auto-init"}
!19 = !{i8 0, i8 2}
