; ModuleID = '/llk/IR/drivers/mfd/twl6030-irq.c_pt.bc'
source_filename = "../drivers/mfd/twl6030-irq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl6030_interrupt_unmask:\09\09\09\09\09"
module asm "\09.asciz \09\22twl6030_interrupt_unmask\22\09\09\09\09\09"
module asm "__kstrtabns_twl6030_interrupt_unmask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl6030_interrupt_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22twl6030_interrupt_mask\22\09\09\09\09\09"
module asm "__kstrtabns_twl6030_interrupt_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl6030_mmc_card_detect_config:\09\09\09\09\09"
module asm "\09.asciz \09\22twl6030_mmc_card_detect_config\22\09\09\09\09\09"
module asm "__kstrtabns_twl6030_mmc_card_detect_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl6030_mmc_card_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22twl6030_mmc_card_detect\22\09\09\09\09\09"
module asm "__kstrtabns_twl6030_mmc_card_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.twl6030_irq = type { i32, i32, i8, %struct.atomic_t, %struct.notifier_block, %struct.irq_chip, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%union.anon.71 = type { i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__kstrtab_twl6030_interrupt_unmask = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl6030_interrupt_unmask = external dso_local constant [0 x i8], align 1
@__ksymtab_twl6030_interrupt_unmask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl6030_interrupt_unmask to i32), ptr @__kstrtab_twl6030_interrupt_unmask, ptr @__kstrtabns_twl6030_interrupt_unmask }, section "___ksymtab+twl6030_interrupt_unmask", align 4
@__kstrtab_twl6030_interrupt_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl6030_interrupt_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_twl6030_interrupt_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl6030_interrupt_mask to i32), ptr @__kstrtab_twl6030_interrupt_mask, ptr @__kstrtabns_twl6030_interrupt_mask }, section "___ksymtab+twl6030_interrupt_mask", align 4
@.str = private unnamed_addr constant [45 x i8] c"\013twl6030: Failed to read MMCCTRL, error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"\013twl6030: Failed to write MMCCTRL, error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"\013twl6030: Failed to read CFG_INPUT_PUPD3, error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"\013twl6030: Failed to write CFG_INPUT_PUPD3, error %d\0A\00", align 1
@twl6030_irq = internal unnamed_addr global ptr null, align 4
@__kstrtab_twl6030_mmc_card_detect_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl6030_mmc_card_detect_config = external dso_local constant [0 x i8], align 1
@__ksymtab_twl6030_mmc_card_detect_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl6030_mmc_card_detect_config to i32), ptr @__kstrtab_twl6030_mmc_card_detect_config, ptr @__kstrtabns_twl6030_mmc_card_detect_config }, section "___ksymtab+twl6030_mmc_card_detect_config", align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"\013Unknown MMC controller %d in %s\0A\00", align 1
@__func__.twl6030_mmc_card_detect = private unnamed_addr constant [24 x i8] c"twl6030_mmc_card_detect\00", align 1
@__kstrtab_twl6030_mmc_card_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl6030_mmc_card_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_twl6030_mmc_card_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl6030_mmc_card_detect to i32), ptr @__kstrtab_twl6030_mmc_card_detect, ptr @__kstrtabns_twl6030_mmc_card_detect }, section "___ksymtab+twl6030_mmc_card_detect", align 4
@twl6030_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6030\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @twl6030_interrupt_mapping }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6032\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @twl6032_interrupt_mapping }, %struct.of_device_id zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Unknown TWL device model\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"I2C err writing TWL_MODULE_PIH: %d\0A\00", align 1
@dummy_irq_chip = external dso_local local_unnamed_addr global %struct.irq_chip, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"twl6030\00", align 1
@twl6030_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @twl6030_irq_map, ptr @twl6030_irq_unmap, ptr @irq_domain_xlate_onetwocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"Can't add irq_domain\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"PIH (irq %d) nested IRQs\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"TWL6030-PIH\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"could not claim irq %d: %d\0A\00", align 1
@twl6030_interrupt_mapping = internal global [24 x i32] [i32 0, i32 0, i32 0, i32 11, i32 11, i32 12, i32 13, i32 13, i32 13, i32 14, i32 15, i32 16, i32 0, i32 3, i32 3, i32 17, i32 4, i32 4, i32 4, i32 10, i32 2, i32 5, i32 5, i32 0], align 4
@twl6032_interrupt_mapping = internal global [24 x i32] [i32 0, i32 0, i32 0, i32 11, i32 11, i32 12, i32 13, i32 0, i32 0, i32 14, i32 15, i32 16, i32 3, i32 3, i32 17, i32 17, i32 4, i32 4, i32 4, i32 10, i32 2, i32 5, i32 5, i32 0], align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"\013twl6030 IRQ wake enable failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"\014twl6030_irq: I2C error %d reading PIH ISR\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"\013twl6030_irq: Unmapped PIH ISR %u detected\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"\014twl6030_irq: I2C error in clearing PIH ISR\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_twl6030_interrupt_mask, ptr @__ksymtab_twl6030_interrupt_unmask, ptr @__ksymtab_twl6030_mmc_card_detect, ptr @__ksymtab_twl6030_mmc_card_detect_config], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @twl6030_interrupt_unmask(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = call i32 @twl_i2c_read(i8 noundef zeroext 1, ptr noundef nonnull %4, i8 noundef zeroext %1, i32 noundef 1) #5
  %6 = xor i8 %0, -1
  %7 = load i8, ptr %4, align 1
  %8 = and i8 %7, %6
  store i8 %8, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %8, ptr %3, align 1
  %9 = call i32 @twl_i2c_write(i8 noundef zeroext 1, ptr noundef nonnull %3, i8 noundef zeroext %1, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %10 = or i32 %9, %5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @twl6030_interrupt_mask(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = call i32 @twl_i2c_read(i8 noundef zeroext 1, ptr noundef nonnull %4, i8 noundef zeroext %1, i32 noundef 1) #5
  %6 = load i8, ptr %4, align 1
  %7 = or i8 %6, %0
  store i8 %7, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %7, ptr %3, align 1
  %8 = call i32 @twl_i2c_write(i8 noundef zeroext 1, ptr noundef nonnull %3, i8 noundef zeroext %1, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %9 = or i32 %8, %5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @twl6030_mmc_card_detect_config() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #5
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #5
  store i8 0, ptr %7, align 1, !annotation !8
  %9 = call i32 @twl_i2c_read(i8 noundef zeroext 1, ptr noundef nonnull %7, i8 noundef zeroext 4, i32 noundef 1) #5
  %10 = load i8, ptr %7, align 1
  %11 = and i8 %10, -9
  store i8 %11, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  store i8 %11, ptr %6, align 1
  %12 = call i32 @twl_i2c_write(i8 noundef zeroext 1, ptr noundef nonnull %6, i8 noundef zeroext 4, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 0, ptr %5, align 1, !annotation !8
  %13 = call i32 @twl_i2c_read(i8 noundef zeroext 1, ptr noundef nonnull %5, i8 noundef zeroext 7, i32 noundef 1) #5
  %14 = load i8, ptr %5, align 1
  %15 = and i8 %14, -9
  store i8 %15, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 %15, ptr %4, align 1
  %16 = call i32 @twl_i2c_write(i8 noundef zeroext 1, ptr noundef nonnull %4, i8 noundef zeroext 7, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  %17 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %8, i8 noundef zeroext -18, i32 noundef 1) #5
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %0
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %17) #6
  br label %49

21:                                               ; preds = %0
  %22 = load i8, ptr %8, align 1
  %23 = and i8 %22, -13
  %24 = or i8 %23, 4
  store i8 %24, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %24, ptr %3, align 1
  %25 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %3, i8 noundef zeroext -18, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %25) #6
  br label %49

29:                                               ; preds = %21
  %30 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %8, i8 noundef zeroext -14, i32 noundef 1) #5
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %30) #6
  br label %49

34:                                               ; preds = %29
  %35 = load i8, ptr %8, align 1
  %36 = and i8 %35, -13
  store i8 %36, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 %36, ptr %2, align 1
  %37 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %2, i8 noundef zeroext -14, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %37) #6
  br label %49

41:                                               ; preds = %34
  %42 = load ptr, ptr @twl6030_irq, align 4
  %43 = getelementptr inbounds %struct.twl6030_irq, ptr %42, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #5
  store i32 0, ptr %1, align 4, !annotation !8
  %45 = call ptr @__irq_resolve_mapping(ptr noundef %44, i32 noundef 16, ptr noundef nonnull %1) #5
  %46 = icmp eq ptr %45, null
  %47 = load i32, ptr %1, align 4
  %48 = select i1 %46, i32 0, i32 %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #5
  br label %49

49:                                               ; preds = %41, %39, %32, %27, %19
  %50 = phi i32 [ %17, %19 ], [ %25, %27 ], [ %30, %32 ], [ %37, %39 ], [ %48, %41 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #5
  ret i32 %50
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @twl6030_mmc_card_detect(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %5, ptr noundef nonnull @__func__.twl6030_mmc_card_detect) #6
  br label %16

9:                                                ; preds = %2
  %10 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %3, i8 noundef zeroext -18, i32 noundef 1) #5
  %11 = load i8, ptr %3, align 1
  %12 = and i8 %11, 1
  %13 = zext i8 %12 to i32
  %14 = icmp slt i32 %10, 0
  %15 = select i1 %14, i32 %10, i32 %13
  br label %16

16:                                               ; preds = %9, %7
  %17 = phi i32 [ -5, %7 ], [ %15, %9 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @twl6030_init_irq(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #5
  %6 = tail call ptr @of_match_device(ptr noundef nonnull @twl6030_of_match, ptr noundef %0) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.of_device_id, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5) #6
  br label %57

13:                                               ; preds = %8
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 172, i32 noundef 3520) #5
  store ptr %14, ptr @twl6030_irq, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %57, label %16

16:                                               ; preds = %13
  store i8 -1, ptr %3, align 1
  %17 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  store i8 -1, ptr %17, align 1
  %18 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  store i8 -1, ptr %18, align 1
  %19 = call i32 @twl_i2c_write(i8 noundef zeroext 1, ptr noundef nonnull %3, i8 noundef zeroext 3, i32 noundef 3) #5
  %20 = call i32 @twl_i2c_write(i8 noundef zeroext 1, ptr noundef nonnull %3, i8 noundef zeroext 6, i32 noundef 3) #5
  %21 = or i32 %20, %19
  %22 = call i32 @twl_i2c_write(i8 noundef zeroext 1, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 3) #5
  %23 = or i32 %21, %22
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %23) #6
  br label %57

26:                                               ; preds = %16
  %27 = load ptr, ptr @twl6030_irq, align 4
  %28 = getelementptr inbounds %struct.twl6030_irq, ptr %27, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(136) %28, ptr noundef nonnull align 4 dereferenceable(136) @dummy_irq_chip, i32 136, i1 false)
  %29 = getelementptr inbounds %struct.twl6030_irq, ptr %27, i32 0, i32 5, i32 1
  store ptr @.str.7, ptr %29, align 4
  %30 = getelementptr inbounds %struct.twl6030_irq, ptr %27, i32 0, i32 5, i32 13
  store ptr null, ptr %30, align 4
  %31 = getelementptr inbounds %struct.twl6030_irq, ptr %27, i32 0, i32 5, i32 14
  store ptr @twl6030_irq_set_wake, ptr %31, align 4
  %32 = getelementptr inbounds %struct.twl6030_irq, ptr %27, i32 0, i32 4
  store ptr @twl6030_irq_pm_notifier, ptr %32, align 4
  %33 = getelementptr inbounds %struct.twl6030_irq, ptr %27, i32 0, i32 3
  store volatile i32 0, ptr %33, align 4
  %34 = load ptr, ptr %9, align 4
  %35 = getelementptr inbounds %struct.twl6030_irq, ptr %27, i32 0, i32 7
  store ptr %34, ptr %35, align 4
  %36 = icmp eq ptr %5, null
  %37 = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 3
  %38 = select i1 %36, ptr null, ptr %37
  %39 = call ptr @__irq_domain_add(ptr noundef %38, i32 noundef 20, i32 noundef 20, i32 noundef 0, ptr noundef nonnull @twl6030_irq_domain_ops, ptr noundef %27) #5
  %40 = load ptr, ptr @twl6030_irq, align 4
  %41 = getelementptr inbounds %struct.twl6030_irq, ptr %40, i32 0, i32 6
  store ptr %39, ptr %41, align 4
  %42 = icmp eq ptr %39, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8) #6
  br label %57

44:                                               ; preds = %26
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %1) #6
  %45 = load ptr, ptr @twl6030_irq, align 4
  %46 = call i32 @request_threaded_irq(i32 noundef %1, ptr noundef null, ptr noundef nonnull @twl6030_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.10, ptr noundef %45) #5
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %1, i32 noundef %46) #6
  %49 = load ptr, ptr @twl6030_irq, align 4
  %50 = getelementptr inbounds %struct.twl6030_irq, ptr %49, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  call void @irq_domain_remove(ptr noundef %51) #5
  br label %57

52:                                               ; preds = %44
  %53 = load ptr, ptr @twl6030_irq, align 4
  %54 = getelementptr inbounds %struct.twl6030_irq, ptr %53, i32 0, i32 1
  store i32 %1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.twl6030_irq, ptr %53, i32 0, i32 4
  %56 = call i32 @register_pm_notifier(ptr noundef %55) #5
  br label %57

57:                                               ; preds = %52, %48, %43, %25, %13, %12
  %58 = phi i32 [ %23, %25 ], [ %46, %48 ], [ 0, %52 ], [ -12, %43 ], [ -22, %12 ], [ -12, %13 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #5
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.twl6030_irq, ptr %4, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #5
  br i1 %5, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #5, !srcloc !9
  br label %11

9:                                                ; preds = %2
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #5, !srcloc !10
  br label %11

11:                                               ; preds = %9, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030_irq_pm_notifier(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  switch i32 %1, label %31 [
    i32 3, label %4
    i32 4, label %28
  ]

4:                                                ; preds = %3
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr i8, ptr %0, i32 -8
  %9 = load i8, ptr %8, align 4, !range !11
  %10 = icmp eq i8 %9, 0
  br i1 %7, label %20, label %11

11:                                               ; preds = %4
  br i1 %10, label %12, label %25

12:                                               ; preds = %11
  %13 = getelementptr i8, ptr %0, i32 -12
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #6
  br label %25

19:                                               ; preds = %12
  store i8 1, ptr %8, align 4
  br label %25

20:                                               ; preds = %4
  br i1 %10, label %25, label %21

21:                                               ; preds = %20
  %22 = getelementptr i8, ptr %0, i32 -12
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @irq_set_irq_wake(i32 noundef %23, i32 noundef 0) #5
  store i8 0, ptr %8, align 4
  br label %25

25:                                               ; preds = %21, %20, %19, %17, %11
  %26 = getelementptr i8, ptr %0, i32 -12
  %27 = load i32, ptr %26, align 4
  tail call void @disable_irq(i32 noundef %27) #5
  br label %31

28:                                               ; preds = %3
  %29 = getelementptr i8, ptr %0, i32 -12
  %30 = load i32, ptr %29, align 4
  tail call void @enable_irq(i32 noundef %30) #5
  br label %31

31:                                               ; preds = %28, %25, %3
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030_irq_thread(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca %union.anon.71, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call i32 @twl_i2c_read(i8 noundef zeroext 1, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef 3) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %6) #6
  br label %51

10:                                               ; preds = %2
  %11 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 3
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 2
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = or i8 %13, 8
  store i8 %17, ptr %12, align 2
  br label %18

18:                                               ; preds = %16, %10
  %19 = load i32, ptr %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.twl6030_irq, ptr %1, i32 0, i32 6
  %23 = getelementptr inbounds %struct.twl6030_irq, ptr %1, i32 0, i32 7
  br label %24

24:                                               ; preds = %42, %21
  %25 = phi i32 [ 0, %21 ], [ %44, %42 ]
  %26 = phi i32 [ %19, %21 ], [ %43, %42 ]
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %22, align 4
  %31 = load ptr, ptr %23, align 4
  %32 = getelementptr i32, ptr %31, i32 %25
  %33 = load i32, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %34 = call ptr @__irq_resolve_mapping(ptr noundef %30, i32 noundef %33, ptr noundef nonnull %4) #5
  %35 = icmp eq ptr %34, null
  %36 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  call void @handle_nested_irq(i32 noundef %36) #5
  br label %42

40:                                               ; preds = %29
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %25) #6
  br label %42

42:                                               ; preds = %40, %39, %24
  %43 = lshr i32 %26, 1
  %44 = add nuw nsw i32 %25, 1
  %45 = icmp ult i32 %26, 2
  br i1 %45, label %46, label %24

46:                                               ; preds = %42, %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 0, ptr %3, align 1
  %47 = call i32 @twl_i2c_write(i8 noundef zeroext 1, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #6
  br label %51

51:                                               ; preds = %49, %46, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @twl6030_exit_irq() local_unnamed_addr #0 {
  %1 = load ptr, ptr @twl6030_irq, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.twl6030_irq, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.twl6030_irq, ptr %1, i32 0, i32 4
  %9 = tail call i32 @unregister_pm_notifier(ptr noundef %8) #5
  %10 = load ptr, ptr @twl6030_irq, align 4
  %11 = getelementptr inbounds %struct.twl6030_irq, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @free_irq(i32 noundef %12, ptr noundef null) #5
  br label %14

14:                                               ; preds = %7, %3, %0
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_pm_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl6030_irq_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #5
  %7 = getelementptr inbounds %struct.twl6030_irq, ptr %5, i32 0, i32 5
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef %7, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #5
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 32768) #5
  %8 = getelementptr inbounds %struct.twl6030_irq, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @irq_set_parent(i32 noundef %1, i32 noundef %9) #5
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 1024) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @twl6030_irq_unmap(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %3 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef null) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onetwocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_parent(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
!9 = !{i64 2147949376, i64 2147949402, i64 2147949431, i64 2147949465, i64 2147949496, i64 2147949519}
!10 = !{i64 2147951733, i64 2147951759, i64 2147951788, i64 2147951822, i64 2147951853, i64 2147951876}
!11 = !{i8 0, i8 2}
