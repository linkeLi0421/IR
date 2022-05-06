; ModuleID = '/llk/IR/drivers/usb/dwc3/dwc3-st.c_pt.bc'
source_filename = "../drivers/usb/dwc3/dwc3-st.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.st_dwc3 = type { ptr, ptr, ptr, i32, i32, ptr, ptr }

@__initcall__kmod_dwc3_st__285_375_st_dwc3_driver_init6 = internal global ptr @st_dwc3_driver_init, section ".initcall6.init", align 4
@st_dwc3_driver = internal global %struct.platform_driver { ptr @st_dwc3_probe, ptr @st_dwc3_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_dwc3_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_dwc3_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_st_dwc3_driver_exit = internal global ptr @st_dwc3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author286 = internal constant [59 x i8] c"dwc3_st.author=Giuseppe Cavallaro <peppe.cavallaro@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description287 = internal constant [51 x i8] c"dwc3_st.description=DesignWare USB3 STi Glue Layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file288 = internal constant [38 x i8] c"dwc3_st.file=drivers/usb/dwc3/dwc3-st\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [23 x i8] c"dwc3_st.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"usb-st-dwc3\00", align 1
@st_dwc3_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@st_dwc3_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @st_dwc3_suspend, ptr @st_dwc3_resume, ptr @st_dwc3_suspend, ptr @st_dwc3_resume, ptr @st_dwc3_suspend, ptr @st_dwc3_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"reg-glue\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"syscfg-reg\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"powerdown\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"could not get power controller\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"softreset\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"could not get reset controller\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"dwc3\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"failed to find dwc3 core node\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"failed to add dwc3 core\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"failed to find dwc3 core device\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"drd initialisation failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Unsupported mode of operation %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author286, ptr @__UNIQUE_ID_description287, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__exitcall_st_dwc3_driver_exit, ptr @__initcall__kmod_dwc3_st__285_375_st_dwc3_driver_init6, ptr @st_dwc3_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @st_dwc3_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_dwc3_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @st_dwc3_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @st_dwc3_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_dwc3_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %88, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %10 = getelementptr inbounds %struct.st_dwc3, ptr %6, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = ptrtoint ptr %9 to i32
  br label %88

14:                                               ; preds = %8
  %15 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.2) #5
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = ptrtoint ptr %15 to i32
  br label %88

19:                                               ; preds = %14
  store ptr %3, ptr %6, align 4
  %20 = getelementptr inbounds %struct.st_dwc3, ptr %6, i32 0, i32 2
  store ptr %15, ptr %20, align 4
  %21 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.3) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %86, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %21, align 4
  %25 = getelementptr inbounds %struct.st_dwc3, ptr %6, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  %26 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %27 = getelementptr inbounds %struct.st_dwc3, ptr %6, i32 0, i32 5
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #6
  %30 = ptrtoint ptr %26 to i32
  br label %86

31:                                               ; preds = %23
  %32 = tail call i32 @reset_control_deassert(ptr noundef %26) #5
  %33 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %34 = getelementptr inbounds %struct.st_dwc3, ptr %6, i32 0, i32 6
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #6
  %37 = ptrtoint ptr %33 to i32
  br label %83

38:                                               ; preds = %31
  %39 = tail call i32 @reset_control_deassert(ptr noundef %33) #5
  %40 = tail call ptr @of_get_child_by_name(ptr noundef %5, ptr noundef nonnull @.str.8) #5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %77, label %42

42:                                               ; preds = %38
  %43 = tail call i32 @of_platform_populate(ptr noundef %5, ptr noundef null, ptr noundef null, ptr noundef %3) #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %42
  %46 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %40) #5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %77, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  %50 = tail call i32 @usb_get_dr_mode(ptr noundef %49) #5
  %51 = getelementptr inbounds %struct.st_dwc3, ptr %6, i32 0, i32 4
  store i32 %50, ptr %51, align 4
  tail call void @of_node_put(ptr noundef nonnull %40) #5
  tail call void @platform_device_put(ptr noundef nonnull %46) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %52 = call i32 @regmap_read(ptr noundef %15, i32 noundef %24, ptr noundef nonnull %2) #5
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i32, ptr %2, align 4
  %56 = and i32 %55, 3959
  store i32 %56, ptr %2, align 4
  switch i32 %50, label %58 [
    i32 2, label %61
    i32 1, label %57
  ]

57:                                               ; preds = %54
  br label %61

58:                                               ; preds = %54
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %50) #6
  br label %59

59:                                               ; preds = %58, %48
  %60 = phi i32 [ %52, %48 ], [ -22, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %65

61:                                               ; preds = %57, %54
  %62 = phi i32 [ 4, %57 ], [ 3, %54 ]
  store i32 %62, ptr %2, align 4
  %63 = call i32 @regmap_write(ptr noundef %15, i32 noundef %24, i32 noundef %62) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61, %59
  %66 = phi i32 [ %60, %59 ], [ %63, %61 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12) #6
  br label %80

67:                                               ; preds = %61
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !9
  %69 = and i32 %68, -4370
  %70 = or i32 %69, 4353
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %70) #5, !srcloc !10
  %71 = getelementptr i8, ptr %9, i32 44
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #5, !srcloc !9
  %73 = or i32 %72, 273
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %73) #5, !srcloc !10
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !9
  %75 = or i32 %74, 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %75) #5, !srcloc !10
  %76 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %76, align 8
  br label %88

77:                                               ; preds = %45, %42, %38
  %78 = phi ptr [ @.str.9, %38 ], [ @.str.10, %42 ], [ @.str.11, %45 ]
  %79 = phi i32 [ -19, %38 ], [ %43, %42 ], [ -19, %45 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %78) #6
  tail call void @of_node_put(ptr noundef %40) #5
  br label %80

80:                                               ; preds = %77, %65
  %81 = phi i32 [ %79, %77 ], [ %66, %65 ]
  %82 = call i32 @reset_control_assert(ptr noundef %33) #5
  br label %83

83:                                               ; preds = %80, %36
  %84 = phi i32 [ %37, %36 ], [ %81, %80 ]
  %85 = call i32 @reset_control_assert(ptr noundef %26) #5
  br label %86

86:                                               ; preds = %83, %29, %19
  %87 = phi i32 [ %30, %29 ], [ %84, %83 ], [ -6, %19 ]
  call void @platform_device_put(ptr noundef %0) #5
  br label %88

88:                                               ; preds = %86, %67, %17, %12, %1
  %89 = phi i32 [ %13, %12 ], [ %18, %17 ], [ %87, %86 ], [ 0, %67 ], [ -12, %1 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_dwc3_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @of_platform_depopulate(ptr noundef %4) #5
  %5 = getelementptr inbounds %struct.st_dwc3, ptr %3, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @reset_control_assert(ptr noundef %6) #5
  %8 = getelementptr inbounds %struct.st_dwc3, ptr %3, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @reset_control_assert(ptr noundef %9) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_dwc3_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.st_dwc3, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @reset_control_assert(ptr noundef %5) #5
  %7 = getelementptr inbounds %struct.st_dwc3, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @reset_control_assert(ptr noundef %8) #5
  %10 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_dwc3_resume(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #5
  %6 = getelementptr inbounds %struct.st_dwc3, ptr %4, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @reset_control_deassert(ptr noundef %7) #5
  %9 = getelementptr inbounds %struct.st_dwc3, ptr %4, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @reset_control_deassert(ptr noundef %10) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.st_dwc3, ptr %4, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.st_dwc3, ptr %4, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = call i32 @regmap_read(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %2) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load i32, ptr %2, align 4
  %20 = and i32 %19, 3959
  store i32 %20, ptr %2, align 4
  %21 = getelementptr inbounds %struct.st_dwc3, ptr %4, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %24 [
    i32 2, label %28
    i32 1, label %23
  ]

23:                                               ; preds = %18
  br label %28

24:                                               ; preds = %18
  %25 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.13, i32 noundef %22) #6
  br label %26

26:                                               ; preds = %24, %1
  %27 = phi i32 [ %16, %1 ], [ -22, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %34

28:                                               ; preds = %23, %18
  %29 = phi i32 [ 4, %23 ], [ 3, %18 ]
  store i32 %29, ptr %2, align 4
  %30 = load ptr, ptr %12, align 4
  %31 = load i32, ptr %14, align 4
  %32 = call i32 @regmap_write(ptr noundef %30, i32 noundef %31, i32 noundef %29) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28, %26
  %35 = phi i32 [ %27, %26 ], [ %32, %28 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12) #6
  br label %53

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.st_dwc3, ptr %4, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !9
  %40 = and i32 %39, -4370
  %41 = or i32 %40, 4353
  %42 = load ptr, ptr %37, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #5, !srcloc !10
  %43 = load ptr, ptr %37, align 4
  %44 = getelementptr i8, ptr %43, i32 44
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #5, !srcloc !9
  %46 = or i32 %45, 273
  %47 = load ptr, ptr %37, align 4
  %48 = getelementptr i8, ptr %47, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #5, !srcloc !10
  %49 = load ptr, ptr %37, align 4
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #5, !srcloc !9
  %51 = or i32 %50, 16
  %52 = load ptr, ptr %37, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %51) #5, !srcloc !10
  br label %53

53:                                               ; preds = %36, %34
  %54 = phi i32 [ %35, %34 ], [ 0, %36 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i64 3066555}
!10 = !{i64 3066137}
