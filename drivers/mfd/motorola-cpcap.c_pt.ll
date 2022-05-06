; ModuleID = '/llk/IR/drivers/mfd/motorola-cpcap.c_pt.bc'
source_filename = "../drivers/mfd/motorola-cpcap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpcap_sense_virq:\09\09\09\09\09"
module asm "\09.asciz \09\22cpcap_sense_virq\22\09\09\09\09\09"
module asm "__kstrtabns_cpcap_sense_virq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.cpcap_ddata = type { ptr, ptr, [3 x ptr], ptr, ptr }
%struct.regmap_irq_chip = type { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i16, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_cpcap_sense_virq = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpcap_sense_virq = external dso_local constant [0 x i8], align 1
@__ksymtab_cpcap_sense_virq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpcap_sense_virq to i32), ptr @__kstrtab_cpcap_sense_virq, ptr @__kstrtabns_cpcap_sense_virq }, section "___ksymtab_gpl+cpcap_sense_virq", align 4
@__initcall__kmod_motorola_cpcap__226_354_cpcap_driver_init6 = internal global ptr @cpcap_driver_init, section ".initcall6.init", align 4
@cpcap_driver = internal global %struct.spi_driver { ptr @cpcap_spi_ids, ptr @cpcap_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpcap_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpcap_pm, ptr null, ptr null } }, align 4
@__exitcall_cpcap_driver_exit = internal global ptr @cpcap_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias227 = internal constant [36 x i8] c"motorola_cpcap.alias=platform:cpcap\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [40 x i8] c"motorola_cpcap.description=CPCAP driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [55 x i8] c"motorola_cpcap.author=Tony Lindgren <tony@atomide.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [47 x i8] c"motorola_cpcap.file=drivers/mfd/motorola-cpcap\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [30 x i8] c"motorola_cpcap.license=GPL v2\00", section ".modinfo", align 1
@cpcap_spi_ids = internal constant [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"cpcap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"6556002\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [11 x i8] c"cpcap-core\00", align 1
@cpcap_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,cpcap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,6556002\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@cpcap_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @cpcap_suspend, ptr @cpcap_resume, ptr @cpcap_suspend, ptr @cpcap_resume, ptr @cpcap_suspend, ptr @cpcap_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@cpcap_regmap_config = internal constant %struct.regmap_config { ptr null, i32 16, i32 4, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 32024, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 32768, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2, i32 2, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to initialize regmap: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to detect CPCAP: %i\0A\00", align 1
@cpcap_mfd_devices = internal constant [13 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.13, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.14, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.15, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.16, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.17, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.18, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.19, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.20, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.21, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.22, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.23, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.24, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.25, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.26, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.27, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.28, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.27, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.29, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.27, i32 2, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.30, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.27, i32 3, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.31, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.27, i32 4, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.32, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.33, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"CPCAP vendor: %s rev: %i.%i (%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ST\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"TI\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Please add old CPCAP revision support as needed\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Could not read vendor\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Could not read revision\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"could not add irq chip %i: %i\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"cpcap-m2\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"cpcap1-4\00", align 1
@cpcap_irq_chip = internal global [3 x { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }] [{ ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.10, i32 0, i32 0, ptr null, i32 0, i32 512, i32 516, i32 0, i32 512, i32 0, i32 0, ptr null, i32 0, i8 40, i8 0, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.10, i32 0, i32 0, ptr null, i32 0, i32 520, i32 524, i32 0, i32 520, i32 0, i32 0, ptr null, i32 0, i8 40, i8 0, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.11, i32 0, i32 0, ptr null, i32 0, i32 0, i32 16, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 40, i8 0, i32 4, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }], align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"cpcap_adc\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"motorola,mapphone-cpcap-adc\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"cpcap_battery\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"motorola,cpcap-battery\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"cpcap-charger\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"motorola,mapphone-cpcap-charger\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"cpcap-regulator\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"motorola,mapphone-cpcap-regulator\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"cpcap-rtc\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"motorola,cpcap-rtc\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"cpcap-pwrbutton\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"motorola,cpcap-pwrbutton\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"cpcap-usb-phy\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"motorola,mapphone-cpcap-usb-phy\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"cpcap-led\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"motorola,cpcap-led-red\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"motorola,cpcap-led-green\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"motorola,cpcap-led-blue\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"motorola,cpcap-led-adl\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"motorola,cpcap-led-cp\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"cpcap-codec\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias227, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_cpcap_driver_exit, ptr @__initcall__kmod_motorola_cpcap__226_354_cpcap_driver_init6, ptr @__ksymtab_cpcap_sense_virq, ptr @cpcap_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpcap_sense_virq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @irq_get_irq_data(i32 noundef %1) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = tail call i32 @regmap_irq_chip_get_base(ptr noundef %10) #6
  %12 = sub i32 %1, %11
  %13 = and i32 %12, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %14 = add i32 %12, -64
  %15 = icmp ult i32 %14, -79
  br i1 %15, label %28, label %16

16:                                               ; preds = %9
  %17 = trunc i32 %12 to i8
  %18 = sdiv i8 %17, 16
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 2
  %21 = add nuw nsw i32 %20, 32
  %22 = call i32 @regmap_read(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %3) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i32, ptr %3, align 4
  %26 = lshr i32 %25, %13
  %27 = and i32 %26, 1
  br label %28

28:                                               ; preds = %24, %16, %9
  %29 = phi i32 [ %27, %24 ], [ -22, %9 ], [ %22, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_chip_get_base(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cpcap_driver_init() #3 section ".init.text" {
  %1 = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @cpcap_driver) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cpcap_driver_exit() #3 section ".exit.text" {
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @cpcap_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = tail call ptr @of_match_device(ptr noundef nonnull @cpcap_of_match, ptr noundef %0) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %84, label %6

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 28, i32 noundef 3520) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %84, label %9

9:                                                ; preds = %6
  store ptr %0, ptr %7, align 4
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %7, ptr %10, align 8
  %11 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 5
  store i8 16, ptr %11, align 1
  %12 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  store i32 4, ptr %12, align 8
  %13 = tail call i32 @spi_setup(ptr noundef %0) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %84

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.cpcap_ddata, ptr %7, i32 0, i32 3
  store ptr @cpcap_regmap_config, ptr %16, align 4
  %17 = tail call ptr @__devm_regmap_init_spi(ptr noundef %0, ptr noundef nonnull @cpcap_regmap_config, ptr noundef null, ptr noundef null) #6
  %18 = getelementptr inbounds %struct.cpcap_ddata, ptr %7, i32 0, i32 4
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = ptrtoint ptr %17 to i32
  %22 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.1, i32 noundef %21) #7
  br label %84

23:                                               ; preds = %15
  %24 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %25 = call i32 @regmap_read(ptr noundef %17, i32 noundef 72, ptr noundef nonnull %3) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %53

28:                                               ; preds = %23
  %29 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %30 = load ptr, ptr %7, align 4
  %31 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %32 = call i32 @regmap_read(ptr noundef %31, i32 noundef 72, ptr noundef nonnull %2) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %53

35:                                               ; preds = %28
  %36 = load i32, ptr %2, align 4
  %37 = lshr i32 %36, 3
  %38 = and i32 %37, 7
  %39 = shl i32 %36, 3
  %40 = and i32 %39, 56
  %41 = or i32 %38, %40
  %42 = trunc i32 %41 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %43 = load ptr, ptr %7, align 4
  %44 = and i32 %29, 448
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, ptr @.str.4, ptr @.str.5
  %47 = lshr i32 %40, 4
  %48 = add nuw nsw i32 %47, 1
  %49 = and i32 %41, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.3, ptr noundef nonnull %46, i32 noundef %48, i32 noundef %49, i32 noundef %41) #7
  %50 = icmp ult i16 %42, 17
  %51 = load ptr, ptr %7, align 4
  br i1 %50, label %52, label %56

52:                                               ; preds = %35
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.6) #7
  br label %53

53:                                               ; preds = %52, %34, %27
  %54 = phi i32 [ %32, %34 ], [ %25, %27 ], [ -19, %52 ]
  %55 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.2, i32 noundef %54) #7
  br label %84

56:                                               ; preds = %35
  %57 = load ptr, ptr %16, align 4
  %58 = getelementptr inbounds %struct.regmap_config, ptr %57, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %59, i32 216) #6
  %61 = extractvalue { i32, i1 } %60, 1
  %62 = extractvalue { i32, i1 } %60, 0
  %63 = select i1 %61, i32 -1, i32 %62
  %64 = call noalias ptr @devm_kmalloc(ptr noundef %51, i32 noundef %63, i32 noundef 3520) #6
  %65 = getelementptr inbounds %struct.cpcap_ddata, ptr %7, i32 0, i32 1
  store ptr %64, ptr %65, align 4
  %66 = icmp eq ptr %64, null
  br i1 %66, label %84, label %67

67:                                               ; preds = %56
  %68 = call fastcc i32 @cpcap_init_irq_chip(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0, i32 noundef 16) #6
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = call fastcc i32 @cpcap_init_irq_chip(ptr noundef nonnull %7, i32 noundef 1, i32 noundef 16, i32 noundef 16) #6
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = call fastcc i32 @cpcap_init_irq_chip(ptr noundef nonnull %7, i32 noundef 2, i32 noundef 32, i32 noundef 64) #6
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load ptr, ptr %7, align 4
  %78 = getelementptr inbounds %struct.spi_device, ptr %77, i32 0, i32 8
  %79 = load i32, ptr %78, align 4
  %80 = call i32 @irq_set_irq_wake(i32 noundef %79, i32 noundef 1) #6
  %81 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 17
  store i64 0, ptr %81, align 8
  %82 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 16
  store ptr %81, ptr %82, align 4
  %83 = call i32 @devm_mfd_add_devices(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @cpcap_mfd_devices, i32 noundef 13, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  br label %84

84:                                               ; preds = %76, %73, %70, %67, %56, %53, %20, %9, %6, %1
  %85 = phi i32 [ %21, %20 ], [ %54, %53 ], [ %83, %76 ], [ -19, %1 ], [ -12, %6 ], [ %13, %9 ], [ %74, %73 ], [ %71, %70 ], [ %68, %67 ], [ -12, %56 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_init_irq_chip(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr [3 x %struct.regmap_irq_chip], ptr @cpcap_irq_chip, i32 0, i32 %1
  %6 = add i32 %3, %2
  %7 = icmp sgt i32 %6, %2
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.cpcap_ddata, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.cpcap_ddata, ptr %0, i32 0, i32 3
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi i32 [ %2, %8 ], [ %26, %11 ]
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr %struct.regmap_irq, ptr %13, i32 %12
  %15 = sub i32 %12, %2
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr inbounds %struct.regmap_config, ptr %16, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = udiv i32 %15, %18
  %20 = getelementptr inbounds %struct.regmap_config, ptr %16, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = mul i32 %21, %19
  %23 = srem i32 %12, %18
  %24 = shl nuw i32 1, %23
  store i32 %22, ptr %14, align 4
  %25 = getelementptr %struct.regmap_irq, ptr %13, i32 %12, i32 1
  store i32 %24, ptr %25, align 4
  %26 = add nsw i32 %12, 1
  %27 = icmp eq i32 %26, %6
  br i1 %27, label %28, label %11

28:                                               ; preds = %11, %4
  %29 = getelementptr inbounds %struct.cpcap_ddata, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr %struct.regmap_irq, ptr %30, i32 %2
  %32 = getelementptr [3 x %struct.regmap_irq_chip], ptr @cpcap_irq_chip, i32 0, i32 %1, i32 15
  store ptr %31, ptr %32, align 4
  %33 = getelementptr [3 x %struct.regmap_irq_chip], ptr @cpcap_irq_chip, i32 0, i32 %1, i32 16
  store i32 %3, ptr %33, align 4
  %34 = getelementptr [3 x %struct.regmap_irq_chip], ptr @cpcap_irq_chip, i32 0, i32 %1, i32 23
  store ptr %0, ptr %34, align 4
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr inbounds %struct.cpcap_ddata, ptr %0, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.spi_device, ptr %35, i32 0, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = tail call ptr @irq_get_irq_data(i32 noundef %39) #6
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.irq_data, ptr %40, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 15
  %47 = or i32 %46, 128
  br label %48

48:                                               ; preds = %42, %28
  %49 = phi i32 [ %47, %42 ], [ 128, %28 ]
  %50 = getelementptr %struct.cpcap_ddata, ptr %0, i32 0, i32 2, i32 %1
  %51 = tail call i32 @devm_regmap_add_irq_chip(ptr noundef %35, ptr noundef %37, i32 noundef %39, i32 noundef %49, i32 noundef -1, ptr noundef %5, ptr noundef %50) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.9, i32 noundef %1, i32 noundef %51) #7
  br label %55

55:                                               ; preds = %53, %48
  ret i32 %51
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_add_irq_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  tail call void @disable_irq(i32 noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  tail call void @enable_irq(i32 noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
