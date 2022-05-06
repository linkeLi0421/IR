; ModuleID = '/llk/IR/drivers/phy/st/phy-miphy28lp.c_pt.bc'
source_filename = "../drivers/phy/st/phy-miphy28lp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.miphy28lp_pll_gen = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.miphy28lp_dev = type { ptr, ptr, %struct.mutex, ptr, i32 }
%struct.miphy28lp_phy = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, [4 x i32], i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_miphy28lp__248_1278_miphy28lp_driver_init6 = internal global ptr @miphy28lp_driver_init, section ".initcall6.init", align 4
@miphy28lp_driver = internal global %struct.platform_driver { ptr @miphy28lp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @miphy28lp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_miphy28lp_driver_exit = internal global ptr @miphy28lp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [64 x i8] c"phy_miphy28lp.author=Alexandre Torgue <alexandre.torgue@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [62 x i8] c"phy_miphy28lp.description=STMicroelectronics miphy28lp driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [48 x i8] c"phy_miphy28lp.file=drivers/phy/st/phy-miphy28lp\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [29 x i8] c"phy_miphy28lp.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"miphy28lp-phy\00", align 1
@miphy28lp_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,miphy28lp-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"No syscfg phandle specified\0A\00", align 1
@miphy28lp_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"&miphy_dev->miphy_mutex\00", align 1
@miphy28lp_ops = internal constant %struct.phy_ops { ptr @miphy28lp_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"sata-up mode, addr 0x%p\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"SATA phy setup failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"unable to bring out of miphy reset\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@sata_pll_gen = internal unnamed_addr constant [3 x %struct.miphy28lp_pll_gen] [%struct.miphy28lp_pll_gen { i32 0, i32 0, i32 0, i32 174, i32 0, i32 83, i32 0, i32 0, i32 0, i32 125, i32 86, i32 0, i32 13 }, %struct.miphy28lp_pll_gen { i32 1, i32 5, i32 0, i32 174, i32 0, i32 114, i32 32, i32 0, i32 0, i32 125, i32 86, i32 0, i32 13 }, %struct.miphy28lp_pll_gen { i32 2, i32 10, i32 0, i32 174, i32 0, i32 192, i32 32, i32 0, i32 0, i32 125, i32 86, i32 0, i32 13 }], align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"pcie-up mode, addr 0x%p\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"PCIe phy setup failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"usb3-up mode, addr 0x%p\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"USB3 phy setup failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"st,osc-force-ext\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"st,osc-rdy\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"st,px_rx_pol_inv\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"st,ssc-on\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"st,tx-impedance-comp\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"st,sata-gen\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"miphy-sw-rst\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"miphy soft reset control not defined\0A\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"Invalid number of cells in 'phy' property\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"Failed to find appropriate phy\0A\00", align 1
@PHY_TYPE_name = internal unnamed_addr constant [4 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"pipew\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"failed to ioremap %s address region\0A\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"reg-names\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"sata-up\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"pcie-up\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"usb3-up\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_miphy28lp_driver_exit, ptr @__initcall__kmod_phy_miphy28lp__248_1278_miphy28lp_driver_init6, ptr @miphy28lp_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @miphy28lp_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @miphy28lp_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @miphy28lp_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @miphy28lp_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @miphy28lp_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 36, i32 noundef 3520) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %145, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef null) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %11, %8
  %12 = phi i32 [ %14, %11 ], [ 0, %8 ]
  %13 = phi ptr [ %15, %11 ], [ %9, %8 ]
  %14 = add i32 %12, 1
  %15 = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef nonnull %13) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %11

17:                                               ; preds = %11, %8
  %18 = phi i32 [ 0, %8 ], [ %14, %11 ]
  %19 = getelementptr inbounds %struct.miphy28lp_dev, ptr %6, i32 0, i32 4
  store i32 %18, ptr %19, align 4
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 4) #7
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %22, label %24, !prof !8

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.miphy28lp_dev, ptr %6, i32 0, i32 3
  store ptr null, ptr %23, align 4
  br label %145

24:                                               ; preds = %17
  %25 = extractvalue { i32, i1 } %20, 0
  %26 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %25, i32 noundef 3520) #7
  %27 = getelementptr inbounds %struct.miphy28lp_dev, ptr %6, i32 0, i32 3
  store ptr %26, ptr %27, align 4
  %28 = icmp eq ptr %26, null
  br i1 %28, label %145, label %29

29:                                               ; preds = %24
  %30 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.1) #7
  %31 = getelementptr inbounds %struct.miphy28lp_dev, ptr %6, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.2) #8
  %35 = ptrtoint ptr %30 to i32
  br label %145

36:                                               ; preds = %29
  store ptr %3, ptr %6, align 4
  %37 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %37, align 8
  %38 = getelementptr inbounds %struct.miphy28lp_dev, ptr %6, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %38, ptr noundef nonnull @.str.3, ptr noundef nonnull @miphy28lp_probe.__key) #7
  %39 = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef null) #7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %136, label %41

41:                                               ; preds = %128, %36
  %42 = phi i32 [ %133, %128 ], [ 0, %36 ]
  %43 = phi ptr [ %134, %128 ], [ %39, %36 ]
  %44 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 52, i32 noundef 3520) #7
  %45 = icmp eq ptr %44, null
  br i1 %45, label %143, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %27, align 4
  %48 = getelementptr ptr, ptr %47, i32 %42
  store ptr %44, ptr %48, align 4
  %49 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef nonnull %43, ptr noundef nonnull @miphy28lp_ops) #7
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #8
  %52 = ptrtoint ptr %49 to i32
  br label %143

53:                                               ; preds = %46
  %54 = load ptr, ptr %27, align 4
  %55 = getelementptr ptr, ptr %54, i32 %42
  %56 = load ptr, ptr %55, align 4
  store ptr %49, ptr %56, align 4
  %57 = load ptr, ptr %27, align 4
  %58 = getelementptr ptr, ptr %57, i32 %42
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.miphy28lp_phy, ptr %59, i32 0, i32 1
  store ptr %6, ptr %60, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  %61 = call ptr @of_find_property(ptr noundef nonnull %43, ptr noundef nonnull @.str.12, ptr noundef null) #7
  %62 = icmp ne ptr %61, null
  %63 = getelementptr inbounds %struct.miphy28lp_phy, ptr %44, i32 0, i32 4
  %64 = zext i1 %62 to i8
  store i8 %64, ptr %63, align 4
  %65 = call ptr @of_find_property(ptr noundef nonnull %43, ptr noundef nonnull @.str.13, ptr noundef null) #7
  %66 = icmp ne ptr %65, null
  %67 = getelementptr inbounds %struct.miphy28lp_phy, ptr %44, i32 0, i32 5
  %68 = zext i1 %66 to i8
  store i8 %68, ptr %67, align 1
  %69 = call ptr @of_find_property(ptr noundef nonnull %43, ptr noundef nonnull @.str.14, ptr noundef null) #7
  %70 = icmp ne ptr %69, null
  %71 = getelementptr inbounds %struct.miphy28lp_phy, ptr %44, i32 0, i32 6
  %72 = zext i1 %70 to i8
  store i8 %72, ptr %71, align 2
  %73 = call ptr @of_find_property(ptr noundef nonnull %43, ptr noundef nonnull @.str.15, ptr noundef null) #7
  %74 = icmp ne ptr %73, null
  %75 = getelementptr inbounds %struct.miphy28lp_phy, ptr %44, i32 0, i32 7
  %76 = zext i1 %74 to i8
  store i8 %76, ptr %75, align 1
  %77 = call ptr @of_find_property(ptr noundef nonnull %43, ptr noundef nonnull @.str.16, ptr noundef null) #7
  %78 = icmp ne ptr %77, null
  %79 = getelementptr inbounds %struct.miphy28lp_phy, ptr %44, i32 0, i32 8
  %80 = zext i1 %78 to i8
  store i8 %80, ptr %79, align 4
  %81 = getelementptr inbounds %struct.miphy28lp_phy, ptr %44, i32 0, i32 10
  %82 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %43, ptr noundef nonnull @.str.17, ptr noundef %81, i32 noundef 1, i32 noundef 0) #7
  %83 = load i32, ptr %81, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %53
  store i32 0, ptr %81, align 4
  br label %86

86:                                               ; preds = %85, %53
  %87 = call i32 @of_property_read_u32_index(ptr noundef nonnull %43, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef nonnull %2) #7
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, ptr %2, align 4
  %91 = getelementptr %struct.miphy28lp_phy, ptr %44, i32 0, i32 11, i32 0
  store i32 %90, ptr %91, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = call i32 @of_property_read_u32_index(ptr noundef nonnull %43, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef nonnull %2) #7
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, ptr %2, align 4
  %97 = getelementptr %struct.miphy28lp_phy, ptr %44, i32 0, i32 11, i32 1
  store i32 %96, ptr %97, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = call i32 @of_property_read_u32_index(ptr noundef nonnull %43, ptr noundef nonnull @.str.1, i32 noundef 2, ptr noundef nonnull %2) #7
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, ptr %2, align 4
  %103 = getelementptr %struct.miphy28lp_phy, ptr %44, i32 0, i32 11, i32 2
  store i32 %102, ptr %103, align 4
  br label %104

104:                                              ; preds = %101, %98
  %105 = call i32 @of_property_read_u32_index(ptr noundef nonnull %43, ptr noundef nonnull @.str.1, i32 noundef 3, ptr noundef nonnull %2) #7
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, ptr %2, align 4
  %109 = getelementptr %struct.miphy28lp_phy, ptr %44, i32 0, i32 11, i32 3
  store i32 %108, ptr %109, align 4
  br label %110

110:                                              ; preds = %107, %104
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %111 = load ptr, ptr %27, align 4
  %112 = getelementptr ptr, ptr %111, i32 %42
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.miphy28lp_phy, ptr %113, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = call ptr @__of_reset_control_get(ptr noundef nonnull %43, ptr noundef nonnull @.str.18, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %117 = getelementptr inbounds %struct.miphy28lp_phy, ptr %113, i32 0, i32 9
  store ptr %116, ptr %117, align 4
  %118 = icmp ugt ptr %116, inttoptr (i32 -4096 to ptr)
  br i1 %118, label %124, label %119

119:                                              ; preds = %110
  %120 = call i32 @reset_control_deassert(ptr noundef %116) #7
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr %115, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.7) #8
  br label %143

124:                                              ; preds = %110
  %125 = load ptr, ptr %115, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.19) #8
  %126 = load ptr, ptr %117, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %141

128:                                              ; preds = %124, %119
  %129 = load ptr, ptr %27, align 4
  %130 = getelementptr ptr, ptr %129, i32 %42
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 8
  store ptr %131, ptr %132, align 8
  %133 = add i32 %42, 1
  %134 = call ptr @of_get_next_child(ptr noundef %5, ptr noundef nonnull %43) #7
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %41

136:                                              ; preds = %128, %36
  %137 = call ptr @__devm_of_phy_provider_register(ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef nonnull @miphy28lp_xlate) #7
  %138 = icmp ugt ptr %137, inttoptr (i32 -4096 to ptr)
  %139 = ptrtoint ptr %137 to i32
  %140 = select i1 %138, i32 %139, i32 0
  br label %145

141:                                              ; preds = %124
  %142 = ptrtoint ptr %126 to i32
  br label %143

143:                                              ; preds = %141, %122, %51, %41
  %144 = phi i32 [ %120, %122 ], [ %52, %51 ], [ %142, %141 ], [ -12, %41 ]
  call void @of_node_put(ptr noundef nonnull %43) #7
  br label %145

145:                                              ; preds = %143, %136, %33, %24, %22, %1
  %146 = phi i32 [ %35, %33 ], [ %144, %143 ], [ %140, %136 ], [ -12, %1 ], [ -12, %24 ], [ -12, %22 ]
  ret i32 %146
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @miphy28lp_xlate(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.resource, align 4
  %4 = alloca %struct.resource, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.miphy28lp_dev, ptr %6, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.miphy28lp_dev, ptr %6, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  br label %22

18:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20) #8
  br label %85

19:                                               ; preds = %22
  %20 = add nuw nsw i32 %23, 1
  %21 = icmp eq i32 %20, %13
  br i1 %21, label %32, label %22

22:                                               ; preds = %19, %15
  %23 = phi i32 [ 0, %15 ], [ %20, %19 ]
  %24 = getelementptr ptr, ptr %17, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 25
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %7, %28
  br i1 %29, label %30, label %19

30:                                               ; preds = %22
  %31 = icmp eq ptr %25, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %30, %19, %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.21) #8
  br label %85

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 25
  %35 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.miphy28lp_phy, ptr %25, i32 0, i32 12
  store i8 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.miphy28lp_phy, ptr %25, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %34, align 8
  switch i8 %37, label %85 [
    i8 1, label %42
    i8 2, label %42
    i8 4, label %42
  ]

42:                                               ; preds = %33, %33, %33
  %43 = load ptr, ptr %40, align 4
  %44 = and i32 %36, 255
  %45 = add nsw i32 %44, -1
  %46 = getelementptr [4 x ptr], ptr @PHY_TYPE_name, i32 0, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.miphy28lp_phy, ptr %25, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false) #7, !annotation !9
  %49 = tail call i32 @of_property_match_string(ptr noundef %41, ptr noundef nonnull @.str.24, ptr noundef %47) #7
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %42
  %52 = call i32 @of_address_to_resource(ptr noundef %41, i32 noundef %49, ptr noundef nonnull %4) #7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, ptr %4, align 4
  %56 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = sub i32 1, %55
  %59 = add i32 %58, %57
  %60 = call ptr @devm_ioremap(ptr noundef %43, i32 noundef %55, i32 noundef %59) #7
  store ptr %60, ptr %48, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.23, ptr noundef %47) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  br label %85

63:                                               ; preds = %54, %51, %42
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  %64 = load i8, ptr %38, align 4
  switch i8 %64, label %83 [
    i8 2, label %65
    i8 4, label %65
  ]

65:                                               ; preds = %63, %63
  %66 = load ptr, ptr %40, align 4
  %67 = getelementptr inbounds %struct.miphy28lp_phy, ptr %25, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #7, !annotation !9
  %68 = call i32 @of_property_match_string(ptr noundef %41, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22) #7
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %65
  %71 = call i32 @of_address_to_resource(ptr noundef %41, i32 noundef %68, ptr noundef nonnull %3) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i32, ptr %3, align 4
  %75 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = sub i32 1, %74
  %78 = add i32 %77, %76
  %79 = call ptr @devm_ioremap(ptr noundef %66, i32 noundef %74, i32 noundef %78) #7
  store ptr %79, ptr %67, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %73, %70, %65
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  br label %83

82:                                               ; preds = %73
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  br label %85

83:                                               ; preds = %81, %63
  %84 = load ptr, ptr %25, align 4
  br label %85

85:                                               ; preds = %83, %82, %62, %33, %32, %18
  %86 = phi ptr [ inttoptr (i32 -22 to ptr), %18 ], [ %84, %83 ], [ inttoptr (i32 -22 to ptr), %32 ], [ inttoptr (i32 -2 to ptr), %82 ], [ inttoptr (i32 -2 to ptr), %62 ], [ inttoptr (i32 -22 to ptr), %33 ]
  ret ptr %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @miphy28lp_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.miphy28lp_phy, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.miphy28lp_dev, ptr %5, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %6) #7
  %7 = getelementptr inbounds %struct.miphy28lp_phy, ptr %3, i32 0, i32 12
  %8 = load i8, ptr %7, align 4
  switch i8 %8, label %476 [
    i8 1, label %9
    i8 2, label %197
    i8 4, label %349
  ]

9:                                                ; preds = %1
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr %struct.miphy28lp_phy, ptr %3, i32 0, i32 11, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %476, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.miphy28lp_phy, ptr %3, i32 0, i32 11, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %476, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.miphy28lp_phy, ptr %3, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %476, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.5, ptr noundef nonnull %20) #8
  %24 = getelementptr inbounds %struct.miphy28lp_phy, ptr %3, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %25, 1
  %27 = or i32 %26, 1
  %28 = getelementptr inbounds %struct.miphy28lp_dev, ptr %10, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %11, align 4
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %30, i32 noundef 7, i32 noundef %27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %32 = load ptr, ptr %28, align 4
  %33 = load i32, ptr %15, align 4
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %33, i32 noundef 255, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %35 = tail call fastcc i32 @miphy28lp_setup(ptr noundef %3, i32 noundef 0) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %471

37:                                               ; preds = %22
  %38 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 1) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 3) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 1) #7, !srcloc !10
  %39 = load i8, ptr %7, align 4
  %40 = icmp eq i8 %39, 2
  %41 = getelementptr i8, ptr %38, i32 4
  br i1 %40, label %42, label %43

42:                                               ; preds = %37
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %41, i8 20) #7, !srcloc !10
  br label %44

43:                                               ; preds = %37
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %41, i8 28) #7, !srcloc !10
  br label %44

44:                                               ; preds = %43, %42
  %45 = load ptr, ptr %19, align 4
  %46 = getelementptr i8, ptr %45, i32 235
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %46, i8 29) #7, !srcloc !10
  %47 = getelementptr i8, ptr %45, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %47, i8 30) #7, !srcloc !10
  %48 = getelementptr i8, ptr %45, i32 212
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %48, i8 -56) #7, !srcloc !10
  %49 = getelementptr i8, ptr %45, i32 213
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %49, i8 0) #7, !srcloc !10
  %50 = getelementptr i8, ptr %45, i32 214
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %50, i8 0) #7, !srcloc !10
  %51 = getelementptr i8, ptr %45, i32 215
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %51, i8 0) #7, !srcloc !10
  %52 = getelementptr i8, ptr %45, i32 211
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %52, i8 0) #7, !srcloc !10
  %53 = getelementptr i8, ptr %45, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %53, i8 64) #7, !srcloc !10
  %54 = getelementptr i8, ptr %45, i32 78
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %54, i8 -47) #7, !srcloc !10
  %55 = load i8, ptr %7, align 4
  %56 = icmp eq i8 %55, 1
  %57 = select i1 %56, i8 31, i8 95
  %58 = getelementptr i8, ptr %45, i32 153
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %58, i8 %57) #7, !srcloc !10
  %59 = load i8, ptr %7, align 4
  %60 = icmp eq i8 %59, 4
  br i1 %60, label %61, label %68

61:                                               ; preds = %44
  %62 = getelementptr i8, ptr %45, i32 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %62, i8 0) #7, !srcloc !10
  %63 = getelementptr i8, ptr %45, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %63, i8 112) #7, !srcloc !10
  %64 = getelementptr i8, ptr %45, i32 201
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %64, i8 2) #7, !srcloc !10
  %65 = getelementptr i8, ptr %45, i32 202
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %65, i8 2) #7, !srcloc !10
  %66 = getelementptr i8, ptr %45, i32 203
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %66, i8 2) #7, !srcloc !10
  %67 = getelementptr i8, ptr %45, i32 204
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %67, i8 10) #7, !srcloc !10
  br label %68

68:                                               ; preds = %61, %44
  %69 = load ptr, ptr %19, align 4
  %70 = getelementptr i8, ptr %69, i32 15
  %71 = getelementptr i8, ptr %69, i32 14
  %72 = getelementptr i8, ptr %69, i32 99
  %73 = getelementptr i8, ptr %69, i32 100
  %74 = getelementptr i8, ptr %69, i32 74
  %75 = getelementptr i8, ptr %69, i32 75
  %76 = getelementptr i8, ptr %69, i32 122
  %77 = getelementptr i8, ptr %69, i32 123
  %78 = getelementptr i8, ptr %69, i32 127
  %79 = getelementptr i8, ptr %69, i32 128
  %80 = getelementptr i8, ptr %69, i32 129
  br label %81

81:                                               ; preds = %81, %68
  %82 = phi i32 [ 0, %68 ], [ %116, %81 ]
  %83 = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %82
  %84 = load i32, ptr %83, align 4
  %85 = trunc i32 %84 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %70, i8 %85) #7, !srcloc !10
  %86 = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %82, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = trunc i32 %87 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %71, i8 %88) #7, !srcloc !10
  %89 = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %82, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = trunc i32 %90 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %72, i8 %91) #7, !srcloc !10
  %92 = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %82, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = trunc i32 %93 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %73, i8 %94) #7, !srcloc !10
  %95 = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %82, i32 5
  %96 = load i32, ptr %95, align 4
  %97 = trunc i32 %96 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %74, i8 %97) #7, !srcloc !10
  %98 = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %82, i32 6
  %99 = load i32, ptr %98, align 4
  %100 = trunc i32 %99 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %75, i8 %100) #7, !srcloc !10
  %101 = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %82, i32 12
  %102 = load i32, ptr %101, align 4
  %103 = trunc i32 %102 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %76, i8 %103) #7, !srcloc !10
  %104 = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %82, i32 8
  %105 = load i32, ptr %104, align 4
  %106 = trunc i32 %105 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %77, i8 %106) #7, !srcloc !10
  %107 = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %82, i32 9
  %108 = load i32, ptr %107, align 4
  %109 = trunc i32 %108 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %78, i8 %109) #7, !srcloc !10
  %110 = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %82, i32 10
  %111 = load i32, ptr %110, align 4
  %112 = trunc i32 %111 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %79, i8 %112) #7, !srcloc !10
  %113 = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %82, i32 11
  %114 = load i32, ptr %113, align 4
  %115 = trunc i32 %114 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %80, i8 %115) #7, !srcloc !10
  %116 = add nuw nsw i32 %82, 1
  %117 = icmp eq i32 %116, 3
  br i1 %117, label %118, label %81

118:                                              ; preds = %81
  %119 = getelementptr i8, ptr %38, i32 205
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %119, i8 33) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 0) #7, !srcloc !10
  %120 = load ptr, ptr %19, align 4
  %121 = getelementptr i8, ptr %120, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %121, i8 5) #7, !srcloc !10
  %122 = getelementptr i8, ptr %120, i32 233
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %122, i8 0) #7, !srcloc !10
  %123 = getelementptr i8, ptr %120, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %123, i8 30) #7, !srcloc !10
  %124 = getelementptr i8, ptr %120, i32 58
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %124, i8 64) #7, !srcloc !10
  %125 = load i8, ptr %7, align 4
  %126 = icmp eq i8 %125, 2
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %121, i8 1) #7, !srcloc !10
  br label %128

128:                                              ; preds = %127, %118
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %121, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %122, i8 64) #7, !srcloc !10
  %129 = getelementptr i8, ptr %120, i32 227
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %129, i8 2) #7, !srcloc !10
  %130 = getelementptr i8, ptr %120, i32 66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %130, i8 0) #7, !srcloc !10
  %131 = load i8, ptr %7, align 4
  %132 = icmp eq i8 %131, 2
  br i1 %132, label %133, label %145

133:                                              ; preds = %128
  %134 = load volatile i32, ptr @jiffies, align 64
  %135 = sub i32 -500, %134
  br label %136

136:                                              ; preds = %143, %133
  %137 = load ptr, ptr %19, align 4
  %138 = getelementptr i8, ptr %137, i32 63
  %139 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %138) #7, !srcloc !11
  %140 = load volatile i32, ptr @jiffies, align 64
  %141 = add i32 %135, %140
  %142 = icmp sgt i32 %141, -1
  br i1 %142, label %180, label %143

143:                                              ; preds = %136
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !13
  %144 = icmp sgt i8 %139, -1
  br i1 %144, label %136, label %145

145:                                              ; preds = %143, %128
  %146 = getelementptr inbounds %struct.miphy28lp_phy, ptr %3, i32 0, i32 6
  %147 = load i8, ptr %146, align 2, !range !14
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr %19, align 4
  %151 = getelementptr i8, ptr %150, i32 4
  %152 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %151) #7, !srcloc !11
  %153 = or i8 %152, 32
  %154 = load ptr, ptr %19, align 4
  %155 = getelementptr i8, ptr %154, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %155, i8 %153) #7, !srcloc !10
  br label %156

156:                                              ; preds = %149, %145
  %157 = getelementptr inbounds %struct.miphy28lp_phy, ptr %3, i32 0, i32 7
  %158 = load i8, ptr %157, align 1, !range !14
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %173, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr %19, align 4
  %162 = getelementptr i8, ptr %161, i32 12
  %163 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %162) #7, !srcloc !11
  %164 = or i8 %163, 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %162, i8 %164) #7, !srcloc !10
  %165 = getelementptr i8, ptr %161, i32 10
  %166 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %165) #7, !srcloc !11
  %167 = or i8 %166, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %165, i8 %167) #7, !srcloc !10
  %168 = getelementptr i8, ptr %161, i32 15
  %169 = getelementptr i8, ptr %161, i32 228
  %170 = getelementptr i8, ptr %161, i32 229
  %171 = getelementptr i8, ptr %161, i32 230
  %172 = getelementptr i8, ptr %161, i32 227
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %168, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %169, i8 60) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %170, i8 108) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %171, i8 -127) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %172, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %172, i8 2) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %172, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %168, i8 1) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %169, i8 60) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %170, i8 108) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %171, i8 -127) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %172, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %172, i8 2) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %172, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %168, i8 2) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %169, i8 60) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %170, i8 108) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %171, i8 -127) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %172, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %172, i8 2) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %172, i8 0) #7, !srcloc !10
  br label %173

173:                                              ; preds = %160, %156
  %174 = getelementptr inbounds %struct.miphy28lp_phy, ptr %3, i32 0, i32 8
  %175 = load i8, ptr %174, align 4, !range !14
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = load ptr, ptr %19, align 4
  %179 = getelementptr i8, ptr %178, i32 66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %179, i8 2) #7, !srcloc !10
  br label %180

180:                                              ; preds = %177, %173, %136
  %181 = load volatile i32, ptr @jiffies, align 64
  %182 = load i8, ptr %7, align 4
  %183 = icmp eq i8 %182, 1
  %184 = select i1 %183, i32 7, i32 6
  %185 = sub i32 -500, %181
  br label %186

186:                                              ; preds = %193, %180
  %187 = load ptr, ptr %19, align 4
  %188 = getelementptr i8, ptr %187, i32 2
  %189 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %188) #7, !srcloc !11
  %190 = zext i8 %189 to i32
  %191 = and i32 %184, %190
  %192 = icmp eq i32 %191, %184
  br i1 %192, label %476, label %193

193:                                              ; preds = %186
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !16
  %194 = load volatile i32, ptr @jiffies, align 64
  %195 = add i32 %185, %194
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %186, label %476

197:                                              ; preds = %1
  %198 = load ptr, ptr %4, align 4
  %199 = getelementptr %struct.miphy28lp_phy, ptr %3, i32 0, i32 11, i32 3
  %200 = load i32, ptr %199, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %476, label %202

202:                                              ; preds = %197
  %203 = getelementptr %struct.miphy28lp_phy, ptr %3, i32 0, i32 11, i32 2
  %204 = load i32, ptr %203, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %476, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.miphy28lp_phy, ptr %3, i32 0, i32 2
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %476, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.miphy28lp_phy, ptr %3, i32 0, i32 3
  %212 = load ptr, ptr %211, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %476, label %214

214:                                              ; preds = %210
  %215 = load ptr, ptr %198, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %215, ptr noundef nonnull @.str.8, ptr noundef nonnull %208) #8
  %216 = getelementptr inbounds %struct.miphy28lp_dev, ptr %198, i32 0, i32 1
  %217 = load ptr, ptr %216, align 4
  %218 = load i32, ptr %199, align 4
  %219 = tail call i32 @regmap_update_bits_base(ptr noundef %217, i32 noundef %218, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %220 = load ptr, ptr %216, align 4
  %221 = load i32, ptr %203, align 4
  %222 = tail call i32 @regmap_update_bits_base(ptr noundef %220, i32 noundef %221, i32 noundef 255, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %223 = tail call fastcc i32 @miphy28lp_setup(ptr noundef %3, i32 noundef 0) #7
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %471

225:                                              ; preds = %214
  %226 = load ptr, ptr %207, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %226, i8 1) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %226, i8 3) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %226, i8 1) #7, !srcloc !10
  %227 = load i8, ptr %7, align 4
  %228 = icmp eq i8 %227, 2
  %229 = getelementptr i8, ptr %226, i32 4
  br i1 %228, label %230, label %231

230:                                              ; preds = %225
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %229, i8 20) #7, !srcloc !10
  br label %232

231:                                              ; preds = %225
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %229, i8 28) #7, !srcloc !10
  br label %232

232:                                              ; preds = %231, %230
  %233 = load ptr, ptr %207, align 4
  %234 = getelementptr i8, ptr %233, i32 235
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %234, i8 29) #7, !srcloc !10
  %235 = getelementptr i8, ptr %233, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %235, i8 30) #7, !srcloc !10
  %236 = getelementptr i8, ptr %233, i32 212
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %236, i8 -90) #7, !srcloc !10
  %237 = getelementptr i8, ptr %233, i32 213
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %237, i8 -86) #7, !srcloc !10
  %238 = getelementptr i8, ptr %233, i32 214
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %238, i8 -86) #7, !srcloc !10
  %239 = getelementptr i8, ptr %233, i32 215
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %239, i8 0) #7, !srcloc !10
  %240 = getelementptr i8, ptr %233, i32 211
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %240, i8 0) #7, !srcloc !10
  %241 = getelementptr i8, ptr %233, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %241, i8 64) #7, !srcloc !10
  %242 = getelementptr i8, ptr %233, i32 78
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %242, i8 -47) #7, !srcloc !10
  %243 = load i8, ptr %7, align 4
  %244 = icmp eq i8 %243, 1
  %245 = select i1 %244, i8 31, i8 95
  %246 = getelementptr i8, ptr %233, i32 153
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %246, i8 %245) #7, !srcloc !10
  %247 = load i8, ptr %7, align 4
  %248 = icmp eq i8 %247, 4
  br i1 %248, label %249, label %256

249:                                              ; preds = %232
  %250 = getelementptr i8, ptr %233, i32 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %250, i8 0) #7, !srcloc !10
  %251 = getelementptr i8, ptr %233, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %251, i8 112) #7, !srcloc !10
  %252 = getelementptr i8, ptr %233, i32 201
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %252, i8 2) #7, !srcloc !10
  %253 = getelementptr i8, ptr %233, i32 202
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %253, i8 2) #7, !srcloc !10
  %254 = getelementptr i8, ptr %233, i32 203
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %254, i8 2) #7, !srcloc !10
  %255 = getelementptr i8, ptr %233, i32 204
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %255, i8 10) #7, !srcloc !10
  br label %256

256:                                              ; preds = %249, %232
  %257 = load ptr, ptr %207, align 4
  %258 = getelementptr i8, ptr %257, i32 15
  %259 = getelementptr i8, ptr %257, i32 14
  %260 = getelementptr i8, ptr %257, i32 99
  %261 = getelementptr i8, ptr %257, i32 100
  %262 = getelementptr i8, ptr %257, i32 73
  %263 = getelementptr i8, ptr %257, i32 74
  %264 = getelementptr i8, ptr %257, i32 75
  %265 = getelementptr i8, ptr %257, i32 120
  %266 = getelementptr i8, ptr %257, i32 122
  %267 = getelementptr i8, ptr %257, i32 123
  %268 = getelementptr i8, ptr %257, i32 127
  %269 = getelementptr i8, ptr %257, i32 128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %258, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %259, i8 5) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %260, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %261, i8 -91) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %262, i8 7) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %263, i8 113) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %264, i8 96) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %265, i8 -104) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %266, i8 13) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %267, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %268, i8 121) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %269, i8 86) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %258, i8 1) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %259, i8 10) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %260, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %261, i8 -91) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %262, i8 7) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %263, i8 112) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %264, i8 96) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %265, i8 -52) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %266, i8 13) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %267, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %268, i8 120) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %269, i8 7) #7, !srcloc !10
  %270 = getelementptr i8, ptr %226, i32 205
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %270, i8 33) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %226, i8 0) #7, !srcloc !10
  %271 = load ptr, ptr %207, align 4
  %272 = getelementptr i8, ptr %271, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %272, i8 5) #7, !srcloc !10
  %273 = getelementptr i8, ptr %271, i32 233
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %273, i8 0) #7, !srcloc !10
  %274 = getelementptr i8, ptr %271, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %274, i8 30) #7, !srcloc !10
  %275 = getelementptr i8, ptr %271, i32 58
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %275, i8 64) #7, !srcloc !10
  %276 = load i8, ptr %7, align 4
  %277 = icmp eq i8 %276, 2
  br i1 %277, label %278, label %279

278:                                              ; preds = %256
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %272, i8 1) #7, !srcloc !10
  br label %279

279:                                              ; preds = %278, %256
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %272, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %273, i8 64) #7, !srcloc !10
  %280 = getelementptr i8, ptr %271, i32 227
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %280, i8 2) #7, !srcloc !10
  %281 = getelementptr i8, ptr %271, i32 66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %281, i8 0) #7, !srcloc !10
  %282 = load i8, ptr %7, align 4
  %283 = icmp eq i8 %282, 2
  br i1 %283, label %284, label %296

284:                                              ; preds = %279
  %285 = load volatile i32, ptr @jiffies, align 64
  %286 = sub i32 -500, %285
  br label %287

287:                                              ; preds = %294, %284
  %288 = load ptr, ptr %207, align 4
  %289 = getelementptr i8, ptr %288, i32 63
  %290 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %289) #7, !srcloc !11
  %291 = load volatile i32, ptr @jiffies, align 64
  %292 = add i32 %286, %291
  %293 = icmp sgt i32 %292, -1
  br i1 %293, label %476, label %294

294:                                              ; preds = %287
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !13
  %295 = icmp sgt i8 %290, -1
  br i1 %295, label %287, label %296

296:                                              ; preds = %294, %279
  %297 = getelementptr inbounds %struct.miphy28lp_phy, ptr %3, i32 0, i32 7
  %298 = load i8, ptr %297, align 1, !range !14
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %313, label %300

300:                                              ; preds = %296
  %301 = load ptr, ptr %207, align 4
  %302 = getelementptr i8, ptr %301, i32 12
  %303 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %302) #7, !srcloc !11
  %304 = or i8 %303, 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %302, i8 %304) #7, !srcloc !10
  %305 = getelementptr i8, ptr %301, i32 10
  %306 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %305) #7, !srcloc !11
  %307 = or i8 %306, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %305, i8 %307) #7, !srcloc !10
  %308 = getelementptr i8, ptr %301, i32 15
  %309 = getelementptr i8, ptr %301, i32 229
  %310 = getelementptr i8, ptr %301, i32 230
  %311 = getelementptr i8, ptr %301, i32 228
  %312 = getelementptr i8, ptr %301, i32 227
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %308, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %309, i8 105) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %310, i8 33) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %311, i8 60) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %310, i8 33) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %312, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %312, i8 2) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %312, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %308, i8 1) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %309, i8 105) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %310, i8 33) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %311, i8 60) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %310, i8 33) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %312, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %312, i8 2) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %312, i8 0) #7, !srcloc !10
  br label %313

313:                                              ; preds = %300, %296
  %314 = getelementptr inbounds %struct.miphy28lp_phy, ptr %3, i32 0, i32 8
  %315 = load i8, ptr %314, align 4, !range !14
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %320, label %317

317:                                              ; preds = %313
  %318 = load ptr, ptr %207, align 4
  %319 = getelementptr i8, ptr %318, i32 66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %319, i8 2) #7, !srcloc !10
  br label %320

320:                                              ; preds = %317, %313
  %321 = load ptr, ptr %211, align 4
  %322 = getelementptr i8, ptr %321, i32 260
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %322, i8 104) #7, !srcloc !10
  %323 = load ptr, ptr %211, align 4
  %324 = getelementptr i8, ptr %323, i32 261
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %324, i8 97) #7, !srcloc !10
  %325 = load ptr, ptr %211, align 4
  %326 = getelementptr i8, ptr %325, i32 264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %326, i8 104) #7, !srcloc !10
  %327 = load ptr, ptr %211, align 4
  %328 = getelementptr i8, ptr %327, i32 265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %328, i8 97) #7, !srcloc !10
  %329 = load ptr, ptr %211, align 4
  %330 = getelementptr i8, ptr %329, i32 268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %330, i8 104) #7, !srcloc !10
  %331 = load ptr, ptr %211, align 4
  %332 = getelementptr i8, ptr %331, i32 269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %332, i8 96) #7, !srcloc !10
  %333 = load volatile i32, ptr @jiffies, align 64
  %334 = load i8, ptr %7, align 4
  %335 = icmp eq i8 %334, 1
  %336 = select i1 %335, i32 7, i32 6
  %337 = sub i32 -500, %333
  br label %338

338:                                              ; preds = %345, %320
  %339 = load ptr, ptr %207, align 4
  %340 = getelementptr i8, ptr %339, i32 2
  %341 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %340) #7, !srcloc !11
  %342 = zext i8 %341 to i32
  %343 = and i32 %336, %342
  %344 = icmp eq i32 %343, %336
  br i1 %344, label %476, label %345

345:                                              ; preds = %338
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !16
  %346 = load volatile i32, ptr @jiffies, align 64
  %347 = add i32 %337, %346
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %338, label %476

349:                                              ; preds = %1
  %350 = load ptr, ptr %4, align 4
  %351 = getelementptr inbounds %struct.miphy28lp_phy, ptr %3, i32 0, i32 2
  %352 = load ptr, ptr %351, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %476, label %354

354:                                              ; preds = %349
  %355 = getelementptr inbounds %struct.miphy28lp_phy, ptr %3, i32 0, i32 3
  %356 = load ptr, ptr %355, align 4
  %357 = icmp eq ptr %356, null
  br i1 %357, label %476, label %358

358:                                              ; preds = %354
  %359 = load ptr, ptr %350, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %359, ptr noundef nonnull @.str.10, ptr noundef nonnull %352) #8
  %360 = tail call fastcc i32 @miphy28lp_setup(ptr noundef %3, i32 noundef 4) #7
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %471

362:                                              ; preds = %358
  %363 = load ptr, ptr %351, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %363, i8 1) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %363, i8 3) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %363, i8 1) #7, !srcloc !10
  %364 = load i8, ptr %7, align 4
  %365 = icmp eq i8 %364, 2
  %366 = getelementptr i8, ptr %363, i32 4
  br i1 %365, label %367, label %368

367:                                              ; preds = %362
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %366, i8 20) #7, !srcloc !10
  br label %369

368:                                              ; preds = %362
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %366, i8 28) #7, !srcloc !10
  br label %369

369:                                              ; preds = %368, %367
  %370 = load ptr, ptr %351, align 4
  %371 = getelementptr i8, ptr %370, i32 235
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %371, i8 29) #7, !srcloc !10
  %372 = getelementptr i8, ptr %370, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %372, i8 30) #7, !srcloc !10
  %373 = getelementptr i8, ptr %370, i32 212
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %373, i8 -90) #7, !srcloc !10
  %374 = getelementptr i8, ptr %370, i32 213
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %374, i8 -86) #7, !srcloc !10
  %375 = getelementptr i8, ptr %370, i32 214
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %375, i8 -86) #7, !srcloc !10
  %376 = getelementptr i8, ptr %370, i32 215
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %376, i8 4) #7, !srcloc !10
  %377 = getelementptr i8, ptr %370, i32 211
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %377, i8 0) #7, !srcloc !10
  %378 = getelementptr i8, ptr %370, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %378, i8 64) #7, !srcloc !10
  %379 = getelementptr i8, ptr %370, i32 78
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %379, i8 -47) #7, !srcloc !10
  %380 = load i8, ptr %7, align 4
  %381 = icmp eq i8 %380, 1
  %382 = select i1 %381, i8 31, i8 95
  %383 = getelementptr i8, ptr %370, i32 153
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %383, i8 %382) #7, !srcloc !10
  %384 = load i8, ptr %7, align 4
  %385 = icmp eq i8 %384, 4
  br i1 %385, label %386, label %393

386:                                              ; preds = %369
  %387 = getelementptr i8, ptr %370, i32 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %387, i8 0) #7, !srcloc !10
  %388 = getelementptr i8, ptr %370, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %388, i8 112) #7, !srcloc !10
  %389 = getelementptr i8, ptr %370, i32 201
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %389, i8 2) #7, !srcloc !10
  %390 = getelementptr i8, ptr %370, i32 202
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %390, i8 2) #7, !srcloc !10
  %391 = getelementptr i8, ptr %370, i32 203
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %391, i8 2) #7, !srcloc !10
  %392 = getelementptr i8, ptr %370, i32 204
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %392, i8 10) #7, !srcloc !10
  br label %393

393:                                              ; preds = %386, %369
  %394 = getelementptr i8, ptr %363, i32 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %394, i8 0) #7, !srcloc !10
  %395 = getelementptr i8, ptr %363, i32 14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %395, i8 10) #7, !srcloc !10
  %396 = getelementptr i8, ptr %363, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %396, i8 28) #7, !srcloc !10
  %397 = getelementptr i8, ptr %363, i32 151
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %397, i8 81) #7, !srcloc !10
  %398 = getelementptr i8, ptr %363, i32 152
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %398, i8 112) #7, !srcloc !10
  %399 = getelementptr i8, ptr %363, i32 153
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %399, i8 95) #7, !srcloc !10
  %400 = getelementptr i8, ptr %363, i32 154
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %400, i8 34) #7, !srcloc !10
  %401 = getelementptr i8, ptr %363, i32 159
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %401, i8 14) #7, !srcloc !10
  %402 = getelementptr i8, ptr %363, i32 122
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %402, i8 5) #7, !srcloc !10
  %403 = getelementptr i8, ptr %363, i32 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %403, i8 120) #7, !srcloc !10
  %404 = getelementptr i8, ptr %363, i32 48
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %404, i8 27) #7, !srcloc !10
  %405 = getelementptr i8, ptr %363, i32 66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %405, i8 2) #7, !srcloc !10
  %406 = getelementptr i8, ptr %363, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %406, i8 17) #7, !srcloc !10
  %407 = getelementptr i8, ptr %363, i32 99
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %407, i8 0) #7, !srcloc !10
  %408 = getelementptr i8, ptr %363, i32 100
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %408, i8 -89) #7, !srcloc !10
  %409 = getelementptr i8, ptr %363, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %409, i8 4) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %394, i8 0) #7, !srcloc !10
  %410 = getelementptr i8, ptr %363, i32 229
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %410, i8 90) #7, !srcloc !10
  %411 = getelementptr i8, ptr %363, i32 230
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %411, i8 -96) #7, !srcloc !10
  %412 = getelementptr i8, ptr %363, i32 228
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %412, i8 60) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %411, i8 -95) #7, !srcloc !10
  %413 = getelementptr i8, ptr %363, i32 227
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %413, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %413, i8 2) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %413, i8 0) #7, !srcloc !10
  %414 = getelementptr i8, ptr %363, i32 120
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %414, i8 -54) #7, !srcloc !10
  %415 = getelementptr i8, ptr %363, i32 205
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %415, i8 33) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %415, i8 41) #7, !srcloc !10
  %416 = getelementptr i8, ptr %363, i32 206
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %416, i8 26) #7, !srcloc !10
  %417 = load ptr, ptr %351, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %417, i8 1) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %417, i8 0) #7, !srcloc !10
  %418 = getelementptr i8, ptr %417, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %418, i8 4) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %418, i8 5) #7, !srcloc !10
  %419 = getelementptr i8, ptr %417, i32 233
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %419, i8 0) #7, !srcloc !10
  %420 = getelementptr i8, ptr %417, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %420, i8 30) #7, !srcloc !10
  %421 = getelementptr i8, ptr %417, i32 58
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %421, i8 64) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %418, i8 1) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %418, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %419, i8 64) #7, !srcloc !10
  %422 = getelementptr i8, ptr %417, i32 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %422, i8 0) #7, !srcloc !10
  %423 = getelementptr i8, ptr %417, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %423, i8 0) #7, !srcloc !10
  %424 = getelementptr i8, ptr %417, i32 98
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %424, i8 0) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %422, i8 0) #7, !srcloc !10
  %425 = getelementptr i8, ptr %417, i32 227
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %425, i8 2) #7, !srcloc !10
  %426 = getelementptr i8, ptr %417, i32 38
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %426, i8 -91) #7, !srcloc !10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %422, i8 0) #7, !srcloc !10
  %427 = load ptr, ptr %355, align 4
  %428 = getelementptr i8, ptr %427, i32 35
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %428, i8 104) #7, !srcloc !10
  %429 = load ptr, ptr %355, align 4
  %430 = getelementptr i8, ptr %429, i32 36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %430, i8 97) #7, !srcloc !10
  %431 = load ptr, ptr %355, align 4
  %432 = getelementptr i8, ptr %431, i32 38
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %432, i8 104) #7, !srcloc !10
  %433 = load ptr, ptr %355, align 4
  %434 = getelementptr i8, ptr %433, i32 39
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %434, i8 97) #7, !srcloc !10
  %435 = load ptr, ptr %355, align 4
  %436 = getelementptr i8, ptr %435, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %436, i8 24) #7, !srcloc !10
  %437 = load ptr, ptr %355, align 4
  %438 = getelementptr i8, ptr %437, i32 42
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %438, i8 97) #7, !srcloc !10
  %439 = load ptr, ptr %355, align 4
  %440 = getelementptr i8, ptr %439, i32 104
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %440, i8 103) #7, !srcloc !10
  %441 = load ptr, ptr %355, align 4
  %442 = getelementptr i8, ptr %441, i32 105
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %442, i8 13) #7, !srcloc !10
  %443 = load ptr, ptr %355, align 4
  %444 = getelementptr i8, ptr %443, i32 106
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %444, i8 103) #7, !srcloc !10
  %445 = load ptr, ptr %355, align 4
  %446 = getelementptr i8, ptr %445, i32 107
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %446, i8 13) #7, !srcloc !10
  %447 = load ptr, ptr %355, align 4
  %448 = getelementptr i8, ptr %447, i32 108
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %448, i8 103) #7, !srcloc !10
  %449 = load ptr, ptr %355, align 4
  %450 = getelementptr i8, ptr %449, i32 109
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %450, i8 13) #7, !srcloc !10
  %451 = load ptr, ptr %355, align 4
  %452 = getelementptr i8, ptr %451, i32 110
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %452, i8 103) #7, !srcloc !10
  %453 = load ptr, ptr %355, align 4
  %454 = getelementptr i8, ptr %453, i32 111
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %454, i8 13) #7, !srcloc !10
  %455 = load volatile i32, ptr @jiffies, align 64
  %456 = load i8, ptr %7, align 4
  %457 = icmp eq i8 %456, 1
  %458 = select i1 %457, i32 7, i32 6
  %459 = sub i32 -500, %455
  br label %460

460:                                              ; preds = %467, %393
  %461 = load ptr, ptr %351, align 4
  %462 = getelementptr i8, ptr %461, i32 2
  %463 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %462) #7, !srcloc !11
  %464 = zext i8 %463 to i32
  %465 = and i32 %458, %464
  %466 = icmp eq i32 %465, %458
  br i1 %466, label %476, label %467

467:                                              ; preds = %460
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !16
  %468 = load volatile i32, ptr @jiffies, align 64
  %469 = add i32 %459, %468
  %470 = icmp slt i32 %469, 0
  br i1 %470, label %460, label %476

471:                                              ; preds = %358, %214, %22
  %472 = phi ptr [ %10, %22 ], [ %198, %214 ], [ %350, %358 ]
  %473 = phi ptr [ @.str.6, %22 ], [ @.str.9, %214 ], [ @.str.11, %358 ]
  %474 = phi i32 [ %35, %22 ], [ %223, %214 ], [ %360, %358 ]
  %475 = load ptr, ptr %472, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %475, ptr noundef nonnull %473) #8
  br label %476

476:                                              ; preds = %471, %467, %460, %354, %349, %345, %338, %287, %210, %206, %202, %197, %193, %186, %18, %14, %9, %1
  %477 = phi i32 [ -22, %1 ], [ -22, %18 ], [ -22, %14 ], [ -22, %9 ], [ -22, %210 ], [ -22, %206 ], [ -22, %202 ], [ -22, %197 ], [ -22, %354 ], [ -22, %349 ], [ %474, %471 ], [ 0, %186 ], [ -16, %193 ], [ -16, %345 ], [ 0, %338 ], [ -16, %287 ], [ 0, %460 ], [ -16, %467 ]
  tail call void @mutex_unlock(ptr noundef %6) #7
  ret i32 %477
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @miphy28lp_setup(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.miphy28lp_phy, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.miphy28lp_phy, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %62, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.miphy28lp_phy, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @reset_control_assert(ptr noundef %11) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.7) #8
  br label %62

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.miphy28lp_phy, ptr %0, i32 0, i32 4
  %18 = load i8, ptr %17, align 4, !range !14
  %19 = icmp eq i8 %18, 0
  %20 = or i32 %1, 8
  %21 = select i1 %19, i32 %1, i32 %20
  %22 = getelementptr inbounds %struct.miphy28lp_dev, ptr %5, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %6, align 4
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %24, i32 noundef 15, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %26 = load ptr, ptr %10, align 4
  %27 = tail call i32 @reset_control_deassert(ptr noundef %26) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %16
  %30 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.7) #8
  br label %62

31:                                               ; preds = %16
  %32 = load ptr, ptr %4, align 4
  %33 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  %34 = getelementptr inbounds %struct.miphy28lp_phy, ptr %0, i32 0, i32 5
  %35 = load i8, ptr %34, align 1, !range !14
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %60, label %37

37:                                               ; preds = %31
  %38 = getelementptr %struct.miphy28lp_phy, ptr %0, i32 0, i32 11, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.miphy28lp_dev, ptr %32, i32 0, i32 1
  %43 = sub i32 -500, %33
  %44 = load ptr, ptr %42, align 4
  %45 = call i32 @regmap_read(ptr noundef %44, i32 noundef %39, ptr noundef nonnull %3) #7
  %46 = load i32, ptr %3, align 4
  %47 = and i32 %46, 32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %53, %41
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !18
  %50 = load volatile i32, ptr @jiffies, align 64
  %51 = add i32 %43, %50
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32, ptr %38, align 4
  %55 = load ptr, ptr %42, align 4
  %56 = call i32 @regmap_read(ptr noundef %55, i32 noundef %54, ptr noundef nonnull %3) #7
  %57 = load i32, ptr %3, align 4
  %58 = and i32 %57, 32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %49, label %60

60:                                               ; preds = %53, %49, %41, %37, %31
  %61 = phi i32 [ 0, %31 ], [ -22, %37 ], [ 0, %41 ], [ -16, %49 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %62

62:                                               ; preds = %60, %29, %14, %2
  %63 = phi i32 [ %12, %14 ], [ %27, %29 ], [ %61, %60 ], [ -22, %2 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 3651658}
!11 = !{i64 3652053}
!12 = !{i64 2153776291}
!13 = !{i64 2153776133}
!14 = !{i8 0, i8 2}
!15 = !{i64 2153785387}
!16 = !{i64 2153785229}
!17 = !{i64 2153786164}
!18 = !{i64 2153786006}
