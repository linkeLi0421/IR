; ModuleID = '/llk/IR/drivers/edac/highbank_mc_edac.c_pt.bc'
source_filename = "../drivers/edac/highbank_mc_edac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.hb_mc_settings = type { i32, i32 }
%struct.edac_mc_layer = type { i32, i32, i8 }
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
%struct.mem_ctl_info = type { %struct.device, ptr, %struct.list_head, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.completion, ptr, %struct.delayed_work, %struct.edac_raw_error_desc, i32, ptr, [3 x i8], i8, i16 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.edac_raw_error_desc = type { [256 x i8], [296 x i8], i32, i16, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.hb_mc_drvdata = type { ptr, ptr }
%struct.dimm_info = type { %struct.device, [32 x i8], [3 x i32], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32 }

@__initcall__kmod_highbank_mc_edac__228_268_highbank_mc_edac_driver_init6 = internal global ptr @highbank_mc_edac_driver_init, section ".initcall6.init", align 4
@highbank_mc_edac_driver = internal global %struct.platform_driver { ptr @highbank_mc_probe, ptr @highbank_mc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hb_ddr_ctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_highbank_mc_edac_driver_exit = internal global ptr @highbank_mc_edac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file229 = internal constant [52 x i8] c"highbank_mc_edac.file=drivers/edac/highbank_mc_edac\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [32 x i8] c"highbank_mc_edac.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [38 x i8] c"highbank_mc_edac.author=Calxeda, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [62 x i8] c"highbank_mc_edac.description=EDAC Driver for Calxeda Highbank\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"hb_mc_edac\00", align 1
@hb_ddr_ctrl_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,hb-ddr-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hb_settings }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,ecx-2000-ddr-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mw_settings }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to get mem resource\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Error while requesting mem region\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Unable to map regs\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"No ECC present, or ECC disabled\0A\00", align 1
@highbank_dev_groups = internal global [2 x ptr] [ptr @highbank_dev_group, ptr null], align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Unable to request irq %d\0A\00", align 1
@highbank_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @highbank_dev_attrs, ptr null }, align 4
@highbank_dev_attrs = internal global [2 x ptr] [ptr @dev_attr_inject_ctrl, ptr null], align 4
@dev_attr_inject_ctrl = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 128 }, ptr null, ptr @highbank_mc_inject_ctrl }, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"inject_ctrl\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@hb_settings = internal global %struct.hb_mc_settings { i32 296, i32 384 }, align 4
@mw_settings = internal global %struct.hb_mc_settings { i32 436, i32 536 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_highbank_mc_edac_driver_exit, ptr @__initcall__kmod_highbank_mc_edac__228_268_highbank_mc_edac_driver_init6, ptr @highbank_mc_edac_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @highbank_mc_edac_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @highbank_mc_edac_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @highbank_mc_edac_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @highbank_mc_edac_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @highbank_mc_probe(ptr noundef %0) #2 {
  %2 = alloca [2 x %struct.edac_mc_layer], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  %3 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 16, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @of_match_device(ptr noundef nonnull @hb_ddr_ctrl_of_match, ptr noundef %4) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %107, label %7

7:                                                ; preds = %1
  store i32 3, ptr %2, align 4
  %8 = getelementptr inbounds %struct.edac_mc_layer, ptr %2, i32 0, i32 1
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.edac_mc_layer, ptr %2, i32 0, i32 2
  store i8 1, ptr %9, align 4
  %10 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %2, i32 0, i32 1
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %2, i32 0, i32 1, i32 1
  store i32 1, ptr %11, align 4
  %12 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %2, i32 0, i32 1, i32 2
  store i8 0, ptr %12, align 4
  %13 = call ptr @edac_mc_alloc(i32 noundef 0, i32 noundef 2, ptr noundef nonnull %2, i32 noundef 8) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %107, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.mem_ctl_info, ptr %13, i32 0, i32 22
  store ptr %4, ptr %16, align 8
  %17 = getelementptr inbounds %struct.mem_ctl_info, ptr %13, i32 0, i32 26
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %19, align 8
  %20 = call ptr @devres_open_group(ptr noundef %4, ptr noundef null, i32 noundef 3264) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %107, label %22

22:                                               ; preds = %15
  %23 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #7
  br label %104

26:                                               ; preds = %22
  %27 = load i32, ptr %23, align 4
  %28 = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 1, %27
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load ptr, ptr %4, align 4
  br label %37

37:                                               ; preds = %35, %26
  %38 = phi ptr [ %36, %35 ], [ %33, %26 ]
  %39 = call ptr @__devm_request_region(ptr noundef %4, ptr noundef nonnull @iomem_resource, i32 noundef %27, i32 noundef %31, ptr noundef %38) #6
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #7
  br label %104

42:                                               ; preds = %37
  %43 = load i32, ptr %23, align 4
  %44 = load i32, ptr %28, align 4
  %45 = sub i32 1, %43
  %46 = add i32 %45, %44
  %47 = call ptr @devm_ioremap(ptr noundef %4, i32 noundef %43, i32 noundef %46) #6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #7
  br label %104

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr i8, ptr %47, i32 %53
  store ptr %54, ptr %18, align 4
  %55 = getelementptr inbounds %struct.hb_mc_settings, ptr %52, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr i8, ptr %47, i32 %56
  %58 = getelementptr inbounds %struct.hb_mc_drvdata, ptr %18, i32 0, i32 1
  store ptr %57, ptr %58, align 4
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #7
  br label %104

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.mem_ctl_info, ptr %13, i32 0, i32 4
  store i32 32768, ptr %64, align 8
  %65 = getelementptr inbounds %struct.mem_ctl_info, ptr %13, i32 0, i32 5
  store i32 34, ptr %65, align 4
  %66 = getelementptr inbounds %struct.mem_ctl_info, ptr %13, i32 0, i32 6
  store i32 32, ptr %66, align 8
  %67 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 6
  %68 = load ptr, ptr %67, align 8
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.mem_ctl_info, ptr %13, i32 0, i32 23
  store ptr %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 2
  %72 = getelementptr inbounds %struct.mem_ctl_info, ptr %13, i32 0, i32 24
  store ptr %71, ptr %72, align 8
  %73 = load ptr, ptr %32, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load ptr, ptr %4, align 4
  br label %77

77:                                               ; preds = %75, %63
  %78 = phi ptr [ %76, %75 ], [ %73, %63 ]
  %79 = getelementptr inbounds %struct.mem_ctl_info, ptr %13, i32 0, i32 25
  store ptr %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.mem_ctl_info, ptr %13, i32 0, i32 8
  store i32 3, ptr %80, align 8
  %81 = getelementptr inbounds %struct.mem_ctl_info, ptr %13, i32 0, i32 21
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.dimm_info, ptr %83, i32 0, i32 9
  store i32 1048576, ptr %84, align 4
  %85 = getelementptr inbounds %struct.dimm_info, ptr %83, i32 0, i32 5
  store i32 8, ptr %85, align 4
  %86 = getelementptr inbounds %struct.dimm_info, ptr %83, i32 0, i32 6
  store i32 4, ptr %86, align 8
  %87 = getelementptr inbounds %struct.dimm_info, ptr %83, i32 0, i32 7
  store i32 15, ptr %87, align 4
  %88 = getelementptr inbounds %struct.dimm_info, ptr %83, i32 0, i32 8
  store i32 5, ptr %88, align 8
  %89 = call i32 @edac_mc_add_mc_with_groups(ptr noundef nonnull %13, ptr noundef nonnull @highbank_dev_groups) #6
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %104, label %91

91:                                               ; preds = %77
  %92 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %93 = load ptr, ptr %32, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load ptr, ptr %4, align 4
  br label %97

97:                                               ; preds = %95, %91
  %98 = phi ptr [ %96, %95 ], [ %93, %91 ]
  %99 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %92, ptr noundef nonnull @highbank_mc_err_handler, ptr noundef null, i32 noundef 0, ptr noundef %98, ptr noundef nonnull %13) #6
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %92) #7
  %102 = call ptr @edac_mc_del_mc(ptr noundef %4) #6
  br label %104

103:                                              ; preds = %97
  call void @devres_close_group(ptr noundef %4, ptr noundef null) #6
  br label %107

104:                                              ; preds = %101, %77, %62, %49, %41, %25
  %105 = phi i32 [ -19, %62 ], [ %89, %77 ], [ %99, %101 ], [ -12, %49 ], [ -16, %41 ], [ -19, %25 ]
  %106 = call i32 @devres_release_group(ptr noundef %4, ptr noundef null) #6
  call void @edac_mc_free(ptr noundef nonnull %13) #6
  br label %107

107:                                              ; preds = %104, %103, %15, %7, %1
  %108 = phi i32 [ %105, %104 ], [ 0, %103 ], [ -19, %1 ], [ -12, %7 ], [ -12, %15 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @highbank_mc_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @edac_mc_del_mc(ptr noundef %4) #6
  tail call void @edac_mc_free(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_mc_alloc(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_mc_add_mc_with_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @highbank_mc_err_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 26
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hb_mc_drvdata, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %14 = lshr i32 %13, 12
  %15 = and i32 %13, 4095
  %16 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 24
  %17 = load ptr, ptr %16, align 8
  tail call void @edac_mc_handle_error(i32 noundef 1, ptr noundef %1, i16 noundef zeroext 1, i32 noundef %14, i32 noundef %15, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef -1, ptr noundef %17, ptr noundef nonnull @.str.7) #6
  br label %18

18:                                               ; preds = %10, %2
  %19 = and i32 %7, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr i8, ptr %22, i32 28
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %25 = lshr i32 %24, 8
  %26 = and i32 %25, 255
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i8, ptr %27, i32 24
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %30 = lshr i32 %29, 12
  %31 = and i32 %29, 4095
  %32 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 24
  %33 = load ptr, ptr %32, align 8
  tail call void @edac_mc_handle_error(i32 noundef 0, ptr noundef %1, i16 noundef zeroext 1, i32 noundef %30, i32 noundef %31, i32 noundef %26, i32 noundef 0, i32 noundef 0, i32 noundef -1, ptr noundef %33, ptr noundef nonnull @.str.7) #6
  br label %34

34:                                               ; preds = %21, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %35 = load ptr, ptr %5, align 4
  %36 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %7) #6, !srcloc !16
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_close_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_mc_del_mc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @highbank_mc_inject_ctrl(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 0, ptr %5, align 1, !annotation !8
  %6 = call i32 @kstrtou8(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = load i8, ptr %5, align 1
  %10 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 26
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %14 = and i32 %13, 3
  %15 = zext i8 %9 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = or i32 %16, 256
  %18 = or i32 %14, %17
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  call void @arm_heavy_mb() #6
  %19 = load ptr, ptr %11, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #6, !srcloc !16
  br label %20

20:                                               ; preds = %8, %4
  %21 = phi i32 [ %3, %8 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_handle_error(i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i64 4460366}
!10 = !{i64 2153384144}
!11 = !{i64 2153376088}
!12 = !{i64 2153376462}
!13 = !{i64 2153376868}
!14 = !{i64 2153377237}
!15 = !{i64 2153377473}
!16 = !{i64 4459948}
!17 = !{i64 2153377981}
!18 = !{i64 2153378192}
