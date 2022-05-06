; ModuleID = '/llk/IR/drivers/media/platform/marvell-ccic/mmp-driver.c_pt.bc'
source_filename = "../drivers/media/platform/marvell-ccic/mmp-driver.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mmp_camera = type { ptr, %struct.mcam_camera, %struct.list_head, ptr, i32 }
%struct.mcam_camera = type { ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, ptr, i8, i32, [3 x ptr], %struct.clk_hw, ptr, ptr, ptr, ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, i32, i32, %struct.mcam_frame_state, %struct.video_device, %struct.v4l2_async_notifier, ptr, %struct.vb2_queue, %struct.list_head, i32, i32, [32 x i8], i32, [3 x ptr], [3 x i32], %struct.tasklet_struct, i32, [3 x i32], [3 x ptr], ptr, ptr, %struct.v4l2_pix_format, i32, %struct.mutex }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mcam_frame_state = type { i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.74 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.71], %struct.media_entity_enum, i32 }
%struct.anon.71 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.87, i32 }
%union.anon.87 = type { ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.88, i32, i32 }
%union.anon.88 = type { i32 }
%struct.mmp_camera_platform_data = type { i32, i32, i32, [3 x i32], i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__UNIQUE_ID_alias258 = internal constant [26 x i8] c"alias=platform:mmp-camera\00", section ".modinfo", align 1
@__UNIQUE_ID_author259 = internal constant [40 x i8] c"author=Jonathan Corbet <corbet@lwn.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@mmpcam_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mmp2-ccic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@mmpcam_driver = internal global %struct.platform_driver { ptr @mmpcam_probe, ptr @mmpcam_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mmpcam_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmpcam_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"mmp-camera\00", align 1
@mmpcam_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @mmpcam_suspend, ptr @mmpcam_resume, ptr @mmpcam_suspend, ptr @mmpcam_resume, ptr @mmpcam_suspend, ptr @mmpcam_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmpcam_runtime_suspend, ptr @mmpcam_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mipi\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"platform:mmp-camera\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"can't add DT clock provider\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Could not get clk: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias258, ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_license260], section "llvm.metadata"

@__mod_of__mmpcam_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @mmpcam_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mmpcam_driver, ptr noundef nonnull @__this_module) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mmpcam_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmpcam_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 1792, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %123, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %6, align 8
  store ptr %0, ptr %3, align 8
  %7 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 2
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 2, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1
  %10 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 17
  store ptr @mmpcam_calc_dphy, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 3
  store ptr %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.mmp_camera_platform_data, ptr %13, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 6
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.mmp_camera_platform_data, ptr %13, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 7
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %13, align 4
  %23 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 8
  store i32 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.mmp_camera_platform_data, ptr %13, i32 0, i32 3
  %25 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 9
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mmp_camera_platform_data, ptr %13, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 11
  store i32 %27, ptr %28, align 4
  br label %34

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 6
  store i32 3, ptr %30, align 8
  %31 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 7
  store i32 2, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 8
  %33 = load i32, ptr %32, align 8
  br label %34

34:                                               ; preds = %29, %15
  %35 = phi i32 [ %33, %29 ], [ %22, %15 ]
  %36 = icmp eq i32 %35, 5
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.1) #4
  %39 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 3
  store ptr %38, ptr %39, align 8
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 9
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i32, ptr %43, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = ptrtoint ptr %38 to i32
  br label %123

49:                                               ; preds = %41, %37, %34
  %50 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 10
  store i8 0, ptr %50, align 8
  %51 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 4
  store i32 1, ptr %51, align 8
  %52 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 5
  store i32 2, ptr %52, align 4
  %53 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 30
  %54 = tail call i32 @strscpy(ptr noundef %53, ptr noundef nonnull @.str.2, i32 noundef 32) #4
  %55 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 2
  store i32 0, ptr %55, align 8
  %56 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %57 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %56) #4
  store ptr %57, ptr %9, align 8
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = ptrtoint ptr %57 to i32
  br label %123

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.resource, ptr %56, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = load i32, ptr %56, align 4
  %65 = add i32 %63, 1
  %66 = sub i32 %65, %64
  %67 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 1
  store i32 %66, ptr %67, align 4
  %68 = load ptr, ptr %11, align 4
  %69 = tail call ptr @devm_clk_get(ptr noundef %68, ptr noundef nonnull @.str.5) #4
  %70 = getelementptr %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 12
  store ptr %69, ptr %70, align 4
  %71 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #5
  br label %74

74:                                               ; preds = %72, %61
  %75 = load ptr, ptr %11, align 4
  %76 = tail call ptr @devm_clk_get(ptr noundef %75, ptr noundef nonnull @.str.6) #4
  %77 = getelementptr %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 12, i32 1
  store ptr %76, ptr %77, align 4
  %78 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %80, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #5
  br label %81

81:                                               ; preds = %79, %74
  %82 = load ptr, ptr %11, align 4
  %83 = tail call ptr @devm_clk_get(ptr noundef %82, ptr noundef nonnull @.str.7) #4
  %84 = getelementptr %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 12, i32 2
  store ptr %83, ptr %84, align 4
  %85 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %87, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7) #5
  br label %88

88:                                               ; preds = %86, %81
  %89 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %90, null
  %92 = getelementptr inbounds %struct.device_node, ptr %90, i32 0, i32 3
  %93 = select i1 %91, ptr null, ptr %92
  %94 = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %93, ptr noundef null) #4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %123, label %96

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 24
  tail call void @v4l2_async_nf_init(ptr noundef %97) #4
  %98 = tail call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %97, ptr noundef nonnull %94, i32 noundef 28) #4
  tail call void @fwnode_handle_put(ptr noundef nonnull %94) #4
  %99 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = ptrtoint ptr %98 to i32
  br label %121

102:                                              ; preds = %96
  %103 = tail call i32 @mccic_register(ptr noundef %9) #4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %102
  %106 = load ptr, ptr %89, align 8
  %107 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 14
  %108 = load ptr, ptr %107, align 8
  %109 = tail call i32 @of_clk_add_provider(ptr noundef %106, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %108) #4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  br label %121

112:                                              ; preds = %105
  %113 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 1024, i32 noundef 0) #4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %121, label %115

115:                                              ; preds = %112
  %116 = load i32, ptr %113, align 4
  %117 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 4
  store i32 %116, ptr %117, align 4
  %118 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %116, ptr noundef nonnull @mmpcam_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %9) #4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  tail call void @pm_runtime_enable(ptr noundef %2) #4
  br label %123

121:                                              ; preds = %115, %112, %111, %100
  %122 = phi i32 [ %101, %100 ], [ %109, %111 ], [ %118, %115 ], [ -19, %112 ]
  tail call void @mccic_shutdown(ptr noundef %9) #4
  br label %123

123:                                              ; preds = %121, %120, %102, %88, %59, %47, %1
  %124 = phi i32 [ %48, %47 ], [ %60, %59 ], [ %122, %121 ], [ 0, %120 ], [ -12, %1 ], [ -19, %88 ], [ %103, %102 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmpcam_platform_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1
  tail call void @mccic_shutdown(ptr noundef %6) #4
  %7 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @pm_runtime_force_suspend(ptr noundef %8) #4
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 0, %5 ], [ -19, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmpcam_calc_dphy(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmp_camera_platform_data, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %29 [
    i32 1, label %8
    i32 2, label %12
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mmp_camera_platform_data, ptr %5, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, 80
  br label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.mmp_camera_platform_data, ptr %5, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %14, 110
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i32 [ %15, %12 ], [ %11, %8 ]
  %18 = phi i32 [ 512, %12 ], [ 256, %8 ]
  %19 = phi i32 [ %14, %12 ], [ %10, %8 ]
  %20 = sdiv i32 %17, 1000
  %21 = shl nsw i32 %20, 8
  %22 = add nsw i32 %21, %18
  %23 = and i32 %22, 65280
  %24 = mul i32 %19, 35
  %25 = sdiv i32 %24, 1000
  %26 = add nsw i32 %25, 1
  %27 = or i32 %23, %26
  %28 = getelementptr inbounds %struct.mmp_camera_platform_data, ptr %5, i32 0, i32 3
  store i32 %27, ptr %28, align 4
  br label %29

29:                                               ; preds = %16, %1
  %30 = getelementptr i8, ptr %0, i32 1776
  %31 = load ptr, ptr %30, align 8
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %58, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @clk_prepare(ptr noundef %31) #4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = tail call i32 @clk_enable(ptr noundef %31) #4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void @clk_unprepare(ptr noundef %31) #4
  br label %40

40:                                               ; preds = %39, %36, %33
  %41 = load ptr, ptr %30, align 8
  %42 = tail call i32 @clk_get_rate(ptr noundef %41) #4
  %43 = udiv i32 %42, 12000000
  %44 = load ptr, ptr %30, align 8
  tail call void @clk_disable(ptr noundef %44) #4
  tail call void @clk_unprepare(ptr noundef %44) #4
  %45 = mul nuw nsw i32 %43, 534
  %46 = udiv i32 %45, 2000
  %47 = shl nuw nsw i32 %46, 8
  %48 = add nuw nsw i32 %47, 65280
  %49 = and i32 %48, 65280
  %50 = trunc i32 %43 to i16
  %51 = mul nuw nsw i16 %50, 38
  %52 = udiv i16 %51, 1000
  %53 = add nuw nsw i16 %52, 255
  %54 = and i16 %53, 255
  %55 = zext i16 %54 to i32
  %56 = or i32 %49, %55
  %57 = getelementptr %struct.mmp_camera_platform_data, ptr %5, i32 0, i32 3, i32 2
  store i32 %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %40, %29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mccic_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmpcam_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mcam_camera, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %3) #4
  %4 = load ptr, ptr %1, align 8
  %5 = getelementptr i8, ptr %4, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %7 = tail call i32 @mccic_irq(ptr noundef %1, i32 noundef %6) #4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  %8 = load i16, ptr %3, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  %10 = icmp ne i32 %7, 0
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mccic_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mccic_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmpcam_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 7
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7, %1
  %13 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1
  tail call void @mccic_suspend(ptr noundef %13) #4
  br label %14

14:                                               ; preds = %12, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmpcam_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 7
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7, %1
  %13 = getelementptr inbounds %struct.mmp_camera, ptr %3, i32 0, i32 1
  %14 = tail call i32 @mccic_resume(ptr noundef %13) #4
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi i32 [ %14, %12 ], [ 0, %7 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmpcam_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 12, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @clk_disable(ptr noundef %5) #4
  tail call void @clk_unprepare(ptr noundef %5) #4
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 12, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @clk_disable(ptr noundef %10) #4
  tail call void @clk_unprepare(ptr noundef %10) #4
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 12, i32 0
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @clk_disable(ptr noundef %15) #4
  tail call void @clk_unprepare(ptr noundef %15) #4
  br label %18

18:                                               ; preds = %17, %13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmpcam_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 12, i32 0
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @clk_prepare(ptr noundef %5) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = tail call i32 @clk_enable(ptr noundef %5) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %5) #4
  br label %14

14:                                               ; preds = %13, %10, %7, %1
  %15 = getelementptr %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 12, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @clk_prepare(ptr noundef %16) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = tail call i32 @clk_enable(ptr noundef %16) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @clk_unprepare(ptr noundef %16) #4
  br label %25

25:                                               ; preds = %24, %21, %18, %14
  %26 = getelementptr %struct.mmp_camera, ptr %3, i32 0, i32 1, i32 12, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @clk_prepare(ptr noundef %27) #4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = tail call i32 @clk_enable(ptr noundef %27) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @clk_unprepare(ptr noundef %27) #4
  br label %36

36:                                               ; preds = %35, %32, %29, %25
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mccic_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mccic_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 3466119}
!9 = !{i64 2151005572}
!10 = !{i64 2148933461}
!11 = !{i64 2148929285}
!12 = !{i64 2148929360, i64 2148929387, i64 2148929434, i64 2148929456, i64 2148929484, i64 2148929504}
!13 = !{i64 2148956464}
