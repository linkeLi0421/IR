; ModuleID = '/llk/IR/drivers/usb/chipidea/ci_hdrc_msm.c_pt.bc'
source_filename = "../drivers/usb/chipidea/ci_hdrc_msm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.ci_hdrc_msm = type { ptr, ptr, ptr, ptr, %struct.ci_hdrc_platform_data, %struct.reset_controller_dev, i8, i8, ptr }
%struct.ci_hdrc_platform_data = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.usb_otg_caps, i8, i32, i32, i32, i32, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.ci_hdrc_cable = type { i8, i8, i8, ptr, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.ci_hdrc = type { ptr, %struct.spinlock, %struct.hw_bank, i32, [2 x ptr], i32, i8, %struct.usb_otg, %struct.otg_fsm, %struct.hrtimer, [12 x i64], i32, i32, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.usb_gadget, ptr, i32, i32, [32 x %struct.ci_hw_ep], i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, ptr, %struct.ulpi_ops, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i32 }
%struct.hw_bank = type { i32, i32, ptr, ptr, ptr, i32, [38 x ptr] }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.mutex, ptr, %struct.delayed_work, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.71, i32, ptr, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.anon.71 = type { %struct.list_head, ptr, i32 }
%struct.ulpi_ops = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_ci_hdrc_msm__252_304_ci_hdrc_msm_driver_init6 = internal global ptr @ci_hdrc_msm_driver_init, section ".initcall6.init", align 4
@ci_hdrc_msm_driver = internal global %struct.platform_driver { ptr @ci_hdrc_msm_probe, ptr @ci_hdrc_msm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @msm_ci_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ci_hdrc_msm_driver_exit = internal global ptr @ci_hdrc_msm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias253 = internal constant [37 x i8] c"ci_hdrc_msm.alias=platform:msm_hsusb\00", section ".modinfo", align 1
@__UNIQUE_ID_alias254 = internal constant [39 x i8] c"ci_hdrc_msm.alias=platform:ci13xxx_msm\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [50 x i8] c"ci_hdrc_msm.file=drivers/usb/chipidea/ci_hdrc_msm\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [27 x i8] c"ci_hdrc_msm.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"msm_hsusb\00", align 1
@msm_ci_dt_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ci-hdrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"ci_hdrc_msm\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@ci_hdrc_msm_reset_ops = internal constant %struct.reset_control_ops { ptr @ci_hdrc_msm_por_reset, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"ulpi\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"qcom,usb-hsic-phy\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"ci_hdrc_add_device failed!\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"phy-select\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias253, ptr @__UNIQUE_ID_alias254, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_ci_hdrc_msm_driver_exit, ptr @__initcall__kmod_ci_hdrc_msm__252_304_ci_hdrc_msm_driver_init6, ptr @ci_hdrc_msm_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ci_hdrc_msm_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ci_hdrc_msm_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ci_hdrc_msm_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ci_hdrc_msm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_hdrc_msm_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 208, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %95, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %6, align 8
  %7 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %3, i32 0, i32 4
  store ptr @.str.1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %3, i32 0, i32 4, i32 1
  store i32 256, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %3, i32 0, i32 4, i32 6
  store i32 4619, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %3, i32 0, i32 4, i32 8
  store ptr @ci_hdrc_msm_notify_event, ptr %10, align 4
  %11 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = ptrtoint ptr %11 to i32
  br label %95

15:                                               ; preds = %5
  %16 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #7
  %17 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %3, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = ptrtoint ptr %16 to i32
  br label %95

21:                                               ; preds = %15
  %22 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #7
  %23 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %3, i32 0, i32 2
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = ptrtoint ptr %22 to i32
  br label %95

27:                                               ; preds = %21
  %28 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef nonnull @.str.4) #7
  %29 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %3, i32 0, i32 3
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = ptrtoint ptr %28 to i32
  br label %95

33:                                               ; preds = %27
  %34 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #7
  %35 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %3, i32 0, i32 8
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = ptrtoint ptr %34 to i32
  br label %95

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %3, i32 0, i32 5
  %41 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %3, i32 0, i32 5, i32 1
  store ptr null, ptr %41, align 4
  store ptr @ci_hdrc_msm_reset_ops, ptr %40, align 4
  %42 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %3, i32 0, i32 5, i32 5
  store ptr %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %3, i32 0, i32 5, i32 8
  store i32 2, ptr %45, align 4
  %46 = tail call i32 @devm_reset_controller_register(ptr noundef %2, ptr noundef %40) #7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %95

48:                                               ; preds = %39
  %49 = load ptr, ptr %29, align 4
  %50 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %95

52:                                               ; preds = %48
  %53 = tail call i32 @reset_control_assert(ptr noundef %11) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #7
  %54 = tail call i32 @reset_control_deassert(ptr noundef %11) #7
  %55 = load ptr, ptr %29, align 4
  tail call void @clk_disable(ptr noundef %55) #7
  tail call void @clk_unprepare(ptr noundef %55) #7
  %56 = load ptr, ptr %17, align 4
  %57 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %95

59:                                               ; preds = %52
  %60 = load ptr, ptr %23, align 4
  %61 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %60)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %59
  %64 = tail call fastcc i32 @ci_hdrc_msm_mux_phy(ptr noundef nonnull %3, ptr noundef %0)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %63
  %67 = load ptr, ptr %42, align 8
  %68 = tail call ptr @of_get_child_by_name(ptr noundef %67, ptr noundef nonnull @.str.5) #7
  %69 = icmp eq ptr %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %68, ptr noundef null) #7
  %72 = tail call i32 @of_device_is_compatible(ptr noundef %71, ptr noundef nonnull @.str.6) #7
  %73 = icmp ne i32 %72, 0
  %74 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %3, i32 0, i32 7
  %75 = zext i1 %73 to i8
  store i8 %75, ptr %74, align 1
  tail call void @of_node_put(ptr noundef %71) #7
  br label %76

76:                                               ; preds = %70, %66
  tail call void @of_node_put(ptr noundef %68) #7
  %77 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %80 = load i32, ptr %79, align 4
  %81 = tail call ptr @ci_hdrc_add_device(ptr noundef %2, ptr noundef %78, i32 noundef %80, ptr noundef %7) #7
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = icmp eq ptr %81, inttoptr (i32 -517 to ptr)
  br i1 %84, label %89, label %85

85:                                               ; preds = %83
  %86 = ptrtoint ptr %81 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #8
  br label %89

87:                                               ; preds = %76
  store ptr %81, ptr %3, align 4
  %88 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #7
  tail call void @pm_runtime_no_callbacks(ptr noundef %2) #7
  tail call void @pm_runtime_enable(ptr noundef %2) #7
  br label %95

89:                                               ; preds = %85, %83, %63
  %90 = phi i32 [ %64, %63 ], [ %86, %85 ], [ -517, %83 ]
  %91 = load ptr, ptr %23, align 4
  tail call void @clk_disable(ptr noundef %91) #7
  tail call void @clk_unprepare(ptr noundef %91) #7
  br label %92

92:                                               ; preds = %89, %59
  %93 = phi i32 [ %61, %59 ], [ %90, %89 ]
  %94 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %94) #7
  tail call void @clk_unprepare(ptr noundef %94) #7
  br label %95

95:                                               ; preds = %92, %87, %52, %48, %39, %37, %31, %25, %19, %13, %1
  %96 = phi i32 [ %14, %13 ], [ %20, %19 ], [ %26, %25 ], [ %32, %31 ], [ %38, %37 ], [ %93, %92 ], [ 0, %87 ], [ -12, %1 ], [ %46, %39 ], [ %50, %48 ], [ %57, %52 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_hdrc_msm_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #7
  %5 = load ptr, ptr %3, align 4
  tail call void @ci_hdrc_remove_device(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_hdrc_msm_notify_event(ptr noundef %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  switch i32 %1, label %84 [
    i32 0, label %8
    i32 1, label %78
  ]

8:                                                ; preds = %2
  tail call void @hw_phymode_configure(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %7, i32 0, i32 6
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %7, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 120
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !9
  %17 = or i32 %16, 65536
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr i8, ptr %18, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #7, !srcloc !10
  br label %20

20:                                               ; preds = %12, %8
  %21 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 36
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 @phy_init(ptr noundef %22) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %84

25:                                               ; preds = %20
  %26 = load ptr, ptr %21, align 8
  %27 = tail call i32 @phy_power_on(ptr noundef %26) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %21, align 8
  %31 = tail call i32 @phy_exit(ptr noundef %30) #7
  br label %84

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr i8, ptr %34, i32 152
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 8) #7, !srcloc !10
  %36 = load ptr, ptr %33, align 8
  %37 = getelementptr i8, ptr %36, i32 156
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %39 = and i32 %38, -17
  %40 = load ptr, ptr %33, align 8
  %41 = getelementptr i8, ptr %40, i32 156
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #7, !srcloc !10
  %42 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %7, i32 0, i32 7
  %43 = load i8, ptr %42, align 1, !range !8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %32
  %46 = load ptr, ptr %33, align 8
  %47 = getelementptr i8, ptr %46, i32 160
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %49 = and i32 %48, -524289
  %50 = load ptr, ptr %33, align 8
  %51 = getelementptr i8, ptr %50, i32 160
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #7, !srcloc !10
  br label %52

52:                                               ; preds = %45, %32
  %53 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %54, i32 0, i32 16, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 13
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %84, label %62

62:                                               ; preds = %58, %52
  %63 = load ptr, ptr %33, align 8
  %64 = getelementptr i8, ptr %63, i32 160
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %66 = or i32 %65, 128
  %67 = load ptr, ptr %33, align 8
  %68 = getelementptr i8, ptr %67, i32 160
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #7, !srcloc !10
  %69 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %72 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %73 = load i8, ptr %72, align 2, !range !8
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %62
  %76 = load ptr, ptr %69, align 4
  %77 = or i32 %71, 33554432
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %77) #7, !srcloc !10
  br label %84

78:                                               ; preds = %2
  %79 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 36
  %80 = load ptr, ptr %79, align 8
  %81 = tail call i32 @phy_power_off(ptr noundef %80) #7
  %82 = load ptr, ptr %79, align 8
  %83 = tail call i32 @phy_exit(ptr noundef %82) #7
  br label %84

84:                                               ; preds = %78, %75, %62, %58, %29, %20, %2
  %85 = phi i32 [ %27, %29 ], [ %23, %20 ], [ 0, %2 ], [ 0, %58 ], [ 0, %78 ], [ 0, %62 ], [ 0, %75 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #7
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ci_hdrc_msm_mux_phy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !13
  %4 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %3) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 4
  %10 = call ptr @syscon_node_to_regmap(ptr noundef %9) #7
  %11 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %11) #7
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = ptrtoint ptr %10 to i32
  br label %35

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = call i32 @regmap_write(ptr noundef %10, i32 noundef %17, i32 noundef %19) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = load i32, ptr %18, align 4
  %24 = icmp ne i32 %23, 0
  %25 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %0, i32 0, i32 6
  %26 = zext i1 %24 to i8
  store i8 %26, ptr %25, align 4
  br i1 %24, label %27, label %35

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ci_hdrc_msm, ptr %0, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 120
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !9
  %32 = or i32 %31, 65536
  %33 = load ptr, ptr %28, align 4
  %34 = getelementptr i8, ptr %33, i32 120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #7, !srcloc !10
  br label %35

35:                                               ; preds = %27, %22, %15, %13, %2
  %36 = phi i32 [ %14, %13 ], [ 0, %2 ], [ %20, %15 ], [ 0, %27 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #7
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ci_hdrc_add_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_no_callbacks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_phymode_configure(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_hdrc_msm_por_reset(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 48
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, i32 64, i32 120
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !9
  %9 = or i32 %8, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %9) #7, !srcloc !10
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2576976) #7
  %11 = and i32 %8, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %11) #7, !srcloc !10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_hdrc_remove_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 4772161}
!10 = !{i64 4771743}
!11 = !{i64 2152305346}
!12 = !{i64 2152304124}
!13 = !{!"auto-init"}
!14 = !{i64 2153971204}
!15 = !{i64 2153972116}
