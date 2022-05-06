; ModuleID = '/llk/IR/drivers/watchdog/aspeed_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/aspeed_wdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.aspeed_wdt_config = type { i32 }
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
%struct.aspeed_wdt = type { %struct.watchdog_device, ptr, i32 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_aspeed_wdt__168_396_aspeed_wdt_init3 = internal global ptr @aspeed_wdt_init, section ".initcall3.init", align 4
@aspeed_watchdog_driver = internal global %struct.platform_driver { ptr @aspeed_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_wdt_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_aspeed_wdt_exit = internal global ptr @aspeed_wdt_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description169 = internal constant [46 x i8] c"aspeed_wdt.description=Aspeed Watchdog Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file170 = internal constant [44 x i8] c"aspeed_wdt.file=drivers/watchdog/aspeed_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [23 x i8] c"aspeed_wdt.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"aspeed_wdt\00", align 1
@aspeed_wdt_of_table = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2400_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2500_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2500_config }, %struct.of_device_id zeroinitializer], align 4
@aspeed_wdt_info = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"aspeed_wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@aspeed_wdt_ops = internal constant %struct.watchdog_ops { ptr null, ptr @aspeed_wdt_start, ptr @aspeed_wdt_stop, ptr @aspeed_wdt_ping, ptr null, ptr @aspeed_wdt_set_timeout, ptr null, ptr null, ptr @aspeed_wdt_restart, ptr null }, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"aspeed,ast2400-wdt\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"aspeed,reset-type\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"soc\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"aspeed,external-signal\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"aspeed,alt-boot\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"aspeed,ast2500-wdt\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"aspeed,ast2600-wdt\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"aspeed,ext-push-pull\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"aspeed,ext-active-high\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"aspeed,ext-pulse-duration\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Invalid pulse duration: %uus\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Pulse duration set to %uus\0A\00", align 1
@bswitch_groups = internal global [2 x ptr] [ptr @bswitch_group, ptr null], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bswitch_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bswitch_attrs, ptr null }, align 4
@bswitch_attrs = internal global [2 x ptr] [ptr @dev_attr_access_cs0, ptr null], align 4
@dev_attr_access_cs0 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420 }, ptr @access_cs0_show, ptr @access_cs0_store }, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"access_cs0\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@ast2400_config = internal constant %struct.aspeed_wdt_config { i32 255 }, align 4
@ast2500_config = internal constant %struct.aspeed_wdt_config { i32 1048575 }, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description169, ptr @__UNIQUE_ID_file170, ptr @__UNIQUE_ID_license171, ptr @__exitcall_aspeed_wdt_exit, ptr @__initcall__kmod_aspeed_wdt__168_396_aspeed_wdt_init3, ptr @aspeed_wdt_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @aspeed_wdt_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_watchdog_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @aspeed_wdt_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_watchdog_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_wdt_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 116, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %151, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %9 = getelementptr inbounds %struct.aspeed_wdt, ptr %5, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = ptrtoint ptr %8 to i32
  br label %151

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.watchdog_device, ptr %5, i32 0, i32 3
  store ptr @aspeed_wdt_info, ptr %14, align 4
  %15 = getelementptr inbounds %struct.watchdog_device, ptr %5, i32 0, i32 4
  store ptr @aspeed_wdt_ops, ptr %15, align 4
  %16 = getelementptr inbounds %struct.watchdog_device, ptr %5, i32 0, i32 12
  store i32 4294967, ptr %16, align 4
  %17 = getelementptr inbounds %struct.watchdog_device, ptr %5, i32 0, i32 1
  store ptr %4, ptr %17, align 4
  %18 = getelementptr inbounds %struct.watchdog_device, ptr %5, i32 0, i32 7
  store i32 30, ptr %18, align 4
  %19 = tail call i32 @watchdog_init_timeout(ptr noundef nonnull %5, i32 noundef 0, ptr noundef %4) #7
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %21 = load ptr, ptr %20, align 8
  %22 = tail call ptr @of_match_node(ptr noundef nonnull @aspeed_wdt_of_table, ptr noundef %21) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %151, label %24

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.of_device_id, ptr %22, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @of_device_is_compatible(ptr noundef %21, ptr noundef nonnull @.str.1) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.aspeed_wdt, ptr %5, i32 0, i32 2
  store i32 16, ptr %30, align 4
  br label %31

31:                                               ; preds = %29, %24
  %32 = call i32 @of_property_read_string(ptr noundef %21, ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load ptr, ptr %2, align 4
  %36 = call i32 @strcmp(ptr noundef %35, ptr noundef nonnull dereferenceable(4) @.str.3)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = call i32 @strcmp(ptr noundef %35, ptr noundef nonnull dereferenceable(4) @.str.4)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = call i32 @strcmp(ptr noundef %35, ptr noundef nonnull dereferenceable(7) @.str.5)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = call i32 @strcmp(ptr noundef %35, ptr noundef nonnull dereferenceable(5) @.str.6)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %151

47:                                               ; preds = %41, %38, %34, %31
  %48 = phi i32 [ 2, %31 ], [ 514, %34 ], [ 2, %38 ], [ 34, %41 ]
  %49 = getelementptr inbounds %struct.aspeed_wdt, ptr %5, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, ptr %49, align 4
  br label %52

52:                                               ; preds = %47, %44
  %53 = call ptr @of_find_property(ptr noundef %21, ptr noundef nonnull @.str.7, ptr noundef null) #7
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.aspeed_wdt, ptr %5, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = or i32 %57, 8
  store i32 %58, ptr %56, align 4
  br label %59

59:                                               ; preds = %55, %52
  %60 = call ptr @of_find_property(ptr noundef %21, ptr noundef nonnull @.str.8, ptr noundef null) #7
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.aspeed_wdt, ptr %5, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = or i32 %64, 128
  store i32 %65, ptr %63, align 4
  br label %66

66:                                               ; preds = %62, %59
  %67 = load ptr, ptr %9, align 4
  %68 = getelementptr i8, ptr %67, i32 12
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #7, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %88, label %72

72:                                               ; preds = %66
  %73 = load i32, ptr %18, align 4
  %74 = mul i32 %73, 1000000
  %75 = getelementptr inbounds %struct.aspeed_wdt, ptr %5, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = or i32 %76, 1
  store i32 %77, ptr %75, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  call void @arm_heavy_mb() #7
  %78 = load ptr, ptr %9, align 4
  %79 = getelementptr i8, ptr %78, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 0) #7, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  call void @arm_heavy_mb() #7
  %80 = load ptr, ptr %9, align 4
  %81 = getelementptr i8, ptr %80, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %74) #7, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %82 = load ptr, ptr %9, align 4
  %83 = getelementptr i8, ptr %82, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 18261) #7, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  call void @arm_heavy_mb() #7
  %84 = load i32, ptr %75, align 4
  %85 = load ptr, ptr %9, align 4
  %86 = getelementptr i8, ptr %85, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #7, !srcloc !12
  %87 = getelementptr inbounds %struct.watchdog_device, ptr %5, i32 0, i32 18
  call void @_set_bit(i32 noundef 3, ptr noundef %87) #7
  br label %88

88:                                               ; preds = %72, %66
  %89 = call i32 @of_device_is_compatible(ptr noundef %21, ptr noundef nonnull @.str.9) #7
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = call i32 @of_device_is_compatible(ptr noundef %21, ptr noundef nonnull @.str.10) #7
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %114, label %94

94:                                               ; preds = %91, %88
  %95 = load ptr, ptr %9, align 4
  %96 = getelementptr i8, ptr %95, i32 24
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #7, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %98 = load i32, ptr %26, align 4
  %99 = and i32 %98, %97
  %100 = call ptr @of_find_property(ptr noundef %21, ptr noundef nonnull @.str.11, ptr noundef null) #7
  %101 = icmp eq ptr %100, null
  %102 = select i1 %101, i32 -1979711488, i32 -1476395008
  %103 = or i32 %102, %99
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  call void @arm_heavy_mb() #7
  %104 = load ptr, ptr %9, align 4
  %105 = getelementptr i8, ptr %104, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #7, !srcloc !12
  %106 = load i32, ptr %26, align 4
  %107 = and i32 %106, %103
  %108 = call ptr @of_find_property(ptr noundef %21, ptr noundef nonnull @.str.12, ptr noundef null) #7
  %109 = icmp eq ptr %108, null
  %110 = select i1 %109, i32 1509949440, i32 -1526726656
  %111 = or i32 %110, %107
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  call void @arm_heavy_mb() #7
  %112 = load ptr, ptr %9, align 4
  %113 = getelementptr i8, ptr %112, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #7, !srcloc !12
  br label %114

114:                                              ; preds = %94, %91
  %115 = call i32 @of_property_read_variable_u32_array(ptr noundef %21, ptr noundef nonnull @.str.13, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %117, label %133

117:                                              ; preds = %114
  %118 = load i32, ptr %26, align 4
  %119 = add i32 %118, 1
  %120 = load i32, ptr %3, align 4
  %121 = icmp eq i32 %120, 0
  %122 = icmp ugt i32 %120, %119
  %123 = select i1 %121, i1 true, i1 %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.14, i32 noundef %120) #8
  %125 = load i32, ptr %3, align 4
  %126 = call i32 @llvm.umin.i32(i32 %119, i32 %125)
  %127 = call i32 @llvm.umax.i32(i32 %126, i32 1)
  store i32 %127, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.15, i32 noundef %127) #8
  br label %128

128:                                              ; preds = %124, %117
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  call void @arm_heavy_mb() #7
  %129 = load i32, ptr %3, align 4
  %130 = add i32 %129, -1
  %131 = load ptr, ptr %9, align 4
  %132 = getelementptr i8, ptr %131, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #7, !srcloc !12
  br label %133

133:                                              ; preds = %128, %114
  %134 = load ptr, ptr %9, align 4
  %135 = getelementptr i8, ptr %134, i32 16
  %136 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #7, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %137 = and i32 %136, 2
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.watchdog_device, ptr %5, i32 0, i32 6
  store i32 32, ptr %140, align 4
  %141 = call i32 @of_device_is_compatible(ptr noundef %21, ptr noundef nonnull @.str.1) #7
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = call i32 @of_device_is_compatible(ptr noundef %21, ptr noundef nonnull @.str.9) #7
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %143, %139
  %147 = getelementptr inbounds %struct.watchdog_device, ptr %5, i32 0, i32 2
  store ptr @bswitch_groups, ptr %147, align 4
  br label %148

148:                                              ; preds = %146, %143, %133
  %149 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %149, align 8
  %150 = call i32 @devm_watchdog_register_device(ptr noundef %4, ptr noundef nonnull %5) #7
  br label %151

151:                                              ; preds = %148, %44, %13, %11, %1
  %152 = phi i32 [ %12, %11 ], [ %150, %148 ], [ -12, %1 ], [ -22, %13 ], [ -22, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %152
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_wdt_start(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = mul i32 %3, 1000000
  %5 = getelementptr inbounds %struct.aspeed_wdt, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 1
  store i32 %7, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %8 = getelementptr inbounds %struct.aspeed_wdt, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %4) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 18261) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %15 = load i32, ptr %5, align 4
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #7, !srcloc !12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_wdt_stop(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.aspeed_wdt, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -2
  store i32 %4, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %5 = load i32, ptr %2, align 4
  %6 = getelementptr inbounds %struct.aspeed_wdt, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %5) #7, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_wdt_ping(ptr nocapture noundef readonly %0) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %2 = getelementptr inbounds %struct.aspeed_wdt, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 18261) #7, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_wdt_set_timeout(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = udiv i32 %5, 1000
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %1)
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %8 = mul i32 %7, 1000000
  %9 = getelementptr inbounds %struct.aspeed_wdt, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 18261) #7, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_wdt_restart(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.aspeed_wdt, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -130
  %7 = or i32 %6, 1
  store i32 %7, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %8 = getelementptr inbounds %struct.aspeed_wdt, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 128000) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 18261) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %15 = load i32, ptr %4, align 4
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #7, !srcloc !12
  br label %18

18:                                               ; preds = %18, %3
  %19 = phi i32 [ 1000, %3 ], [ %20, %18 ]
  %20 = add nsw i32 %19, -1
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #7
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %18

23:                                               ; preds = %18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @access_cs0_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.aspeed_wdt, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !25
  %10 = lshr i32 %9, 1
  %11 = and i32 %10, 1
  %12 = xor i32 %11, 1
  %13 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef %12) #7
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @access_cs0_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  call void @arm_heavy_mb() #7
  %14 = getelementptr inbounds %struct.aspeed_wdt, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 1) #7, !srcloc !12
  br label %17

17:                                               ; preds = %13, %10, %4
  %18 = phi i32 [ -22, %4 ], [ %3, %13 ], [ %3, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i64 2393402}
!10 = !{i64 2151336589}
!11 = !{i64 2151327044}
!12 = !{i64 2392984}
!13 = !{i64 2151327359}
!14 = !{i64 2151327690}
!15 = !{i64 2151328019}
!16 = !{i64 2151337105}
!17 = !{i64 2151337320}
!18 = !{i64 2151337663}
!19 = !{i64 2151349256}
!20 = !{i64 2151349738}
!21 = !{i64 2151328444}
!22 = !{i64 2151328783}
!23 = !{i64 2151330797}
!24 = !{i64 2151331150}
!25 = !{i64 2151333028}
!26 = !{i64 2151333408}
