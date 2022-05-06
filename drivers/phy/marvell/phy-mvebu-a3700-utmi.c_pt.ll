; ModuleID = '/llk/IR/drivers/phy/marvell/phy-mvebu-a3700-utmi.c_pt.bc'
source_filename = "../drivers/phy/marvell/phy-mvebu-a3700-utmi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mvebu_a3700_utmi_caps = type { i32, ptr }
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
%struct.mvebu_a3700_utmi = type { ptr, ptr, ptr, ptr }

@__initcall__kmod_phy_mvebu_a3700_utmi__248_265_mvebu_a3700_utmi_driver_init6 = internal global ptr @mvebu_a3700_utmi_driver_init, section ".initcall6.init", align 4
@mvebu_a3700_utmi_driver = internal global %struct.platform_driver { ptr @mvebu_a3700_utmi_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mvebu_a3700_utmi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_mvebu_a3700_utmi_driver_exit = internal global ptr @mvebu_a3700_utmi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [62 x i8] c"phy_mvebu_a3700_utmi.author=Igal Liberman <igall@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [70 x i8] c"phy_mvebu_a3700_utmi.author=Miquel Raynal <miquel.raynal@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [67 x i8] c"phy_mvebu_a3700_utmi.description=Marvell EBU A3700 UTMI PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [67 x i8] c"phy_mvebu_a3700_utmi.file=drivers/phy/marvell/phy-mvebu-a3700-utmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [36 x i8] c"phy_mvebu_a3700_utmi.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [21 x i8] c"mvebu-a3700-utmi-phy\00", align 1
@mvebu_a3700_utmi_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,a3700-utmi-otg-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mvebu_a3700_utmi_otg_phy_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,a3700-utmi-host-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mvebu_a3700_utmi_host_phy_caps }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"marvell,usb-misc-reg\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Missing USB misc purpose system controller\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to create the UTMI PHY\0A\00", align 1
@mvebu_a3700_utmi_otg_phy_caps = internal constant %struct.mvebu_a3700_utmi_caps { i32 1, ptr @mvebu_a3700_utmi_phy_ops }, align 4
@mvebu_a3700_utmi_host_phy_caps = internal constant %struct.mvebu_a3700_utmi_caps { i32 0, ptr @mvebu_a3700_utmi_phy_ops }, align 4
@mvebu_a3700_utmi_phy_ops = internal constant %struct.phy_ops { ptr null, ptr null, ptr @mvebu_a3700_utmi_phy_power_on, ptr @mvebu_a3700_utmi_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to end USB2 PLL calibration\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Failed to end USB2 impedance calibration\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Failed to end USB2 unknown calibration\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Failed to lock USB2 PLL\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_mvebu_a3700_utmi_driver_exit, ptr @__initcall__kmod_phy_mvebu_a3700_utmi__248_265_mvebu_a3700_utmi_driver_init6, ptr @mvebu_a3700_utmi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mvebu_a3700_utmi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mvebu_a3700_utmi_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mvebu_a3700_utmi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mvebu_a3700_utmi_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_a3700_utmi_phy_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 16, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  store ptr %6, ptr %3, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %41

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %12, ptr noundef nonnull @.str.1) #4
  %14 = getelementptr inbounds %struct.mvebu_a3700_utmi, ptr %3, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  %17 = ptrtoint ptr %13 to i32
  br label %41

18:                                               ; preds = %10
  %19 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  %20 = getelementptr inbounds %struct.mvebu_a3700_utmi, ptr %3, i32 0, i32 2
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mvebu_a3700_utmi_caps, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef null, ptr noundef %22) #4
  %24 = getelementptr inbounds %struct.mvebu_a3700_utmi, ptr %3, i32 0, i32 3
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  %27 = ptrtoint ptr %23 to i32
  br label %41

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 8
  store ptr %3, ptr %29, align 8
  %30 = load ptr, ptr %20, align 4
  %31 = getelementptr inbounds %struct.mvebu_a3700_utmi_caps, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.phy_ops, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %24, align 4
  %36 = tail call i32 %34(ptr noundef %35) #4
  %37 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #4
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  %39 = ptrtoint ptr %37 to i32
  %40 = select i1 %38, i32 %39, i32 0
  br label %41

41:                                               ; preds = %28, %26, %16, %8, %1
  %42 = phi i32 [ %9, %8 ], [ %17, %16 ], [ %27, %26 ], [ %40, %28 ], [ -12, %1 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_a3700_utmi_phy_power_on(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mvebu_a3700_utmi, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %9 = and i32 %8, -838795392
  %10 = or i32 %9, 6291461
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %11 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #4, !srcloc !11
  %12 = getelementptr inbounds %struct.mvebu_a3700_utmi, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq i32 %6, 0
  %15 = select i1 %14, i32 4, i32 32
  %16 = select i1 %14, i32 129, i32 16385
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %15, i32 noundef %16, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br i1 %14, label %33, label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 52
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %22 = or i32 %21, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr i8, ptr %23, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #4, !srcloc !11
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 56
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %28 = and i32 %27, -12477
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr i8, ptr %29, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #4, !srcloc !11
  %31 = load ptr, ptr %12, align 4
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 32, i32 noundef 96, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %33

33:                                               ; preds = %18, %1
  %34 = tail call i64 @ktime_get() #4
  %35 = add i64 %34, 1000000000
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr i8, ptr %36, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %53

40:                                               ; preds = %43, %33
  %41 = tail call i64 @ktime_get() #4
  %42 = icmp sgt i64 %41, %35
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #4
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr i8, ptr %44, i32 8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %40, label %53

48:                                               ; preds = %40
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr i8, ptr %49, i32 8
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %115

53:                                               ; preds = %48, %43, %33
  %54 = tail call i64 @ktime_get() #4
  %55 = add i64 %54, 1000000000
  %56 = load ptr, ptr %3, align 4
  %57 = getelementptr i8, ptr %56, i32 8
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !18
  %59 = and i32 %58, 8388608
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %68, %53
  %62 = tail call i64 @ktime_get() #4
  %63 = icmp sgt i64 %62, %55
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load ptr, ptr %3, align 4
  %66 = getelementptr i8, ptr %65, i32 8
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !19
  br label %74

68:                                               ; preds = %61
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #4
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr i8, ptr %69, i32 8
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !18
  %72 = and i32 %71, 8388608
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %61, label %74

74:                                               ; preds = %68, %64, %53
  %75 = phi i32 [ %67, %64 ], [ %58, %53 ], [ %71, %68 ]
  %76 = and i32 %75, 8388608
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %115, label %78

78:                                               ; preds = %74
  %79 = tail call i64 @ktime_get() #4
  %80 = add i64 %79, 1000000000
  %81 = load ptr, ptr %3, align 4
  %82 = getelementptr i8, ptr %81, i32 24
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %85, label %98

85:                                               ; preds = %88, %78
  %86 = tail call i64 @ktime_get() #4
  %87 = icmp sgt i64 %86, %80
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #4
  %89 = load ptr, ptr %3, align 4
  %90 = getelementptr i8, ptr %89, i32 24
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  %92 = icmp sgt i32 %91, -1
  br i1 %92, label %85, label %98

93:                                               ; preds = %85
  %94 = load ptr, ptr %3, align 4
  %95 = getelementptr i8, ptr %94, i32 24
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !21
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %93, %88, %78
  %99 = tail call i64 @ktime_get() #4
  %100 = add i64 %99, 1000000000
  %101 = load ptr, ptr %3, align 4
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !22
  %103 = icmp sgt i32 %102, -1
  br i1 %103, label %104, label %117

104:                                              ; preds = %107, %98
  %105 = tail call i64 @ktime_get() #4
  %106 = icmp sgt i64 %105, %100
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #4
  %108 = load ptr, ptr %3, align 4
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !22
  %110 = icmp sgt i32 %109, -1
  br i1 %110, label %104, label %117

111:                                              ; preds = %104
  %112 = load ptr, ptr %3, align 4
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !23
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %111, %93, %74, %48
  %116 = phi ptr [ @.str.4, %48 ], [ @.str.5, %74 ], [ @.str.6, %93 ], [ @.str.7, %111 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %116) #5
  br label %117

117:                                              ; preds = %115, %111, %107, %98
  %118 = phi i32 [ 0, %111 ], [ 0, %98 ], [ -110, %115 ], [ 0, %107 ]
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_a3700_utmi_phy_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mvebu_a3700_utmi, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = icmp eq i32 %6, 0
  %9 = select i1 %8, i32 4, i32 32
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !24
  %12 = select i1 %8, i32 -130, i32 -16386
  %13 = and i32 %11, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr i8, ptr %14, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #4, !srcloc !11
  br i1 %8, label %23, label %16

16:                                               ; preds = %1
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr i8, ptr %17, i32 52
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !26
  %20 = and i32 %19, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr i8, ptr %21, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #4, !srcloc !11
  br label %23

23:                                               ; preds = %16, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
!8 = !{i64 367227}
!9 = !{i64 2153664568}
!10 = !{i64 2153666824}
!11 = !{i64 366809}
!12 = !{i64 2153667850}
!13 = !{i64 2153668122}
!14 = !{i64 2153668590}
!15 = !{i64 2153669358}
!16 = !{i64 2153671215}
!17 = !{i64 2153671546}
!18 = !{i64 2153673693}
!19 = !{i64 2153674024}
!20 = !{i64 2153676215}
!21 = !{i64 2153676549}
!22 = !{i64 2153678720}
!23 = !{i64 2153679051}
!24 = !{i64 2153680007}
!25 = !{i64 2153680502}
!26 = !{i64 2153680987}
!27 = !{i64 2153681259}
