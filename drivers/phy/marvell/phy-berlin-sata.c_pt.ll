; ModuleID = '/llk/IR/drivers/phy/marvell/phy-berlin-sata.c_pt.bc'
source_filename = "../drivers/phy/marvell/phy-berlin-sata.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.phy_berlin_priv = type { ptr, %struct.spinlock, ptr, ptr, i32, i32 }
%struct.phy_berlin_desc = type { ptr, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_berlin_sata__248_293_phy_berlin_sata_driver_init6 = internal global ptr @phy_berlin_sata_driver_init, section ".initcall6.init", align 4
@phy_berlin_sata_driver = internal global %struct.platform_driver { ptr @phy_berlin_sata_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @phy_berlin_sata_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_phy_berlin_sata_driver_exit = internal global ptr @phy_berlin_sata_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description249 = internal constant [59 x i8] c"phy_berlin_sata.description=Marvell Berlin SATA PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [75 x i8] c"phy_berlin_sata.author=Antoine T\C3\A9nart <antoine.tenart@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [57 x i8] c"phy_berlin_sata.file=drivers/phy/marvell/phy-berlin-sata\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [31 x i8] c"phy_berlin_sata.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"phy-berlin-sata\00", align 1
@phy_berlin_sata_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,berlin2-sata-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,berlin2q-sata-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"marvell,berlin2-sata-phy\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"missing reg property in node %pOFn\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"invalid reg in node %pOFn\0A\00", align 1
@phy_berlin_sata_ops = internal constant %struct.phy_ops { ptr null, ptr null, ptr @phy_berlin_sata_power_on, ptr @phy_berlin_sata_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to create PHY %d\0A\00", align 1
@phy_berlin_power_down_bits = internal unnamed_addr constant [2 x i32] [i32 64, i32 16384], align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"drivers/phy/marvell/phy-berlin-sata.c\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_phy_berlin_sata_driver_exit, ptr @__initcall__kmod_phy_berlin_sata__248_293_phy_berlin_sata_driver_init6, ptr @phy_berlin_sata_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @phy_berlin_sata_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @phy_berlin_sata_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @phy_berlin_sata_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @phy_berlin_sata_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_berlin_sata_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 24, i32 noundef 3520) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %100, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %100, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr %7, align 4
  %11 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 1, %10
  %14 = add i32 %13, %12
  %15 = tail call ptr @devm_ioremap(ptr noundef %3, i32 noundef %10, i32 noundef %14) #6
  store ptr %15, ptr %4, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %100, label %17

17:                                               ; preds = %9
  %18 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #6
  %19 = getelementptr inbounds %struct.phy_berlin_priv, ptr %4, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = ptrtoint ptr %18 to i32
  br label %100

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %25 = load ptr, ptr %24, align 8
  %26 = tail call ptr @of_get_next_child(ptr noundef %25, ptr noundef null) #6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.phy_berlin_priv, ptr %4, i32 0, i32 4
  store i32 0, ptr %29, align 4
  br label %100

30:                                               ; preds = %30, %23
  %31 = phi i32 [ %33, %30 ], [ 0, %23 ]
  %32 = phi ptr [ %34, %30 ], [ %26, %23 ]
  %33 = add i32 %31, 1
  %34 = tail call ptr @of_get_next_child(ptr noundef %25, ptr noundef nonnull %32) #6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %30

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.phy_berlin_priv, ptr %4, i32 0, i32 4
  store i32 %33, ptr %37, align 4
  %38 = icmp eq i32 %33, 0
  br i1 %38, label %100, label %39

39:                                               ; preds = %36
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %33, i32 4) #6
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %42, label %44, !prof !9

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.phy_berlin_priv, ptr %4, i32 0, i32 3
  store ptr null, ptr %43, align 4
  br label %100

44:                                               ; preds = %39
  %45 = extractvalue { i32, i1 } %40, 0
  %46 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %45, i32 noundef 3520) #6
  %47 = getelementptr inbounds %struct.phy_berlin_priv, ptr %4, i32 0, i32 3
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %46, null
  br i1 %48, label %100, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %24, align 8
  %51 = tail call i32 @of_device_is_compatible(ptr noundef %50, ptr noundef nonnull @.str.1) #6
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 512, i32 128
  %54 = getelementptr inbounds %struct.phy_berlin_priv, ptr %4, i32 0, i32 5
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %55, align 8
  %56 = getelementptr inbounds %struct.phy_berlin_priv, ptr %4, i32 0, i32 1
  store i32 0, ptr %56, align 4
  %57 = load ptr, ptr %24, align 8
  %58 = tail call ptr @of_get_next_available_child(ptr noundef %57, ptr noundef null) #6
  %59 = icmp eq ptr %58, null
  br i1 %59, label %93, label %60

60:                                               ; preds = %79, %49
  %61 = phi i32 [ %87, %79 ], [ 0, %49 ]
  %62 = phi ptr [ %91, %79 ], [ %58, %49 ]
  %63 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %62, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull %62) #7
  br label %98

66:                                               ; preds = %60
  %67 = load i32, ptr %2, align 4
  %68 = icmp ugt i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull %62) #7
  br label %98

70:                                               ; preds = %66
  %71 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #6
  %72 = icmp eq ptr %71, null
  br i1 %72, label %98, label %73

73:                                               ; preds = %70
  %74 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef null, ptr noundef nonnull @phy_berlin_sata_ops) #6
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %77) #7
  %78 = ptrtoint ptr %74 to i32
  br label %98

79:                                               ; preds = %73
  store ptr %74, ptr %71, align 4
  %80 = load i32, ptr %2, align 4
  %81 = getelementptr [2 x i32], ptr @phy_berlin_power_down_bits, i32 0, i32 %80
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.phy_berlin_desc, ptr %71, i32 0, i32 1
  store i32 %82, ptr %83, align 4
  %84 = getelementptr inbounds %struct.phy_berlin_desc, ptr %71, i32 0, i32 2
  store i32 %80, ptr %84, align 4
  %85 = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 8
  store ptr %71, ptr %85, align 8
  %86 = load ptr, ptr %47, align 4
  %87 = add i32 %61, 1
  %88 = getelementptr ptr, ptr %86, i32 %61
  store ptr %71, ptr %88, align 4
  %89 = call i32 @phy_berlin_sata_power_off(ptr noundef %74)
  %90 = load ptr, ptr %24, align 8
  %91 = call ptr @of_get_next_available_child(ptr noundef %90, ptr noundef nonnull %62) #6
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %60

93:                                               ; preds = %79, %49
  %94 = call ptr @__devm_of_phy_provider_register(ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef nonnull @phy_berlin_sata_phy_xlate) #6
  %95 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  %96 = ptrtoint ptr %94 to i32
  %97 = select i1 %95, i32 %96, i32 0
  br label %100

98:                                               ; preds = %76, %70, %69, %65
  %99 = phi i32 [ %78, %76 ], [ -22, %69 ], [ -22, %65 ], [ -12, %70 ]
  call void @of_node_put(ptr noundef nonnull %62) #6
  br label %100

100:                                              ; preds = %98, %93, %44, %42, %36, %28, %21, %9, %6, %1
  %101 = phi i32 [ %22, %21 ], [ %99, %98 ], [ %97, %93 ], [ -12, %1 ], [ -22, %6 ], [ -12, %9 ], [ -19, %36 ], [ -12, %44 ], [ -19, %28 ], [ -12, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %101
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_berlin_sata_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.phy_berlin_priv, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_prepare(ptr noundef %9) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = tail call i32 @clk_enable(ptr noundef %9) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %16

16:                                               ; preds = %15, %12, %1
  %17 = getelementptr inbounds %struct.phy_berlin_priv, ptr %7, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %17) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %18 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #6, !srcloc !11
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr i8, ptr %19, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %22 = getelementptr inbounds %struct.phy_berlin_desc, ptr %3, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %23, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #6, !srcloc !11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  %27 = load i16, ptr %17, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !18
  %29 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %29) #6
  tail call void @clk_unprepare(ptr noundef %29) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @phy_berlin_sata_phy_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.phy_berlin_priv, ptr %4, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %13, !prof !19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.phy_berlin_priv, ptr %4, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  br label %14

13:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 162, i32 noundef 9, ptr noundef null) #6
  br label %32

14:                                               ; preds = %21, %10
  %15 = phi i32 [ 0, %10 ], [ %22, %21 ]
  %16 = getelementptr ptr, ptr %12, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.phy_berlin_desc, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %6
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = add nuw i32 %15, 1
  %23 = icmp eq i32 %22, %8
  br i1 %23, label %32, label %14

24:                                               ; preds = %14
  %25 = icmp eq i32 %15, %8
  br i1 %25, label %32, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.phy_berlin_priv, ptr %4, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr ptr, ptr %28, i32 %15
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %26, %24, %21, %13
  %33 = phi ptr [ inttoptr (i32 -19 to ptr), %13 ], [ %31, %26 ], [ inttoptr (i32 -19 to ptr), %24 ], [ inttoptr (i32 -19 to ptr), %21 ]
  ret ptr %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_berlin_sata_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.phy_berlin_desc, ptr %3, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.phy_berlin_priv, ptr %7, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_prepare(ptr noundef %12) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = tail call i32 @clk_enable(ptr noundef %12) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %12) #6
  br label %19

19:                                               ; preds = %18, %15, %1
  %20 = getelementptr i8, ptr %8, i32 96
  %21 = shl i32 %10, 7
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = getelementptr inbounds %struct.phy_berlin_priv, ptr %7, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %23) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %24 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #6, !srcloc !11
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr i8, ptr %25, i32 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !21
  %28 = getelementptr inbounds %struct.phy_berlin_desc, ptr %3, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %27, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %34 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 4) #6, !srcloc !11
  %35 = load ptr, ptr %7, align 4
  %36 = getelementptr i8, ptr %35, i32 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !24
  %38 = or i32 %37, 2359296
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #6, !srcloc !11
  %41 = getelementptr inbounds %struct.phy_berlin_priv, ptr %7, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %43 = add i32 %42, 1
  %44 = getelementptr i8, ptr %22, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %43) #6, !srcloc !11
  %45 = getelementptr i8, ptr %22, i32 124
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %47 = and i32 %46, -256
  %48 = or i32 %47, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %48) #6, !srcloc !11
  %49 = load i32, ptr %41, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %50 = add i32 %49, 37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %50) #6, !srcloc !11
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %52 = and i32 %51, -3073
  %53 = or i32 %52, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %53) #6, !srcloc !11
  %54 = load i32, ptr %41, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %55 = add i32 %54, 35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %55) #6, !srcloc !11
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %57 = and i32 %56, -3073
  %58 = or i32 %57, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %58) #6, !srcloc !11
  %59 = load i32, ptr %41, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %60 = add i32 %59, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %60) #6, !srcloc !11
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %62 = or i32 %61, 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %62) #6, !srcloc !11
  %63 = getelementptr i8, ptr %22, i32 44
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !29
  %65 = and i32 %64, -241
  %66 = or i32 %65, 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %66) #6, !srcloc !11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  %67 = load i16, ptr %23, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !18
  %69 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %69) #6
  tail call void @clk_unprepare(ptr noundef %69) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153575435}
!11 = !{i64 4771646}
!12 = !{i64 4772064}
!13 = !{i64 2153575898}
!14 = !{i64 2153576089}
!15 = !{i64 2148884525}
!16 = !{i64 2148880349}
!17 = !{i64 2148880424, i64 2148880451, i64 2148880498, i64 2148880520, i64 2148880548, i64 2148880568}
!18 = !{i64 2148907528}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2153571777}
!21 = !{i64 2153572240}
!22 = !{i64 2153572431}
!23 = !{i64 2153572757}
!24 = !{i64 2153573220}
!25 = !{i64 2153573591}
!26 = !{i64 2153570779}
!27 = !{i64 2153571261}
!28 = !{i64 2153571452}
!29 = !{i64 2153574259}
!30 = !{i64 2153575110}
