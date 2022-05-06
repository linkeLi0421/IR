; ModuleID = '/llk/IR/drivers/phy/st/phy-stm32-usbphyc.c_pt.bc'
source_filename = "../drivers/phy/st/phy-stm32-usbphyc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.stm32_usbphyc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.clk_hw, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }
%struct.stm32_usbphyc_phy = type { ptr, ptr, ptr, i32, i8, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@__initcall__kmod_phy_stm32_usbphyc__323_816_stm32_usbphyc_driver_init6 = internal global ptr @stm32_usbphyc_driver_init, section ".initcall6.init", align 4
@stm32_usbphyc_driver = internal global %struct.platform_driver { ptr @stm32_usbphyc_probe, ptr @stm32_usbphyc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_usbphyc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_usbphyc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_stm32_usbphyc_driver_exit = internal global ptr @stm32_usbphyc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description324 = internal constant [70 x i8] c"phy_stm32_usbphyc.description=STMicroelectronics STM32 USBPHYC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author325 = internal constant [66 x i8] c"phy_stm32_usbphyc.author=Amelie Delaunay <amelie.delaunay@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file326 = internal constant [56 x i8] c"phy_stm32_usbphyc.file=drivers/phy/st/phy-stm32-usbphyc\00", section ".modinfo", align 1
@__UNIQUE_ID_license327 = internal constant [33 x i8] c"phy_stm32_usbphyc.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"stm32-usbphyc\00", align 1
@stm32_usbphyc_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-usbphyc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@stm32_usbphyc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @stm32_usbphyc_resume, ptr null, ptr @stm32_usbphyc_resume, ptr null, ptr @stm32_usbphyc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clk get_failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"clk enable failed: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"PLL not reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"vdda1v1\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to get vdda1v1 supply\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"vdda1v8\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to get vdda1v8 supply\0A\00", align 1
@stm32_usbphyc_phy_ops = internal constant %struct.phy_ops { ptr @stm32_usbphyc_phy_init, ptr @stm32_usbphyc_phy_exit, ptr @stm32_usbphyc_phy_power_on, ptr @stm32_usbphyc_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"failed to create phy%d: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid reg property: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"failed to register phy provider: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"failed to register ck_usbo_48m clock: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"registered rev:%lu.%lu\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"PLL Lock input to PHY is Low (val=%x)\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"PLL enabled without known consumers\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"input clk freq (%dHz) out of range\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"st,current-boost-microamp\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"phy%d: invalid st,current-boost-microamp\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"st,no-lsfs-fb-cap\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"st,decrease-hs-slew-rate\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"st,tune-hs-dc-level\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"phy%d: invalid st,tune-hs-dc-level\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"st,enable-fs-rftime-tuning\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"st,enable-hs-rftime-reduction\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"st,trim-hs-current\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"phy%d: invalid st,trim-hs-current\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"st,trim-hs-impedance\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"phy%d: invalid st,trim-hs-impedance\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"st,tune-squelch-level\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"phy%d: invalid st,tune-squelch\0A\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"st,enable-hs-rx-gain-eq\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"st,tune-hs-rx-offset\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"phy%d: invalid st,tune-hs-rx-offset\0A\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"st,no-hs-ftime-ctrl\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"st,no-lsfs-sc\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"st,enable-hs-tx-staggering\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"failed to find phy\0A\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"invalid number of cells for phy port%d\0A\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"phy port1 already used\0A\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"ck_usbo_48m\00", align 1
@usbphyc_clk48_ops = internal constant %struct.clk_ops { ptr @stm32_usbphyc_clk48_prepare, ptr @stm32_usbphyc_clk48_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_usbphyc_clk48_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author325, ptr @__UNIQUE_ID_description324, ptr @__UNIQUE_ID_file326, ptr @__UNIQUE_ID_license327, ptr @__exitcall_stm32_usbphyc_driver_exit, ptr @__initcall__kmod_phy_stm32_usbphyc__323_816_stm32_usbphyc_driver_init6, ptr @stm32_usbphyc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm32_usbphyc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_usbphyc_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stm32_usbphyc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_usbphyc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usbphyc_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 52, i32 noundef 3520) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %365, label %9

9:                                                ; preds = %1
  store ptr %4, ptr %7, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %10, align 8
  %11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %12 = getelementptr inbounds %struct.stm32_usbphyc, ptr %7, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = ptrtoint ptr %11 to i32
  br label %365

16:                                               ; preds = %9
  %17 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #8
  %18 = getelementptr inbounds %struct.stm32_usbphyc, ptr %7, i32 0, i32 2
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = ptrtoint ptr %17 to i32
  %22 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %21, ptr noundef nonnull @.str.1) #8
  br label %365

23:                                               ; preds = %16
  %24 = tail call i32 @clk_prepare(ptr noundef %17) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = tail call i32 @clk_enable(ptr noundef %17) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  tail call void @clk_unprepare(ptr noundef %17) #8
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi i32 [ %27, %29 ], [ %24, %23 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %31) #9
  br label %365

32:                                               ; preds = %26
  %33 = tail call ptr @__devm_reset_control_get(ptr noundef %4, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %34 = getelementptr inbounds %struct.stm32_usbphyc, ptr %7, i32 0, i32 3
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = tail call i32 @reset_control_assert(ptr noundef %33) #8
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 429496) #8
  %39 = load ptr, ptr %34, align 4
  %40 = tail call i32 @reset_control_deassert(ptr noundef %39) #8
  br label %47

41:                                               ; preds = %32
  %42 = icmp eq ptr %33, inttoptr (i32 -517 to ptr)
  br i1 %42, label %362, label %43

43:                                               ; preds = %41
  %44 = load ptr, ptr %12, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #8, !srcloc !8
  %46 = and i32 %45, -67108865
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %46) #8, !srcloc !9
  br label %47

47:                                               ; preds = %43, %36
  %48 = tail call i64 @ktime_get() #8
  %49 = add i64 %48, 50000
  %50 = load ptr, ptr %12, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #8, !srcloc !8
  %52 = and i32 %51, 67108864
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %60, %47
  %55 = tail call i64 @ktime_get() #8
  %56 = icmp sgt i64 %55, %49
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load ptr, ptr %12, align 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #8, !srcloc !8
  br label %65

60:                                               ; preds = %54
  tail call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #8
  %61 = load ptr, ptr %12, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #8, !srcloc !8
  %63 = and i32 %62, 67108864
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %54

65:                                               ; preds = %60, %57, %47
  %66 = phi i32 [ %59, %57 ], [ %51, %47 ], [ %62, %60 ]
  %67 = and i32 %66, 67108864
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str.3) #9
  br label %362

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.stm32_usbphyc, ptr %7, i32 0, i32 10
  store i32 -22, ptr %72, align 4
  %73 = tail call ptr @of_get_next_child(ptr noundef %6, ptr noundef null) #8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %75, %71
  %76 = phi i32 [ %78, %75 ], [ 0, %71 ]
  %77 = phi ptr [ %79, %75 ], [ %73, %71 ]
  %78 = add i32 %76, 1
  %79 = tail call ptr @of_get_next_child(ptr noundef %6, ptr noundef nonnull %77) #8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %75

81:                                               ; preds = %75, %71
  %82 = phi i32 [ 0, %71 ], [ %78, %75 ]
  %83 = getelementptr inbounds %struct.stm32_usbphyc, ptr %7, i32 0, i32 5
  store i32 %82, ptr %83, align 4
  %84 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %82, i32 4) #8
  %85 = extractvalue { i32, i1 } %84, 1
  br i1 %85, label %86, label %88, !prof !10

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.stm32_usbphyc, ptr %7, i32 0, i32 4
  store ptr null, ptr %87, align 4
  br label %362

88:                                               ; preds = %81
  %89 = extractvalue { i32, i1 } %84, 0
  %90 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %89, i32 noundef 3520) #8
  %91 = getelementptr inbounds %struct.stm32_usbphyc, ptr %7, i32 0, i32 4
  store ptr %90, ptr %91, align 4
  %92 = icmp eq ptr %90, null
  br i1 %92, label %362, label %93

93:                                               ; preds = %88
  %94 = tail call ptr @devm_regulator_get(ptr noundef %4, ptr noundef nonnull @.str.4) #8
  %95 = getelementptr inbounds %struct.stm32_usbphyc, ptr %7, i32 0, i32 6
  store ptr %94, ptr %95, align 4
  %96 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = ptrtoint ptr %94 to i32
  %99 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %98, ptr noundef nonnull @.str.5) #8
  br label %362

100:                                              ; preds = %93
  %101 = tail call ptr @devm_regulator_get(ptr noundef %4, ptr noundef nonnull @.str.6) #8
  %102 = getelementptr inbounds %struct.stm32_usbphyc, ptr %7, i32 0, i32 7
  store ptr %101, ptr %102, align 4
  %103 = icmp ugt ptr %101, inttoptr (i32 -4096 to ptr)
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = ptrtoint ptr %101 to i32
  %106 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %105, ptr noundef nonnull @.str.7) #8
  br label %362

107:                                              ; preds = %100
  %108 = tail call ptr @of_get_next_child(ptr noundef %6, ptr noundef null) #8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %344, label %110

110:                                              ; preds = %330, %107
  %111 = phi ptr [ %342, %330 ], [ %108, %107 ]
  %112 = phi i32 [ %341, %330 ], [ 0, %107 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !11
  %113 = call ptr @devm_phy_create(ptr noundef %4, ptr noundef nonnull %111, ptr noundef nonnull @stm32_usbphyc_phy_ops) #8
  %114 = icmp ugt ptr %113, inttoptr (i32 -4096 to ptr)
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = icmp eq ptr %113, inttoptr (i32 -517 to ptr)
  br i1 %116, label %360, label %117

117:                                              ; preds = %115
  %118 = ptrtoint ptr %113 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %112, i32 noundef %118) #9
  br label %360

119:                                              ; preds = %110
  %120 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 24, i32 noundef 3520) #8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %360, label %122

122:                                              ; preds = %119
  %123 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %111, ptr noundef nonnull @.str.9, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %124 = icmp sgt i32 %123, -1
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32, ptr %3, align 4
  %127 = load i32, ptr %83, align 4
  %128 = icmp ugt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125, %122
  %130 = call i32 @llvm.smin.i32(i32 %123, i32 0) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.10, i32 noundef %130) #9
  br label %360

131:                                              ; preds = %125
  %132 = load ptr, ptr %91, align 4
  %133 = getelementptr ptr, ptr %132, i32 %112
  store ptr %120, ptr %133, align 4
  %134 = getelementptr inbounds %struct.phy, ptr %113, i32 0, i32 6
  store i32 8, ptr %134, align 4
  %135 = getelementptr inbounds %struct.device, ptr %113, i32 0, i32 8
  store ptr %120, ptr %135, align 8
  %136 = load ptr, ptr %91, align 4
  %137 = getelementptr ptr, ptr %136, i32 %112
  %138 = load ptr, ptr %137, align 4
  store ptr %113, ptr %138, align 4
  %139 = load ptr, ptr %91, align 4
  %140 = getelementptr ptr, ptr %139, i32 %112
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %141, i32 0, i32 1
  store ptr %7, ptr %142, align 4
  %143 = load i32, ptr %3, align 4
  %144 = load ptr, ptr %91, align 4
  %145 = getelementptr ptr, ptr %144, i32 %112
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %146, i32 0, i32 3
  store i32 %143, ptr %147, align 4
  %148 = load ptr, ptr %91, align 4
  %149 = getelementptr ptr, ptr %148, i32 %112
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %150, i32 0, i32 4
  store i8 0, ptr %151, align 4
  %152 = call ptr @devm_regulator_get_optional(ptr noundef %113, ptr noundef nonnull @.str.11) #8
  %153 = load ptr, ptr %91, align 4
  %154 = getelementptr ptr, ptr %153, i32 %112
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %155, i32 0, i32 2
  store ptr %152, ptr %156, align 4
  %157 = load ptr, ptr %91, align 4
  %158 = getelementptr ptr, ptr %157, i32 %112
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %159, i32 0, i32 2
  %161 = load ptr, ptr %160, align 4
  %162 = icmp ugt ptr %161, inttoptr (i32 -4096 to ptr)
  br i1 %162, label %163, label %167

163:                                              ; preds = %131
  %164 = icmp eq ptr %161, inttoptr (i32 -517 to ptr)
  br i1 %164, label %360, label %165

165:                                              ; preds = %163
  store ptr null, ptr %160, align 4
  %166 = load ptr, ptr %91, align 4
  br label %167

167:                                              ; preds = %165, %131
  %168 = phi ptr [ %166, %165 ], [ %157, %131 ]
  %169 = load i32, ptr %3, align 4
  %170 = getelementptr ptr, ptr %168, i32 %169
  %171 = load ptr, ptr %170, align 4
  %172 = shl i32 %169, 8
  %173 = add i32 %172, 268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !11
  %174 = load ptr, ptr %12, align 4
  %175 = getelementptr i8, ptr %174, i32 %173
  %176 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %175) #8, !srcloc !8
  %177 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %111, ptr noundef nonnull @.str.18, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %178 = call i32 @llvm.smin.i32(i32 %177, i32 0) #8
  switch i32 %178, label %188 [
    i32 -22, label %190
    i32 0, label %179
  ]

179:                                              ; preds = %167
  %180 = load i32, ptr %2, align 4
  switch i32 %180, label %188 [
    i32 2000, label %181
    i32 1000, label %181
  ]

181:                                              ; preds = %179, %179
  %182 = icmp eq i32 %180, 2000
  %183 = zext i1 %182 to i32
  store i32 %183, ptr %2, align 4
  %184 = select i1 %182, i32 3, i32 1
  %185 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %171, i32 0, i32 5
  %186 = load i32, ptr %185, align 4
  %187 = or i32 %186, %184
  store i32 %187, ptr %185, align 4
  br label %190

188:                                              ; preds = %179, %167
  %189 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %189, ptr noundef nonnull @.str.19, i32 noundef %169) #9
  br label %190

190:                                              ; preds = %188, %181, %167
  %191 = call ptr @of_find_property(ptr noundef nonnull %111, ptr noundef nonnull @.str.20, ptr noundef null) #8
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %171, i32 0, i32 5
  %195 = load i32, ptr %194, align 4
  %196 = or i32 %195, 4
  store i32 %196, ptr %194, align 4
  br label %197

197:                                              ; preds = %193, %190
  %198 = call ptr @of_find_property(ptr noundef nonnull %111, ptr noundef nonnull @.str.21, ptr noundef null) #8
  %199 = icmp eq ptr %198, null
  br i1 %199, label %204, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %171, i32 0, i32 5
  %202 = load i32, ptr %201, align 4
  %203 = or i32 %202, 8
  store i32 %203, ptr %201, align 4
  br label %204

204:                                              ; preds = %200, %197
  %205 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %111, ptr noundef nonnull @.str.22, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %206 = call i32 @llvm.smin.i32(i32 %205, i32 0) #8
  %207 = icmp eq i32 %206, -22
  br i1 %207, label %227, label %208

208:                                              ; preds = %204
  %209 = icmp sgt i32 %205, -1
  %210 = load i32, ptr %2, align 4
  %211 = icmp ult i32 %210, 4
  %212 = select i1 %209, i1 %211, i1 false
  br i1 %212, label %213, label %225

213:                                              ; preds = %208
  switch i32 %210, label %218 [
    i32 3, label %214
    i32 0, label %227
  ]

214:                                              ; preds = %213
  %215 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %171, i32 0, i32 5
  %216 = load i32, ptr %215, align 4
  %217 = or i32 %216, 16
  store i32 %217, ptr %215, align 4
  br label %227

218:                                              ; preds = %213
  %219 = icmp eq i32 %210, 2
  %220 = zext i1 %219 to i32
  store i32 %220, ptr %2, align 4
  %221 = select i1 %219, i32 96, i32 64
  %222 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %171, i32 0, i32 5
  %223 = load i32, ptr %222, align 4
  %224 = or i32 %223, %221
  store i32 %224, ptr %222, align 4
  br label %227

225:                                              ; preds = %208
  %226 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %226, ptr noundef nonnull @.str.23, i32 noundef %169) #9
  br label %227

227:                                              ; preds = %225, %218, %214, %213, %204
  %228 = call ptr @of_find_property(ptr noundef nonnull %111, ptr noundef nonnull @.str.24, ptr noundef null) #8
  %229 = icmp eq ptr %228, null
  br i1 %229, label %234, label %230

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %171, i32 0, i32 5
  %232 = load i32, ptr %231, align 4
  %233 = or i32 %232, 128
  store i32 %233, ptr %231, align 4
  br label %234

234:                                              ; preds = %230, %227
  %235 = call ptr @of_find_property(ptr noundef nonnull %111, ptr noundef nonnull @.str.25, ptr noundef null) #8
  %236 = icmp eq ptr %235, null
  br i1 %236, label %241, label %237

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %171, i32 0, i32 5
  %239 = load i32, ptr %238, align 4
  %240 = or i32 %239, 256
  store i32 %240, ptr %238, align 4
  br label %241

241:                                              ; preds = %237, %234
  %242 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %111, ptr noundef nonnull @.str.26, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %243 = call i32 @llvm.smin.i32(i32 %242, i32 0) #8
  %244 = icmp eq i32 %243, -22
  br i1 %244, label %258, label %245

245:                                              ; preds = %241
  %246 = icmp sgt i32 %242, -1
  %247 = load i32, ptr %2, align 4
  %248 = icmp ult i32 %247, 16
  %249 = select i1 %246, i1 %248, i1 false
  br i1 %249, label %250, label %256

250:                                              ; preds = %245
  %251 = shl nuw nsw i32 %247, 9
  %252 = and i32 %251, 7680
  %253 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %171, i32 0, i32 5
  %254 = load i32, ptr %253, align 4
  %255 = or i32 %254, %252
  store i32 %255, ptr %253, align 4
  br label %258

256:                                              ; preds = %245
  %257 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %257, ptr noundef nonnull @.str.27, i32 noundef %169) #9
  br label %258

258:                                              ; preds = %256, %250, %241
  %259 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %111, ptr noundef nonnull @.str.28, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %260 = call i32 @llvm.smin.i32(i32 %259, i32 0) #8
  %261 = icmp eq i32 %260, -22
  br i1 %261, label %275, label %262

262:                                              ; preds = %258
  %263 = icmp sgt i32 %259, -1
  %264 = load i32, ptr %2, align 4
  %265 = icmp ult i32 %264, 4
  %266 = select i1 %263, i1 %265, i1 false
  br i1 %266, label %267, label %273

267:                                              ; preds = %262
  %268 = shl nuw nsw i32 %264, 13
  %269 = and i32 %268, 24576
  %270 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %171, i32 0, i32 5
  %271 = load i32, ptr %270, align 4
  %272 = or i32 %271, %269
  store i32 %272, ptr %270, align 4
  br label %275

273:                                              ; preds = %262
  %274 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %274, ptr noundef nonnull @.str.29, i32 noundef %169) #9
  br label %275

275:                                              ; preds = %273, %267, %258
  %276 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %111, ptr noundef nonnull @.str.30, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %277 = call i32 @llvm.smin.i32(i32 %276, i32 0) #8
  %278 = icmp eq i32 %277, -22
  br i1 %278, label %292, label %279

279:                                              ; preds = %275
  %280 = icmp sgt i32 %276, -1
  %281 = load i32, ptr %2, align 4
  %282 = icmp ult i32 %281, 4
  %283 = select i1 %280, i1 %282, i1 false
  br i1 %283, label %284, label %290

284:                                              ; preds = %279
  %285 = shl nuw nsw i32 %281, 20
  %286 = and i32 %285, 3145728
  %287 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %171, i32 0, i32 5
  %288 = load i32, ptr %287, align 4
  %289 = or i32 %288, %286
  store i32 %289, ptr %287, align 4
  br label %292

290:                                              ; preds = %279
  %291 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %291, ptr noundef nonnull @.str.31, i32 noundef %169) #9
  br label %292

292:                                              ; preds = %290, %284, %275
  %293 = call ptr @of_find_property(ptr noundef nonnull %111, ptr noundef nonnull @.str.32, ptr noundef null) #8
  %294 = icmp eq ptr %293, null
  br i1 %294, label %299, label %295

295:                                              ; preds = %292
  %296 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %171, i32 0, i32 5
  %297 = load i32, ptr %296, align 4
  %298 = or i32 %297, 4194304
  store i32 %298, ptr %296, align 4
  br label %299

299:                                              ; preds = %295, %292
  %300 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %111, ptr noundef nonnull @.str.33, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %301 = call i32 @llvm.smin.i32(i32 %300, i32 0) #8
  %302 = icmp eq i32 %301, -22
  br i1 %302, label %316, label %303

303:                                              ; preds = %299
  %304 = icmp sgt i32 %300, -1
  %305 = load i32, ptr %2, align 4
  %306 = icmp ult i32 %305, 4
  %307 = select i1 %304, i1 %306, i1 false
  br i1 %307, label %308, label %314

308:                                              ; preds = %303
  %309 = shl nuw nsw i32 %305, 23
  %310 = and i32 %309, 25165824
  %311 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %171, i32 0, i32 5
  %312 = load i32, ptr %311, align 4
  %313 = or i32 %312, %310
  store i32 %313, ptr %311, align 4
  br label %316

314:                                              ; preds = %303
  %315 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %315, ptr noundef nonnull @.str.34, i32 noundef %169) #9
  br label %316

316:                                              ; preds = %314, %308, %299
  %317 = call ptr @of_find_property(ptr noundef nonnull %111, ptr noundef nonnull @.str.35, ptr noundef null) #8
  %318 = icmp eq ptr %317, null
  br i1 %318, label %323, label %319

319:                                              ; preds = %316
  %320 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %171, i32 0, i32 5
  %321 = load i32, ptr %320, align 4
  %322 = or i32 %321, 33554432
  store i32 %322, ptr %320, align 4
  br label %323

323:                                              ; preds = %319, %316
  %324 = call ptr @of_find_property(ptr noundef nonnull %111, ptr noundef nonnull @.str.36, ptr noundef null) #8
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %330

326:                                              ; preds = %323
  %327 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %171, i32 0, i32 5
  %328 = load i32, ptr %327, align 4
  %329 = or i32 %328, 67108864
  store i32 %329, ptr %327, align 4
  br label %330

330:                                              ; preds = %326, %323
  %331 = call ptr @of_find_property(ptr noundef nonnull %111, ptr noundef nonnull @.str.37, ptr noundef null) #8
  %332 = icmp eq ptr %331, null
  %333 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %171, i32 0, i32 5
  %334 = load i32, ptr %333, align 4
  %335 = or i32 %334, 134217728
  %336 = select i1 %332, i32 %334, i32 %335
  %337 = and i32 %176, 1015808
  %338 = or i32 %336, %337
  store i32 %338, ptr %333, align 4
  %339 = load ptr, ptr %12, align 4
  %340 = getelementptr i8, ptr %339, i32 %173
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %340, i32 %338) #8, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %341 = add i32 %112, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %342 = call ptr @of_get_next_child(ptr noundef %6, ptr noundef nonnull %111) #8
  %343 = icmp eq ptr %342, null
  br i1 %343, label %344, label %110

344:                                              ; preds = %330, %107
  %345 = call ptr @__devm_of_phy_provider_register(ptr noundef %4, ptr noundef null, ptr noundef null, ptr noundef nonnull @stm32_usbphyc_of_xlate) #8
  %346 = icmp ugt ptr %345, inttoptr (i32 -4096 to ptr)
  br i1 %346, label %347, label %349

347:                                              ; preds = %344
  %348 = ptrtoint ptr %345 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef %348) #9
  br label %362

349:                                              ; preds = %344
  %350 = call fastcc i32 @stm32_usbphyc_clk48_register(ptr noundef nonnull %7)
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %353, label %352

352:                                              ; preds = %349
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef %350) #9
  br label %362

353:                                              ; preds = %349
  %354 = load ptr, ptr %12, align 4
  %355 = getelementptr i8, ptr %354, i32 1012
  %356 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %355) #8, !srcloc !8
  %357 = lshr i32 %356, 4
  %358 = and i32 %357, 15
  %359 = and i32 %356, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.14, i32 noundef %358, i32 noundef %359) #9
  br label %365

360:                                              ; preds = %163, %129, %119, %117, %115
  %361 = phi i32 [ -517, %115 ], [ %118, %117 ], [ %130, %129 ], [ -517, %163 ], [ -12, %119 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @of_node_put(ptr noundef nonnull %111) #8
  br label %362

362:                                              ; preds = %360, %352, %347, %104, %97, %88, %86, %69, %41
  %363 = phi i32 [ -517, %41 ], [ -517, %69 ], [ %99, %97 ], [ %106, %104 ], [ %361, %360 ], [ %348, %347 ], [ %350, %352 ], [ -12, %88 ], [ -12, %86 ]
  %364 = load ptr, ptr %18, align 4
  call void @clk_disable(ptr noundef %364) #8
  call void @clk_unprepare(ptr noundef %364) #8
  br label %365

365:                                              ; preds = %362, %353, %30, %20, %14, %1
  %366 = phi i32 [ %15, %14 ], [ %22, %20 ], [ %31, %30 ], [ %363, %362 ], [ 0, %353 ], [ -12, %1 ]
  ret i32 %366
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usbphyc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_usbphyc, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stm32_usbphyc, ptr %3, i32 0, i32 4
  br label %9

9:                                                ; preds = %30, %7
  %10 = phi i32 [ 0, %7 ], [ %31, %30 ]
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr ptr, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %13, i32 0, i32 4
  %15 = load i8, ptr %14, align 4, !range !12
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %9
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 8
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %20, i32 0, i32 4
  store i8 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.stm32_usbphyc, ptr %22, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #8, !srcloc !14
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #8, !srcloc !15
  %26 = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  %29 = tail call fastcc i32 @__stm32_usbphyc_pll_disable(ptr noundef %22) #8
  br label %30

30:                                               ; preds = %28, %17, %9
  %31 = add nuw nsw i32 %10, 1
  %32 = load i32, ptr %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %9, label %34

34:                                               ; preds = %30, %1
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 25
  %37 = load ptr, ptr %36, align 8
  tail call void @of_clk_del_provider(ptr noundef %37) #8
  %38 = getelementptr inbounds %struct.stm32_usbphyc, ptr %3, i32 0, i32 9
  tail call void @clk_hw_unregister(ptr noundef %38) #8
  %39 = getelementptr inbounds %struct.stm32_usbphyc, ptr %3, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  tail call void @clk_disable(ptr noundef %40) #8
  tail call void @clk_unprepare(ptr noundef %40) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @stm32_usbphyc_of_xlate(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.stm32_usbphyc, ptr %4, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.stm32_usbphyc, ptr %4, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  br label %15

12:                                               ; preds = %15
  %13 = add nuw nsw i32 %16, 1
  %14 = icmp eq i32 %13, %7
  br i1 %14, label %25, label %15

15:                                               ; preds = %12, %9
  %16 = phi i32 [ 0, %9 ], [ %13, %12 ]
  %17 = getelementptr ptr, ptr %11, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 25
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %5, %21
  br i1 %22, label %23, label %12

23:                                               ; preds = %15
  %24 = icmp eq ptr %18, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %23, %12, %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.38) #9
  br label %59

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %18, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %59 [
    i32 0, label %29
    i32 1, label %33
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %59, label %37

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %28) #9
  br label %59

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.stm32_usbphyc, ptr %4, i32 0, i32 10
  %40 = load i32, ptr %39, align 4
  %41 = icmp slt i32 %40, 0
  %42 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  br i1 %41, label %44, label %56

44:                                               ; preds = %38
  %45 = icmp eq i32 %43, 0
  %46 = getelementptr inbounds %struct.stm32_usbphyc, ptr %4, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 8
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #8
  br i1 %45, label %50, label %52

50:                                               ; preds = %44
  %51 = and i32 %49, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %51) #8, !srcloc !9
  br label %54

52:                                               ; preds = %44
  %53 = or i32 %49, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %53) #8, !srcloc !9
  br label %54

54:                                               ; preds = %52, %50
  store i32 %43, ptr %39, align 4
  %55 = load ptr, ptr %18, align 4
  br label %59

56:                                               ; preds = %38
  %57 = icmp eq i32 %43, %40
  br i1 %57, label %59, label %58

58:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.40) #9
  br label %59

59:                                               ; preds = %58, %56, %54, %37, %29, %26, %25
  %60 = phi ptr [ inttoptr (i32 -22 to ptr), %37 ], [ inttoptr (i32 -16 to ptr), %58 ], [ inttoptr (i32 -22 to ptr), %25 ], [ %19, %26 ], [ %19, %29 ], [ %55, %54 ], [ %19, %56 ]
  ret ptr %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_usbphyc_clk48_register(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #8
  %6 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 20, i1 false)
  store ptr @.str.41, ptr %2, align 4
  %7 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  store ptr @usbphyc_clk48_ops, ptr %7, align 4
  %8 = getelementptr inbounds %struct.stm32_usbphyc, ptr %0, i32 0, i32 9
  %9 = getelementptr inbounds %struct.stm32_usbphyc, ptr %0, i32 0, i32 9, i32 2
  store ptr %2, ptr %9, align 4
  %10 = call i32 @clk_hw_register(ptr noundef %3, ptr noundef %8) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = call i32 @of_clk_add_hw_provider(ptr noundef %5, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %8) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  call void @clk_hw_unregister(ptr noundef %8) #8
  br label %16

16:                                               ; preds = %15, %12, %1
  %17 = phi i32 [ %10, %1 ], [ %13, %15 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #8
  ret i32 %17
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usbphyc_phy_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %3, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 8
  %9 = add i32 %8, 264
  %10 = tail call fastcc i32 @stm32_usbphyc_pll_enable(ptr noundef %5)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.stm32_usbphyc, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 496) #8, !srcloc !9
  %16 = tail call i64 @ktime_get() #8
  %17 = add i64 %16, 1000000
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr i8, ptr %18, i32 %9
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !8
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %30, %12
  %24 = tail call i64 @ktime_get() #8
  %25 = icmp sgt i64 %24, %17
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load ptr, ptr %13, align 4
  %28 = getelementptr i8, ptr %27, i32 %9
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !8
  br label %36

30:                                               ; preds = %23
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #8
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr i8, ptr %31, i32 %9
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !8
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %23, label %36

36:                                               ; preds = %30, %26, %12
  %37 = phi i32 [ %29, %26 ], [ %20, %12 ], [ %33, %30 ]
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load ptr, ptr %5, align 4
  %42 = and i32 %37, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.15, i32 noundef %42) #9
  %43 = getelementptr inbounds %struct.stm32_usbphyc, ptr %5, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #8, !srcloc !14
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #8, !srcloc !15
  %45 = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = tail call fastcc i32 @__stm32_usbphyc_pll_disable(ptr noundef %5) #8
  br label %51

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %3, i32 0, i32 4
  store i8 1, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %47, %40, %1
  %52 = phi i32 [ 0, %49 ], [ %10, %1 ], [ %48, %47 ], [ 0, %40 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usbphyc_phy_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %3, i32 0, i32 4
  store i8 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.stm32_usbphyc, ptr %5, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #8, !srcloc !14
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #8, !srcloc !15
  %9 = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call fastcc i32 @__stm32_usbphyc_pll_disable(ptr noundef %5) #8
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi i32 [ %12, %11 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usbphyc_phy_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @regulator_enable(ptr noundef nonnull %5) #8
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usbphyc_phy_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #8
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_usbphyc_pll_enable(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32_usbphyc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !8
  %5 = and i32 %4, 67108864
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.stm32_usbphyc, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #8, !srcloc !14
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #8, !srcloc !18
  %9 = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  %10 = icmp slt i32 %9, 2
  %11 = select i1 %10, i1 true, i1 %6
  br i1 %11, label %12, label %63

12:                                               ; preds = %1
  br i1 %6, label %17, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.16) #9
  %15 = tail call fastcc i32 @__stm32_usbphyc_pll_disable(ptr noundef %0)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %60

17:                                               ; preds = %13, %12
  %18 = getelementptr inbounds %struct.stm32_usbphyc, ptr %0, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @regulator_enable(ptr noundef %19) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %60

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.stm32_usbphyc, ptr %0, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @regulator_enable(ptr noundef %24) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.stm32_usbphyc, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @clk_get_rate(ptr noundef %29) #8
  %31 = add i32 %30, -38400001
  %32 = icmp ult i32 %31, -19200001
  br i1 %32, label %51, label %33

33:                                               ; preds = %27
  %34 = shl nuw nsw i32 %30, 1
  %35 = udiv i32 -1414967296, %34
  %36 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %34, i64 188743680000000) #10, !srcloc !20
  %37 = extractvalue { i64, i64 } %36, 1
  %38 = trunc i64 %37 to i16
  %39 = and i32 %35, 127
  %40 = icmp eq i16 %38, 0
  %41 = trunc i64 %37 to i32
  %42 = shl i32 %41, 10
  %43 = and i32 %42, 67107840
  %44 = or i32 %43, 536870912
  %45 = select i1 %40, i32 0, i32 %44
  %46 = or i32 %45, %39
  %47 = or i32 %46, -805306368
  %48 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %47) #8, !srcloc !9
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !8
  %50 = or i32 %49, 67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %50) #8, !srcloc !9
  br label %63

51:                                               ; preds = %27
  %52 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.17, i32 noundef %30) #9
  %53 = load ptr, ptr %23, align 4
  %54 = tail call i32 @regulator_disable(ptr noundef %53) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51, %22
  %57 = phi i32 [ %25, %22 ], [ -22, %51 ]
  %58 = load ptr, ptr %18, align 4
  %59 = tail call i32 @regulator_disable(ptr noundef %58) #8
  br label %60

60:                                               ; preds = %56, %51, %17, %13
  %61 = phi i32 [ %15, %13 ], [ -22, %51 ], [ %20, %17 ], [ %57, %56 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #8, !srcloc !14
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #8, !srcloc !21
  br label %63

63:                                               ; preds = %60, %33, %1
  %64 = phi i32 [ %61, %60 ], [ 0, %33 ], [ 0, %1 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__stm32_usbphyc_pll_disable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32_usbphyc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !8
  %5 = and i32 %4, -67108865
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #8, !srcloc !9
  %6 = tail call i64 @ktime_get() #8
  %7 = add i64 %6, 50000
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !8
  %9 = and i32 %8, 67108864
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %14, %1
  %12 = tail call i64 @ktime_get() #8
  %13 = icmp sgt i64 %12, %7
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  tail call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !8
  %16 = and i32 %15, 67108864
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %11

18:                                               ; preds = %11
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !8
  %20 = and i32 %19, 67108864
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.3) #9
  br label %24

24:                                               ; preds = %22, %18, %14, %1
  %25 = getelementptr inbounds %struct.stm32_usbphyc, ptr %0, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @regulator_disable(ptr noundef %26) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.stm32_usbphyc, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @regulator_disable(ptr noundef %31) #8
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i32 [ %27, %24 ], [ %32, %29 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usbphyc_clk48_prepare(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -36
  %3 = tail call fastcc i32 @stm32_usbphyc_pll_enable(ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_usbphyc_clk48_unprepare(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #8, !srcloc !14
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #8, !srcloc !15
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -36
  %8 = tail call fastcc i32 @__stm32_usbphyc_pll_disable(ptr noundef %7) #8
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stm32_usbphyc_clk48_recalc_rate(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  ret i32 48000000
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_usbphyc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_usbphyc, ptr %3, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = icmp eq i32 %5, 0
  %9 = getelementptr inbounds %struct.stm32_usbphyc, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8
  br i1 %8, label %13, label %15

13:                                               ; preds = %7
  %14 = and i32 %12, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %14) #8, !srcloc !9
  br label %17

15:                                               ; preds = %7
  %16 = or i32 %12, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %16) #8, !srcloc !9
  br label %17

17:                                               ; preds = %15, %13
  store i32 %5, ptr %4, align 4
  br label %18

18:                                               ; preds = %17, %1
  %19 = getelementptr inbounds %struct.stm32_usbphyc, ptr %3, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.stm32_usbphyc, ptr %3, i32 0, i32 4
  %24 = getelementptr inbounds %struct.stm32_usbphyc, ptr %3, i32 0, i32 1
  br label %25

25:                                               ; preds = %25, %22
  %26 = phi i32 [ 0, %22 ], [ %36, %25 ]
  %27 = load ptr, ptr %23, align 4
  %28 = getelementptr ptr, ptr %27, i32 %26
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %29, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %24, align 4
  %33 = shl i32 %26, 8
  %34 = add i32 %33, 268
  %35 = getelementptr i8, ptr %32, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %31) #8, !srcloc !9
  %36 = add nuw nsw i32 %26, 1
  %37 = load i32, ptr %19, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %25, label %39

39:                                               ; preds = %25, %18
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

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
!8 = !{i64 3454125}
!9 = !{i64 3453707}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"auto-init"}
!12 = !{i8 0, i8 2}
!13 = !{i64 2148121401}
!14 = !{i64 518563, i64 2148008534, i64 2148008560, i64 2148008607, i64 2148008629, i64 2148008657, i64 2148008677}
!15 = !{i64 2148023787, i64 2148023819, i64 2148023848, i64 2148023882, i64 2148023913, i64 2148023936}
!16 = !{i64 2148121604}
!17 = !{i64 2148118568}
!18 = !{i64 2148021430, i64 2148021462, i64 2148021491, i64 2148021525, i64 2148021556, i64 2148021579}
!19 = !{i64 2148118771}
!20 = !{i64 2148406359, i64 2148406639, i64 2148406973, i64 2148407307}
!21 = !{i64 2148023103, i64 2148023129, i64 2148023158, i64 2148023192, i64 2148023223, i64 2148023246}
