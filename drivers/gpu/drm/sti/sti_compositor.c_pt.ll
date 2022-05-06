; ModuleID = '/llk/IR/drivers/gpu/drm/sti/sti_compositor.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_compositor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sti_compositor_data = type { i32, [9 x %struct.sti_compositor_subdev_descriptor] }
%struct.sti_compositor_subdev_descriptor = type { i32, i32, i32 }
%struct.component_ops = type { ptr, ptr }
%struct.sti_compositor = type { ptr, ptr, %struct.sti_compositor_data, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [1 x ptr], [2 x ptr], [2 x %struct.notifier_block] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.71, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.71 = type { i32, ptr }

@compositor_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-compositor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih407_compositor_data }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [15 x i8] c"sti-compositor\00", align 1
@sti_compositor_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @sti_compositor_probe, ptr @sti_compositor_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @compositor_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__UNIQUE_ID_author264 = internal constant [52 x i8] c"author=Benjamin Gaignard <benjamin.gaignard@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description265 = internal constant [46 x i8] c"description=STMicroelectronics SoC DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license266 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@stih407_compositor_data = internal constant %struct.sti_compositor_data { i32 8, [9 x %struct.sti_compositor_subdev_descriptor] [%struct.sti_compositor_subdev_descriptor { i32 4, i32 768, i32 0 }, %struct.sti_compositor_subdev_descriptor { i32 2, i32 256, i32 256 }, %struct.sti_compositor_subdev_descriptor { i32 2, i32 257, i32 512 }, %struct.sti_compositor_subdev_descriptor { i32 2, i32 258, i32 768 }, %struct.sti_compositor_subdev_descriptor { i32 2, i32 259, i32 1024 }, %struct.sti_compositor_subdev_descriptor { i32 3, i32 512, i32 1792 }, %struct.sti_compositor_subdev_descriptor { i32 0, i32 0, i32 3072 }, %struct.sti_compositor_subdev_descriptor { i32 1, i32 1, i32 3328 }, %struct.sti_compositor_subdev_descriptor zeroinitializer] }, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to allocate compositor context\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Get memory resource failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Register mapping failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"compo_main\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Cannot get compo_main clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"compo_aux\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Cannot get compo_aux clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"pix_main\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Cannot get pix_main clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"pix_aux\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Cannot get pix_aux clock\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"compo-main\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"compo-aux\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"st,vtg\00", align 1
@sti_compositor_ops = internal constant %struct.component_ops { ptr @sti_compositor_bind, ptr @sti_compositor_unbind }, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"Unknown subdev component type\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Can't create CURSOR plane\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Can't create GDP plane\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_license266], section "llvm.metadata"

@__mod_of__compositor_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @compositor_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sti_compositor_debugfs_init(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sti_compositor, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @vid_debugfs_init(ptr noundef nonnull %4, ptr noundef %1) #7
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr %struct.sti_compositor, ptr %0, i32 0, i32 9, i32 0
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @sti_mixer_debugfs_init(ptr noundef nonnull %9, ptr noundef %1) #7
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr %struct.sti_compositor, ptr %0, i32 0, i32 9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @sti_mixer_debugfs_init(ptr noundef nonnull %14, ptr noundef %1) #7
  br label %17

17:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vid_debugfs_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_mixer_debugfs_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_compositor_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 188, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %87

8:                                                ; preds = %1
  store ptr %2, ptr %5, align 4
  %9 = getelementptr %struct.sti_compositor, ptr %5, i32 0, i32 12, i32 0
  store ptr @sti_crtc_vblank_cb, ptr %9, align 4
  %10 = getelementptr %struct.sti_compositor, ptr %5, i32 0, i32 12, i32 1
  store ptr @sti_crtc_vblank_cb, ptr %10, align 4
  %11 = tail call ptr @of_match_node(ptr noundef nonnull @compositor_of_match, ptr noundef %4) #7
  %12 = getelementptr inbounds %struct.of_device_id, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/sti/sti_compositor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 192, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.sti_compositor, ptr %5, i32 0, i32 2
  %18 = tail call ptr @of_match_node(ptr noundef nonnull @compositor_of_match, ptr noundef %4) #7
  %19 = getelementptr inbounds %struct.of_device_id, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(112) %17, ptr noundef align 1 dereferenceable(112) %20, i32 112, i1 false)
  %21 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  br label %87

24:                                               ; preds = %16
  %25 = load i32, ptr %21, align 4
  %26 = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 1, %25
  %29 = add i32 %28, %27
  %30 = tail call ptr @devm_ioremap(ptr noundef %2, i32 noundef %25, i32 noundef %29) #7
  %31 = getelementptr inbounds %struct.sti_compositor, ptr %5, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #7
  br label %87

34:                                               ; preds = %24
  %35 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.4) #7
  %36 = getelementptr inbounds %struct.sti_compositor, ptr %5, i32 0, i32 3
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #7
  %39 = ptrtoint ptr %35 to i32
  br label %87

40:                                               ; preds = %34
  %41 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.6) #7
  %42 = getelementptr inbounds %struct.sti_compositor, ptr %5, i32 0, i32 4
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  %45 = ptrtoint ptr %41 to i32
  br label %87

46:                                               ; preds = %40
  %47 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.8) #7
  %48 = getelementptr inbounds %struct.sti_compositor, ptr %5, i32 0, i32 5
  store ptr %47, ptr %48, align 4
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #7
  %51 = ptrtoint ptr %47 to i32
  br label %87

52:                                               ; preds = %46
  %53 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.10) #7
  %54 = getelementptr inbounds %struct.sti_compositor, ptr %5, i32 0, i32 6
  store ptr %53, ptr %54, align 4
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #7
  %57 = ptrtoint ptr %53 to i32
  br label %87

58:                                               ; preds = %52
  %59 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %60 = getelementptr inbounds %struct.sti_compositor, ptr %5, i32 0, i32 7
  store ptr %59, ptr %60, align 4
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = tail call i32 @reset_control_deassert(ptr noundef %59) #7
  br label %64

64:                                               ; preds = %62, %58
  %65 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %66 = getelementptr inbounds %struct.sti_compositor, ptr %5, i32 0, i32 8
  store ptr %65, ptr %66, align 4
  %67 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = tail call i32 @reset_control_deassert(ptr noundef %65) #7
  br label %70

70:                                               ; preds = %68, %64
  %71 = load ptr, ptr %3, align 8
  %72 = tail call fastcc ptr @of_parse_phandle(ptr noundef %71, i32 noundef 0)
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = tail call ptr @of_vtg_find(ptr noundef nonnull %72) #7
  %76 = getelementptr inbounds %struct.sti_compositor, ptr %5, i32 0, i32 11
  store ptr %75, ptr %76, align 4
  br label %77

77:                                               ; preds = %74, %70
  tail call void @of_node_put(ptr noundef %72) #7
  %78 = load ptr, ptr %3, align 8
  %79 = tail call fastcc ptr @of_parse_phandle(ptr noundef %78, i32 noundef 1)
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = tail call ptr @of_vtg_find(ptr noundef nonnull %79) #7
  %83 = getelementptr %struct.sti_compositor, ptr %5, i32 0, i32 11, i32 1
  store ptr %82, ptr %83, align 4
  br label %84

84:                                               ; preds = %81, %77
  tail call void @of_node_put(ptr noundef %79) #7
  %85 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %85, align 8
  %86 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @sti_compositor_ops) #7
  br label %87

87:                                               ; preds = %84, %56, %50, %44, %38, %33, %23, %7
  %88 = phi i32 [ -6, %23 ], [ -6, %33 ], [ %39, %38 ], [ %45, %44 ], [ %51, %50 ], [ %57, %56 ], [ %86, %84 ], [ -12, %7 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_compositor_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @sti_compositor_ops) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_crtc_vblank_cb(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @of_parse_phandle(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !10
  %4 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0, i32 noundef %1, ptr noundef nonnull %3) #7
  %5 = icmp eq i32 %4, 0
  %6 = load ptr, ptr %3, align 4
  %7 = select i1 %5, ptr %6, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #7
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_vtg_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_compositor_bind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sti_compositor, ptr %5, i32 0, i32 2
  %9 = getelementptr inbounds %struct.sti_compositor, ptr %5, i32 0, i32 2, i32 1
  %10 = load i32, ptr %8, align 4
  store ptr %5, ptr %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %101, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.sti_compositor, ptr %5, i32 0, i32 1
  br label %19

14:                                               ; preds = %48
  br i1 %11, label %101, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.sti_compositor, ptr %5, i32 0, i32 1
  %17 = shl nsw i32 -1, %49
  %18 = xor i32 %17, -1
  br label %53

19:                                               ; preds = %48, %12
  %20 = phi i32 [ 0, %12 ], [ %50, %48 ]
  %21 = phi i32 [ 0, %12 ], [ %49, %48 ]
  %22 = phi i32 [ 0, %12 ], [ %51, %48 ]
  %23 = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %9, i32 %22
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %47 [
    i32 3, label %25
    i32 0, label %36
    i32 1, label %36
    i32 2, label %48
    i32 4, label %48
  ]

25:                                               ; preds = %19
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %9, i32 %22, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %13, align 4
  %30 = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %9, i32 %22, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %29, i32 %31
  %33 = tail call ptr @sti_vid_create(ptr noundef %26, ptr noundef %2, i32 noundef %28, ptr noundef %32) #7
  %34 = add i32 %20, 1
  %35 = getelementptr %struct.sti_compositor, ptr %5, i32 0, i32 10, i32 %20
  store ptr %33, ptr %35, align 4
  br label %48

36:                                               ; preds = %19, %19
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %9, i32 %22, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %13, align 4
  %41 = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %9, i32 %22, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %40, i32 %42
  %44 = tail call ptr @sti_mixer_create(ptr noundef %37, ptr noundef %2, i32 noundef %39, ptr noundef %43) #7
  %45 = add i32 %21, 1
  %46 = getelementptr %struct.sti_compositor, ptr %5, i32 0, i32 9, i32 %21
  store ptr %44, ptr %46, align 4
  br label %48

47:                                               ; preds = %19
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #7
  br label %104

48:                                               ; preds = %36, %25, %19, %19
  %49 = phi i32 [ %21, %19 ], [ %21, %19 ], [ %45, %36 ], [ %21, %25 ]
  %50 = phi i32 [ %20, %19 ], [ %20, %19 ], [ %20, %36 ], [ %34, %25 ]
  %51 = add nuw i32 %22, 1
  %52 = icmp eq i32 %51, %10
  br i1 %52, label %14, label %19

53:                                               ; preds = %95, %15
  %54 = phi ptr [ null, %15 ], [ %98, %95 ]
  %55 = phi ptr [ null, %15 ], [ %97, %95 ]
  %56 = phi i32 [ 0, %15 ], [ %96, %95 ]
  %57 = phi i32 [ 0, %15 ], [ %99, %95 ]
  %58 = icmp ult i32 %56, %49
  %59 = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %9, i32 %57
  %60 = load i32, ptr %59, align 4
  switch i32 %60, label %94 [
    i32 0, label %84
    i32 1, label %84
    i32 3, label %84
    i32 4, label %61
    i32 2, label %72
  ]

61:                                               ; preds = %53
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %9, i32 %57, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %16, align 4
  %66 = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %9, i32 %57, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr i8, ptr %65, i32 %67
  %69 = tail call ptr @sti_cursor_create(ptr noundef %2, ptr noundef %62, i32 noundef %64, ptr noundef %68, i32 noundef 1) #7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %61
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #7
  br label %84

72:                                               ; preds = %53
  %73 = zext i1 %58 to i32
  %74 = load ptr, ptr %5, align 4
  %75 = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %9, i32 %57, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = load ptr, ptr %16, align 4
  %78 = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %9, i32 %57, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr i8, ptr %77, i32 %79
  %81 = tail call ptr @sti_gdp_create(ptr noundef %2, ptr noundef %74, i32 noundef %76, ptr noundef %80, i32 noundef %18, i32 noundef %73) #7
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #7
  br label %95

84:                                               ; preds = %72, %71, %61, %53, %53, %53
  %85 = phi ptr [ %55, %72 ], [ %69, %61 ], [ null, %71 ], [ %55, %53 ], [ %55, %53 ], [ %55, %53 ]
  %86 = phi ptr [ %81, %72 ], [ %54, %61 ], [ %54, %71 ], [ %54, %53 ], [ %54, %53 ], [ %54, %53 ]
  %87 = icmp ne ptr %86, null
  %88 = select i1 %58, i1 %87, i1 false
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = getelementptr %struct.sti_compositor, ptr %5, i32 0, i32 9, i32 %56
  %91 = load ptr, ptr %90, align 4
  %92 = tail call i32 @sti_crtc_init(ptr noundef %2, ptr noundef %91, ptr noundef nonnull %86, ptr noundef %85) #7
  %93 = add nuw i32 %56, 1
  br label %95

94:                                               ; preds = %53
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #7
  br label %104

95:                                               ; preds = %89, %84, %83
  %96 = phi i32 [ %56, %83 ], [ %56, %84 ], [ %93, %89 ]
  %97 = phi ptr [ %55, %83 ], [ %85, %84 ], [ null, %89 ]
  %98 = phi ptr [ null, %83 ], [ %86, %84 ], [ null, %89 ]
  %99 = add nuw i32 %57, 1
  %100 = icmp eq i32 %99, %10
  br i1 %100, label %101, label %53

101:                                              ; preds = %95, %14, %3
  %102 = phi i32 [ 0, %14 ], [ 0, %3 ], [ %96, %95 ]
  %103 = tail call i32 @drm_vblank_init(ptr noundef %2, i32 noundef %102) #7
  br label %104

104:                                              ; preds = %101, %94, %47
  %105 = phi i32 [ 1, %47 ], [ 1, %94 ], [ 0, %101 ]
  ret i32 %105
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @sti_compositor_unbind(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #6 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_vid_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_mixer_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_cursor_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_gdp_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_crtc_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }

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
!9 = !{i64 2155121709, i64 2155122210, i64 2155121746, i64 2155121802, i64 2155121836, i64 2155121860, i64 2155121901, i64 2155121922, i64 2155121950, i64 2155121984}
!10 = !{!"auto-init"}
