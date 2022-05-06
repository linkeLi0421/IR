; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-at91-core.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-at91-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.at91_twi_pdata = type { i32, i32, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.at91_twi_dev = type { ptr, ptr, %struct.completion, ptr, ptr, i32, ptr, i32, i32, i32, %struct.i2c_adapter, i32, ptr, i8, i8, i8, i32, %struct.at91_twi_dma, i8, %struct.i2c_bus_recovery_info, i8, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.at91_twi_dma = type { ptr, ptr, [2 x %struct.scatterlist], ptr, i32, i8, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@atmel_twi_dt_ids = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91rm9200_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9260_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9261-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9261_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g20-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9g20_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g10-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9g10_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9x5_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d4_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d2_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sam9x60_config }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author252 = internal constant [42 x i8] c"author=Nikolaus Voss <n.voss@weinmann.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [44 x i8] c"description=I2C (TWI) driver for Atmel AT91\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias255 = internal constant [24 x i8] c"alias=platform:at91_i2c\00", section ".modinfo", align 1
@at91rm9200_config = internal global %struct.at91_twi_pdata { i32 5, i32 3, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 4
@at91sam9260_config = internal global %struct.at91_twi_pdata { i32 7, i32 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 4
@at91sam9261_config = internal global %struct.at91_twi_pdata { i32 5, i32 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 4
@at91sam9g20_config = internal global %struct.at91_twi_pdata { i32 7, i32 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 4
@at91sam9g10_config = internal global %struct.at91_twi_pdata { i32 7, i32 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 4
@at91sam9x5_config = internal global %struct.at91_twi_pdata { i32 7, i32 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 4
@sama5d4_config = internal global %struct.at91_twi_pdata { i32 7, i32 4, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0 }, align 4
@sama5d2_config = internal global %struct.at91_twi_pdata { i32 7, i32 3, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, align 4
@sam9x60_config = internal global %struct.at91_twi_pdata { i32 7, i32 3, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1 }, align 4
@at91_twi_driver = internal global %struct.platform_driver { ptr @at91_twi_probe, ptr @at91_twi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_twi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91_twi_pm, ptr null, ptr null }, ptr @at91_twi_devtypes, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [9 x i8] c"at91_i2c\00", align 1
@at91_twi_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91_twi_suspend_noirq, ptr @at91_twi_resume_noirq, ptr null, ptr null, ptr null, ptr null, ptr @at91_twi_runtime_suspend, ptr @at91_twi_runtime_resume, ptr null }, align 4
@at91_twi_devtypes = internal constant [6 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"i2c-at91rm9200\00\00\00\00\00\00", i32 ptrtoint (ptr @at91rm9200_config to i32) }, %struct.platform_device_id { [20 x i8] c"i2c-at91sam9261\00\00\00\00\00", i32 ptrtoint (ptr @at91sam9261_config to i32) }, %struct.platform_device_id { [20 x i8] c"i2c-at91sam9260\00\00\00\00\00", i32 ptrtoint (ptr @at91sam9260_config to i32) }, %struct.platform_device_id { [20 x i8] c"i2c-at91sam9g20\00\00\00\00\00", i32 ptrtoint (ptr @at91sam9g20_config to i32) }, %struct.platform_device_id { [20 x i8] c"i2c-at91sam9g10\00\00\00\00\00", i32 ptrtoint (ptr @at91sam9g10_config to i32) }, %struct.platform_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no clock defined\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"AT91\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"AT91 i2c bus driver (hw version: %#x).\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias255, ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license254], section "llvm.metadata"

@__mod_of__atmel_twi_dt_ids_device_table = dso_local alias [10 x %struct.of_device_id], ptr @atmel_twi_dt_ids

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @at91_twi_read(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @at91_twi_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %2) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @at91_disable_twi_interrupts(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 2327) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @at91_twi_irq_save(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 44
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  %6 = and i32 %5, 2327
  %7 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 8
  store i32 %6, ptr %7, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 2327) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @at91_twi_irq_restore(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %3) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @at91_init_twi_bus(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 2327) #5, !srcloc !9
  %5 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 128) #5, !srcloc !9
  %6 = getelementptr inbounds %struct.at91_twi_dev, ptr %0, i32 0, i32 18
  %7 = load i8, ptr %6, align 4, !range !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @at91_init_twi_bus_master(ptr noundef %0) #5
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @at91_init_twi_bus_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @at91_twi_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #2 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91_twi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_twi_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 856, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %100, label %5

5:                                                ; preds = %1
  store ptr %2, ptr %3, align 8
  %6 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %100, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %6, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @of_match_node(ptr noundef nonnull @atmel_twi_dt_ids, ptr noundef nonnull %11) #5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 12
  store ptr null, ptr %17, align 4
  br label %100

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.of_device_id, ptr %14, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  br label %27

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.platform_device_id, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = inttoptr i32 %25 to ptr
  br label %27

27:                                               ; preds = %21, %18
  %28 = phi ptr [ %26, %21 ], [ %20, %18 ]
  %29 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 12
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %100, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %6) #5
  %33 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = ptrtoint ptr %32 to i32
  br label %100

37:                                               ; preds = %31
  %38 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %39 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 7
  store i32 %38, ptr %39, align 8
  %40 = icmp slt i32 %38, 0
  br i1 %40, label %100, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %42, align 8
  %43 = load ptr, ptr %3, align 8
  %44 = tail call ptr @devm_clk_get(ptr noundef %43, ptr noundef null) #5
  %45 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 3
  store ptr %44, ptr %45, align 8
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.1) #6
  br label %100

49:                                               ; preds = %41
  %50 = tail call i32 @clk_prepare(ptr noundef %44) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = tail call i32 @clk_enable(ptr noundef %44) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call void @clk_unprepare(ptr noundef %44) #5
  br label %56

56:                                               ; preds = %55, %52, %49
  %57 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 10
  %58 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 10, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %58, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i32 5, i1 false)
  %59 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 10, i32 9, i32 8
  store ptr %3, ptr %59, align 8
  store ptr @__this_module, ptr %57, align 8
  %60 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 10, i32 1
  store i32 256, ptr %60, align 4
  %61 = load ptr, ptr %3, align 8
  %62 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 10, i32 9, i32 1
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 10, i32 11
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 10, i32 7
  store i32 10, ptr %66, align 4
  %67 = load ptr, ptr %10, align 8
  %68 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 10, i32 9, i32 25
  store ptr %67, ptr %68, align 8
  %69 = tail call zeroext i1 @i2c_detect_slave_mode(ptr noundef %2) #5
  %70 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 18
  %71 = zext i1 %69 to i8
  store i8 %71, ptr %70, align 4
  br i1 %69, label %100, label %72

72:                                               ; preds = %56
  %73 = tail call i32 @at91_twi_probe_master(ptr noundef %0, i32 noundef %9, ptr noundef nonnull %3) #5
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %72
  %76 = load ptr, ptr %33, align 4
  %77 = getelementptr i8, ptr %76, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 2327) #5, !srcloc !9
  %78 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 128) #5, !srcloc !9
  %79 = load i8, ptr %70, align 4, !range !10
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  tail call void @at91_init_twi_bus_master(ptr noundef nonnull %3) #5
  br label %82

82:                                               ; preds = %81, %75
  %83 = load ptr, ptr %3, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %83, i32 noundef 2000) #5
  %84 = load ptr, ptr %3, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %84, i1 noundef zeroext true) #5
  %85 = load ptr, ptr %3, align 8
  %86 = tail call i32 @__pm_runtime_set_status(ptr noundef %85, i32 noundef 0) #5
  %87 = load ptr, ptr %3, align 8
  tail call void @pm_runtime_enable(ptr noundef %87) #5
  %88 = tail call i32 @i2c_add_numbered_adapter(ptr noundef %57) #5
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %82
  %91 = load ptr, ptr %45, align 8
  tail call void @clk_disable(ptr noundef %91) #5
  tail call void @clk_unprepare(ptr noundef %91) #5
  %92 = load ptr, ptr %3, align 8
  tail call void @__pm_runtime_disable(ptr noundef %92, i1 noundef zeroext true) #5
  %93 = load ptr, ptr %3, align 8
  %94 = tail call i32 @__pm_runtime_set_status(ptr noundef %93, i32 noundef 2) #5
  br label %100

95:                                               ; preds = %82
  %96 = load ptr, ptr %3, align 8
  %97 = load ptr, ptr %33, align 4
  %98 = getelementptr i8, ptr %97, i32 252
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #5, !srcloc !8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %96, ptr noundef nonnull @.str.3, i32 noundef %99) #6
  br label %100

100:                                              ; preds = %95, %90, %72, %56, %47, %37, %35, %27, %16, %5, %1
  %101 = phi i32 [ %36, %35 ], [ -19, %47 ], [ %88, %90 ], [ 0, %95 ], [ -12, %1 ], [ -19, %5 ], [ -19, %27 ], [ %38, %37 ], [ %73, %72 ], [ -19, %16 ], [ -22, %56 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_twi_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 10
  tail call void @i2c_del_adapter(ptr noundef %4) #5
  %5 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  tail call void @clk_disable(ptr noundef %6) #5
  tail call void @clk_unprepare(ptr noundef %6) #5
  %7 = load ptr, ptr %3, align 8
  tail call void @__pm_runtime_disable(ptr noundef %7, i1 noundef zeroext true) #5
  %8 = load ptr, ptr %3, align 8
  %9 = tail call i32 @__pm_runtime_set_status(ptr noundef %8, i32 noundef 2) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @i2c_detect_slave_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @at91_twi_probe_master(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_twi_suspend_noirq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.at91_twi_dev, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  %10 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #5
  br label %11

11:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_twi_resume_noirq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #5
  %9 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = tail call i32 @clk_enable(ptr noundef %10) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %10) #5
  br label %29

17:                                               ; preds = %13, %1
  %18 = tail call i64 @ktime_get_mono_fast_ns() #5
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  store volatile i64 %18, ptr %19, align 8
  %20 = tail call i32 @__pm_runtime_suspend(ptr noundef %0, i32 noundef 9) #5
  %21 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 2327) #5, !srcloc !9
  %24 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 128) #5, !srcloc !9
  %25 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 18
  %26 = load i8, ptr %25, align 4, !range !10
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  tail call void @at91_init_twi_bus_master(ptr noundef %3) #5
  br label %29

29:                                               ; preds = %28, %17, %16, %7
  %30 = phi i32 [ 0, %17 ], [ 0, %28 ], [ %14, %16 ], [ %11, %7 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_twi_runtime_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %6 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_twi_runtime_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.at91_twi_dev, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = tail call i32 @clk_enable(ptr noundef %6) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #5
  br label %13

13:                                               ; preds = %12, %9, %1
  %14 = phi i32 [ %7, %1 ], [ %10, %12 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i64 5384699}
!9 = !{i64 5384281}
!10 = !{i8 0, i8 2}
