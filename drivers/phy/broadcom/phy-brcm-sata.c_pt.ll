; ModuleID = '/llk/IR/drivers/phy/broadcom/phy-brcm-sata.c_pt.bc'
source_filename = "../drivers/phy/broadcom/phy-brcm-sata.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.brcm_sata_phy = type { ptr, ptr, ptr, i32, [2 x %struct.brcm_sata_port] }
%struct.brcm_sata_port = type { i32, ptr, ptr, i8, i32, i32, i32 }

@__initcall__kmod_phy_brcm_sata__248_854_brcm_sata_phy_driver_init6 = internal global ptr @brcm_sata_phy_driver_init, section ".initcall6.init", align 4
@brcm_sata_phy_driver = internal global %struct.platform_driver { ptr @brcm_sata_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcm_sata_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_brcm_sata_phy_driver_exit = internal global ptr @brcm_sata_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description249 = internal constant [51 x i8] c"phy_brcm_sata.description=Broadcom SATA PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [54 x i8] c"phy_brcm_sata.file=drivers/phy/broadcom/phy-brcm-sata\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [26 x i8] c"phy_brcm_sata.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [33 x i8] c"phy_brcm_sata.author=Marc Carino\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [34 x i8] c"phy_brcm_sata.author=Brian Norris\00", section ".modinfo", align 1
@__UNIQUE_ID_alias254 = internal constant [43 x i8] c"phy_brcm_sata.alias=platform:phy-brcm-sata\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"brcm-sata-phy\00", align 1
@brcm_sata_phy_of_match = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7216-sata-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7445-sata-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7425-sata-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-ns2-sata-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-nsp-sata-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-sr-sata-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm63138-sata-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"phy-ctrl\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"missing reg property in node %pOFn\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"invalid reg: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"already registered port %u\0A\00", align 1
@phy_ops = internal constant %struct.phy_ops { ptr @brcm_sata_phy_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_sata_phy_calibrate, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"brcm,rxaeq-mode\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"brcm,rxaeq-value\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"brcm,tx-amplitude-millivolt\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"brcm,enable-ssc\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"could not register PHY provider\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"registered %d port(s)\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"enabling SSC on port%d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.15 = private unnamed_addr constant [25 x i8] c"port%d PLL did not lock\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias254, ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_brcm_sata_phy_driver_exit, ptr @__initcall__kmod_phy_brcm_sata__248_854_brcm_sata_phy_driver_init6, ptr @brcm_sata_phy_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcm_sata_phy_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcm_sata_phy_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @brcm_sata_phy_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcm_sata_phy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_sata_phy_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store ptr null, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @of_get_next_child(ptr noundef %6, ptr noundef null) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %113, label %9

9:                                                ; preds = %9, %1
  %10 = phi i32 [ %12, %9 ], [ 0, %1 ]
  %11 = phi ptr [ %13, %9 ], [ %7, %1 ]
  %12 = add i32 %10, 1
  %13 = tail call ptr @of_get_next_child(ptr noundef %6, ptr noundef nonnull %11) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %9

15:                                               ; preds = %9
  %16 = icmp eq i32 %12, 0
  br i1 %16, label %113, label %17

17:                                               ; preds = %15
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 72, i32 noundef 3520) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %113, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %18, ptr %21, align 8
  store ptr %4, ptr %18, align 4
  %22 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.1) #6
  %23 = getelementptr inbounds %struct.brcm_sata_phy, ptr %18, i32 0, i32 1
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = ptrtoint ptr %22 to i32
  br label %113

27:                                               ; preds = %20
  %28 = tail call ptr @of_match_node(ptr noundef nonnull @brcm_sata_phy_of_match, ptr noundef %6) #6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.brcm_sata_phy, ptr %18, i32 0, i32 3
  store i32 1, ptr %31, align 4
  br label %44

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.of_device_id, ptr %28, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr inbounds %struct.brcm_sata_phy, ptr %18, i32 0, i32 3
  store i32 %35, ptr %36, align 4
  %37 = icmp eq ptr %34, inttoptr (i32 3 to ptr)
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.2) #6
  %40 = getelementptr inbounds %struct.brcm_sata_phy, ptr %18, i32 0, i32 2
  store ptr %39, ptr %40, align 4
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = ptrtoint ptr %39 to i32
  br label %113

44:                                               ; preds = %38, %32, %30
  %45 = tail call ptr @of_get_next_available_child(ptr noundef %6, ptr noundef null) #6
  %46 = icmp eq ptr %45, null
  br i1 %46, label %104, label %47

47:                                               ; preds = %99, %44
  %48 = phi i32 [ %101, %99 ], [ 0, %44 ]
  %49 = phi ptr [ %102, %99 ], [ %45, %44 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %50 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %49, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef nonnull %49) #7
  br label %111

53:                                               ; preds = %47
  %54 = load i32, ptr %3, align 4
  %55 = icmp ugt i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %54) #7
  br label %111

57:                                               ; preds = %53
  %58 = getelementptr %struct.brcm_sata_phy, ptr %18, i32 0, i32 4, i32 %54
  %59 = getelementptr %struct.brcm_sata_phy, ptr %18, i32 0, i32 4, i32 %54, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %54) #7
  br label %111

63:                                               ; preds = %57
  store i32 %54, ptr %58, align 4
  %64 = getelementptr %struct.brcm_sata_phy, ptr %18, i32 0, i32 4, i32 %54, i32 2
  store ptr %18, ptr %64, align 4
  %65 = call ptr @devm_phy_create(ptr noundef %4, ptr noundef nonnull %49, ptr noundef nonnull @phy_ops) #6
  store ptr %65, ptr %59, align 4
  %66 = getelementptr %struct.brcm_sata_phy, ptr %18, i32 0, i32 4, i32 %54, i32 4
  store i32 0, ptr %66, align 4
  %67 = call i32 @of_property_read_string(ptr noundef nonnull %49, ptr noundef nonnull @.str.7, ptr noundef nonnull %2) #6
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load ptr, ptr %2, align 4
  %71 = call i32 @strcmp(ptr noundef %70, ptr noundef nonnull dereferenceable(5) @.str.17) #6
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = call i32 @strcmp(ptr noundef %70, ptr noundef nonnull dereferenceable(7) @.str.18) #6
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i32 2, i32 0
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i32 [ 1, %69 ], [ %76, %73 ]
  store i32 %78, ptr %66, align 4
  br label %81

79:                                               ; preds = %63
  %80 = load i32, ptr %66, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %80, %79 ], [ %78, %77 ]
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = getelementptr %struct.brcm_sata_phy, ptr %18, i32 0, i32 4, i32 %54, i32 5
  %86 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %49, ptr noundef nonnull @.str.8, ptr noundef %85, i32 noundef 1, i32 noundef 0) #6
  br label %87

87:                                               ; preds = %84, %81
  %88 = getelementptr %struct.brcm_sata_phy, ptr %18, i32 0, i32 4, i32 %54, i32 6
  %89 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %49, ptr noundef nonnull @.str.9, ptr noundef %88, i32 noundef 1, i32 noundef 0) #6
  %90 = call ptr @of_find_property(ptr noundef nonnull %49, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %91 = icmp ne ptr %90, null
  %92 = getelementptr %struct.brcm_sata_phy, ptr %18, i32 0, i32 4, i32 %54, i32 3
  %93 = zext i1 %91 to i8
  store i8 %93, ptr %92, align 4
  %94 = load ptr, ptr %59, align 4
  %95 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11) #7
  %97 = load ptr, ptr %59, align 4
  %98 = ptrtoint ptr %97 to i32
  br label %111

99:                                               ; preds = %87
  %100 = getelementptr inbounds %struct.device, ptr %94, i32 0, i32 8
  store ptr %58, ptr %100, align 8
  %101 = add i32 %48, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %102 = call ptr @of_get_next_available_child(ptr noundef %6, ptr noundef nonnull %49) #6
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %47

104:                                              ; preds = %99, %44
  %105 = phi i32 [ 0, %44 ], [ %101, %99 ]
  %106 = call ptr @__devm_of_phy_provider_register(ptr noundef %4, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #6
  %107 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12) #7
  %109 = ptrtoint ptr %106 to i32
  br label %113

110:                                              ; preds = %104
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef %105) #7
  br label %113

111:                                              ; preds = %96, %62, %56, %52
  %112 = phi i32 [ %98, %96 ], [ -22, %62 ], [ -22, %56 ], [ -22, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @of_node_put(ptr noundef nonnull %49) #6
  br label %113

113:                                              ; preds = %111, %110, %108, %42, %25, %17, %15, %1
  %114 = phi i32 [ %26, %25 ], [ %43, %42 ], [ %112, %111 ], [ %109, %108 ], [ 0, %110 ], [ -19, %15 ], [ -12, %17 ], [ -19, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %114
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_sata_phy_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcm_sata_port, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcm_sata_phy, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %875 [
    i32 0, label %8
    i32 1, label %204
    i32 2, label %204
    i32 3, label %310
    i32 4, label %431
    i32 5, label %581
    i32 6, label %713
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.brcm_sata_phy, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %3, align 4
  %12 = shl i32 %11, 12
  %13 = getelementptr i8, ptr %10, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %14 = getelementptr i8, ptr %13, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 96) #6, !srcloc !10
  %15 = getelementptr i8, ptr %13, i32 536
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 321) #6, !srcloc !10
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.brcm_sata_phy, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.brcm_sata_phy, ptr %17, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 2
  %23 = load i32, ptr %3, align 4
  %24 = shl i32 %23, 4
  %25 = shl i32 %23, 12
  %26 = select i1 %22, i32 0, i32 %25
  %27 = getelementptr i8, ptr %19, i32 %26
  %28 = add i32 %24, 96
  %29 = select i1 %22, i32 %28, i32 96
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %30 = getelementptr i8, ptr %27, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #6, !srcloc !10
  %31 = getelementptr i8, ptr %27, i32 544
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 49158) #6, !srcloc !10
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr inbounds %struct.brcm_sata_phy, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.brcm_sata_phy, ptr %33, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 2
  %39 = load i32, ptr %3, align 4
  %40 = shl i32 %39, 4
  %41 = shl i32 %39, 12
  %42 = select i1 %38, i32 0, i32 %41
  %43 = getelementptr i8, ptr %35, i32 %42
  %44 = add i32 %40, 208
  %45 = select i1 %38, i32 %44, i32 208
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %46 = getelementptr i8, ptr %43, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %45) #6, !srcloc !10
  %47 = getelementptr i8, ptr %43, i32 524
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %49 = and i32 %48, -512
  %50 = or i32 %49, 131
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %50) #6, !srcloc !10
  %51 = getelementptr inbounds %struct.brcm_sata_port, ptr %3, i32 0, i32 3
  %52 = load i8, ptr %51, align 4, !range !14
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %53, i32 0, i32 82
  %55 = load ptr, ptr %4, align 4
  %56 = getelementptr inbounds %struct.brcm_sata_phy, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.brcm_sata_phy, ptr %55, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 2
  %61 = load i32, ptr %3, align 4
  %62 = shl i32 %61, 4
  %63 = shl i32 %61, 12
  %64 = select i1 %60, i32 0, i32 %63
  %65 = getelementptr i8, ptr %57, i32 %64
  %66 = add i32 %62, 448
  %67 = select i1 %60, i32 %66, i32 448
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %68 = getelementptr i8, ptr %65, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %67) #6, !srcloc !10
  %69 = getelementptr i8, ptr %65, i32 516
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %71 = and i32 %70, -512
  %72 = or i32 %71, %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %72) #6, !srcloc !10
  %73 = load i8, ptr %51, align 4, !range !14
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %74, i32 73, i32 146
  %76 = load ptr, ptr %4, align 4
  %77 = getelementptr inbounds %struct.brcm_sata_phy, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.brcm_sata_phy, ptr %76, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 2
  %82 = load i32, ptr %3, align 4
  %83 = shl i32 %82, 4
  %84 = shl i32 %82, 12
  %85 = select i1 %81, i32 0, i32 %84
  %86 = getelementptr i8, ptr %78, i32 %85
  %87 = add i32 %83, 448
  %88 = select i1 %81, i32 %87, i32 448
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %89 = getelementptr i8, ptr %86, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %88) #6, !srcloc !10
  %90 = getelementptr i8, ptr %86, i32 520
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %92 = and i32 %91, -512
  %93 = or i32 %92, %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %93) #6, !srcloc !10
  %94 = load i8, ptr %51, align 4, !range !14
  %95 = icmp eq i8 %94, 0
  %96 = select i1 %95, i32 0, i32 73
  %97 = load ptr, ptr %4, align 4
  %98 = getelementptr inbounds %struct.brcm_sata_phy, ptr %97, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.brcm_sata_phy, ptr %97, i32 0, i32 3
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 2
  %103 = load i32, ptr %3, align 4
  %104 = shl i32 %103, 4
  %105 = shl i32 %103, 12
  %106 = select i1 %102, i32 0, i32 %105
  %107 = getelementptr i8, ptr %99, i32 %106
  %108 = add i32 %104, 448
  %109 = select i1 %102, i32 %108, i32 448
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %110 = getelementptr i8, ptr %107, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %109) #6, !srcloc !10
  %111 = getelementptr i8, ptr %107, i32 524
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %113 = and i32 %112, -512
  %114 = or i32 %113, %96
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %114) #6, !srcloc !10
  %115 = load i8, ptr %51, align 4, !range !14
  %116 = icmp eq i8 %115, 0
  %117 = select i1 %116, i32 0, i32 73
  %118 = load ptr, ptr %4, align 4
  %119 = getelementptr inbounds %struct.brcm_sata_phy, ptr %118, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.brcm_sata_phy, ptr %118, i32 0, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 2
  %124 = load i32, ptr %3, align 4
  %125 = shl i32 %124, 4
  %126 = shl i32 %124, 12
  %127 = select i1 %123, i32 0, i32 %126
  %128 = getelementptr i8, ptr %120, i32 %127
  %129 = add i32 %125, 448
  %130 = select i1 %123, i32 %129, i32 448
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %131 = getelementptr i8, ptr %128, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %130) #6, !srcloc !10
  %132 = getelementptr i8, ptr %128, i32 528
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %134 = and i32 %133, -512
  %135 = or i32 %134, %117
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %135) #6, !srcloc !10
  %136 = load i8, ptr %51, align 4, !range !14
  %137 = icmp eq i8 %136, 0
  %138 = select i1 %137, i32 256, i32 337
  %139 = load ptr, ptr %4, align 4
  %140 = getelementptr inbounds %struct.brcm_sata_phy, ptr %139, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.brcm_sata_phy, ptr %139, i32 0, i32 3
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 2
  %145 = load i32, ptr %3, align 4
  %146 = shl i32 %145, 4
  %147 = shl i32 %145, 12
  %148 = select i1 %144, i32 0, i32 %147
  %149 = getelementptr i8, ptr %141, i32 %148
  %150 = add i32 %146, 448
  %151 = select i1 %144, i32 %150, i32 448
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %152 = getelementptr i8, ptr %149, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %151) #6, !srcloc !10
  %153 = getelementptr i8, ptr %149, i32 540
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %155 = and i32 %154, -512
  %156 = or i32 %155, %138
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %156) #6, !srcloc !10
  %157 = getelementptr inbounds %struct.brcm_sata_port, ptr %3, i32 0, i32 6
  %158 = load i32, ptr %157, align 4
  switch i32 %158, label %182 [
    i32 400, label %162
    i32 500, label %159
    i32 600, label %160
    i32 800, label %161
  ]

159:                                              ; preds = %8
  br label %162

160:                                              ; preds = %8
  br label %162

161:                                              ; preds = %8
  br label %162

162:                                              ; preds = %161, %160, %159, %8
  %163 = phi i32 [ 12288, %8 ], [ 8192, %159 ], [ 4096, %160 ], [ 0, %161 ]
  %164 = load ptr, ptr %4, align 4
  %165 = getelementptr inbounds %struct.brcm_sata_phy, ptr %164, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.brcm_sata_phy, ptr %164, i32 0, i32 3
  %168 = load i32, ptr %167, align 4
  %169 = icmp eq i32 %168, 2
  %170 = load i32, ptr %3, align 4
  %171 = shl i32 %170, 4
  %172 = shl i32 %170, 12
  %173 = select i1 %169, i32 0, i32 %172
  %174 = getelementptr i8, ptr %166, i32 %173
  %175 = add i32 %171, 16
  %176 = select i1 %169, i32 %175, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %177 = getelementptr i8, ptr %174, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %176) #6, !srcloc !10
  %178 = getelementptr i8, ptr %174, i32 524
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %178) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %180 = and i32 %179, -61441
  %181 = or i32 %180, %163
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 %181) #6, !srcloc !10
  br label %182

182:                                              ; preds = %162, %8
  %183 = load i8, ptr %51, align 4, !range !14
  %184 = icmp eq i8 %183, 0
  %185 = select i1 %184, i32 0, i32 2048
  %186 = load ptr, ptr %4, align 4
  %187 = getelementptr inbounds %struct.brcm_sata_phy, ptr %186, i32 0, i32 1
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.brcm_sata_phy, ptr %186, i32 0, i32 3
  %190 = load i32, ptr %189, align 4
  %191 = icmp eq i32 %190, 2
  %192 = load i32, ptr %3, align 4
  %193 = shl i32 %192, 4
  %194 = shl i32 %192, 12
  %195 = select i1 %191, i32 0, i32 %194
  %196 = getelementptr i8, ptr %188, i32 %195
  %197 = add i32 %193, 112
  %198 = select i1 %191, i32 %197, i32 112
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %199 = getelementptr i8, ptr %196, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %198) #6, !srcloc !10
  %200 = getelementptr i8, ptr %196, i32 532
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %200) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %202 = and i32 %201, -2049
  %203 = or i32 %202, %185
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %203) #6, !srcloc !10
  br label %875

204:                                              ; preds = %1, %1
  %205 = getelementptr inbounds %struct.brcm_sata_phy, ptr %5, i32 0, i32 1
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq i32 %7, 2
  %208 = load i32, ptr %3, align 4
  %209 = shl i32 %208, 4
  %210 = shl i32 %208, 12
  %211 = select i1 %207, i32 0, i32 %210
  %212 = getelementptr i8, ptr %206, i32 %211
  %213 = add i32 %209, 416
  %214 = select i1 %207, i32 %213, i32 416
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %215 = getelementptr i8, ptr %212, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 %214) #6, !srcloc !10
  %216 = getelementptr i8, ptr %212, i32 516
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %216) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %218 = or i32 %217, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 %218) #6, !srcloc !10
  %219 = load ptr, ptr %4, align 4
  %220 = getelementptr inbounds %struct.brcm_sata_phy, ptr %219, i32 0, i32 1
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr inbounds %struct.brcm_sata_phy, ptr %219, i32 0, i32 3
  %223 = load i32, ptr %222, align 4
  %224 = icmp eq i32 %223, 2
  %225 = load i32, ptr %3, align 4
  %226 = shl i32 %225, 4
  %227 = shl i32 %225, 12
  %228 = select i1 %224, i32 0, i32 %227
  %229 = getelementptr i8, ptr %221, i32 %228
  %230 = add i32 %226, 416
  %231 = select i1 %224, i32 %230, i32 416
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %232 = getelementptr i8, ptr %229, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %231) #6, !srcloc !10
  %233 = getelementptr i8, ptr %229, i32 524
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %233) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %235 = and i32 %234, -1024
  %236 = or i32 %235, 991
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 %236) #6, !srcloc !10
  %237 = getelementptr inbounds %struct.brcm_sata_port, ptr %3, i32 0, i32 3
  %238 = load i8, ptr %237, align 4, !range !14
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %204
  %241 = load ptr, ptr %5, align 4
  %242 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %241, ptr noundef nonnull @.str.14, i32 noundef %242) #7
  br label %243

243:                                              ; preds = %240, %204
  %244 = phi i32 [ 131, %240 ], [ 991, %204 ]
  %245 = load ptr, ptr %4, align 4
  %246 = getelementptr inbounds %struct.brcm_sata_phy, ptr %245, i32 0, i32 1
  %247 = load ptr, ptr %246, align 4
  %248 = getelementptr inbounds %struct.brcm_sata_phy, ptr %245, i32 0, i32 3
  %249 = load i32, ptr %248, align 4
  %250 = icmp eq i32 %249, 2
  %251 = load i32, ptr %3, align 4
  %252 = shl i32 %251, 4
  %253 = shl i32 %251, 12
  %254 = select i1 %250, i32 0, i32 %253
  %255 = getelementptr i8, ptr %247, i32 %254
  %256 = add i32 %252, 416
  %257 = select i1 %250, i32 %256, i32 416
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %258 = getelementptr i8, ptr %255, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %258, i32 %257) #6, !srcloc !10
  %259 = getelementptr i8, ptr %255, i32 528
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %259) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %261 = and i32 %260, -1024
  %262 = or i32 %261, %244
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 %262) #6, !srcloc !10
  %263 = getelementptr inbounds %struct.brcm_sata_port, ptr %3, i32 0, i32 4
  %264 = load i32, ptr %263, align 4
  switch i32 %264, label %273 [
    i32 0, label %875
    i32 1, label %265
    i32 2, label %266
  ]

265:                                              ; preds = %243
  br label %273

266:                                              ; preds = %243
  %267 = getelementptr inbounds %struct.brcm_sata_port, ptr %3, i32 0, i32 5
  %268 = load i32, ptr %267, align 4
  %269 = icmp ugt i32 %268, 63
  br i1 %269, label %875, label %270

270:                                              ; preds = %266
  %271 = shl nuw nsw i32 %268, 2
  %272 = or i32 %271, 3
  br label %273

273:                                              ; preds = %270, %265, %243
  %274 = phi i32 [ 0, %243 ], [ %272, %270 ], [ 12, %265 ]
  %275 = phi i32 [ 0, %243 ], [ 524, %270 ], [ 516, %265 ]
  %276 = load ptr, ptr %4, align 4
  %277 = getelementptr inbounds %struct.brcm_sata_phy, ptr %276, i32 0, i32 1
  %278 = load ptr, ptr %277, align 4
  %279 = getelementptr inbounds %struct.brcm_sata_phy, ptr %276, i32 0, i32 3
  %280 = load i32, ptr %279, align 4
  %281 = icmp eq i32 %280, 2
  %282 = load i32, ptr %3, align 4
  %283 = shl i32 %282, 4
  %284 = shl i32 %282, 12
  %285 = select i1 %281, i32 0, i32 %284
  %286 = getelementptr i8, ptr %278, i32 %285
  %287 = add i32 %283, 208
  %288 = select i1 %281, i32 %287, i32 208
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %289 = getelementptr i8, ptr %286, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %289, i32 %288) #6, !srcloc !10
  %290 = getelementptr i8, ptr %286, i32 %275
  %291 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %290) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %292 = or i32 %291, %274
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %290, i32 %292) #6, !srcloc !10
  %293 = load ptr, ptr %4, align 4
  %294 = getelementptr inbounds %struct.brcm_sata_phy, ptr %293, i32 0, i32 1
  %295 = load ptr, ptr %294, align 4
  %296 = getelementptr inbounds %struct.brcm_sata_phy, ptr %293, i32 0, i32 3
  %297 = load i32, ptr %296, align 4
  %298 = icmp eq i32 %297, 2
  %299 = load i32, ptr %3, align 4
  %300 = shl i32 %299, 4
  %301 = shl i32 %299, 12
  %302 = select i1 %298, i32 0, i32 %301
  %303 = getelementptr i8, ptr %295, i32 %302
  %304 = add i32 %300, 224
  %305 = select i1 %298, i32 %304, i32 224
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %306 = getelementptr i8, ptr %303, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %306, i32 %305) #6, !srcloc !10
  %307 = getelementptr i8, ptr %303, i32 %275
  %308 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %307) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %309 = or i32 %308, %274
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %307, i32 %309) #6, !srcloc !10
  br label %875

310:                                              ; preds = %1
  %311 = getelementptr inbounds %struct.brcm_sata_phy, ptr %5, i32 0, i32 2
  %312 = load ptr, ptr %311, align 4
  %313 = load i32, ptr %3, align 4
  %314 = shl i32 %313, 3
  %315 = getelementptr i8, ptr %312, i32 %314
  %316 = load ptr, ptr %5, align 4
  %317 = getelementptr inbounds %struct.brcm_sata_phy, ptr %5, i32 0, i32 1
  %318 = load ptr, ptr %317, align 4
  %319 = shl i32 %313, 12
  %320 = getelementptr i8, ptr %318, i32 %319
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %321 = getelementptr i8, ptr %320, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %321, i32 336) #6, !srcloc !10
  %322 = getelementptr i8, ptr %320, i32 512
  %323 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %322) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %322, i32 50323) #6, !srcloc !10
  %324 = load ptr, ptr %4, align 4
  %325 = getelementptr inbounds %struct.brcm_sata_phy, ptr %324, i32 0, i32 1
  %326 = load ptr, ptr %325, align 4
  %327 = getelementptr inbounds %struct.brcm_sata_phy, ptr %324, i32 0, i32 3
  %328 = load i32, ptr %327, align 4
  %329 = icmp eq i32 %328, 2
  %330 = load i32, ptr %3, align 4
  %331 = shl i32 %330, 4
  %332 = shl i32 %330, 12
  %333 = select i1 %329, i32 0, i32 %332
  %334 = getelementptr i8, ptr %326, i32 %333
  %335 = add i32 %331, 336
  %336 = select i1 %329, i32 %335, i32 336
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %337 = getelementptr i8, ptr %334, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %337, i32 %336) #6, !srcloc !10
  %338 = getelementptr i8, ptr %334, i32 516
  %339 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %338) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %338, i32 7049) #6, !srcloc !10
  %340 = load ptr, ptr %4, align 4
  %341 = getelementptr inbounds %struct.brcm_sata_phy, ptr %340, i32 0, i32 1
  %342 = load ptr, ptr %341, align 4
  %343 = getelementptr inbounds %struct.brcm_sata_phy, ptr %340, i32 0, i32 3
  %344 = load i32, ptr %343, align 4
  %345 = icmp eq i32 %344, 2
  %346 = load i32, ptr %3, align 4
  %347 = shl i32 %346, 4
  %348 = shl i32 %346, 12
  %349 = select i1 %345, i32 0, i32 %348
  %350 = getelementptr i8, ptr %342, i32 %349
  %351 = add i32 %347, 96
  %352 = select i1 %345, i32 %351, i32 96
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %353 = getelementptr i8, ptr %350, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %353, i32 %352) #6, !srcloc !10
  %354 = getelementptr i8, ptr %350, i32 520
  %355 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %354) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %354, i32 7672) #6, !srcloc !10
  %356 = load ptr, ptr %4, align 4
  %357 = getelementptr inbounds %struct.brcm_sata_phy, ptr %356, i32 0, i32 1
  %358 = load ptr, ptr %357, align 4
  %359 = getelementptr inbounds %struct.brcm_sata_phy, ptr %356, i32 0, i32 3
  %360 = load i32, ptr %359, align 4
  %361 = icmp eq i32 %360, 2
  %362 = load i32, ptr %3, align 4
  %363 = shl i32 %362, 4
  %364 = shl i32 %362, 12
  %365 = select i1 %361, i32 0, i32 %364
  %366 = getelementptr i8, ptr %358, i32 %365
  %367 = add i32 %363, 96
  %368 = select i1 %361, i32 %367, i32 96
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %369 = getelementptr i8, ptr %366, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %369, i32 %368) #6, !srcloc !10
  %370 = getelementptr i8, ptr %366, i32 524
  %371 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %370) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %370, i32 11008) #6, !srcloc !10
  %372 = load ptr, ptr %4, align 4
  %373 = getelementptr inbounds %struct.brcm_sata_phy, ptr %372, i32 0, i32 1
  %374 = load ptr, ptr %373, align 4
  %375 = getelementptr inbounds %struct.brcm_sata_phy, ptr %372, i32 0, i32 3
  %376 = load i32, ptr %375, align 4
  %377 = icmp eq i32 %376, 2
  %378 = load i32, ptr %3, align 4
  %379 = shl i32 %378, 4
  %380 = shl i32 %378, 12
  %381 = select i1 %377, i32 0, i32 %380
  %382 = getelementptr i8, ptr %374, i32 %381
  %383 = add i32 %379, 96
  %384 = select i1 %377, i32 %383, i32 96
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %385 = getelementptr i8, ptr %382, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %385, i32 %384) #6, !srcloc !10
  %386 = getelementptr i8, ptr %382, i32 528
  %387 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %386) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %386, i32 34852) #6, !srcloc !10
  %388 = load ptr, ptr %4, align 4
  %389 = getelementptr inbounds %struct.brcm_sata_phy, ptr %388, i32 0, i32 1
  %390 = load ptr, ptr %389, align 4
  %391 = getelementptr inbounds %struct.brcm_sata_phy, ptr %388, i32 0, i32 3
  %392 = load i32, ptr %391, align 4
  %393 = icmp eq i32 %392, 2
  %394 = load i32, ptr %3, align 4
  %395 = shl i32 %394, 4
  %396 = shl i32 %394, 12
  %397 = select i1 %393, i32 0, i32 %396
  %398 = getelementptr i8, ptr %390, i32 %397
  %399 = select i1 %393, i32 %395, i32 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %400 = getelementptr i8, ptr %398, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %400, i32 %399) #6, !srcloc !10
  %401 = getelementptr i8, ptr %398, i32 564
  %402 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %401) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %403 = and i32 %402, -4
  %404 = or i32 %403, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %401, i32 %404) #6, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %315, i32 1) #6, !srcloc !10
  %405 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %405(i32 noundef 214748000) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %315, i32 0) #6, !srcloc !10
  %406 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %406(i32 noundef 214748000) #6
  br label %407

407:                                              ; preds = %426, %310
  %408 = phi i32 [ 50, %310 ], [ %427, %426 ]
  %409 = load ptr, ptr %4, align 4
  %410 = getelementptr inbounds %struct.brcm_sata_phy, ptr %409, i32 0, i32 1
  %411 = load ptr, ptr %410, align 4
  %412 = getelementptr inbounds %struct.brcm_sata_phy, ptr %409, i32 0, i32 3
  %413 = load i32, ptr %412, align 4
  %414 = icmp eq i32 %413, 2
  %415 = load i32, ptr %3, align 4
  %416 = shl i32 %415, 4
  %417 = shl i32 %415, 12
  %418 = select i1 %414, i32 0, i32 %417
  %419 = getelementptr i8, ptr %411, i32 %418
  %420 = select i1 %414, i32 %416, i32 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %421 = getelementptr i8, ptr %419, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %421, i32 %420) #6, !srcloc !10
  %422 = getelementptr i8, ptr %419, i32 516
  %423 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %422) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %424 = and i32 %423, 4096
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %875

426:                                              ; preds = %407
  tail call void @msleep(i32 noundef 20) #6
  %427 = add nsw i32 %408, -1
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %407

429:                                              ; preds = %426
  %430 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %316, ptr noundef nonnull @.str.15, i32 noundef %430) #7
  br label %875

431:                                              ; preds = %1
  %432 = load ptr, ptr %5, align 4
  %433 = load i32, ptr %3, align 4
  switch i32 %433, label %875 [
    i32 0, label %435
    i32 1, label %434
  ]

434:                                              ; preds = %431
  br label %435

435:                                              ; preds = %434, %431
  %436 = phi i32 [ 352, %434 ], [ 336, %431 ]
  %437 = getelementptr inbounds %struct.brcm_sata_phy, ptr %5, i32 0, i32 1
  %438 = load ptr, ptr %437, align 4
  %439 = shl nuw nsw i32 %433, 12
  %440 = getelementptr i8, ptr %438, i32 %439
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %441 = getelementptr i8, ptr %440, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %441, i32 %436) #6, !srcloc !10
  %442 = getelementptr i8, ptr %440, i32 512
  %443 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %442) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %442, i32 63222) #6, !srcloc !10
  %444 = load ptr, ptr %4, align 4
  %445 = getelementptr inbounds %struct.brcm_sata_phy, ptr %444, i32 0, i32 1
  %446 = load ptr, ptr %445, align 4
  %447 = getelementptr inbounds %struct.brcm_sata_phy, ptr %444, i32 0, i32 3
  %448 = load i32, ptr %447, align 4
  %449 = icmp eq i32 %448, 2
  %450 = load i32, ptr %3, align 4
  %451 = shl i32 %450, 4
  %452 = shl i32 %450, 12
  %453 = select i1 %449, i32 0, i32 %452
  %454 = getelementptr i8, ptr %446, i32 %453
  %455 = select i1 %449, i32 %451, i32 0
  %456 = add i32 %455, %436
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %457 = getelementptr i8, ptr %454, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %457, i32 %456) #6, !srcloc !10
  %458 = getelementptr i8, ptr %454, i32 516
  %459 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %458) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %458, i32 11926) #6, !srcloc !10
  %460 = load ptr, ptr %4, align 4
  %461 = getelementptr inbounds %struct.brcm_sata_phy, ptr %460, i32 0, i32 1
  %462 = load ptr, ptr %461, align 4
  %463 = getelementptr inbounds %struct.brcm_sata_phy, ptr %460, i32 0, i32 3
  %464 = load i32, ptr %463, align 4
  %465 = icmp eq i32 %464, 2
  %466 = load i32, ptr %3, align 4
  %467 = shl i32 %466, 4
  %468 = shl i32 %466, 12
  %469 = select i1 %465, i32 0, i32 %468
  %470 = getelementptr i8, ptr %462, i32 %469
  %471 = add i32 %467, 80
  %472 = select i1 %465, i32 %471, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %473 = getelementptr i8, ptr %470, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %473, i32 %472) #6, !srcloc !10
  %474 = getelementptr i8, ptr %470, i32 556
  %475 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %474) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %476 = and i32 %475, -15873
  %477 = or i32 %476, 6144
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %474, i32 %477) #6, !srcloc !10
  %478 = load ptr, ptr %4, align 4
  %479 = getelementptr inbounds %struct.brcm_sata_phy, ptr %478, i32 0, i32 1
  %480 = load ptr, ptr %479, align 4
  %481 = getelementptr inbounds %struct.brcm_sata_phy, ptr %478, i32 0, i32 3
  %482 = load i32, ptr %481, align 4
  %483 = icmp eq i32 %482, 2
  %484 = load i32, ptr %3, align 4
  %485 = shl i32 %484, 4
  %486 = shl i32 %484, 12
  %487 = select i1 %483, i32 0, i32 %486
  %488 = getelementptr i8, ptr %480, i32 %487
  %489 = add i32 %485, 80
  %490 = select i1 %483, i32 %489, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %491 = getelementptr i8, ptr %488, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %491, i32 %490) #6, !srcloc !10
  %492 = getelementptr i8, ptr %488, i32 532
  %493 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %492) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %494 = and i32 %493, 2816
  %495 = or i32 %494, 1264
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %492, i32 %495) #6, !srcloc !10
  %496 = load ptr, ptr %4, align 4
  %497 = getelementptr inbounds %struct.brcm_sata_phy, ptr %496, i32 0, i32 1
  %498 = load ptr, ptr %497, align 4
  %499 = getelementptr inbounds %struct.brcm_sata_phy, ptr %496, i32 0, i32 3
  %500 = load i32, ptr %499, align 4
  %501 = icmp eq i32 %500, 2
  %502 = load i32, ptr %3, align 4
  %503 = shl i32 %502, 4
  %504 = shl i32 %502, 12
  %505 = select i1 %501, i32 0, i32 %504
  %506 = getelementptr i8, ptr %498, i32 %505
  %507 = add i32 %503, 80
  %508 = select i1 %501, i32 %507, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %509 = getelementptr i8, ptr %506, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %509, i32 %508) #6, !srcloc !10
  %510 = getelementptr i8, ptr %506, i32 516
  %511 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %510) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %512 = or i32 %511, 12288
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %510, i32 %512) #6, !srcloc !10
  %513 = load ptr, ptr %4, align 4
  %514 = getelementptr inbounds %struct.brcm_sata_phy, ptr %513, i32 0, i32 1
  %515 = load ptr, ptr %514, align 4
  %516 = getelementptr inbounds %struct.brcm_sata_phy, ptr %513, i32 0, i32 3
  %517 = load i32, ptr %516, align 4
  %518 = icmp eq i32 %517, 2
  %519 = load i32, ptr %3, align 4
  %520 = shl i32 %519, 4
  %521 = shl i32 %519, 12
  %522 = select i1 %518, i32 0, i32 %521
  %523 = getelementptr i8, ptr %515, i32 %522
  %524 = add i32 %520, 80
  %525 = select i1 %518, i32 %524, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %526 = getelementptr i8, ptr %523, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %526, i32 %525) #6, !srcloc !10
  %527 = getelementptr i8, ptr %523, i32 516
  %528 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %527) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %529 = and i32 %528, -32769
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %527, i32 %529) #6, !srcloc !10
  %530 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %530(i32 noundef 214748000) #6
  %531 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %531(i32 noundef 214748000) #6
  %532 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %532(i32 noundef 214748000) #6
  %533 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %533(i32 noundef 214748000) #6
  %534 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %534(i32 noundef 214748000) #6
  %535 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %535(i32 noundef 214748000) #6
  %536 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %536(i32 noundef 214748000) #6
  %537 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %537(i32 noundef 214748000) #6
  %538 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %538(i32 noundef 214748000) #6
  %539 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %539(i32 noundef 214748000) #6
  %540 = load ptr, ptr %4, align 4
  %541 = getelementptr inbounds %struct.brcm_sata_phy, ptr %540, i32 0, i32 1
  %542 = load ptr, ptr %541, align 4
  %543 = getelementptr inbounds %struct.brcm_sata_phy, ptr %540, i32 0, i32 3
  %544 = load i32, ptr %543, align 4
  %545 = icmp eq i32 %544, 2
  %546 = load i32, ptr %3, align 4
  %547 = shl i32 %546, 4
  %548 = shl i32 %546, 12
  %549 = select i1 %545, i32 0, i32 %548
  %550 = getelementptr i8, ptr %542, i32 %549
  %551 = add i32 %547, 80
  %552 = select i1 %545, i32 %551, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %553 = getelementptr i8, ptr %550, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %553, i32 %552) #6, !srcloc !10
  %554 = getelementptr i8, ptr %550, i32 516
  %555 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %554) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %556 = or i32 %555, 32768
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %554, i32 %556) #6, !srcloc !10
  br label %557

557:                                              ; preds = %576, %435
  %558 = phi i32 [ 49, %435 ], [ %577, %576 ]
  %559 = load ptr, ptr %4, align 4
  %560 = getelementptr inbounds %struct.brcm_sata_phy, ptr %559, i32 0, i32 1
  %561 = load ptr, ptr %560, align 4
  %562 = getelementptr inbounds %struct.brcm_sata_phy, ptr %559, i32 0, i32 3
  %563 = load i32, ptr %562, align 4
  %564 = icmp eq i32 %563, 2
  %565 = load i32, ptr %3, align 4
  %566 = shl i32 %565, 4
  %567 = shl i32 %565, 12
  %568 = select i1 %564, i32 0, i32 %567
  %569 = getelementptr i8, ptr %561, i32 %568
  %570 = select i1 %564, i32 %566, i32 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %571 = getelementptr i8, ptr %569, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %571, i32 %570) #6, !srcloc !10
  %572 = getelementptr i8, ptr %569, i32 516
  %573 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %572) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %574 = and i32 %573, 4096
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %875

576:                                              ; preds = %557
  tail call void @msleep(i32 noundef 20) #6
  %577 = add nsw i32 %558, -1
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %579, label %557

579:                                              ; preds = %576
  %580 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %432, ptr noundef nonnull @.str.15, i32 noundef %580) #7
  br label %875

581:                                              ; preds = %1
  %582 = load ptr, ptr %5, align 4
  %583 = getelementptr inbounds %struct.brcm_sata_phy, ptr %5, i32 0, i32 1
  %584 = load ptr, ptr %583, align 4
  %585 = load i32, ptr %3, align 4
  %586 = shl i32 %585, 12
  %587 = getelementptr i8, ptr %584, i32 %586
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %588 = getelementptr i8, ptr %587, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %588, i32 96) #6, !srcloc !10
  %589 = getelementptr i8, ptr %587, i32 520
  %590 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %589) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %589, i32 50) #6, !srcloc !10
  %591 = load ptr, ptr %4, align 4
  %592 = getelementptr inbounds %struct.brcm_sata_phy, ptr %591, i32 0, i32 1
  %593 = load ptr, ptr %592, align 4
  %594 = getelementptr inbounds %struct.brcm_sata_phy, ptr %591, i32 0, i32 3
  %595 = load i32, ptr %594, align 4
  %596 = icmp eq i32 %595, 2
  %597 = load i32, ptr %3, align 4
  %598 = shl i32 %597, 4
  %599 = shl i32 %597, 12
  %600 = select i1 %596, i32 0, i32 %599
  %601 = getelementptr i8, ptr %593, i32 %600
  %602 = add i32 %598, 96
  %603 = select i1 %596, i32 %602, i32 96
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %604 = getelementptr i8, ptr %601, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %604, i32 %603) #6, !srcloc !10
  %605 = getelementptr i8, ptr %601, i32 524
  %606 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %605) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %605, i32 2) #6, !srcloc !10
  %607 = load ptr, ptr %4, align 4
  %608 = getelementptr inbounds %struct.brcm_sata_phy, ptr %607, i32 0, i32 1
  %609 = load ptr, ptr %608, align 4
  %610 = getelementptr inbounds %struct.brcm_sata_phy, ptr %607, i32 0, i32 3
  %611 = load i32, ptr %610, align 4
  %612 = icmp eq i32 %611, 2
  %613 = load i32, ptr %3, align 4
  %614 = shl i32 %613, 4
  %615 = shl i32 %613, 12
  %616 = select i1 %612, i32 0, i32 %615
  %617 = getelementptr i8, ptr %609, i32 %616
  %618 = add i32 %614, 96
  %619 = select i1 %612, i32 %618, i32 96
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %620 = getelementptr i8, ptr %617, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %620, i32 %619) #6, !srcloc !10
  %621 = getelementptr i8, ptr %617, i32 528
  %622 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %621) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %621, i32 1000) #6, !srcloc !10
  %623 = load ptr, ptr %4, align 4
  %624 = getelementptr inbounds %struct.brcm_sata_phy, ptr %623, i32 0, i32 1
  %625 = load ptr, ptr %624, align 4
  %626 = getelementptr inbounds %struct.brcm_sata_phy, ptr %623, i32 0, i32 3
  %627 = load i32, ptr %626, align 4
  %628 = icmp eq i32 %627, 2
  %629 = load i32, ptr %3, align 4
  %630 = shl i32 %629, 4
  %631 = shl i32 %629, 12
  %632 = select i1 %628, i32 0, i32 %631
  %633 = getelementptr i8, ptr %625, i32 %632
  %634 = add i32 %630, 80
  %635 = select i1 %628, i32 %634, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %636 = getelementptr i8, ptr %633, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %636, i32 %635) #6, !srcloc !10
  %637 = getelementptr i8, ptr %633, i32 536
  %638 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %637) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %637, i32 10) #6, !srcloc !10
  br label %639

639:                                              ; preds = %658, %581
  %640 = phi i32 [ 50, %581 ], [ %659, %658 ]
  %641 = load ptr, ptr %4, align 4
  %642 = getelementptr inbounds %struct.brcm_sata_phy, ptr %641, i32 0, i32 1
  %643 = load ptr, ptr %642, align 4
  %644 = getelementptr inbounds %struct.brcm_sata_phy, ptr %641, i32 0, i32 3
  %645 = load i32, ptr %644, align 4
  %646 = icmp eq i32 %645, 2
  %647 = load i32, ptr %3, align 4
  %648 = shl i32 %647, 4
  %649 = shl i32 %647, 12
  %650 = select i1 %646, i32 0, i32 %649
  %651 = getelementptr i8, ptr %643, i32 %650
  %652 = select i1 %646, i32 %648, i32 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %653 = getelementptr i8, ptr %651, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %653, i32 %652) #6, !srcloc !10
  %654 = getelementptr i8, ptr %651, i32 516
  %655 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %654) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %656 = and i32 %655, 4096
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %658, label %663

658:                                              ; preds = %639
  tail call void @msleep(i32 noundef 20) #6
  %659 = add nsw i32 %640, -1
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %661, label %639

661:                                              ; preds = %658
  %662 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %582, ptr noundef nonnull @.str.15, i32 noundef %662) #7
  br label %875

663:                                              ; preds = %639
  %664 = load ptr, ptr %4, align 4
  %665 = getelementptr inbounds %struct.brcm_sata_phy, ptr %664, i32 0, i32 1
  %666 = load ptr, ptr %665, align 4
  %667 = getelementptr inbounds %struct.brcm_sata_phy, ptr %664, i32 0, i32 3
  %668 = load i32, ptr %667, align 4
  %669 = icmp eq i32 %668, 2
  %670 = load i32, ptr %3, align 4
  %671 = shl i32 %670, 4
  %672 = shl i32 %670, 12
  %673 = select i1 %669, i32 0, i32 %672
  %674 = getelementptr i8, ptr %666, i32 %673
  %675 = add i32 %671, 112
  %676 = select i1 %669, i32 %675, i32 112
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %677 = getelementptr i8, ptr %674, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %677, i32 %676) #6, !srcloc !10
  %678 = getelementptr i8, ptr %674, i32 512
  %679 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %678) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %680 = or i32 %679, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %678, i32 %680) #6, !srcloc !10
  %681 = load ptr, ptr %4, align 4
  %682 = getelementptr inbounds %struct.brcm_sata_phy, ptr %681, i32 0, i32 1
  %683 = load ptr, ptr %682, align 4
  %684 = getelementptr inbounds %struct.brcm_sata_phy, ptr %681, i32 0, i32 3
  %685 = load i32, ptr %684, align 4
  %686 = icmp eq i32 %685, 2
  %687 = load i32, ptr %3, align 4
  %688 = shl i32 %687, 4
  %689 = shl i32 %687, 12
  %690 = select i1 %686, i32 0, i32 %689
  %691 = getelementptr i8, ptr %683, i32 %690
  %692 = add i32 %688, 336
  %693 = select i1 %686, i32 %692, i32 336
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %694 = getelementptr i8, ptr %691, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %694, i32 %693) #6, !srcloc !10
  %695 = getelementptr i8, ptr %691, i32 512
  %696 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %695) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %695, i32 50307) #6, !srcloc !10
  %697 = load ptr, ptr %4, align 4
  %698 = getelementptr inbounds %struct.brcm_sata_phy, ptr %697, i32 0, i32 1
  %699 = load ptr, ptr %698, align 4
  %700 = getelementptr inbounds %struct.brcm_sata_phy, ptr %697, i32 0, i32 3
  %701 = load i32, ptr %700, align 4
  %702 = icmp eq i32 %701, 2
  %703 = load i32, ptr %3, align 4
  %704 = shl i32 %703, 4
  %705 = shl i32 %703, 12
  %706 = select i1 %702, i32 0, i32 %705
  %707 = getelementptr i8, ptr %699, i32 %706
  %708 = add i32 %704, 336
  %709 = select i1 %702, i32 %708, i32 336
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %710 = getelementptr i8, ptr %707, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %710, i32 %709) #6, !srcloc !10
  %711 = getelementptr i8, ptr %707, i32 516
  %712 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %711) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %711, i32 7049) #6, !srcloc !10
  br label %875

713:                                              ; preds = %1
  %714 = load ptr, ptr %5, align 4
  %715 = getelementptr inbounds %struct.brcm_sata_phy, ptr %5, i32 0, i32 1
  %716 = load ptr, ptr %715, align 4
  %717 = load i32, ptr %3, align 4
  %718 = shl i32 %717, 12
  %719 = getelementptr i8, ptr %716, i32 %718
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %720 = getelementptr i8, ptr %719, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %720, i32 96) #6, !srcloc !10
  %721 = getelementptr i8, ptr %719, i32 540
  %722 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %721) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %721, i32 2163) #6, !srcloc !10
  %723 = load ptr, ptr %4, align 4
  %724 = getelementptr inbounds %struct.brcm_sata_phy, ptr %723, i32 0, i32 1
  %725 = load ptr, ptr %724, align 4
  %726 = getelementptr inbounds %struct.brcm_sata_phy, ptr %723, i32 0, i32 3
  %727 = load i32, ptr %726, align 4
  %728 = icmp eq i32 %727, 2
  %729 = load i32, ptr %3, align 4
  %730 = shl i32 %729, 4
  %731 = shl i32 %729, 12
  %732 = select i1 %728, i32 0, i32 %731
  %733 = getelementptr i8, ptr %725, i32 %732
  %734 = add i32 %730, 96
  %735 = select i1 %728, i32 %734, i32 96
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %736 = getelementptr i8, ptr %733, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %736, i32 %735) #6, !srcloc !10
  %737 = getelementptr i8, ptr %733, i32 536
  %738 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %737) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %737, i32 49152) #6, !srcloc !10
  %739 = load ptr, ptr %4, align 4
  %740 = getelementptr inbounds %struct.brcm_sata_phy, ptr %739, i32 0, i32 1
  %741 = load ptr, ptr %740, align 4
  %742 = getelementptr inbounds %struct.brcm_sata_phy, ptr %739, i32 0, i32 3
  %743 = load i32, ptr %742, align 4
  %744 = icmp eq i32 %743, 2
  %745 = load i32, ptr %3, align 4
  %746 = shl i32 %745, 4
  %747 = shl i32 %745, 12
  %748 = select i1 %744, i32 0, i32 %747
  %749 = getelementptr i8, ptr %741, i32 %748
  %750 = add i32 %746, 80
  %751 = select i1 %744, i32 %750, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %752 = getelementptr i8, ptr %749, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %752, i32 %751) #6, !srcloc !10
  %753 = getelementptr i8, ptr %749, i32 516
  %754 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %753) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %753, i32 12425) #6, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %755 = load ptr, ptr %4, align 4
  %756 = getelementptr inbounds %struct.brcm_sata_phy, ptr %755, i32 0, i32 1
  %757 = load ptr, ptr %756, align 4
  %758 = getelementptr inbounds %struct.brcm_sata_phy, ptr %755, i32 0, i32 3
  %759 = load i32, ptr %758, align 4
  %760 = icmp eq i32 %759, 2
  %761 = load i32, ptr %3, align 4
  %762 = shl i32 %761, 4
  %763 = shl i32 %761, 12
  %764 = select i1 %760, i32 0, i32 %763
  %765 = getelementptr i8, ptr %757, i32 %764
  %766 = add i32 %762, 80
  %767 = select i1 %760, i32 %766, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %768 = getelementptr i8, ptr %765, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %768, i32 %767) #6, !srcloc !10
  %769 = getelementptr i8, ptr %765, i32 516
  %770 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %769) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %769, i32 12424) #6, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %771 = load ptr, ptr %4, align 4
  %772 = getelementptr inbounds %struct.brcm_sata_phy, ptr %771, i32 0, i32 1
  %773 = load ptr, ptr %772, align 4
  %774 = getelementptr inbounds %struct.brcm_sata_phy, ptr %771, i32 0, i32 3
  %775 = load i32, ptr %774, align 4
  %776 = icmp eq i32 %775, 2
  %777 = load i32, ptr %3, align 4
  %778 = shl i32 %777, 4
  %779 = shl i32 %777, 12
  %780 = select i1 %776, i32 0, i32 %779
  %781 = getelementptr i8, ptr %773, i32 %780
  %782 = add i32 %778, 224
  %783 = select i1 %776, i32 %782, i32 224
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %784 = getelementptr i8, ptr %781, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %784, i32 %783) #6, !srcloc !10
  %785 = getelementptr i8, ptr %781, i32 520
  %786 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %785) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %785, i32 12288) #6, !srcloc !10
  %787 = load ptr, ptr %4, align 4
  %788 = getelementptr inbounds %struct.brcm_sata_phy, ptr %787, i32 0, i32 1
  %789 = load ptr, ptr %788, align 4
  %790 = getelementptr inbounds %struct.brcm_sata_phy, ptr %787, i32 0, i32 3
  %791 = load i32, ptr %790, align 4
  %792 = icmp eq i32 %791, 2
  %793 = load i32, ptr %3, align 4
  %794 = shl i32 %793, 4
  %795 = shl i32 %793, 12
  %796 = select i1 %792, i32 0, i32 %795
  %797 = getelementptr i8, ptr %789, i32 %796
  %798 = add i32 %794, 224
  %799 = select i1 %792, i32 %798, i32 224
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %800 = getelementptr i8, ptr %797, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %800, i32 %799) #6, !srcloc !10
  %801 = getelementptr i8, ptr %797, i32 536
  %802 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %801) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %801, i32 12288) #6, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %803 = load ptr, ptr %4, align 4
  %804 = getelementptr inbounds %struct.brcm_sata_phy, ptr %803, i32 0, i32 1
  %805 = load ptr, ptr %804, align 4
  %806 = getelementptr inbounds %struct.brcm_sata_phy, ptr %803, i32 0, i32 3
  %807 = load i32, ptr %806, align 4
  %808 = icmp eq i32 %807, 2
  %809 = load i32, ptr %3, align 4
  %810 = shl i32 %809, 4
  %811 = shl i32 %809, 12
  %812 = select i1 %808, i32 0, i32 %811
  %813 = getelementptr i8, ptr %805, i32 %812
  %814 = add i32 %810, 80
  %815 = select i1 %808, i32 %814, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %816 = getelementptr i8, ptr %813, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %816, i32 %815) #6, !srcloc !10
  %817 = getelementptr i8, ptr %813, i32 524
  %818 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %817) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %817, i32 50) #6, !srcloc !10
  %819 = load ptr, ptr %4, align 4
  %820 = getelementptr inbounds %struct.brcm_sata_phy, ptr %819, i32 0, i32 1
  %821 = load ptr, ptr %820, align 4
  %822 = getelementptr inbounds %struct.brcm_sata_phy, ptr %819, i32 0, i32 3
  %823 = load i32, ptr %822, align 4
  %824 = icmp eq i32 %823, 2
  %825 = load i32, ptr %3, align 4
  %826 = shl i32 %825, 4
  %827 = shl i32 %825, 12
  %828 = select i1 %824, i32 0, i32 %827
  %829 = getelementptr i8, ptr %821, i32 %828
  %830 = add i32 %826, 80
  %831 = select i1 %824, i32 %830, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %832 = getelementptr i8, ptr %829, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %832, i32 %831) #6, !srcloc !10
  %833 = getelementptr i8, ptr %829, i32 528
  %834 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %833) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %833, i32 10) #6, !srcloc !10
  %835 = load ptr, ptr %4, align 4
  %836 = getelementptr inbounds %struct.brcm_sata_phy, ptr %835, i32 0, i32 1
  %837 = load ptr, ptr %836, align 4
  %838 = getelementptr inbounds %struct.brcm_sata_phy, ptr %835, i32 0, i32 3
  %839 = load i32, ptr %838, align 4
  %840 = icmp eq i32 %839, 2
  %841 = load i32, ptr %3, align 4
  %842 = shl i32 %841, 4
  %843 = shl i32 %841, 12
  %844 = select i1 %840, i32 0, i32 %843
  %845 = getelementptr i8, ptr %837, i32 %844
  %846 = add i32 %842, 80
  %847 = select i1 %840, i32 %846, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %848 = getelementptr i8, ptr %845, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %848, i32 %847) #6, !srcloc !10
  %849 = getelementptr i8, ptr %845, i32 536
  %850 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %849) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %849, i32 100) #6, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  br label %851

851:                                              ; preds = %870, %713
  %852 = phi i32 [ 50, %713 ], [ %871, %870 ]
  %853 = load ptr, ptr %4, align 4
  %854 = getelementptr inbounds %struct.brcm_sata_phy, ptr %853, i32 0, i32 1
  %855 = load ptr, ptr %854, align 4
  %856 = getelementptr inbounds %struct.brcm_sata_phy, ptr %853, i32 0, i32 3
  %857 = load i32, ptr %856, align 4
  %858 = icmp eq i32 %857, 2
  %859 = load i32, ptr %3, align 4
  %860 = shl i32 %859, 4
  %861 = shl i32 %859, 12
  %862 = select i1 %858, i32 0, i32 %861
  %863 = getelementptr i8, ptr %855, i32 %862
  %864 = select i1 %858, i32 %860, i32 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %865 = getelementptr i8, ptr %863, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %865, i32 %864) #6, !srcloc !10
  %866 = getelementptr i8, ptr %863, i32 516
  %867 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %866) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %868 = and i32 %867, 4096
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %870, label %875

870:                                              ; preds = %851
  tail call void @msleep(i32 noundef 20) #6
  %871 = add nsw i32 %852, -1
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %873, label %851

873:                                              ; preds = %870
  %874 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %714, ptr noundef nonnull @.str.15, i32 noundef %874) #7
  br label %875

875:                                              ; preds = %873, %851, %663, %661, %579, %557, %431, %429, %407, %273, %266, %243, %182, %1
  %876 = phi i32 [ 0, %182 ], [ -19, %1 ], [ 0, %273 ], [ %264, %243 ], [ -22, %266 ], [ -110, %429 ], [ -110, %579 ], [ -22, %431 ], [ -110, %661 ], [ 0, %663 ], [ -110, %873 ], [ 0, %407 ], [ 0, %557 ], [ 0, %851 ]
  ret i32 %876
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_sata_phy_calibrate(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcm_sata_port, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcm_sata_phy, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.brcm_sata_phy, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq i32 %7, 2
  %14 = load i32, ptr %3, align 4
  %15 = shl i32 %14, 4
  %16 = shl i32 %14, 12
  %17 = select i1 %13, i32 0, i32 %16
  %18 = getelementptr i8, ptr %12, i32 %17
  %19 = add i32 %15, 448
  %20 = select i1 %13, i32 %19, i32 448
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %21 = getelementptr i8, ptr %18, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %20) #6, !srcloc !10
  %22 = getelementptr i8, ptr %18, i32 540
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %24 = or i32 %23, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %24) #6, !srcloc !10
  br label %25

25:                                               ; preds = %10, %1
  %26 = phi i32 [ -95, %1 ], [ 0, %10 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{i64 2153564954}
!10 = !{i64 3723267}
!11 = !{i64 3723685}
!12 = !{i64 2153565455}
!13 = !{i64 2153565663}
!14 = !{i8 0, i8 2}
!15 = !{i64 2153568320}
!16 = !{i64 2153569958}
!17 = !{i64 2153566002}
!18 = !{i64 2153566503}
