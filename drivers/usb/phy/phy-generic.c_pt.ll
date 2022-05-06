; ModuleID = '/llk/IR/drivers/usb/phy/phy-generic.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-generic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_phy_generic_register:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_phy_generic_register\22\09\09\09\09\09"
module asm "__kstrtabns_usb_phy_generic_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_phy_generic_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_phy_generic_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_usb_phy_generic_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gen_phy_init:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gen_phy_init\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gen_phy_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gen_phy_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gen_phy_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gen_phy_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_phy_gen_create_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_phy_gen_create_phy\22\09\09\09\09\09"
module asm "__kstrtabns_usb_phy_gen_create_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.usb_phy_generic = type { %struct.usb_phy, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = private unnamed_addr constant [16 x i8] c"usb_phy_generic\00", align 1
@__kstrtab_usb_phy_generic_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_phy_generic_register = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_phy_generic_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_phy_generic_register to i32), ptr @__kstrtab_usb_phy_generic_register, ptr @__kstrtabns_usb_phy_generic_register }, section "___ksymtab_gpl+usb_phy_generic_register", align 4
@__kstrtab_usb_phy_generic_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_phy_generic_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_phy_generic_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_phy_generic_unregister to i32), ptr @__kstrtab_usb_phy_generic_unregister, ptr @__kstrtabns_usb_phy_generic_unregister }, section "___ksymtab_gpl+usb_phy_generic_unregister", align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to enable power\0A\00", align 1
@__kstrtab_usb_gen_phy_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gen_phy_init = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gen_phy_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gen_phy_init to i32), ptr @__kstrtab_usb_gen_phy_init, ptr @__kstrtabns_usb_gen_phy_init }, section "___ksymtab_gpl+usb_gen_phy_init", align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to disable power\0A\00", align 1
@__kstrtab_usb_gen_phy_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gen_phy_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gen_phy_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gen_phy_shutdown to i32), ptr @__kstrtab_usb_gen_phy_shutdown, ptr @__kstrtabns_usb_gen_phy_shutdown }, section "___ksymtab_gpl+usb_gen_phy_shutdown", align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"vcc-supply\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"vbus-detect\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Error requesting RESET or VBUS GPIO\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"main_clk\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Error setting clock rate\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"nop-xceiv\00", align 1
@__kstrtab_usb_phy_gen_create_phy = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_phy_gen_create_phy = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_phy_gen_create_phy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_phy_gen_create_phy to i32), ptr @__kstrtab_usb_phy_gen_create_phy, ptr @__kstrtabns_usb_phy_gen_create_phy }, section "___ksymtab_gpl+usb_phy_gen_create_phy", align 4
@__initcall__kmod_phy_generic__254_358_usb_phy_generic_init4 = internal global ptr @usb_phy_generic_init, section ".initcall4.init", align 4
@usb_phy_generic_driver = internal global %struct.platform_driver { ptr @usb_phy_generic_probe, ptr @usb_phy_generic_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nop_xceiv_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_usb_phy_generic_exit = internal global ptr @usb_phy_generic_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias255 = internal constant [43 x i8] c"phy_generic.alias=platform:usb_phy_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [41 x i8] c"phy_generic.author=Texas Instruments Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_description257 = internal constant [51 x i8] c"phy_generic.description=NOP USB Transceiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file258 = internal constant [45 x i8] c"phy_generic.file=drivers/usb/phy/phy-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [24 x i8] c"phy_generic.license=GPL\00", section ".modinfo", align 1
@nop_xceiv_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"usb-nop-xceiv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"vbus_detect\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"can't request irq %i, err: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"can't register transceiver, err: %d\0A\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias255, ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_license259, ptr @__exitcall_usb_phy_generic_exit, ptr @__initcall__kmod_phy_generic__254_358_usb_phy_generic_init4, ptr @__ksymtab_usb_gen_phy_init, ptr @__ksymtab_usb_gen_phy_shutdown, ptr @__ksymtab_usb_phy_gen_create_phy, ptr @__ksymtab_usb_phy_generic_register, ptr @__ksymtab_usb_phy_generic_unregister, ptr @usb_phy_generic_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_phy_generic_register() #0 {
  %1 = alloca %struct.platform_device_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #7
  %2 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false) #7
  store ptr @.str, ptr %2, align 4
  %3 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 4
  store i32 -2, ptr %3, align 8
  %4 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false) #7
  %5 = call ptr @platform_device_register_full(ptr noundef nonnull %1) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #7
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_phy_generic_unregister(ptr noundef %0) #0 {
  tail call void @platform_device_unregister(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_gen_phy_init(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usb_phy_generic, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @regulator_enable(ptr noundef %6) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.1) #8
  br label %13

13:                                               ; preds = %11, %8, %1
  %14 = getelementptr inbounds %struct.usb_phy_generic, ptr %4, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @clk_prepare(ptr noundef %15) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = tail call i32 @clk_enable(ptr noundef %15) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @clk_unprepare(ptr noundef %15) #7
  br label %30

24:                                               ; preds = %20, %13
  %25 = getelementptr inbounds %struct.usb_phy_generic, ptr %4, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %26, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %29 = load ptr, ptr %25, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %29, i32 noundef 0) #7
  br label %30

30:                                               ; preds = %28, %24, %23, %17
  %31 = phi i32 [ 0, %24 ], [ 0, %28 ], [ %21, %23 ], [ %18, %17 ]
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_gen_phy_shutdown(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usb_phy_generic, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %6, i32 noundef 1) #7
  %7 = getelementptr inbounds %struct.usb_phy_generic, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @clk_unprepare(ptr noundef %8) #7
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.usb_phy_generic, ptr %4, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @regulator_disable(ptr noundef %13) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.2) #8
  br label %20

20:                                               ; preds = %18, %15, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_phy_gen_create_phy(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  store i32 0, ptr %3, align 4
  br label %11

11:                                               ; preds = %10, %7
  %12 = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.4, ptr noundef null) #7
  %13 = icmp eq ptr %12, null
  %14 = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.5, ptr noundef null) #7
  %15 = icmp eq ptr %14, null
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i1 [ %13, %11 ], [ true, %2 ]
  %18 = phi i1 [ %15, %11 ], [ true, %2 ]
  %19 = call ptr @devm_gpiod_get_optional(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 0) #7
  %20 = getelementptr inbounds %struct.usb_phy_generic, ptr %1, i32 0, i32 4
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = call ptr @devm_gpiod_get_optional(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 0) #7
  %24 = getelementptr inbounds %struct.usb_phy_generic, ptr %1, i32 0, i32 5
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %16
  %27 = phi ptr [ %19, %16 ], [ %23, %22 ]
  %28 = ptrtoint ptr %27 to i32
  switch i32 %28, label %29 [
    i32 -517, label %72
    i32 0, label %30
  ]

29:                                               ; preds = %26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8) #8
  br label %72

30:                                               ; preds = %26, %22
  %31 = load ptr, ptr %20, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i32 @gpiod_direction_output(ptr noundef nonnull %31, i32 noundef 1) #7
  br label %35

35:                                               ; preds = %33, %30
  %36 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 44, i32 noundef 3520) #7
  %37 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 5
  store ptr %36, ptr %37, align 4
  %38 = icmp eq ptr %36, null
  br i1 %38, label %72, label %39

39:                                               ; preds = %35
  %40 = call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.9) #7
  %41 = getelementptr inbounds %struct.usb_phy_generic, ptr %1, i32 0, i32 2
  store ptr %40, ptr %41, align 4
  %42 = icmp ule ptr %40, inttoptr (i32 -4096 to ptr)
  %43 = select i1 %42, i1 true, i1 %18
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = ptrtoint ptr %40 to i32
  br label %72

46:                                               ; preds = %39
  %47 = load i32, ptr %3, align 4
  %48 = icmp ne i32 %47, 0
  %49 = select i1 %42, i1 %48, i1 false
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = call i32 @clk_set_rate(ptr noundef %40, i32 noundef %47) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10) #8
  br label %72

54:                                               ; preds = %50, %46
  %55 = call ptr @devm_regulator_get(ptr noundef %0, ptr noundef nonnull @.str.11) #7
  %56 = getelementptr inbounds %struct.usb_phy_generic, ptr %1, i32 0, i32 3
  store ptr %55, ptr %56, align 4
  %57 = icmp ule ptr %55, inttoptr (i32 -4096 to ptr)
  %58 = select i1 %57, i1 true, i1 %17
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.usb_phy_generic, ptr %1, i32 0, i32 1
  store ptr %0, ptr %60, align 4
  store ptr %0, ptr %1, align 4
  %61 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 1
  store ptr @.str.12, ptr %61, align 4
  %62 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 26
  store ptr @nop_set_suspend, ptr %62, align 4
  %63 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 3
  store i32 1, ptr %63, align 4
  %64 = load ptr, ptr %37, align 4
  %65 = getelementptr inbounds %struct.usb_otg, ptr %64, i32 0, i32 5
  store i32 0, ptr %65, align 4
  %66 = load ptr, ptr %37, align 4
  %67 = getelementptr inbounds %struct.usb_otg, ptr %66, i32 0, i32 2
  store ptr %1, ptr %67, align 4
  %68 = load ptr, ptr %37, align 4
  %69 = getelementptr inbounds %struct.usb_otg, ptr %68, i32 0, i32 6
  store ptr @nop_set_host, ptr %69, align 4
  %70 = load ptr, ptr %37, align 4
  %71 = getelementptr inbounds %struct.usb_otg, ptr %70, i32 0, i32 7
  store ptr @nop_set_peripheral, ptr %71, align 4
  br label %72

72:                                               ; preds = %59, %54, %53, %44, %35, %29, %26
  %73 = phi i32 [ %28, %29 ], [ %45, %44 ], [ %51, %53 ], [ 0, %59 ], [ %28, %26 ], [ -12, %35 ], [ -517, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nop_set_suspend(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_phy_generic, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @clk_disable(ptr noundef %7) #7
  br label %18

12:                                               ; preds = %9
  %13 = tail call i32 @clk_prepare(ptr noundef %7) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call i32 @clk_enable(ptr noundef %7) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %11
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %19

19:                                               ; preds = %18, %15, %12, %2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nop_set_host(ptr noundef writeonly %0, ptr noundef %1) #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 3
  %7 = select i1 %5, i32 -19, i32 0
  store ptr %1, ptr %6, align 4
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -19, %2 ], [ %7, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nop_set_peripheral(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 4
  br i1 %5, label %7, label %8

7:                                                ; preds = %4
  store ptr null, ptr %6, align 4
  br label %18

8:                                                ; preds = %4
  store ptr %1, ptr %6, align 4
  %9 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_phy, ptr %14, i32 0, i32 18
  %16 = tail call i32 @atomic_notifier_call_chain(ptr noundef %15, i32 noundef 1, ptr noundef nonnull %1) #7
  br label %18

17:                                               ; preds = %8
  store i32 1, ptr %9, align 4
  br label %18

18:                                               ; preds = %17, %12, %7, %2
  %19 = phi i32 [ -19, %7 ], [ -19, %2 ], [ 0, %17 ], [ 0, %12 ]
  ret i32 %19
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @usb_phy_generic_init() #5 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @usb_phy_generic_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @usb_phy_generic_exit() #5 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @usb_phy_generic_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_phy_generic_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 228, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @usb_phy_gen_create_phy(ptr noundef %2, ptr noundef nonnull %3)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.usb_phy_generic, ptr %3, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %10) #7
  %14 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %13, ptr noundef null, ptr noundef nonnull @nop_gpio_vbus_thread, i32 noundef 8323, ptr noundef nonnull @.str.13, ptr noundef nonnull %3) #7
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr %9, align 4
  br i1 %15, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @gpiod_to_irq(ptr noundef %16) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %18, i32 noundef %14) #8
  br label %34

19:                                               ; preds = %12
  %20 = tail call i32 @gpiod_get_value(ptr noundef %16) #7
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 1, i32 3
  %23 = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.usb_otg, ptr %24, i32 0, i32 5
  store i32 %22, ptr %25, align 4
  br label %26

26:                                               ; preds = %19, %8
  %27 = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 22
  store ptr @usb_gen_phy_init, ptr %27, align 4
  %28 = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 23
  store ptr @usb_gen_phy_shutdown, ptr %28, align 4
  %29 = tail call i32 @usb_add_phy_dev(ptr noundef nonnull %3) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef %29) #8
  br label %34

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %33, align 8
  br label %34

34:                                               ; preds = %32, %31, %17, %5, %1
  %35 = phi i32 [ %14, %17 ], [ %29, %31 ], [ 0, %32 ], [ -12, %1 ], [ %6, %5 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_phy_generic_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @usb_remove_phy(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nop_gpio_vbus_thread(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_phy_generic, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @gpiod_get_value(ptr noundef %6) #7
  %8 = getelementptr inbounds %struct.usb_phy_generic, ptr %1, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %53, label %11

11:                                               ; preds = %2
  store i32 %7, ptr %8, align 4
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.usb_otg, ptr %4, i32 0, i32 5
  store i32 3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 4
  store i32 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.usb_phy_generic, ptr %1, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.usb_phy_generic, ptr %1, i32 0, i32 7
  %21 = load i8, ptr %20, align 4, !range !8
  %22 = icmp eq i8 %21, 0
  %23 = tail call i32 @regulator_set_current_limit(ptr noundef nonnull %17, i32 noundef 0, i32 noundef 100000) #7
  br i1 %22, label %24, label %28

24:                                               ; preds = %19
  %25 = tail call i32 @regulator_enable(ptr noundef nonnull %17) #7
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %24
  store i8 1, ptr %20, align 4
  br label %28

28:                                               ; preds = %27, %19
  %29 = getelementptr inbounds %struct.usb_phy_generic, ptr %1, i32 0, i32 8
  store i32 100, ptr %29, align 4
  br label %47

30:                                               ; preds = %11
  %31 = getelementptr inbounds %struct.usb_phy_generic, ptr %1, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.usb_phy_generic, ptr %1, i32 0, i32 7
  %36 = load i8, ptr %35, align 4, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = tail call i32 @regulator_disable(ptr noundef nonnull %32) #7
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  store i8 0, ptr %35, align 4
  br label %42

42:                                               ; preds = %41, %34
  %43 = getelementptr inbounds %struct.usb_phy_generic, ptr %1, i32 0, i32 8
  store i32 0, ptr %43, align 4
  br label %44

44:                                               ; preds = %42, %38, %30
  %45 = getelementptr inbounds %struct.usb_otg, ptr %4, i32 0, i32 5
  store i32 1, ptr %45, align 4
  %46 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 4
  store i32 0, ptr %46, align 4
  br label %47

47:                                               ; preds = %44, %28, %24, %13
  %48 = phi i32 [ 0, %44 ], [ 1, %13 ], [ 1, %24 ], [ 1, %28 ]
  %49 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 18
  %50 = getelementptr inbounds %struct.usb_otg, ptr %4, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @atomic_notifier_call_chain(ptr noundef %49, i32 noundef %48, ptr noundef %51) #7
  br label %53

53:                                               ; preds = %47, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i8 0, i8 2}
