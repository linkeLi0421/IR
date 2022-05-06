; ModuleID = '/llk/IR/drivers/phy/ti/phy-dm816x-usb.c_pt.bc'
source_filename = "../drivers/phy/ti/phy-dm816x-usb.c"
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
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dm816x_usb_phy = type { ptr, ptr, i32, ptr, %struct.usb_phy, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@dm816x_usb_phy_id_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm8168-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias252 = internal constant [26 x i8] c"alias=platform:dm816x_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [40 x i8] c"author=Tony Lindgren <tony@atomide.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [34 x i8] c"description=dm816x usb phy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@dm816x_usb_phy_driver = internal global %struct.platform_driver { ptr @dm816x_usb_phy_probe, ptr @dm816x_usb_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dm816x_usb_phy_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dm816x_usb_phy_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [15 x i8] c"dm816x-usb-phy\00", align 1
@dm816x_usb_phy_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @dm816x_usb_phy_runtime_suspend, ptr @dm816x_usb_phy_runtime_resume, ptr @dm816x_usb_phy_runtime_suspend, ptr @dm816x_usb_phy_runtime_resume, ptr @dm816x_usb_phy_runtime_suspend, ptr @dm816x_usb_phy_runtime_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dm816x_usb_phy_runtime_suspend, ptr @dm816x_usb_phy_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"dm8168_usb_phy\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"refclk\00", align 1
@ops = internal constant %struct.phy_ops { ptr @dm816x_usb_phy_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__this_module }, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"nonstandard phy refclk\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Working dm816x USB_CTRL! (0x%08x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"phy%i failed to power off\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"phy%i failed to power on\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_license255], section "llvm.metadata"

@__mod_of__dm816x_usb_phy_id_table_device_table = dso_local alias [2 x %struct.of_device_id], ptr @dm816x_usb_phy_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dm816x_usb_phy_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dm816x_usb_phy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dm816x_usb_phy_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @dm816x_usb_phy_id_table, ptr noundef %2) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %65, label %5

5:                                                ; preds = %1
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 216, i32 noundef 3520) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %65, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %65, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %13, ptr noundef nonnull @.str.1) #6
  store ptr %14, ptr %6, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = ptrtoint ptr %14 to i32
  br label %65

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %6, i32 0, i32 5
  store i32 32, ptr %19, align 4
  %20 = load i32, ptr %9, align 4
  %21 = and i32 %20, 255
  %22 = add nuw nsw i32 %21, 4
  %23 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %6, i32 0, i32 6
  store i32 %22, ptr %23, align 4
  %24 = icmp eq i32 %22, 44
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %6, i32 0, i32 2
  store i32 1, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %18
  %28 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %65, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %6, i32 0, i32 1
  store ptr %2, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %6, i32 0, i32 4
  store ptr %2, ptr %32, align 4
  %33 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %6, i32 0, i32 4, i32 1
  store ptr @.str.2, ptr %33, align 4
  %34 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %6, i32 0, i32 4, i32 5
  store ptr %28, ptr %34, align 4
  %35 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %6, i32 0, i32 4, i32 3
  store i32 1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.usb_otg, ptr %28, i32 0, i32 6
  store ptr @dm816x_usb_phy_set_host, ptr %36, align 4
  %37 = getelementptr inbounds %struct.usb_otg, ptr %28, i32 0, i32 7
  store ptr @dm816x_usb_phy_set_peripheral, ptr %37, align 4
  %38 = getelementptr inbounds %struct.usb_otg, ptr %28, i32 0, i32 2
  store ptr %32, ptr %38, align 4
  %39 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %39, align 8
  %40 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #6
  %41 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %6, i32 0, i32 3
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = ptrtoint ptr %40 to i32
  br label %65

45:                                               ; preds = %30
  %46 = tail call i32 @clk_prepare(ptr noundef %40) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load ptr, ptr %31, align 4
  tail call void @pm_runtime_enable(ptr noundef %49) #6
  %50 = load ptr, ptr %31, align 4
  %51 = tail call ptr @devm_phy_create(ptr noundef %50, ptr noundef null, ptr noundef nonnull @ops) #6
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 8
  store ptr %6, ptr %54, align 8
  %55 = load ptr, ptr %31, align 4
  %56 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %55, ptr noundef null, ptr noundef nonnull @__this_module, ptr noundef nonnull @of_phy_simple_xlate) #6
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = tail call i32 @usb_add_phy_dev(ptr noundef %32) #6
  br label %65

60:                                               ; preds = %53, %48
  %61 = phi ptr [ %51, %48 ], [ %56, %53 ]
  %62 = ptrtoint ptr %61 to i32
  %63 = load ptr, ptr %31, align 4
  tail call void @__pm_runtime_disable(ptr noundef %63, i1 noundef zeroext true) #6
  %64 = load ptr, ptr %41, align 4
  tail call void @clk_unprepare(ptr noundef %64) #6
  br label %65

65:                                               ; preds = %60, %58, %45, %43, %27, %16, %8, %5, %1
  %66 = phi i32 [ %17, %16 ], [ %44, %43 ], [ %62, %60 ], [ 0, %58 ], [ -22, %1 ], [ -12, %5 ], [ -2, %8 ], [ -12, %27 ], [ %46, %45 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dm816x_usb_phy_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %3, i32 0, i32 4
  tail call void @usb_remove_phy(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #6
  %7 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_unprepare(ptr noundef %8) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dm816x_usb_phy_set_host(ptr nocapture noundef writeonly %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 3
  store ptr %1, ptr %3, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 5
  store i32 0, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dm816x_usb_phy_set_peripheral(ptr nocapture noundef writeonly %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 4
  store ptr %1, ptr %3, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 5
  store i32 0, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dm816x_usb_phy_init(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_get_rate(ptr noundef %6) #6
  %8 = icmp eq i32 %7, 24000000
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.4) #7
  br label %12

12:                                               ; preds = %9, %1
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %4, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %15, i32 noundef 259, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %17 = load ptr, ptr %4, align 4
  %18 = load i32, ptr %14, align 4
  %19 = call i32 @regmap_read(ptr noundef %17, i32 noundef %18, ptr noundef nonnull %2) #6
  %20 = load i32, ptr %2, align 4
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %4, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.5, i32 noundef %20) #7
  br label %26

26:                                               ; preds = %23, %12
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %4, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = call i32 @regmap_read(ptr noundef %27, i32 noundef %29, ptr noundef nonnull %2) #6
  %31 = load i32, ptr %2, align 4
  %32 = or i32 %31, 15
  store i32 %32, ptr %2, align 4
  %33 = load ptr, ptr %4, align 4
  %34 = load i32, ptr %28, align 4
  %35 = call i32 @regmap_write(ptr noundef %33, i32 noundef %34, i32 noundef %32) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dm816x_usb_phy_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl nuw i32 1, %5
  %7 = xor i32 %6, -1
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %3, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %10, i32 noundef %6, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.6, i32 noundef %16) #7
  br label %17

17:                                               ; preds = %13, %1
  %18 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %3, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %19) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dm816x_usb_phy_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %3, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = shl nuw i32 1, %10
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %3, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %14, i32 noundef %11, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %3, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.7, i32 noundef %20) #7
  %21 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  br label %22

22:                                               ; preds = %17, %8, %1
  %23 = phi i32 [ %15, %17 ], [ %6, %1 ], [ 0, %8 ]
  ret i32 %23
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
