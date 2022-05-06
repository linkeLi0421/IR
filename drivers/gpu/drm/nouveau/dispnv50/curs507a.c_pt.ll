; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/curs507a.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/curs507a.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_wimm_func = type { ptr, ptr }
%struct.nv50_wndw_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nv50_wndw = type { ptr, ptr, i32, %struct.nv50_disp_interlock, %struct.anon.104, %struct.drm_plane, %struct.nv50_lut, %struct.nv50_dmac, %struct.nv50_dmac, %struct.nvif_notify, i16, i16, i32 }
%struct.nv50_disp_interlock = type { i32, i32, i32 }
%struct.anon.104 = type { ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.103 }
%struct.anon.103 = type { ptr, i64 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.77, ptr, i32, ptr, i8, i32 }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.77 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.110, %struct.anon.111, %struct.anon.113, ptr, %struct.anon.114, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.115, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.127 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.110 = type { ptr, i32, i32, i8 }
%struct.anon.111 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.112] }
%struct.anon.112 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.113 = type { i64, i64 }
%struct.anon.114 = type { i32, i64 }
%struct.anon.115 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.122, %struct.anon.123, %struct.anon.124, %struct.anon.125 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.116, i8 }
%union.anon.116 = type { %struct.anon.120 }
%struct.anon.120 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.122 = type { i32 }
%struct.anon.123 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.124 = type { i16, i16 }
%struct.anon.125 = type { i16, i16, i16, %struct.anon.126, i16 }
%struct.anon.126 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.127 = type { ptr, %struct.mutex, i8 }
%struct.nv50_wndw_atom = type { %struct.drm_plane_state, ptr, i8, %struct.anon.78, %struct.anon.79, [4 x i8], %struct.anon.80, %struct.anon.82, %struct.anon.83, %struct.anon.84, %struct.anon.85, %struct.anon.86, %union.nv50_wndw_atom_mask, %union.nv50_wndw_atom_mask }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.anon.78 = type { i32, i16 }
%struct.anon.79 = type { i32, i16, i32, i32 }
%struct.anon.80 = type { i32, [4 x i8], %struct.anon.81 }
%struct.anon.81 = type { [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.82 = type { [12 x i32], i8 }
%struct.anon.83 = type { i8, i8, i16, [3 x i16], [3 x i32], i16, i16, [6 x i32], [6 x i64] }
%struct.anon.84 = type { i16, i16, i16, i16, i16, i16 }
%struct.anon.85 = type { i16, i16 }
%struct.anon.86 = type { i8, i8, i8 }
%union.nv50_wndw_atom_mask = type { %struct.anon.87 }
%struct.anon.87 = type { i8 }
%struct.nv50_disp_cursor_v0 = type { i8, i8, [6 x i8] }
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.88, %struct.anon.89, %struct.nv50_head_mode, %struct.anon.92, %struct.anon.93, %struct.anon.94, %struct.anon.95, %struct.anon.96, %struct.anon.97, %struct.anon.98, %struct.anon.100, %struct.nv50_crc_atom, %struct.anon.101, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.anon.88 = type { i32, i32, i32 }
%struct.anon.89 = type { i16, i16, i16, i16 }
%struct.nv50_head_mode = type { i8, i32, %struct.anon.90, %struct.anon.91 }
%struct.anon.90 = type { i16, i16, i16, i16 }
%struct.anon.91 = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.anon.92 = type { i8, i32, [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.93 = type { i8, i32, [5 x i8], i8, i16, i32, i16, i16, i16, i16, [4 x i8] }
%struct.anon.94 = type { i8, i32, [6 x i8], i8 }
%struct.anon.95 = type { i8, i8, i16, i16, i16, i16 }
%struct.anon.96 = type { i8 }
%struct.anon.97 = type { i8 }
%struct.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { i16, i16 }
%struct.anon.100 = type { i8, i8 }
%struct.nv50_crc_atom = type { i32 }
%struct.anon.101 = type { i32, i8 }
%union.nv50_head_atom_mask = type { %struct.anon.102 }
%struct.anon.102 = type { i16 }
%struct.nv50_head_func = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }

@.str = private unnamed_addr constant [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/curs507a.c\00", align 1
@curs507a = dso_local constant %struct.nv50_wimm_func { ptr @curs507a_point, ptr @curs507a_update }, align 4
@curs507a_wndw = internal constant %struct.nv50_wndw_func { ptr @curs507a_acquire, ptr @curs507a_release, ptr @curs507a_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"curs\00", align 1
@curs507a_format = internal constant [2 x i32] [i32 875713089, i32 0], align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"kmsCurs\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%s: curs%04x allocation failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"%s: Plane width/height must be equal for cursors\0A\00", align 1
@.str.5 = private unnamed_addr constant [85 x i8] c"%s: Plane width must be equal to fb width for cursors (height can be larger though)\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"%s: Cursor planes do not support framebuffer offsets\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @curs507a_space(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.nvif_timer_wait, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3
  call void @nvif_timer_wait_init(ptr noundef %7, i64 noundef 100000000, ptr noundef nonnull %2) #7
  %8 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 6
  %9 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 8
  br label %10

10:                                               ; preds = %22, %1
  %11 = load ptr, ptr %8, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13, !prof !9

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %11, i32 8
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %18

16:                                               ; preds = %10
  %17 = call i32 @nvif_object_rd(ptr noundef %9, i32 noundef 4, i64 noundef 8) #7
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %15, %13 ], [ %17, %16 ]
  %20 = and i32 %19, 60
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %2) #7
  %24 = icmp sgt i64 %23, -1
  br i1 %24, label %10, label %26

25:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  br label %27

26:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 9, ptr noundef null) #7
  br label %27

27:                                               ; preds = %26, %25
  %28 = xor i1 %21, true
  ret i1 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @curs507a_point(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.nvif_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false) #7, !annotation !8
  %5 = getelementptr %struct.nv50_wndw, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3
  call void @nvif_timer_wait_init(ptr noundef %9, i64 noundef 100000000, ptr noundef nonnull %3) #7
  %10 = getelementptr %struct.nv50_wndw, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 6
  br label %11

11:                                               ; preds = %23, %2
  %12 = load ptr, ptr %10, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !9

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %12, i32 8
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %19

17:                                               ; preds = %11
  %18 = call i32 @nvif_object_rd(ptr noundef %4, i32 noundef 4, i64 noundef 8) #7
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ %16, %14 ], [ %18, %17 ]
  %21 = and i32 %20, 60
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %3) #7
  %25 = icmp sgt i64 %24, -1
  br i1 %25, label %11, label %26

26:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 9, ptr noundef null) #7
  br label %41

27:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  %28 = load ptr, ptr %10, align 8
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 10
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 10, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = shl nuw i32 %35, 16
  %37 = or i32 %36, %32
  br i1 %29, label %40, label %38, !prof !9

38:                                               ; preds = %27
  %39 = getelementptr i8, ptr %28, i32 132
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #7, !srcloc !13
  br label %41

40:                                               ; preds = %27
  call void @nvif_object_wr(ptr noundef %4, i32 noundef 4, i64 noundef 132, i32 noundef %37) #7
  br label %41

41:                                               ; preds = %40, %38, %26
  %42 = phi i32 [ 0, %38 ], [ 0, %40 ], [ -110, %26 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @curs507a_update(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.nvif_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false) #7, !annotation !8
  %5 = getelementptr %struct.nv50_wndw, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3
  call void @nvif_timer_wait_init(ptr noundef %9, i64 noundef 100000000, ptr noundef nonnull %3) #7
  %10 = getelementptr %struct.nv50_wndw, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 6
  br label %11

11:                                               ; preds = %23, %2
  %12 = load ptr, ptr %10, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !9

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %12, i32 8
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %19

17:                                               ; preds = %11
  %18 = call i32 @nvif_object_rd(ptr noundef %4, i32 noundef 4, i64 noundef 8) #7
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ %16, %14 ], [ %18, %17 ]
  %21 = and i32 %20, 60
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %3) #7
  %25 = icmp sgt i64 %24, -1
  br i1 %25, label %11, label %26

26:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 9, ptr noundef null) #7
  br label %33

27:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  %28 = load ptr, ptr %10, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30, !prof !9

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %28, i32 128
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #7, !srcloc !13
  br label %33

32:                                               ; preds = %27
  call void @nvif_object_wr(ptr noundef %4, i32 noundef 4, i64 noundef 128, i32 noundef 0) #7
  br label %33

33:                                               ; preds = %32, %30, %26
  %34 = phi i32 [ 0, %30 ], [ 0, %32 ], [ -110, %26 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @curs507a_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.nv50_disp_cursor_v0, align 8
  %8 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  store i64 0, ptr %7, align 8, !annotation !8
  %9 = getelementptr inbounds %struct.nv50_disp_cursor_v0, ptr %7, i32 0, i32 1
  %10 = trunc i32 %2 to i8
  store i8 %10, ptr %9, align 1
  %11 = getelementptr inbounds %struct.nv50_disp_cursor_v0, ptr %7, i32 0, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(6) %11, i8 0, i32 6, i1 false)
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 19
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store ptr null, ptr %8, align 4, !annotation !8
  %19 = shl nuw i32 1, %2
  %20 = call i32 @nv50_wndw_new_(ptr noundef nonnull @curs507a_wndw, ptr noundef %13, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %2, ptr noundef nonnull @curs507a_format, i32 noundef %19, i32 noundef 1, i32 noundef %4, ptr noundef nonnull %8) #7
  %21 = load ptr, ptr %8, align 4
  store ptr %21, ptr %5, align 4
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %6
  %24 = load ptr, ptr %18, align 8
  %25 = getelementptr inbounds %struct.nv50_wndw, ptr %21, i32 0, i32 8
  %26 = call i32 @nvif_object_ctor(ptr noundef %24, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef %3, ptr noundef nonnull %7, i32 noundef 8, ptr noundef %25) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.3, ptr noundef %35, i32 noundef %3, i32 noundef %26) #8
  br label %43

36:                                               ; preds = %23
  %37 = load ptr, ptr %8, align 4
  %38 = getelementptr inbounds %struct.nv50_wndw, ptr %37, i32 0, i32 8
  %39 = call i32 @nvif_object_map(ptr noundef %38, ptr noundef null, i32 noundef 0) #7
  %40 = load ptr, ptr %8, align 4
  %41 = getelementptr inbounds %struct.nv50_wndw, ptr %40, i32 0, i32 1
  store ptr %0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.nv50_wndw, ptr %40, i32 0, i32 4
  store ptr null, ptr %42, align 8
  br label %43

43:                                               ; preds = %36, %28, %6
  %44 = phi i32 [ %26, %28 ], [ 0, %36 ], [ %20, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_wndw_new_(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_map(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @curs507a_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = shl i32 %1, 3
  %6 = shl nuw i32 1, %5
  %7 = tail call i32 @curs507a_new_(ptr noundef nonnull @curs507a, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %6, ptr noundef %3)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @curs507a_acquire(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -8
  %11 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %1, ptr noundef %2, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %12 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 22
  %13 = load i8, ptr %12, align 4, !range !14
  %14 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 6
  store i8 %13, ptr %14, align 8
  %15 = icmp ne i32 %11, 0
  %16 = icmp eq i8 %13, 0
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %84, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 6
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %18
  %25 = load i32, ptr @__drm_debug, align 4
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %84, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.4, ptr noundef %35) #8
  br label %84

36:                                               ; preds = %18
  %37 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 5
  %38 = load i16, ptr %37, align 8
  %39 = zext i16 %38 to i32
  %40 = icmp eq i32 %20, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %36
  %42 = load i32, ptr @__drm_debug, align 4
  %43 = and i32 %42, 16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %84, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.drm_device, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.5, ptr noundef %52) #8
  br label %84

53:                                               ; preds = %36
  %54 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 8
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 9
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %57, %53
  %62 = load i32, ptr @__drm_debug, align 4
  %63 = and i32 %62, 16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %84, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 1
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.nouveau_drm, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.drm_device, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %71, ptr noundef nonnull @.str.6, ptr noundef %72) #8
  br label %84

73:                                               ; preds = %57
  %74 = load ptr, ptr %10, align 8
  %75 = getelementptr inbounds %struct.nv50_head_func, ptr %74, i32 0, i32 11
  %76 = load ptr, ptr %75, align 4
  %77 = tail call i32 %76(ptr noundef %10, ptr noundef %1, ptr noundef %2) #7
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load ptr, ptr %10, align 8
  %81 = getelementptr inbounds %struct.nv50_head_func, ptr %80, i32 0, i32 12
  %82 = load ptr, ptr %81, align 4
  %83 = tail call i32 %82(ptr noundef %10, ptr noundef %1, ptr noundef %2) #7
  br label %84

84:                                               ; preds = %79, %73, %65, %61, %45, %41, %28, %24, %3
  %85 = phi i32 [ %83, %79 ], [ %11, %3 ], [ -22, %28 ], [ -22, %24 ], [ -22, %45 ], [ -22, %41 ], [ -22, %65 ], [ -22, %61 ], [ %77, %73 ]
  ret i32 %85
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @curs507a_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 6
  store i8 0, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @curs507a_prepare(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #6 {
  %4 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nv50_disp, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nv50_core, ptr %12, i32 0, i32 1, i32 5, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %2, i32 0, i32 8, i32 8
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 6
  %18 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 6, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %14
  %21 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 6, i32 2
  %22 = load i48, ptr %21, align 8
  br i1 %20, label %23, label %28

23:                                               ; preds = %3
  %24 = and i48 %22, 1099511627775
  %25 = zext i48 %24 to i64
  %26 = and i64 %16, 4294967295
  %27 = icmp eq i64 %26, %25
  br i1 %27, label %41, label %28

28:                                               ; preds = %23, %3
  store i32 %14, ptr %18, align 4
  %29 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 6, i32 2
  %30 = trunc i64 %16 to i48
  %31 = and i48 %30, 4294967295
  %32 = and i48 %22, -1099511627776
  %33 = or i48 %32, %31
  store i48 %33, ptr %29, align 8
  %34 = load i8, ptr %17, align 8, !range !14
  %35 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 14
  %36 = load i16, ptr %35, align 8
  %37 = shl nuw nsw i8 %34, 2
  %38 = zext i8 %37 to i16
  %39 = and i16 %36, -5
  %40 = or i16 %39, %38
  store i16 %40, ptr %35, align 8
  br label %41

41:                                               ; preds = %28, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 3950100}
!11 = !{i64 2151489553}
!12 = !{i64 2151490775}
!13 = !{i64 3949682}
!14 = !{i8 0, i8 2}
