; ModuleID = '/llk/IR/drivers/extcon/extcon-max14577.c_pt.bc'
source_filename = "../drivers/extcon/extcon-max14577.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.lock_class_key = type {}
%struct.max14577_muic_irq = type { i32, ptr, i32 }
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
%struct.max14577_muic_info = type { ptr, ptr, ptr, i32, i32, [2 x i8], ptr, i32, i8, i8, %struct.work_struct, %struct.mutex, %struct.delayed_work, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.max14577 = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32 }

@max14577_muic_id = internal constant [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max14577-muic\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"max77836-muic\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], align 4
@of_max14577_muic_dt_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max14577-muic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77836-muic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description247 = internal constant [44 x i8] c"description=Maxim 14577/77836 Extcon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [83 x i8] c"author=Chanwoo Choi <cw00.choi@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias250 = internal constant [31 x i8] c"alias=platform:extcon-max14577\00", section ".modinfo", align 1
@max14577_muic_driver = internal global %struct.platform_driver { ptr @max14577_muic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_max14577_muic_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max14577_muic_id, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [14 x i8] c"max14577-muic\00", align 1
@max14577_muic_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"&info->mutex\00", align 1
@max77836_muic_irqs = internal global [10 x %struct.max14577_muic_irq] [%struct.max14577_muic_irq { i32 0, ptr @.str.16, i32 0 }, %struct.max14577_muic_irq { i32 1, ptr @.str.17, i32 0 }, %struct.max14577_muic_irq { i32 2, ptr @.str.18, i32 0 }, %struct.max14577_muic_irq { i32 3, ptr @.str.19, i32 0 }, %struct.max14577_muic_irq { i32 4, ptr @.str.20, i32 0 }, %struct.max14577_muic_irq { i32 5, ptr @.str.21, i32 0 }, %struct.max14577_muic_irq { i32 6, ptr @.str.22, i32 0 }, %struct.max14577_muic_irq { i32 7, ptr @.str.23, i32 0 }, %struct.max14577_muic_irq { i32 8, ptr @.str.24, i32 0 }, %struct.max14577_muic_irq { i32 9, ptr @.str.25, i32 0 }], align 4
@max14577_muic_irqs = internal global [8 x %struct.max14577_muic_irq] [%struct.max14577_muic_irq { i32 0, ptr @.str.16, i32 0 }, %struct.max14577_muic_irq { i32 1, ptr @.str.17, i32 0 }, %struct.max14577_muic_irq { i32 2, ptr @.str.18, i32 0 }, %struct.max14577_muic_irq { i32 4, ptr @.str.20, i32 0 }, %struct.max14577_muic_irq { i32 5, ptr @.str.21, i32 0 }, %struct.max14577_muic_irq { i32 6, ptr @.str.22, i32 0 }, %struct.max14577_muic_irq { i32 7, ptr @.str.23, i32 0 }, %struct.max14577_muic_irq { i32 8, ptr @.str.24, i32 0 }], align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"failed: irq request (IRQ: %d, error :%d)\0A\00", align 1
@max14577_extcon_cable = internal constant [8 x i32] [i32 1, i32 5, i32 6, i32 9, i32 10, i32 7, i32 61, i32 0], align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to allocate memory for extcon\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to register extcon device\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Cannot read STATUS registers\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to read revision number\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"device ID : 0x%x\0A\00", align 1
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to read MUIC register\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"failed to handle MUIC interrupt\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"accessory is %s but it isn't used (adc:0x%x)\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"failed to detect %s accessory (adc:0x%x)\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"failed to detect %s accessory (chg_type:0x%x)\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"muic-ADC\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"muic-ADCLOW\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"muic-ADCError\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"muic-ADC1K\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"muic-CHGTYP\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"muic-CHGDETRUN\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"muic-DCDTMR\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"muic-DBCHG\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"muic-VBVOLT\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"muic-VIDRM\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"muic interrupt: irq %d occurred, skipped\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.28 = private unnamed_addr constant [32 x i8] c"failed to update MUIC register\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"failed to set ADC debounce time\0A\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"Cannot detect accessory\0A\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"Cannot detect charger accessory\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias250, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_platform__max14577_muic_id_device_table = dso_local alias [3 x %struct.platform_device_id], ptr @max14577_muic_id
@__mod_of__of_max14577_muic_dt_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @of_max14577_muic_dt_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max14577_muic_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max14577_muic_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max14577_muic_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 124, i32 noundef 3520) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %110, label %10

10:                                               ; preds = %1
  store ptr %3, ptr %8, align 4
  %11 = getelementptr inbounds %struct.max14577_muic_info, ptr %8, i32 0, i32 1
  store ptr %7, ptr %11, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %12, align 8
  %13 = getelementptr inbounds %struct.max14577_muic_info, ptr %8, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @max14577_muic_probe.__key) #6
  %14 = getelementptr inbounds %struct.max14577_muic_info, ptr %8, i32 0, i32 10
  store i32 -32, ptr %14, align 4
  %15 = getelementptr inbounds %struct.max14577_muic_info, ptr %8, i32 0, i32 10, i32 1
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.max14577_muic_info, ptr %8, i32 0, i32 10, i32 1, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.max14577_muic_info, ptr %8, i32 0, i32 10, i32 2
  store ptr @max14577_muic_irq_work, ptr %17, align 4
  %18 = tail call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @devm_work_drop, ptr noundef %14) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %110

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.max14577, ptr %7, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 2
  %24 = select i1 %23, ptr @max77836_muic_irqs, ptr @max14577_muic_irqs
  %25 = select i1 %23, i32 10, i32 8
  %26 = getelementptr inbounds %struct.max14577_muic_info, ptr %8, i32 0, i32 6
  store ptr %24, ptr %26, align 4
  %27 = getelementptr inbounds %struct.max14577_muic_info, ptr %8, i32 0, i32 7
  store i32 %25, ptr %27, align 4
  %28 = getelementptr inbounds %struct.max14577, ptr %7, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %24, align 4
  %31 = tail call i32 @regmap_irq_get_virq(ptr noundef %29, i32 noundef %30) #6
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %110, label %44

33:                                               ; preds = %44
  %34 = add nuw i32 %47, 1
  %35 = load i32, ptr %27, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load ptr, ptr %26, align 4
  %39 = getelementptr %struct.max14577_muic_irq, ptr %38, i32 %34
  %40 = load ptr, ptr %28, align 4
  %41 = load i32, ptr %39, align 4
  %42 = tail call i32 @regmap_irq_get_virq(ptr noundef %40, i32 noundef %41) #6
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %110, label %44

44:                                               ; preds = %37, %20
  %45 = phi i32 [ %42, %37 ], [ %31, %20 ]
  %46 = phi ptr [ %39, %37 ], [ %24, %20 ]
  %47 = phi i32 [ %34, %37 ], [ 0, %20 ]
  %48 = phi ptr [ %38, %37 ], [ %24, %20 ]
  %49 = getelementptr %struct.max14577_muic_irq, ptr %48, i32 %47, i32 2
  store i32 %45, ptr %49, align 4
  %50 = getelementptr %struct.max14577_muic_irq, ptr %48, i32 %47, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %45, ptr noundef null, ptr noundef nonnull @max14577_muic_irq_handler, i32 noundef 16384, ptr noundef %51, ptr noundef nonnull %8) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %33, label %54

54:                                               ; preds = %44
  %55 = load i32, ptr %46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %55, i32 noundef %52) #7
  br label %110

56:                                               ; preds = %33
  %57 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %3, ptr noundef nonnull @max14577_extcon_cable) #6
  %58 = getelementptr inbounds %struct.max14577_muic_info, ptr %8, i32 0, i32 2
  store ptr %57, ptr %58, align 4
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  %61 = load ptr, ptr %58, align 4
  %62 = ptrtoint ptr %61 to i32
  br label %110

63:                                               ; preds = %56
  %64 = tail call i32 @devm_extcon_dev_register(ptr noundef %3, ptr noundef %57) #6
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #7
  br label %110

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.max14577_muic_info, ptr %8, i32 0, i32 13
  store i32 9, ptr %68, align 4
  %69 = getelementptr inbounds %struct.max14577_muic_info, ptr %8, i32 0, i32 14
  store i32 27, ptr %69, align 4
  %70 = load ptr, ptr %11, align 4
  %71 = getelementptr inbounds %struct.max14577, ptr %70, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.max14577_muic_info, ptr %8, i32 0, i32 5
  %74 = tail call i32 @regmap_bulk_read(ptr noundef %72, i32 noundef 4, ptr noundef %73, i32 noundef 2) #6
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %67
  %77 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.5) #7
  br label %110

78:                                               ; preds = %67
  %79 = load i8, ptr %73, align 4
  %80 = and i8 %79, 31
  %81 = icmp eq i8 %80, 31
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.max14577_muic_info, ptr %8, i32 0, i32 3
  store i32 31, ptr %83, align 4
  br label %92

84:                                               ; preds = %78
  %85 = zext i8 %80 to i32
  %86 = getelementptr inbounds %struct.max14577_muic_info, ptr %8, i32 0, i32 3
  store i32 %85, ptr %86, align 4
  %87 = icmp eq i8 %80, 28
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, ptr %69, align 4
  %90 = trunc i32 %89 to i8
  %91 = tail call fastcc i32 @max14577_muic_set_path(ptr noundef nonnull %8, i8 noundef zeroext %90, i1 noundef zeroext true)
  br label %92

92:                                               ; preds = %88, %84, %82
  %93 = load ptr, ptr %11, align 4
  %94 = getelementptr inbounds %struct.max14577, ptr %93, i32 0, i32 4
  %95 = load ptr, ptr %94, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %96 = call i32 @regmap_read(ptr noundef %95, i32 noundef 0, ptr noundef nonnull %2) #6
  %97 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %98 = icmp slt i32 %96, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #7
  br label %110

100:                                              ; preds = %92
  %101 = load ptr, ptr %8, align 4
  %102 = and i32 %97, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %101, ptr noundef nonnull @.str.7, i32 noundef %102) #7
  call fastcc void @max14577_muic_set_debounce_time(ptr noundef nonnull %8)
  %103 = getelementptr inbounds %struct.max14577_muic_info, ptr %8, i32 0, i32 12
  store i32 -32, ptr %103, align 4
  %104 = getelementptr inbounds %struct.max14577_muic_info, ptr %8, i32 0, i32 12, i32 0, i32 1
  store volatile ptr %104, ptr %104, align 4
  %105 = getelementptr inbounds %struct.max14577_muic_info, ptr %8, i32 0, i32 12, i32 0, i32 1, i32 1
  store ptr %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.max14577_muic_info, ptr %8, i32 0, i32 12, i32 0, i32 2
  store ptr @max14577_muic_detect_cable_wq, ptr %106, align 4
  %107 = getelementptr inbounds %struct.max14577_muic_info, ptr %8, i32 0, i32 12, i32 1
  call void @init_timer_key(ptr noundef %107, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #6
  %108 = load ptr, ptr @system_power_efficient_wq, align 4
  %109 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %108, ptr noundef %103, i32 noundef 1700) #6
  br label %110

110:                                              ; preds = %100, %99, %76, %66, %60, %54, %37, %20, %10, %1
  %111 = phi i32 [ %62, %60 ], [ %64, %66 ], [ %74, %76 ], [ %96, %99 ], [ %96, %100 ], [ -12, %1 ], [ %18, %10 ], [ %52, %54 ], [ -22, %20 ], [ -22, %37 ]
  ret i32 %111
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max14577_muic_irq_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -36
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 16
  tail call void @mutex_lock(ptr noundef %7) #6
  %8 = getelementptr i8, ptr %0, i32 -32
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.max14577, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 -16
  %13 = tail call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef 4, ptr noundef %12, i32 noundef 2) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %6
  %16 = getelementptr i8, ptr %0, i32 -4
  %17 = load i8, ptr %16, align 4, !range !9
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call fastcc i32 @max14577_muic_adc_handler(ptr noundef %2)
  store i8 0, ptr %16, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i32 [ %20, %19 ], [ 0, %15 ]
  %23 = getelementptr i8, ptr %0, i32 -3
  %24 = load i8, ptr %23, align 1, !range !9
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call fastcc i32 @max14577_muic_chg_handler(ptr noundef %2)
  store i8 0, ptr %23, align 1
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi i32 [ %27, %26 ], [ %22, %21 ]
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %6
  %32 = phi ptr [ @.str.8, %6 ], [ @.str.9, %28 ]
  %33 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull %32) #7
  br label %34

34:                                               ; preds = %31, %28
  tail call void @mutex_unlock(ptr noundef %7) #6
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max14577_muic_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.max14577_muic_info, ptr %1, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.max14577_muic_info, ptr %1, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %18, %6
  %10 = phi i32 [ -1, %6 ], [ %19, %18 ]
  %11 = phi i32 [ 0, %6 ], [ %20, %18 ]
  %12 = getelementptr %struct.max14577_muic_irq, ptr %8, i32 %11, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr %struct.max14577_muic_irq, ptr %8, i32 %11
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i32 [ %17, %15 ], [ %10, %9 ]
  %20 = add nuw i32 %11, 1
  %21 = icmp eq i32 %20, %4
  br i1 %21, label %22, label %9

22:                                               ; preds = %18, %2
  %23 = phi i32 [ -1, %2 ], [ %19, %18 ]
  %24 = getelementptr inbounds %struct.max14577_muic_info, ptr %1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.max14577, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  switch i32 %23, label %43 [
    i32 0, label %30
    i32 1, label %30
    i32 2, label %30
    i32 4, label %32
    i32 5, label %32
    i32 6, label %32
    i32 7, label %32
    i32 8, label %32
    i32 3, label %34
    i32 9, label %36
  ]

30:                                               ; preds = %29, %29, %29
  %31 = getelementptr inbounds %struct.max14577_muic_info, ptr %1, i32 0, i32 8
  store i8 1, ptr %31, align 4
  br label %45

32:                                               ; preds = %29, %29, %29, %29, %29
  %33 = getelementptr inbounds %struct.max14577_muic_info, ptr %1, i32 0, i32 9
  store i8 1, ptr %33, align 1
  br label %45

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.max14577_muic_info, ptr %1, i32 0, i32 8
  store i8 1, ptr %35, align 4
  br label %45

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.max14577_muic_info, ptr %1, i32 0, i32 9
  store i8 1, ptr %37, align 1
  br label %45

38:                                               ; preds = %22
  switch i32 %23, label %43 [
    i32 0, label %39
    i32 1, label %39
    i32 2, label %39
    i32 4, label %41
    i32 5, label %41
    i32 6, label %41
    i32 7, label %41
    i32 8, label %41
  ]

39:                                               ; preds = %38, %38, %38
  %40 = getelementptr inbounds %struct.max14577_muic_info, ptr %1, i32 0, i32 8
  store i8 1, ptr %40, align 4
  br label %45

41:                                               ; preds = %38, %38, %38, %38, %38
  %42 = getelementptr inbounds %struct.max14577_muic_info, ptr %1, i32 0, i32 9
  store i8 1, ptr %42, align 1
  br label %45

43:                                               ; preds = %38, %29
  %44 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.26, i32 noundef %23) #7
  br label %49

45:                                               ; preds = %41, %39, %36, %34, %32, %30
  %46 = getelementptr inbounds %struct.max14577_muic_info, ptr %1, i32 0, i32 10
  %47 = load ptr, ptr @system_wq, align 4
  %48 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %47, ptr noundef %46) #6
  br label %49

49:                                               ; preds = %45, %43
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max14577_muic_set_path(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.max14577_muic_info, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.max14577, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 12, i32 noundef 63, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.max14577, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = zext i8 %1 to i32
  %15 = select i1 %2, i32 %14, i32 0
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 12, i32 noundef 63, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.max14577, ptr %19, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = select i1 %2, i32 4, i32 1
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 13, i32 noundef 5, i32 noundef %22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18, %10, %3
  %26 = phi i32 [ %8, %3 ], [ %16, %10 ], [ %23, %18 ]
  %27 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.28) #7
  br label %28

28:                                               ; preds = %25, %18
  %29 = phi i32 [ 0, %18 ], [ %26, %25 ]
  ret i32 %29
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @max14577_muic_set_debounce_time(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.max14577_muic_info, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.max14577, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 14, i32 noundef 48, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %7 = trunc i32 %6 to i8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.29) #7
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max14577_muic_detect_cable_wq(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -72
  %3 = getelementptr i8, ptr %0, i32 -20
  tail call void @mutex_lock(ptr noundef %3) #6
  %4 = getelementptr i8, ptr %0, i32 -68
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.max14577, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -52
  %9 = tail call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 4, ptr noundef %8, i32 noundef 2) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.8) #7
  br label %40

13:                                               ; preds = %1
  %14 = load i8, ptr %8, align 4
  %15 = and i8 %14, 31
  %16 = icmp eq i8 %15, 31
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 -60
  store i32 31, ptr %18, align 4
  br label %26

19:                                               ; preds = %13
  %20 = zext i8 %15 to i32
  %21 = getelementptr i8, ptr %0, i32 -60
  store i32 %20, ptr %21, align 4
  %22 = tail call fastcc i32 @max14577_muic_adc_handler(ptr noundef %2) #6
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.31) #7
  br label %40

26:                                               ; preds = %19, %17
  %27 = getelementptr i8, ptr %0, i32 -51
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 7
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = getelementptr i8, ptr %0, i32 -56
  store i32 0, ptr %32, align 4
  br label %40

33:                                               ; preds = %26
  %34 = zext i8 %29 to i32
  %35 = getelementptr i8, ptr %0, i32 -56
  store i32 %34, ptr %35, align 4
  %36 = tail call fastcc i32 @max14577_muic_chg_handler(ptr noundef %2) #6
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.32) #7
  br label %40

40:                                               ; preds = %38, %33, %31, %24, %11
  tail call void @mutex_unlock(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_work_drop(ptr noundef %0) #5 {
  %2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max14577_muic_adc_handler(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.max14577_muic_info, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 31
  %5 = icmp eq i8 %4, 31
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.max14577_muic_info, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  store i32 31, ptr %7, align 4
  br label %12

9:                                                ; preds = %1
  %10 = zext i8 %4 to i32
  %11 = getelementptr inbounds %struct.max14577_muic_info, ptr %0, i32 0, i32 3
  store i32 %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i32 [ %8, %6 ], [ %10, %9 ]
  %14 = xor i1 %5, true
  switch i32 %13, label %27 [
    i32 30, label %24
    i32 29, label %24
    i32 27, label %24
    i32 0, label %24
    i32 1, label %24
    i32 2, label %24
    i32 3, label %24
    i32 4, label %24
    i32 5, label %24
    i32 6, label %24
    i32 7, label %24
    i32 8, label %24
    i32 9, label %24
    i32 10, label %24
    i32 11, label %24
    i32 12, label %24
    i32 13, label %24
    i32 14, label %24
    i32 15, label %24
    i32 16, label %24
    i32 17, label %24
    i32 18, label %24
    i32 19, label %24
    i32 20, label %24
    i32 21, label %24
    i32 22, label %24
    i32 23, label %24
    i32 26, label %24
    i32 24, label %16
    i32 25, label %16
    i32 28, label %15
  ]

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %15, %12, %12
  %17 = phi i8 [ 27, %15 ], [ 9, %12 ], [ 9, %12 ]
  %18 = tail call fastcc i32 @max14577_muic_set_path(ptr noundef %0, i8 noundef zeroext %17, i1 noundef zeroext %14) #6
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.max14577_muic_info, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @extcon_set_state_sync(ptr noundef %22, i32 noundef 61, i1 noundef zeroext %14) #6
  br label %30

24:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %25 = load ptr, ptr %0, align 4
  %26 = select i1 %5, ptr @.str.12, ptr @.str.11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.10, ptr noundef nonnull %26, i32 noundef %13) #7
  br label %30

27:                                               ; preds = %12
  %28 = load ptr, ptr %0, align 4
  %29 = select i1 %5, ptr @.str.12, ptr @.str.11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.13, ptr noundef nonnull %29, i32 noundef %13) #7
  br label %30

30:                                               ; preds = %27, %24, %20, %16
  %31 = phi i32 [ -22, %27 ], [ -11, %24 ], [ 0, %20 ], [ %18, %16 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max14577_muic_chg_handler(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr %struct.max14577_muic_info, ptr %0, i32 0, i32 5, i32 1
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 7
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.max14577_muic_info, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  store i32 0, ptr %7, align 4
  br label %12

9:                                                ; preds = %1
  %10 = zext i8 %4 to i32
  %11 = getelementptr inbounds %struct.max14577_muic_info, ptr %0, i32 0, i32 4
  store i32 %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i32 [ %8, %6 ], [ %10, %9 ]
  %14 = xor i1 %5, true
  switch i32 %13, label %43 [
    i32 1, label %15
    i32 3, label %27
    i32 2, label %31
    i32 4, label %35
    i32 5, label %39
    i32 0, label %46
    i32 7, label %46
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.max14577_muic_info, ptr %0, i32 0, i32 13
  %17 = load i32, ptr %16, align 4
  %18 = trunc i32 %17 to i8
  %19 = tail call fastcc i32 @max14577_muic_set_path(ptr noundef %0, i8 noundef zeroext %18, i1 noundef zeroext %14)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.max14577_muic_info, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @extcon_set_state_sync(ptr noundef %23, i32 noundef 1, i1 noundef zeroext %14) #6
  %25 = load ptr, ptr %22, align 4
  %26 = tail call i32 @extcon_set_state_sync(ptr noundef %25, i32 noundef 5, i1 noundef zeroext %14) #6
  br label %46

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.max14577_muic_info, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @extcon_set_state_sync(ptr noundef %29, i32 noundef 6, i1 noundef zeroext %14) #6
  br label %46

31:                                               ; preds = %12
  %32 = getelementptr inbounds %struct.max14577_muic_info, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @extcon_set_state_sync(ptr noundef %33, i32 noundef 7, i1 noundef zeroext %14) #6
  br label %46

35:                                               ; preds = %12
  %36 = getelementptr inbounds %struct.max14577_muic_info, ptr %0, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @extcon_set_state_sync(ptr noundef %37, i32 noundef 10, i1 noundef zeroext %14) #6
  br label %46

39:                                               ; preds = %12
  %40 = getelementptr inbounds %struct.max14577_muic_info, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @extcon_set_state_sync(ptr noundef %41, i32 noundef 9, i1 noundef zeroext %14) #6
  br label %46

43:                                               ; preds = %12
  %44 = load ptr, ptr %0, align 4
  %45 = select i1 %5, ptr @.str.12, ptr @.str.11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.15, ptr noundef nonnull %45, i32 noundef %13) #7
  br label %46

46:                                               ; preds = %43, %39, %35, %31, %27, %21, %15, %12, %12
  %47 = phi i32 [ -22, %43 ], [ %19, %15 ], [ 0, %12 ], [ 0, %12 ], [ 0, %39 ], [ 0, %35 ], [ 0, %31 ], [ 0, %27 ], [ 0, %21 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i8 0, i8 2}
