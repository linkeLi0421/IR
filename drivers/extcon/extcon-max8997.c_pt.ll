; ModuleID = '/llk/IR/drivers/extcon/extcon-max8997.c_pt.bc'
source_filename = "../drivers/extcon/extcon-max8997.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.max8997_muic_irq = type { i32, ptr, i32 }
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
%struct.max8997_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, ptr, %struct.mutex, [11 x i32], [11 x i32], [187 x i8], [12 x i8] }
%struct.max8997_muic_info = type { ptr, ptr, ptr, i32, i32, [2 x i8], i32, %struct.work_struct, %struct.mutex, ptr, i32, %struct.delayed_work, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.max8997_platform_data = type { i32, ptr, i32, i8, [3 x i32], i32, [8 x i32], i8, [8 x i32], i8, [8 x i32], i8, i32, i32, ptr, ptr, ptr }
%struct.max8997_muic_platform_data = type { ptr, i32, i32, i32, i32 }
%struct.max8997_muic_reg_data = type { i8, i8 }

@__UNIQUE_ID_description247 = internal constant [40 x i8] c"description=Maxim MAX8997 Extcon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [43 x i8] c"author=Donggeun Kim <dg77.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias250 = internal constant [28 x i8] c"alias=platform:max8997-muic\00", section ".modinfo", align 1
@max8997_muic_driver = internal global %struct.platform_driver { ptr @max8997_muic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"max8997-muic\00", align 1
@max8997_muic_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"&info->mutex\00", align 1
@muic_irqs = internal unnamed_addr global [11 x %struct.max8997_muic_irq] [%struct.max8997_muic_irq { i32 26, ptr @.str.17, i32 0 }, %struct.max8997_muic_irq { i32 27, ptr @.str.18, i32 0 }, %struct.max8997_muic_irq { i32 28, ptr @.str.19, i32 0 }, %struct.max8997_muic_irq { i32 29, ptr @.str.20, i32 0 }, %struct.max8997_muic_irq { i32 30, ptr @.str.21, i32 0 }, %struct.max8997_muic_irq { i32 31, ptr @.str.22, i32 0 }, %struct.max8997_muic_irq { i32 32, ptr @.str.23, i32 0 }, %struct.max8997_muic_irq { i32 33, ptr @.str.24, i32 0 }, %struct.max8997_muic_irq { i32 34, ptr @.str.25, i32 0 }, %struct.max8997_muic_irq { i32 14, ptr @.str.26, i32 0 }, %struct.max8997_muic_irq { i32 15, ptr @.str.27, i32 0 }], align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"failed: irq request (IRQ: %d, error :%d)\0A\00", align 1
@max8997_extcon_cable = internal constant [11 x i32] [i32 1, i32 2, i32 5, i32 6, i32 9, i32 10, i32 7, i32 41, i32 60, i32 61, i32 0], align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to allocate memory for extcon\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to register extcon device\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to read MUIC register\0A\00", align 1
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to read muic register\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"misc interrupt: irq %d occurred\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"failed to handle MUIC interrupt\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"cable is %s but it isn't used (type:0x%x)\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"failed to detect %s unknown cable (type:0x%x)\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"failed to update muic register\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"failed to detect %s dock device\0A\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"failed to detect %s unknown chg cable (type:0x%x)\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"muic-ADCERROR\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"muic-ADCLOW\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"muic-ADC\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"muic-VBVOLT\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"muic-DBCHG\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"muic-DCDTMR\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"muic-CHGDETRUN\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"muic-CHGTYP\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"muic-OVP\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"pmic-CHGINS\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"pmic-CHGRM\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.29 = private unnamed_addr constant [32 x i8] c"failed to update MUIC register\0A\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"CONTROL1 : 0x%02x, CONTROL2 : 0x%02x, state : %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"failed to set ADC debounce time\0A\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"failed to detect cable type\0A\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"Cannot detect ADC cable\0A\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"Cannot detect charger cable\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias250, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8997_muic_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8997_muic_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_muic_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 124, i32 noundef 3520) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %133, label %12

12:                                               ; preds = %1
  store ptr %2, ptr %10, align 4
  %13 = getelementptr inbounds %struct.max8997_dev, ptr %6, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %16, align 8
  %17 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull @max8997_muic_probe.__key) #5
  %18 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 7
  %19 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 7, i32 1
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 7, i32 1, i32 1
  %21 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 7, i32 2
  store i32 -32, ptr %18, align 4
  store volatile ptr %19, ptr %19, align 4
  store ptr %19, ptr %20, align 4
  store ptr @max8997_muic_irq_work, ptr %21, align 4
  %22 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @devm_work_drop, ptr noundef %18) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %133

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.max8997_dev, ptr %6, i32 0, i32 11
  br label %29

26:                                               ; preds = %36
  %27 = add nuw nsw i32 %30, 1
  %28 = icmp eq i32 %27, 11
  br i1 %28, label %44, label %29

29:                                               ; preds = %26, %24
  %30 = phi i32 [ 0, %24 ], [ %27, %26 ]
  %31 = getelementptr [11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 %30
  %32 = load ptr, ptr %25, align 4
  %33 = load i32, ptr %31, align 4
  %34 = tail call i32 @irq_create_mapping_affinity(ptr noundef %32, i32 noundef %33, ptr noundef null) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %133, label %36

36:                                               ; preds = %29
  %37 = getelementptr [11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 %30, i32 2
  store i32 %34, ptr %37, align 4
  %38 = getelementptr [11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 %30, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %34, ptr noundef null, ptr noundef nonnull @max8997_muic_irq_handler, i32 noundef 16384, ptr noundef %39, ptr noundef nonnull %10) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %26, label %42

42:                                               ; preds = %36
  %43 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %43, i32 noundef %40) #6
  br label %133

44:                                               ; preds = %26
  %45 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %2, ptr noundef nonnull @max8997_extcon_cable) #5
  %46 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 2
  store ptr %45, ptr %46, align 4
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #6
  %49 = load ptr, ptr %46, align 4
  %50 = ptrtoint ptr %49 to i32
  br label %133

51:                                               ; preds = %44
  %52 = tail call i32 @devm_extcon_dev_register(ptr noundef %2, ptr noundef %45) #5
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #6
  br label %133

55:                                               ; preds = %51
  %56 = icmp eq ptr %9, null
  br i1 %56, label %93, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 14
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %93, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.max8997_muic_platform_data, ptr %59, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %65, %61
  %66 = phi i32 [ %74, %65 ], [ 0, %61 ]
  %67 = load ptr, ptr %15, align 4
  %68 = load ptr, ptr %59, align 4
  %69 = getelementptr %struct.max8997_muic_reg_data, ptr %68, i32 %66
  %70 = load i8, ptr %69, align 1
  %71 = getelementptr %struct.max8997_muic_reg_data, ptr %68, i32 %66, i32 1
  %72 = load i8, ptr %71, align 1
  %73 = tail call i32 @max8997_write_reg(ptr noundef %67, i8 noundef zeroext %70, i8 noundef zeroext %72) #5
  %74 = add nuw nsw i32 %66, 1
  %75 = load i32, ptr %62, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %65, label %77

77:                                               ; preds = %65, %61
  %78 = getelementptr inbounds %struct.max8997_muic_platform_data, ptr %59, i32 0, i32 4
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 27, i32 %79
  %82 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 13
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.max8997_muic_platform_data, ptr %59, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 9, i32 %84
  %87 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 12
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.max8997_muic_platform_data, ptr %59, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %77
  %92 = tail call i32 @__msecs_to_jiffies(i32 noundef %89) #5
  br label %96

93:                                               ; preds = %57, %55
  %94 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 13
  store i32 27, ptr %94, align 4
  %95 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 12
  store i32 9, ptr %95, align 4
  br label %96

96:                                               ; preds = %93, %91, %77
  %97 = phi i32 [ 2000, %93 ], [ %92, %91 ], [ 2000, %77 ]
  %98 = load ptr, ptr %15, align 4
  %99 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 5
  %100 = tail call i32 @max8997_bulk_read(ptr noundef %98, i8 noundef zeroext 4, i32 noundef 2, ptr noundef %99) #5
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %96
  %103 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.5) #6
  br label %133

104:                                              ; preds = %96
  %105 = load i8, ptr %99, align 4
  %106 = and i8 %105, 31
  %107 = icmp eq i8 %106, 31
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 3
  store i32 31, ptr %109, align 4
  br label %119

110:                                              ; preds = %104
  %111 = zext i8 %106 to i32
  %112 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 3
  store i32 %111, ptr %112, align 4
  %113 = icmp eq i8 %106, 28
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 13
  %116 = load i32, ptr %115, align 4
  %117 = trunc i32 %116 to i8
  %118 = tail call fastcc i32 @max8997_muic_set_path(ptr noundef nonnull %10, i8 noundef zeroext %117, i1 noundef zeroext true)
  br label %119

119:                                              ; preds = %114, %110, %108
  %120 = load ptr, ptr %15, align 4
  %121 = tail call i32 @max8997_update_reg(ptr noundef %120, i8 noundef zeroext 14, i8 noundef zeroext 32, i8 noundef zeroext 48) #5
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.31) #6
  br label %125

125:                                              ; preds = %123, %119
  %126 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 11
  store i32 -32, ptr %126, align 4
  %127 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 11, i32 0, i32 1
  store volatile ptr %127, ptr %127, align 4
  %128 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 11, i32 0, i32 1, i32 1
  store ptr %127, ptr %128, align 4
  %129 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 11, i32 0, i32 2
  store ptr @max8997_muic_detect_cable_wq, ptr %129, align 4
  %130 = getelementptr inbounds %struct.max8997_muic_info, ptr %10, i32 0, i32 11, i32 1
  tail call void @init_timer_key(ptr noundef %130, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #5
  %131 = load ptr, ptr @system_power_efficient_wq, align 4
  %132 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %131, ptr noundef %126, i32 noundef %97) #5
  br label %133

133:                                              ; preds = %125, %102, %54, %48, %42, %29, %12, %1
  %134 = phi i32 [ %50, %48 ], [ %52, %54 ], [ %100, %102 ], [ 0, %125 ], [ -12, %1 ], [ %22, %12 ], [ %40, %42 ], [ -22, %29 ]
  ret i32 %134
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max8997_muic_irq_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -28
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %74, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 16
  tail call void @mutex_lock(ptr noundef %7) #5
  %8 = getelementptr i8, ptr %0, i32 -4
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 0, i32 2), align 4
  %11 = icmp eq i32 %9, %10
  %12 = load i32, ptr @muic_irqs, align 4
  %13 = select i1 %11, i32 %12, i32 0
  %14 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 1, i32 2), align 4
  %15 = icmp eq i32 %9, %14
  %16 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 1), align 4
  %17 = select i1 %15, i32 %16, i32 %13
  %18 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 2, i32 2), align 4
  %19 = icmp eq i32 %9, %18
  %20 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 2), align 4
  %21 = select i1 %19, i32 %20, i32 %17
  %22 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 3, i32 2), align 4
  %23 = icmp eq i32 %9, %22
  %24 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 3), align 4
  %25 = select i1 %23, i32 %24, i32 %21
  %26 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 4, i32 2), align 4
  %27 = icmp eq i32 %9, %26
  %28 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 4), align 4
  %29 = select i1 %27, i32 %28, i32 %25
  %30 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 5, i32 2), align 4
  %31 = icmp eq i32 %9, %30
  %32 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 5), align 4
  %33 = select i1 %31, i32 %32, i32 %29
  %34 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 6, i32 2), align 4
  %35 = icmp eq i32 %9, %34
  %36 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 6), align 4
  %37 = select i1 %35, i32 %36, i32 %33
  %38 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 7, i32 2), align 4
  %39 = icmp eq i32 %9, %38
  %40 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 7), align 4
  %41 = select i1 %39, i32 %40, i32 %37
  %42 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 8, i32 2), align 4
  %43 = icmp eq i32 %9, %42
  %44 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 8), align 4
  %45 = select i1 %43, i32 %44, i32 %41
  %46 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 9, i32 2), align 4
  %47 = icmp eq i32 %9, %46
  %48 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 9), align 4
  %49 = select i1 %47, i32 %48, i32 %45
  %50 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 10, i32 2), align 4
  %51 = icmp eq i32 %9, %50
  %52 = load i32, ptr getelementptr inbounds ([11 x %struct.max8997_muic_irq], ptr @muic_irqs, i32 0, i32 10), align 4
  %53 = select i1 %51, i32 %52, i32 %49
  %54 = getelementptr i8, ptr %0, i32 -24
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %0, i32 -8
  %57 = tail call i32 @max8997_bulk_read(ptr noundef %55, i8 noundef zeroext 4, i32 noundef 2, ptr noundef %56) #5
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %6
  %60 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.6) #6
  br label %73

61:                                               ; preds = %6
  switch i32 %53, label %66 [
    i32 26, label %62
    i32 27, label %62
    i32 28, label %62
    i32 29, label %64
    i32 30, label %64
    i32 31, label %64
    i32 32, label %64
    i32 33, label %64
    i32 14, label %64
    i32 15, label %64
    i32 34, label %73
  ]

62:                                               ; preds = %61, %61, %61
  %63 = tail call fastcc i32 @max8997_muic_adc_handler(ptr noundef %2)
  br label %68

64:                                               ; preds = %61, %61, %61, %61, %61, %61, %61
  %65 = tail call fastcc i32 @max8997_muic_chg_handler(ptr noundef %2)
  br label %68

66:                                               ; preds = %61
  %67 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.7, i32 noundef %53) #6
  br label %73

68:                                               ; preds = %64, %62
  %69 = phi i32 [ %65, %64 ], [ %63, %62 ]
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.8) #6
  br label %73

73:                                               ; preds = %71, %68, %66, %61, %59
  tail call void @mutex_unlock(ptr noundef %7) #5
  br label %74

74:                                               ; preds = %73, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_muic_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.max8997_muic_info, ptr %1, i32 0, i32 6
  store i32 %0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.max8997_muic_info, ptr %1, i32 0, i32 7
  %5 = load ptr, ptr @system_wq, align 4
  %6 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %4) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_write_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_bulk_read(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max8997_muic_set_path(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = select i1 %2, i8 %1, i8 0
  %5 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @max8997_update_reg(ptr noundef %6, i8 noundef zeroext 12, i8 noundef zeroext %4, i8 noundef zeroext 63) #5
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.29) #6
  br label %22

11:                                               ; preds = %3
  %12 = select i1 %2, i8 4, i8 1
  %13 = load ptr, ptr %5, align 4
  %14 = tail call i32 @max8997_update_reg(ptr noundef %13, i8 noundef zeroext 13, i8 noundef zeroext %12, i8 noundef zeroext 5) #5
  %15 = icmp slt i32 %14, 0
  %16 = load ptr, ptr %0, align 4
  br i1 %15, label %17, label %18

17:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.29) #6
  br label %22

18:                                               ; preds = %11
  %19 = zext i8 %4 to i32
  %20 = zext i8 %12 to i32
  %21 = select i1 %2, ptr @.str.10, ptr @.str.11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.30, i32 noundef %19, i32 noundef %20, ptr noundef nonnull %21) #6
  br label %22

22:                                               ; preds = %18, %17, %9
  %23 = phi i32 [ %7, %9 ], [ %14, %17 ], [ 0, %18 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max8997_muic_detect_cable_wq(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -72
  %3 = getelementptr i8, ptr %0, i32 -28
  tail call void @mutex_lock(ptr noundef %3) #5
  %4 = getelementptr i8, ptr %0, i32 -68
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -52
  %7 = tail call i32 @max8997_bulk_read(ptr noundef %5, i8 noundef zeroext 4, i32 noundef 2, ptr noundef %6) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load i8, ptr %6, align 4
  %11 = and i8 %10, 31
  %12 = icmp eq i8 %11, 31
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 -60
  store i32 31, ptr %14, align 4
  br label %20

15:                                               ; preds = %9
  %16 = zext i8 %11 to i32
  %17 = getelementptr i8, ptr %0, i32 -60
  store i32 %16, ptr %17, align 4
  %18 = tail call fastcc i32 @max8997_muic_adc_handler(ptr noundef %2) #5
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %15, %13
  %21 = getelementptr i8, ptr %0, i32 -51
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 7
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %0, i32 -56
  store i32 0, ptr %26, align 4
  br label %35

27:                                               ; preds = %20
  %28 = zext i8 %23 to i32
  %29 = getelementptr i8, ptr %0, i32 -56
  store i32 %28, ptr %29, align 4
  %30 = tail call fastcc i32 @max8997_muic_chg_handler(ptr noundef %2) #5
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %15
  %33 = phi ptr [ @.str.34, %15 ], [ @.str.35, %27 ]
  %34 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull %33) #6
  tail call void @mutex_unlock(ptr noundef %3) #5
  br label %39

35:                                               ; preds = %27, %25
  tail call void @mutex_unlock(ptr noundef %3) #5
  br label %41

36:                                               ; preds = %1
  %37 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.5) #6
  tail call void @mutex_unlock(ptr noundef %3) #5
  %38 = icmp slt i32 %7, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36, %32
  %40 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.33) #6
  br label %41

41:                                               ; preds = %39, %36, %35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max8997_muic_adc_handler(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 31
  %5 = icmp eq i8 %4, 31
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  store i32 31, ptr %7, align 4
  br label %12

9:                                                ; preds = %1
  %10 = zext i8 %4 to i32
  %11 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 3
  store i32 %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i32 [ %8, %6 ], [ %10, %9 ]
  %14 = xor i1 %5, true
  switch i32 %13, label %74 [
    i32 0, label %15
    i32 1, label %27
    i32 24, label %31
    i32 25, label %31
    i32 26, label %45
    i32 29, label %45
    i32 28, label %59
    i32 2, label %71
    i32 3, label %71
    i32 4, label %71
    i32 5, label %71
    i32 6, label %71
    i32 7, label %71
    i32 8, label %71
    i32 9, label %71
    i32 10, label %71
    i32 11, label %71
    i32 12, label %71
    i32 13, label %71
    i32 14, label %71
    i32 15, label %71
    i32 16, label %71
    i32 17, label %71
    i32 18, label %71
    i32 19, label %71
    i32 20, label %71
    i32 21, label %71
    i32 22, label %71
    i32 23, label %71
    i32 27, label %71
    i32 30, label %71
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = trunc i32 %17 to i8
  %19 = tail call fastcc i32 @max8997_muic_set_path(ptr noundef %0, i8 noundef zeroext %18, i1 noundef zeroext %14) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.13) #6
  br label %78

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @extcon_set_state_sync(ptr noundef %25, i32 noundef 2, i1 noundef zeroext %14) #5
  br label %77

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @extcon_set_state_sync(ptr noundef %29, i32 noundef 41, i1 noundef zeroext %14) #5
  br label %77

31:                                               ; preds = %12, %12
  %32 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 12
  %33 = load i32, ptr %32, align 4
  %34 = trunc i32 %33 to i8
  %35 = tail call fastcc i32 @max8997_muic_set_path(ptr noundef %0, i8 noundef zeroext %34, i1 noundef zeroext %14) #5
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.13) #6
  br label %78

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @extcon_set_state_sync(ptr noundef %41, i32 noundef 1, i1 noundef zeroext %14) #5
  %43 = load ptr, ptr %40, align 4
  %44 = tail call i32 @extcon_set_state_sync(ptr noundef %43, i32 noundef 5, i1 noundef zeroext %14) #5
  br label %77

45:                                               ; preds = %12, %12
  %46 = tail call fastcc i32 @max8997_muic_set_path(ptr noundef %0, i8 noundef zeroext 18, i1 noundef zeroext %14) #5
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  switch i32 %13, label %53 [
    i32 26, label %49
    i32 29, label %49
  ]

49:                                               ; preds = %48, %48
  %50 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @extcon_set_state_sync(ptr noundef %51, i32 noundef 60, i1 noundef zeroext %14) #5
  br label %77

53:                                               ; preds = %48
  %54 = load ptr, ptr %0, align 4
  %55 = select i1 %5, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.15, ptr noundef nonnull %55) #6
  br label %78

56:                                               ; preds = %45
  %57 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.13) #6
  %58 = icmp slt i32 %46, 0
  br i1 %58, label %78, label %77

59:                                               ; preds = %12
  %60 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 13
  %61 = load i32, ptr %60, align 4
  %62 = trunc i32 %61 to i8
  %63 = tail call fastcc i32 @max8997_muic_set_path(ptr noundef %0, i8 noundef zeroext %62, i1 noundef zeroext %14) #5
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.13) #6
  br label %77

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 @extcon_set_state_sync(ptr noundef %69, i32 noundef 61, i1 noundef zeroext %14) #5
  br label %77

71:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %72 = load ptr, ptr %0, align 4
  %73 = select i1 %5, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %72, ptr noundef nonnull @.str.9, ptr noundef nonnull %73, i32 noundef %13) #6
  br label %78

74:                                               ; preds = %12
  %75 = load ptr, ptr %0, align 4
  %76 = select i1 %5, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.12, ptr noundef nonnull %76, i32 noundef %13) #6
  br label %78

77:                                               ; preds = %67, %65, %56, %49, %39, %27, %23
  br label %78

78:                                               ; preds = %77, %74, %71, %56, %53, %37, %21
  %79 = phi i32 [ -22, %74 ], [ -11, %71 ], [ 0, %77 ], [ %46, %56 ], [ %19, %21 ], [ %35, %37 ], [ -22, %53 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max8997_muic_chg_handler(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr %struct.max8997_muic_info, ptr %0, i32 0, i32 5, i32 1
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 7
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  store i32 0, ptr %7, align 4
  br label %12

9:                                                ; preds = %1
  %10 = zext i8 %4 to i32
  %11 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 4
  store i32 %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i32 [ %8, %6 ], [ %10, %9 ]
  %14 = xor i1 %5, true
  switch i32 %13, label %50 [
    i32 0, label %53
    i32 1, label %15
    i32 2, label %34
    i32 3, label %38
    i32 4, label %42
    i32 5, label %46
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 5
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 31
  %19 = icmp eq i8 %18, 31
  br i1 %19, label %20, label %53

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i8
  %24 = tail call fastcc i32 @max8997_muic_set_path(ptr noundef %0, i8 noundef zeroext %23, i1 noundef zeroext %14) #5
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.13) #6
  br label %53

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @extcon_set_state_sync(ptr noundef %30, i32 noundef 1, i1 noundef zeroext %14) #5
  %32 = load ptr, ptr %29, align 4
  %33 = tail call i32 @extcon_set_state_sync(ptr noundef %32, i32 noundef 5, i1 noundef zeroext %14) #5
  br label %53

34:                                               ; preds = %12
  %35 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @extcon_set_state_sync(ptr noundef %36, i32 noundef 7, i1 noundef zeroext %14) #5
  br label %53

38:                                               ; preds = %12
  %39 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @extcon_set_state_sync(ptr noundef %40, i32 noundef 6, i1 noundef zeroext %14) #5
  br label %53

42:                                               ; preds = %12
  %43 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @extcon_set_state_sync(ptr noundef %44, i32 noundef 10, i1 noundef zeroext %14) #5
  br label %53

46:                                               ; preds = %12
  %47 = getelementptr inbounds %struct.max8997_muic_info, ptr %0, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @extcon_set_state_sync(ptr noundef %48, i32 noundef 9, i1 noundef zeroext %14) #5
  br label %53

50:                                               ; preds = %12
  %51 = load ptr, ptr %0, align 4
  %52 = select i1 %5, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.16, ptr noundef nonnull %52, i32 noundef %13) #6
  br label %53

53:                                               ; preds = %50, %46, %42, %38, %34, %28, %26, %15, %12
  %54 = phi i32 [ -22, %50 ], [ 0, %15 ], [ 0, %46 ], [ 0, %42 ], [ 0, %38 ], [ 0, %34 ], [ %13, %12 ], [ 0, %26 ], [ 0, %28 ]
  ret i32 %54
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_work_drop(ptr noundef %0) #4 {
  %2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_update_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
