; ModuleID = '/llk/IR/drivers/gpio/gpiolib-of.c_pt.bc'
source_filename = "../drivers/gpio/gpiolib-of.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_named_gpio_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_named_gpio_flags\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_named_gpio_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_get_from_of_node:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_get_from_of_node\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_get_from_of_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_mm_gpiochip_add_data:\09\09\09\09\09"
module asm "\09.asciz \09\22of_mm_gpiochip_add_data\22\09\09\09\09\09"
module asm "__kstrtabns_of_mm_gpiochip_add_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_mm_gpiochip_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22of_mm_gpiochip_remove\22\09\09\09\09\09"
module asm "__kstrtabns_of_mm_gpiochip_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.gpio_device = type { i32, %struct.device, %struct.cdev, ptr, ptr, ptr, ptr, i32, i16, ptr, ptr, %struct.list_head, %struct.blocking_notifier_head, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.gpio_desc = type { ptr, i32, ptr, ptr, ptr, i32 }
%struct.of_mm_gpio_chip = type { %struct.gpio_chip, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"gpio-reserved-ranges\00", align 1
@__kstrtab_of_get_named_gpio_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_named_gpio_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_named_gpio_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_named_gpio_flags to i32), ptr @__kstrtab_of_get_named_gpio_flags, ptr @__kstrtabns_of_get_named_gpio_flags }, section "___ksymtab_gpl+of_get_named_gpio_flags", align 4
@__kstrtab_gpiod_get_from_of_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_get_from_of_node = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_get_from_of_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_get_from_of_node to i32), ptr @__kstrtab_gpiod_get_from_of_node, ptr @__kstrtabns_gpiod_get_from_of_node }, section "___ksymtab_gpl+gpiod_get_from_of_node", align 4
@gpio_of_notifier = dso_local local_unnamed_addr global %struct.notifier_block { ptr @of_gpio_notify, ptr null, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%pOF\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"\013%pOF: GPIO chip registration failed with status %d\0A\00", align 1
@__kstrtab_of_mm_gpiochip_add_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_mm_gpiochip_add_data = external dso_local constant [0 x i8], align 1
@__ksymtab_of_mm_gpiochip_add_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_mm_gpiochip_add_data to i32), ptr @__kstrtab_of_mm_gpiochip_add_data, ptr @__kstrtabns_of_mm_gpiochip_add_data }, section "___ksymtab_gpl+of_mm_gpiochip_add_data", align 4
@__kstrtab_of_mm_gpiochip_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_mm_gpiochip_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_of_mm_gpiochip_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_mm_gpiochip_remove to i32), ptr @__kstrtab_of_mm_gpiochip_remove, ptr @__kstrtabns_of_mm_gpiochip_remove }, section "___ksymtab_gpl+of_mm_gpiochip_remove", align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"fsl,spi\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"aeroflexgaisler,spictrl\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"ibm,ppc4xx-spi\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"#gpio-cells\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"regulator-fixed\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"reg-fixed-voltage\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"enable-gpio\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"enable-gpios\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"regulator-gpio\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"enable-active-high\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"\014%s GPIO handle specifies active low - ignored\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"gpio-open-drain\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"\016%s uses legacy open drain flag - update the DTS if you can\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"cs-gpios\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"spi-cs-high\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"\016%s enforce active low on chipselect handle\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"snps,reset-gpio\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"snps,reset-active-low\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"spi-gpio\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"wlf,ldoena\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"wlf,ldo1ena\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"wlf,ldo2ena\00", align 1
@__const.of_find_regulator_gpio.whitelist = private unnamed_addr constant [3 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31], align 4
@.str.32 = private unnamed_addr constant [9 x i8] c"gpio-hog\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"\013%s: failed to add hogs for %pOF\0A\00", align 1
@__func__.of_gpio_notify = private unnamed_addr constant [15 x i8] c"of_gpio_notify\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"output-low\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"output-high\00", align 1
@.str.37 = private unnamed_addr constant [65 x i8] c"\014GPIO line %d (%pOFn): no hogging state specified, bailing out\0A\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"line-name\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"drivers/gpio/gpiolib-of.c\00", align 1
@of_gpiochip_add_pin_range.group_names_propname = internal constant [24 x i8] c"gpio-ranges-group-names\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.41 = private unnamed_addr constant [69 x i8] c"\013%pOF: Group name of numeric GPIO ranges must be the empty string.\0A\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"\013%pOF: Illegal gpio-range format.\0A\00", align 1
@.str.43 = private unnamed_addr constant [56 x i8] c"\013%pOF: GPIO group range requested but no %s property.\0A\00", align 1
@.str.44 = private unnamed_addr constant [68 x i8] c"\013%pOF: Group name of GPIO group range cannot be the empty string.\0A\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_gpiod_get_from_of_node, ptr @__ksymtab_of_get_named_gpio_flags, ptr @__ksymtab_of_mm_gpiochip_add_data, ptr @__ksymtab_of_mm_gpiochip_remove], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_gpio_get_count(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(3) @.str.5) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.6) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.7) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.8) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %16, %13, %10
  %20 = tail call i32 @of_count_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11) #10
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %41, label %32

22:                                               ; preds = %32
  %23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull %1, ptr noundef nonnull @.str.10)
  br label %25

24:                                               ; preds = %28
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %3, ptr noundef nonnull align 1 dereferenceable(5) @.str.10, i32 5, i1 false)
  br label %25

25:                                               ; preds = %24, %22
  %26 = load ptr, ptr %4, align 8
  %27 = call i32 @of_count_phandle_with_args(ptr noundef %26, ptr noundef nonnull %3, ptr noundef nonnull @.str.11) #10
  br label %37

28:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.9, i32 6, i1 false)
  %29 = load ptr, ptr %4, align 8
  %30 = call i32 @of_count_phandle_with_args(ptr noundef %29, ptr noundef nonnull %3, ptr noundef nonnull @.str.11) #10
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %37, label %24

32:                                               ; preds = %19, %16, %7
  %33 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull %1, ptr noundef nonnull @.str.9)
  %34 = load ptr, ptr %4, align 8
  %35 = call i32 @of_count_phandle_with_args(ptr noundef %34, ptr noundef nonnull %3, ptr noundef nonnull @.str.11) #10
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %22

37:                                               ; preds = %32, %28, %25
  %38 = phi i32 [ %30, %28 ], [ %35, %32 ], [ %27, %25 ]
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 -2, i32 %38
  br label %41

41:                                               ; preds = %37, %19
  %42 = phi i32 [ %40, %37 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  ret i32 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @of_gpio_need_valid_mask(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 39
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @of_property_count_elems_of_size(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef 4) #10
  %5 = icmp sgt i32 %4, 0
  %6 = and i32 %4, 1
  %7 = icmp eq i32 %6, 0
  %8 = and i1 %5, %7
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_get_named_gpio_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call fastcc ptr @of_get_named_gpiod_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = ptrtoint ptr %5 to i32
  br label %11

9:                                                ; preds = %4
  %10 = tail call i32 @desc_to_gpio(ptr noundef %5) #10
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @of_get_named_gpiod_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i32 72, i1 false), !annotation !8
  %7 = call i32 @of_parse_phandle_with_args_map(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %2, ptr noundef nonnull %6) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = inttoptr i32 %7 to ptr
  br label %143

11:                                               ; preds = %4
  %12 = call ptr @gpiochip_find(ptr noundef nonnull %6, ptr noundef nonnull @of_gpiochip_match_node_and_xlate) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %140, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 40
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.of_phandle_args, ptr %6, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %140

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 41
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %22(ptr noundef nonnull %12, ptr noundef nonnull %6, ptr noundef %3) #10
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = inttoptr i32 %23 to ptr
  br label %29

27:                                               ; preds = %20
  %28 = call ptr @gpiochip_get_desc(ptr noundef nonnull %12, i32 noundef %23) #10
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi ptr [ %26, %25 ], [ %28, %27 ]
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  %32 = icmp eq ptr %3, null
  %33 = or i1 %32, %31
  br i1 %33, label %140, label %34

34:                                               ; preds = %29
  %35 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.12) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.13) #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(12) @.str.14) #10
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(13) @.str.15) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %43, %40
  %47 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.16) #10
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %46, %37, %34
  %50 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef null) #10
  %51 = icmp eq ptr %50, null
  %52 = load i32, ptr %3, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i1 true, i1 %51
  br i1 %55, label %66, label %56

56:                                               ; preds = %49
  %57 = icmp eq ptr %0, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  br label %61

61:                                               ; preds = %58, %56
  %62 = phi ptr [ %60, %58 ], [ @.str.27, %56 ]
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %62) #11
  %64 = load i32, ptr %3, align 4
  %65 = and i32 %64, -2
  store i32 %65, ptr %3, align 4
  br label %66

66:                                               ; preds = %61, %49
  %67 = phi i32 [ %52, %49 ], [ %65, %61 ]
  br i1 %51, label %68, label %70

68:                                               ; preds = %66
  %69 = or i32 %67, 1
  store i32 %69, ptr %3, align 4
  br label %70

70:                                               ; preds = %68, %66, %46, %43
  %71 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.13) #10
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %70
  %74 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef null) #10
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr %3, align 4
  %78 = or i32 %77, 6
  store i32 %78, ptr %3, align 4
  %79 = icmp eq ptr %0, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  br label %83

83:                                               ; preds = %80, %76
  %84 = phi ptr [ %82, %80 ], [ @.str.27, %76 ]
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %84) #11
  br label %86

86:                                               ; preds = %83, %73, %70
  %87 = call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(9) @.str.21) #10
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %131

89:                                               ; preds = %86
  %90 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef null) #10
  %91 = icmp eq ptr %90, null
  br i1 %91, label %131, label %92

92:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %93 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #10
  %94 = icmp eq ptr %93, null
  br i1 %94, label %130, label %95

95:                                               ; preds = %127, %92
  %96 = phi ptr [ %128, %127 ], [ %93, %92 ]
  %97 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %96, ptr noundef nonnull @.str.22, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #10
  %98 = icmp sgt i32 %97, -1
  %99 = load i32, ptr %5, align 4
  %100 = icmp eq i32 %99, %2
  %101 = select i1 %98, i1 %100, i1 false
  br i1 %101, label %102, label %127

102:                                              ; preds = %95
  %103 = call ptr @of_find_property(ptr noundef nonnull %96, ptr noundef nonnull @.str.23, ptr noundef null) #10
  %104 = icmp eq ptr %103, null
  %105 = load i32, ptr %3, align 4
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %104, label %115, label %108

108:                                              ; preds = %102
  br i1 %107, label %126, label %109

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.device_node, ptr %96, i32 0, i32 2
  %111 = load ptr, ptr %110, align 4
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %111) #11
  %113 = load i32, ptr %3, align 4
  %114 = and i32 %113, -2
  br label %124

115:                                              ; preds = %102
  br i1 %107, label %116, label %121

116:                                              ; preds = %115
  %117 = getelementptr inbounds %struct.device_node, ptr %96, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %118) #11
  %120 = load i32, ptr %3, align 4
  br label %121

121:                                              ; preds = %116, %115
  %122 = phi i32 [ %120, %116 ], [ %105, %115 ]
  %123 = or i32 %122, 1
  br label %124

124:                                              ; preds = %121, %109
  %125 = phi i32 [ %114, %109 ], [ %123, %121 ]
  store i32 %125, ptr %3, align 4
  br label %126

126:                                              ; preds = %124, %108
  call void @of_node_put(ptr noundef nonnull %96) #10
  br label %130

127:                                              ; preds = %95
  %128 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %96) #10
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %95

130:                                              ; preds = %127, %126, %92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %131

131:                                              ; preds = %130, %89, %86
  %132 = call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(16) @.str.25) #10
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef null) #10
  %136 = icmp eq ptr %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i32, ptr %3, align 4
  %139 = or i32 %138, 1
  store i32 %139, ptr %3, align 4
  br label %140

140:                                              ; preds = %137, %134, %131, %29, %14, %11
  %141 = phi ptr [ %30, %29 ], [ inttoptr (i32 -517 to ptr), %11 ], [ %30, %131 ], [ %30, %134 ], [ %30, %137 ], [ inttoptr (i32 -22 to ptr), %14 ]
  %142 = load ptr, ptr %6, align 4
  call void @of_node_put(ptr noundef %142) #10
  br label %143

143:                                              ; preds = %140, %9
  %144 = phi ptr [ %10, %9 ], [ %141, %140 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #10
  ret ptr %144
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @desc_to_gpio(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gpiod_get_from_of_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = call fastcc ptr @of_get_named_gpiod_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %5
  %10 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %46, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %6, align 4
  %13 = and i32 %12, 1
  %14 = and i32 %12, 2
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %12, 4
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %12, 8
  %19 = call i32 @gpiod_request(ptr noundef nonnull %7, ptr noundef %4) #10
  %20 = icmp ne i32 %19, -16
  %21 = and i32 %3, 16
  %22 = icmp eq i32 %21, 0
  %23 = or i1 %22, %20
  br i1 %23, label %24, label %46

24:                                               ; preds = %11
  %25 = icmp eq i32 %19, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = inttoptr i32 %19 to ptr
  br label %46

28:                                               ; preds = %24
  br i1 %15, label %34, label %29

29:                                               ; preds = %28
  br i1 %17, label %32, label %30

30:                                               ; preds = %29
  %31 = or i32 %13, 2
  br label %34

32:                                               ; preds = %29
  %33 = or i32 %13, 4
  br label %34

34:                                               ; preds = %32, %30, %28
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ], [ %13, %28 ]
  %36 = or i32 %35, %18
  %37 = load i32, ptr %6, align 4
  %38 = and i32 %37, 16
  %39 = or i32 %36, %38
  %40 = and i32 %37, 32
  %41 = or i32 %39, %40
  %42 = call i32 @gpiod_configure_flags(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %41, i32 noundef %3) #10
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  call void @gpiod_put(ptr noundef nonnull %7) #10
  %45 = inttoptr i32 %42 to ptr
  br label %46

46:                                               ; preds = %44, %34, %26, %11, %9, %5
  %47 = phi ptr [ %27, %26 ], [ %45, %44 ], [ %7, %9 ], [ null, %5 ], [ %7, %11 ], [ %7, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret ptr %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_request(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_configure_flags(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_find_gpio(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x ptr], align 4
  %6 = alloca [32 x i8], align 1
  %7 = alloca [32 x i8], align 1
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %7, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 0, ptr %8, align 4, !annotation !8
  %9 = icmp eq ptr %1, null
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  br i1 %9, label %18, label %22

11:                                               ; preds = %22
  %12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull %1, ptr noundef nonnull @.str.10)
  br label %14

13:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %7, ptr noundef nonnull align 1 dereferenceable(5) @.str.10, i32 5, i1 false)
  br label %14

14:                                               ; preds = %13, %11
  %15 = load ptr, ptr %10, align 8
  %16 = call fastcc ptr @of_get_named_gpiod_flags(ptr noundef %15, ptr noundef nonnull %7, i32 noundef %2, ptr noundef nonnull %8)
  %17 = icmp eq ptr %16, inttoptr (i32 -2 to ptr)
  br i1 %17, label %27, label %56

18:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, ptr noundef nonnull align 1 dereferenceable(6) @.str.9, i32 6, i1 false)
  %19 = load ptr, ptr %10, align 8
  %20 = call fastcc ptr @of_get_named_gpiod_flags(ptr noundef %19, ptr noundef nonnull %7, i32 noundef %2, ptr noundef nonnull %8)
  %21 = icmp eq ptr %20, inttoptr (i32 -2 to ptr)
  br i1 %21, label %13, label %56

22:                                               ; preds = %4
  %23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull %1, ptr noundef nonnull @.str.9)
  %24 = load ptr, ptr %10, align 8
  %25 = call fastcc ptr @of_get_named_gpiod_flags(ptr noundef %24, ptr noundef nonnull %7, i32 noundef %2, ptr noundef nonnull %8)
  %26 = icmp eq ptr %25, inttoptr (i32 -2 to ptr)
  br i1 %26, label %11, label %56

27:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false) #10, !annotation !8
  %28 = load ptr, ptr %10, align 8
  %29 = call i32 @of_device_is_compatible(ptr noundef %28, ptr noundef nonnull @.str.28) #10
  %30 = icmp ne i32 %29, 0
  %31 = icmp ne ptr %1, null
  %32 = and i1 %31, %30
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  br label %38

34:                                               ; preds = %27
  %35 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10, ptr noundef nonnull %1) #10
  %36 = call fastcc ptr @of_get_named_gpiod_flags(ptr noundef %28, ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  %37 = icmp eq ptr %36, inttoptr (i32 -2 to ptr)
  br i1 %37, label %38, label %56

38:                                               ; preds = %34, %33
  %39 = load ptr, ptr %10, align 8
  %40 = call i32 @of_device_is_compatible(ptr noundef %39, ptr noundef nonnull @.str.6) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = call i32 @of_device_is_compatible(ptr noundef %39, ptr noundef nonnull @.str.7) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = call i32 @of_device_is_compatible(ptr noundef %39, ptr noundef nonnull @.str.8) #10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %45, %42, %38
  br i1 %9, label %61, label %49

49:                                               ; preds = %48
  %50 = call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(3) @.str.5) #10
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) @__const.of_find_regulator_gpio.whitelist, i32 12, i1 false) #10
  br label %63

53:                                               ; preds = %49
  %54 = call ptr @of_find_gpio(ptr noundef %0, ptr noundef null, i32 noundef %2, ptr noundef %3) #10
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %111

56:                                               ; preds = %53, %34, %22, %18, %14
  %57 = phi ptr [ %54, %53 ], [ %36, %34 ], [ %25, %22 ], [ %16, %14 ], [ %20, %18 ]
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = icmp eq ptr %57, inttoptr (i32 -2 to ptr)
  br i1 %60, label %62, label %74

61:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  br label %69

62:                                               ; preds = %59, %45
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) @__const.of_find_regulator_gpio.whitelist, i32 12, i1 false) #10
  br i1 %9, label %69, label %63

63:                                               ; preds = %62, %52
  %64 = load ptr, ptr %10, align 8
  %65 = call i32 @match_string(ptr noundef nonnull %5, i32 noundef 3, ptr noundef nonnull %1) #10
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = call fastcc ptr @of_get_named_gpiod_flags(ptr noundef %64, ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %8) #10
  br label %69

69:                                               ; preds = %67, %63, %62, %61
  %70 = phi ptr [ %68, %67 ], [ inttoptr (i32 -2 to ptr), %62 ], [ inttoptr (i32 -2 to ptr), %63 ], [ inttoptr (i32 -2 to ptr), %61 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  br label %71

71:                                               ; preds = %69, %56
  %72 = phi ptr [ %70, %69 ], [ %57, %56 ]
  %73 = icmp eq ptr %72, inttoptr (i32 -2 to ptr)
  br i1 %73, label %111, label %74

74:                                               ; preds = %71, %59
  %75 = phi ptr [ %72, %71 ], [ %57, %59 ]
  %76 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %111, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %8, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load i32, ptr %3, align 4
  %83 = or i32 %82, 1
  store i32 %83, ptr %3, align 4
  br label %84

84:                                               ; preds = %81, %77
  %85 = and i32 %78, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = and i32 %78, 4
  %89 = icmp eq i32 %88, 0
  %90 = load i32, ptr %3, align 4
  %91 = select i1 %89, i32 4, i32 2
  %92 = or i32 %90, %91
  store i32 %92, ptr %3, align 4
  br label %93

93:                                               ; preds = %87, %84
  %94 = and i32 %78, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %3, align 4
  %98 = or i32 %97, 8
  store i32 %98, ptr %3, align 4
  br label %99

99:                                               ; preds = %96, %93
  %100 = and i32 %78, 16
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, ptr %3, align 4
  %104 = or i32 %103, 16
  store i32 %104, ptr %3, align 4
  br label %105

105:                                              ; preds = %102, %99
  %106 = and i32 %78, 32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, ptr %3, align 4
  %110 = or i32 %109, 32
  store i32 %110, ptr %3, align 4
  br label %111

111:                                              ; preds = %108, %105, %74, %71, %53
  %112 = phi ptr [ %54, %53 ], [ %75, %74 ], [ %75, %108 ], [ %75, %105 ], [ inttoptr (i32 -2 to ptr), %71 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #10
  ret ptr %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_gpio_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @of_reconfig_get_state_change(i32 noundef %1, ptr noundef %2) #10
  switch i32 %4, label %75 [
    i32 1, label %5
    i32 2, label %31
  ]

5:                                                ; preds = %3
  %6 = load ptr, ptr %2, align 4
  %7 = tail call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.32, ptr noundef null) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %75, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.device_node, ptr %10, i32 0, i32 10
  %12 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %11) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %75

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.device_node, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr @gpiochip_find(ptr noundef %17, ptr noundef nonnull @of_gpiochip_match_node) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %75, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %2, align 4
  %22 = tail call fastcc i32 @of_gpiochip_add_hog(ptr noundef nonnull %18, ptr noundef %21)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %20
  %25 = load ptr, ptr %2, align 4
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.of_gpio_notify, ptr noundef %25) #11
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds %struct.device_node, ptr %27, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %28) #10
  %29 = sub i32 1, %22
  %30 = or i32 %29, 32768
  br label %75

31:                                               ; preds = %3
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.device_node, ptr %32, i32 0, i32 10
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %75, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.device_node, ptr %32, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = tail call ptr @gpiochip_find(ptr noundef %39, ptr noundef nonnull @of_gpiochip_match_node) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %75, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr inbounds %struct.gpio_chip, ptr %40, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.gpio_device, ptr %45, i32 0, i32 6
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.gpio_chip, ptr %40, i32 0, i32 20
  %49 = load i16, ptr %48, align 4
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %72, label %51

51:                                               ; preds = %65, %42
  %52 = phi i16 [ %66, %65 ], [ %49, %42 ]
  %53 = phi i32 [ %67, %65 ], [ 0, %42 ]
  %54 = getelementptr %struct.gpio_desc, ptr %47, i32 %53
  %55 = getelementptr %struct.gpio_desc, ptr %47, i32 %53, i32 1
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %56, 2048
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %51
  %60 = getelementptr %struct.gpio_desc, ptr %47, i32 %53, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %43
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  tail call void @gpiochip_free_own_desc(ptr noundef %54) #10
  %64 = load i16, ptr %48, align 4
  br label %65

65:                                               ; preds = %63, %59, %51
  %66 = phi i16 [ %52, %51 ], [ %52, %59 ], [ %64, %63 ]
  %67 = add nuw nsw i32 %53, 1
  %68 = zext i16 %66 to i32
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %51, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %2, align 4
  br label %72

72:                                               ; preds = %70, %42
  %73 = phi ptr [ %71, %70 ], [ %43, %42 ]
  %74 = getelementptr inbounds %struct.device_node, ptr %73, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %74) #10
  br label %75

75:                                               ; preds = %72, %37, %31, %24, %20, %14, %9, %5, %3
  %76 = phi i32 [ %30, %24 ], [ 1, %5 ], [ 1, %9 ], [ 1, %14 ], [ 1, %31 ], [ 1, %37 ], [ 1, %20 ], [ 1, %3 ], [ 1, %72 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_mm_gpiochip_add_data(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, ptr noundef %0) #10
  store ptr %4, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #10
  %8 = getelementptr inbounds %struct.of_mm_gpio_chip, ptr %1, i32 0, i32 2
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 19
  store i32 -1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.of_mm_gpio_chip, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void %13(ptr noundef %1) #10
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 39
  store ptr %0, ptr %17, align 4
  %18 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %8, align 4
  tail call void @iounmap(ptr noundef %21) #10
  br label %22

22:                                               ; preds = %20, %6
  %23 = phi i32 [ %18, %20 ], [ -12, %6 ]
  %24 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %24) #10
  br label %25

25:                                               ; preds = %22, %3
  %26 = phi i32 [ %23, %22 ], [ -12, %3 ]
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %0, i32 noundef %26) #11
  br label %28

28:                                               ; preds = %25, %16
  %29 = phi i32 [ %26, %25 ], [ 0, %16 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_mm_gpiochip_remove(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  tail call void @gpiochip_remove(ptr noundef nonnull %0) #10
  %4 = getelementptr inbounds %struct.of_mm_gpio_chip, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @iounmap(ptr noundef %5) #10
  %6 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %6) #10
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_gpiochip_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 39
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %129, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 41
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 40
  br i1 %12, label %14, label %15

14:                                               ; preds = %9
  store i32 2, ptr %13, align 4
  store ptr @of_gpio_simple_xlate, ptr %10, align 4
  br label %18

15:                                               ; preds = %9
  %16 = load i32, ptr %13, align 4
  %17 = icmp ugt i32 %16, 16
  br i1 %17, label %129, label %18

18:                                               ; preds = %15, %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %19 = tail call i32 @of_property_count_elems_of_size(ptr noundef nonnull %7, ptr noundef nonnull @.str.2, i32 noundef 4) #10
  %20 = and i32 %19, -2147483647
  %21 = icmp eq i32 %20, 0
  %22 = icmp sgt i32 %19, 0
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %45

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %26 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 38
  br label %27

27:                                               ; preds = %42, %24
  %28 = phi i32 [ 0, %24 ], [ %43, %42 ]
  %29 = call i32 @of_property_read_u32_index(ptr noundef nonnull %7, ptr noundef nonnull @.str.2, i32 noundef %28, ptr noundef nonnull %4) #10
  %30 = or i32 %28, 1
  %31 = call i32 @of_property_read_u32_index(ptr noundef nonnull %7, ptr noundef nonnull @.str.2, i32 noundef %30, ptr noundef nonnull %5) #10
  %32 = load i32, ptr %4, align 4
  %33 = load i16, ptr %25, align 4
  %34 = zext i16 %33 to i32
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load i32, ptr %5, align 4
  %38 = add i32 %37, %32
  %39 = icmp ult i32 %38, %34
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load ptr, ptr %26, align 4
  call void @__bitmap_clear(ptr noundef %41, i32 noundef %32, i32 noundef %37) #10
  br label %42

42:                                               ; preds = %40, %36, %27
  %43 = add i32 %28, 2
  %44 = icmp slt i32 %43, %19
  br i1 %44, label %27, label %45

45:                                               ; preds = %42, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %46 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %108, label %48

48:                                               ; preds = %45
  %49 = call ptr @of_find_property(ptr noundef nonnull %46, ptr noundef nonnull @of_gpiochip_add_pin_range.group_names_propname, ptr noundef null) #10
  %50 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %46, ptr noundef nonnull @.str.40, ptr noundef null, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %2) #10
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %108

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2
  %54 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2, i32 2
  %55 = icmp eq ptr %49, null
  %56 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2, i32 1
  br label %57

57:                                               ; preds = %102, %52
  %58 = phi i32 [ 0, %52 ], [ %103, %102 ]
  %59 = load ptr, ptr %2, align 4
  %60 = call ptr @of_pinctrl_get(ptr noundef %59) #10
  %61 = load ptr, ptr %2, align 4
  call void @of_node_put(ptr noundef %61) #10
  %62 = icmp eq ptr %60, null
  br i1 %62, label %106, label %63

63:                                               ; preds = %57
  %64 = load i32, ptr %54, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %63
  br i1 %55, label %74, label %67

67:                                               ; preds = %66
  %68 = call i32 @of_property_read_string_helper(ptr noundef nonnull %46, ptr noundef nonnull @of_gpiochip_add_pin_range.group_names_propname, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %58) #10
  %69 = load ptr, ptr %3, align 4
  %70 = load i8, ptr %69, align 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull %46) #11
  br label %108

74:                                               ; preds = %67, %66
  %75 = call ptr @pinctrl_dev_get_devname(ptr noundef nonnull %60) #10
  %76 = load i32, ptr %53, align 4
  %77 = load i32, ptr %56, align 4
  %78 = load i32, ptr %54, align 4
  %79 = call i32 @gpiochip_add_pin_range(ptr noundef %0, ptr noundef %75, i32 noundef %76, i32 noundef %77, i32 noundef %78) #10
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %102, label %106

81:                                               ; preds = %63
  %82 = load i32, ptr %56, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull %46) #11
  br label %108

86:                                               ; preds = %81
  br i1 %55, label %87, label %89

87:                                               ; preds = %86
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %46, ptr noundef nonnull @of_gpiochip_add_pin_range.group_names_propname) #11
  br label %108

89:                                               ; preds = %86
  %90 = call i32 @of_property_read_string_helper(ptr noundef nonnull %46, ptr noundef nonnull @of_gpiochip_add_pin_range.group_names_propname, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %58) #10
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %92, label %108

92:                                               ; preds = %89
  %93 = load ptr, ptr %3, align 4
  %94 = load i8, ptr %93, align 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull %46) #11
  br label %108

98:                                               ; preds = %92
  %99 = load i32, ptr %53, align 4
  %100 = call i32 @gpiochip_add_pingroup_range(ptr noundef %0, ptr noundef nonnull %60, i32 noundef %99, ptr noundef %93) #10
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98, %74
  %103 = add i32 %58, 1
  %104 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %46, ptr noundef nonnull @.str.40, ptr noundef null, i32 noundef 3, i32 noundef %103, ptr noundef nonnull %2) #10
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %57, label %108

106:                                              ; preds = %98, %74, %57
  %107 = phi i32 [ -517, %57 ], [ %79, %74 ], [ %100, %98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #10
  br label %129

108:                                              ; preds = %102, %96, %89, %87, %84, %72, %48, %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #10
  %109 = load ptr, ptr %6, align 4
  %110 = call ptr @of_node_get(ptr noundef %109) #10
  %111 = load ptr, ptr %6, align 4
  %112 = call ptr @of_get_next_available_child(ptr noundef %111, ptr noundef null) #10
  %113 = icmp eq ptr %112, null
  br i1 %113, label %129, label %114

114:                                              ; preds = %123, %108
  %115 = phi ptr [ %125, %123 ], [ %112, %108 ]
  %116 = call ptr @of_find_property(ptr noundef nonnull %115, ptr noundef nonnull @.str.32, ptr noundef null) #10
  %117 = icmp eq ptr %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %114
  %119 = call fastcc i32 @of_gpiochip_add_hog(ptr noundef %0, ptr noundef nonnull %115) #10
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.device_node, ptr %115, i32 0, i32 10
  call void @_set_bit(i32 noundef 3, ptr noundef %122) #10
  br label %123

123:                                              ; preds = %121, %114
  %124 = load ptr, ptr %6, align 4
  %125 = call ptr @of_get_next_available_child(ptr noundef %124, ptr noundef nonnull %115) #10
  %126 = icmp eq ptr %125, null
  br i1 %126, label %129, label %114

127:                                              ; preds = %118
  call void @of_node_put(ptr noundef nonnull %115) #10
  %128 = load ptr, ptr %6, align 4
  call void @of_node_put(ptr noundef %128) #10
  br label %129

129:                                              ; preds = %127, %123, %108, %106, %15, %1
  %130 = phi i32 [ 0, %1 ], [ -22, %15 ], [ %107, %106 ], [ %119, %127 ], [ 0, %108 ], [ 0, %123 ]
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_gpio_simple_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 40
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 810, i32 noundef 9, ptr noundef null) #10
  br label %26

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, %5
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 814, i32 noundef 9, ptr noundef null) #10
  br label %26

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = icmp eq ptr %2, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 1
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %2, align 4
  %25 = load i32, ptr %14, align 4
  br label %26

26:                                               ; preds = %22, %20, %13, %12, %7
  %27 = phi i32 [ -22, %7 ], [ -22, %12 ], [ -22, %13 ], [ %25, %22 ], [ %15, %20 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_gpiochip_remove(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 39
  %3 = load ptr, ptr %2, align 4
  tail call void @of_node_put(ptr noundef %3) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @of_gpio_dev_init(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 1, i32 25
  store ptr %8, ptr %9, align 8
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 39
  %16 = load ptr, ptr %15, align 4
  br label %28

17:                                               ; preds = %10
  %18 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %25, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.fwnode_handle, ptr %12, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @of_fwnode_ops
  %23 = getelementptr i8, ptr %12, i32 -12
  %24 = select i1 %22, ptr %23, ptr null
  br label %25

25:                                               ; preds = %19, %17
  %26 = phi ptr [ null, %17 ], [ %24, %19 ]
  %27 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 39
  store ptr %26, ptr %27, align 4
  br label %28

28:                                               ; preds = %25, %14
  %29 = phi ptr [ %16, %14 ], [ %26, %25 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 1, i32 25
  store ptr %29, ptr %32, align 8
  br label %37

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 39
  %35 = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 1, i32 25
  %36 = load ptr, ptr %35, align 8
  store ptr %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %33, %31
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_parse_phandle_with_args_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_find(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_gpiochip_match_node_and_xlate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 1, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %1, align 4
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 41
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %0, ptr noundef %1, ptr noundef null) #10
  %15 = xor i32 %14, -1
  %16 = lshr i32 %15, 31
  br label %17

17:                                               ; preds = %13, %9, %2
  %18 = phi i32 [ 0, %9 ], [ 0, %2 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_desc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reconfig_get_state_change(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @of_gpiochip_add_hog(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store ptr null, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds i8, ptr %4, i32 8
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %7, i8 0, i32 64, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %76, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.of_phandle_args, ptr %4, i32 0, i32 1
  %13 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 40
  %14 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 41
  br label %15

15:                                               ; preds = %86, %11
  %16 = phi ptr [ %9, %11 ], [ %89, %86 ]
  %17 = phi i32 [ 0, %11 ], [ %88, %86 ]
  store i32 0, ptr %3, align 4
  %18 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %16, ptr noundef nonnull @.str.11, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #10
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = inttoptr i32 %18 to ptr
  br label %77

22:                                               ; preds = %15
  store ptr %16, ptr %4, align 4
  %23 = load i32, ptr %5, align 4
  store i32 %23, ptr %12, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %41, label %29

25:                                               ; preds = %29
  %26 = add nuw i32 %31, 1
  %27 = load i32, ptr %5, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25, %22
  %30 = phi i32 [ %27, %25 ], [ %23, %22 ]
  %31 = phi i32 [ %26, %25 ], [ 0, %22 ]
  %32 = mul i32 %30, %17
  %33 = add i32 %32, %31
  %34 = getelementptr %struct.of_phandle_args, ptr %4, i32 0, i32 2, i32 %31
  %35 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %33, ptr noundef %34) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %25, label %37

37:                                               ; preds = %29
  %38 = inttoptr i32 %35 to ptr
  br label %77

39:                                               ; preds = %25
  %40 = load i32, ptr %12, align 4
  br label %41

41:                                               ; preds = %39, %22
  %42 = phi i32 [ %40, %39 ], [ 0, %22 ]
  %43 = load i32, ptr %13, align 4
  %44 = icmp eq i32 %43, %42
  br i1 %44, label %45, label %76

45:                                               ; preds = %41
  %46 = load ptr, ptr %14, align 4
  %47 = call i32 %46(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3) #10
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = inttoptr i32 %47 to ptr
  br label %53

51:                                               ; preds = %45
  %52 = call ptr @gpiochip_get_desc(ptr noundef %0, i32 noundef %47) #10
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi ptr [ %50, %49 ], [ %52, %51 ]
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %77, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %3, align 4
  %58 = and i32 %57, 57
  %59 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef null) #10
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.35, ptr noundef null) #10
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef null) #10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = call i32 @desc_to_gpio(ptr noundef %54) #10
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %68, ptr noundef %1) #11
  br label %76

70:                                               ; preds = %64, %61, %56
  %71 = phi i32 [ 1, %56 ], [ 3, %61 ], [ 7, %64 ]
  %72 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.38, ptr noundef nonnull %6) #10
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %1, align 4
  store ptr %75, ptr %6, align 4
  br label %77

76:                                               ; preds = %86, %67, %41, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %91

77:                                               ; preds = %74, %70, %53, %37, %20
  %78 = phi i32 [ 0, %53 ], [ %71, %70 ], [ %71, %74 ], [ 0, %37 ], [ 0, %20 ]
  %79 = phi i32 [ 0, %53 ], [ %58, %70 ], [ %58, %74 ], [ 0, %37 ], [ 0, %20 ]
  %80 = phi ptr [ %54, %53 ], [ %54, %70 ], [ %54, %74 ], [ %38, %37 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %81 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %91, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr %6, align 4
  %84 = call i32 @gpiod_hog(ptr noundef %80, ptr noundef %83, i32 noundef %79, i32 noundef %78) #10
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.gpio_desc, ptr %80, i32 0, i32 4
  store ptr %1, ptr %87, align 4
  %88 = add i32 %17, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %7, i8 0, i32 64, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %89 = load ptr, ptr %8, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %76, label %15

91:                                               ; preds = %82, %77, %76
  %92 = phi i32 [ 0, %76 ], [ 0, %77 ], [ %84, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @of_gpiochip_match_node(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #9 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 1, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, %1
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_hog(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_free_own_desc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_pinctrl_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_devname(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pingroup_range(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
