; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sunxi_ccu_desc = type { ptr, i32, ptr, ptr, i32 }
%struct.ccu_reset_map = type { i16, i32 }
%struct.ccu_gate = type { i32, %struct.ccu_common }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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

@__initcall__kmod_sun9i_a80_usb_ccu__162_141_sun9i_a80_usb_clk_driver_init6 = internal global ptr @sun9i_a80_usb_clk_driver_init, section ".initcall6.init", align 4
@sun9i_a80_usb_clk_driver = internal global %struct.platform_driver { ptr @sun9i_a80_usb_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun9i_a80_usb_clk_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sun9i_a80_usb_clk_driver_exit = internal global ptr @sun9i_a80_usb_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns163 = internal constant [38 x i8] c"sun9i_a80_usb_ccu.import_ns=SUNXI_CCU\00", section ".modinfo", align 1
@__UNIQUE_ID_file164 = internal constant [62 x i8] c"sun9i_a80_usb_ccu.file=drivers/clk/sunxi-ng/sun9i-a80-usb-ccu\00", section ".modinfo", align 1
@__UNIQUE_ID_license165 = internal constant [30 x i8] c"sun9i_a80_usb_ccu.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [19 x i8] c"sun9i-a80-usb-clks\00", align 1
@sun9i_a80_usb_clk_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-usb-clks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Couldn't get bus clk: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Couldn't enable bus clk: %d\0A\00", align 1
@sun9i_a80_usb_clk_desc = internal constant %struct.sunxi_ccu_desc { ptr @sun9i_a80_usb_clks, i32 11, ptr @sun9i_a80_usb_hw_clks, ptr @sun9i_a80_usb_resets, i32 8 }, align 4
@sun9i_a80_usb_clks = internal global [11 x ptr] [ptr getelementptr (i8, ptr @bus_hci0_clk, i64 4), ptr getelementptr (i8, ptr @usb_ohci0_clk, i64 4), ptr getelementptr (i8, ptr @bus_hci1_clk, i64 4), ptr getelementptr (i8, ptr @bus_hci2_clk, i64 4), ptr getelementptr (i8, ptr @usb_ohci2_clk, i64 4), ptr getelementptr (i8, ptr @usb0_phy_clk, i64 4), ptr getelementptr (i8, ptr @usb1_hsic_clk, i64 4), ptr getelementptr (i8, ptr @usb1_phy_clk, i64 4), ptr getelementptr (i8, ptr @usb2_hsic_clk, i64 4), ptr getelementptr (i8, ptr @usb2_phy_clk, i64 4), ptr getelementptr (i8, ptr @usb_hsic_clk, i64 4)], align 4
@sun9i_a80_usb_resets = internal global [8 x %struct.ccu_reset_map] [%struct.ccu_reset_map { i16 0, i32 131072 }, %struct.ccu_reset_map { i16 0, i32 262144 }, %struct.ccu_reset_map { i16 0, i32 524288 }, %struct.ccu_reset_map { i16 4, i32 131072 }, %struct.ccu_reset_map { i16 4, i32 262144 }, %struct.ccu_reset_map { i16 4, i32 524288 }, %struct.ccu_reset_map { i16 4, i32 1048576 }, %struct.ccu_reset_map { i16 4, i32 2097152 }], align 4
@bus_hci0_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral } } }, align 4
@usb_ohci0_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.6 } } }, align 4
@bus_hci1_clk = internal global %struct.ccu_gate { i32 8, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.9 } } }, align 4
@bus_hci2_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.11 } } }, align 4
@usb_ohci2_clk = internal global %struct.ccu_gate { i32 64, %struct.ccu_common { ptr null, i16 0, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.13 } } }, align 4
@usb0_phy_clk = internal global %struct.ccu_gate { i32 2, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 } } }, align 4
@usb1_hsic_clk = internal global %struct.ccu_gate { i32 4, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.17 } } }, align 4
@usb1_phy_clk = internal global %struct.ccu_gate { i32 8, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 } } }, align 4
@usb2_hsic_clk = internal global %struct.ccu_gate { i32 16, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 } } }, align 4
@usb2_phy_clk = internal global %struct.ccu_gate { i32 32, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.23 } } }, align 4
@usb_hsic_clk = internal global %struct.ccu_gate { i32 1024, %struct.ccu_common { ptr null, i16 4, i16 0, i32 0, i32 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 } } }, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"bus-hci0\00", align 1
@ccu_gate_ops = external dso_local constant %struct.clk_ops, align 4
@clk_parent_bus = internal constant [1 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.1, ptr null, i32 0 }], align 4
@.compoundliteral = internal global %struct.clk_init_data { ptr @.str.4, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_bus, ptr null, i8 1, i32 0 }, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"usb-ohci0\00", align 1
@clk_parent_hosc = internal constant [1 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.7, ptr null, i32 0 }], align 4
@.compoundliteral.6 = internal global %struct.clk_init_data { ptr @.str.5, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_hosc, ptr null, i8 1, i32 0 }, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"hosc\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"bus-hci1\00", align 1
@.compoundliteral.9 = internal global %struct.clk_init_data { ptr @.str.8, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_bus, ptr null, i8 1, i32 0 }, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"bus-hci2\00", align 1
@.compoundliteral.11 = internal global %struct.clk_init_data { ptr @.str.10, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_bus, ptr null, i8 1, i32 0 }, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"usb-ohci2\00", align 1
@.compoundliteral.13 = internal global %struct.clk_init_data { ptr @.str.12, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_hosc, ptr null, i8 1, i32 0 }, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"usb0-phy\00", align 1
@.compoundliteral.15 = internal global %struct.clk_init_data { ptr @.str.14, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_hosc, ptr null, i8 1, i32 0 }, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"usb1-hsic\00", align 1
@.compoundliteral.17 = internal global %struct.clk_init_data { ptr @.str.16, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_hosc, ptr null, i8 1, i32 0 }, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"usb1-phy\00", align 1
@.compoundliteral.19 = internal global %struct.clk_init_data { ptr @.str.18, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_hosc, ptr null, i8 1, i32 0 }, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"usb2-hsic\00", align 1
@.compoundliteral.21 = internal global %struct.clk_init_data { ptr @.str.20, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_hosc, ptr null, i8 1, i32 0 }, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"usb2-phy\00", align 1
@.compoundliteral.23 = internal global %struct.clk_init_data { ptr @.str.22, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_hosc, ptr null, i8 1, i32 0 }, align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"usb-hsic\00", align 1
@.compoundliteral.25 = internal global %struct.clk_init_data { ptr @.str.24, ptr @ccu_gate_ops, ptr null, ptr @clk_parent_hosc, ptr null, i8 1, i32 0 }, align 4
@sun9i_a80_usb_hw_clks = internal global { i32, [11 x ptr] } { i32 11, [11 x ptr] [ptr getelementptr (i8, ptr @bus_hci0_clk, i64 24), ptr getelementptr (i8, ptr @usb_ohci0_clk, i64 24), ptr getelementptr (i8, ptr @bus_hci1_clk, i64 24), ptr getelementptr (i8, ptr @bus_hci2_clk, i64 24), ptr getelementptr (i8, ptr @usb_ohci2_clk, i64 24), ptr getelementptr (i8, ptr @usb0_phy_clk, i64 24), ptr getelementptr (i8, ptr @usb1_hsic_clk, i64 24), ptr getelementptr (i8, ptr @usb1_phy_clk, i64 24), ptr getelementptr (i8, ptr @usb2_hsic_clk, i64 24), ptr getelementptr (i8, ptr @usb2_phy_clk, i64 24), ptr getelementptr (i8, ptr @usb_hsic_clk, i64 24)] }, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file164, ptr @__UNIQUE_ID_import_ns163, ptr @__UNIQUE_ID_license165, ptr @__exitcall_sun9i_a80_usb_clk_driver_exit, ptr @__initcall__kmod_sun9i_a80_usb_ccu__162_141_sun9i_a80_usb_clk_driver_init6, ptr @sun9i_a80_usb_clk_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun9i_a80_usb_clk_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun9i_a80_usb_clk_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun9i_a80_usb_clk_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun9i_a80_usb_clk_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun9i_a80_usb_clk_probe(ptr noundef %0) #2 {
  %2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %27

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.1) #4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = icmp eq ptr %8, inttoptr (i32 -517 to ptr)
  br i1 %11, label %27, label %12

12:                                               ; preds = %10
  %13 = ptrtoint ptr %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef %13) #5
  br label %27

14:                                               ; preds = %6
  %15 = tail call i32 @clk_prepare(ptr noundef %8) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = tail call i32 @clk_enable(ptr noundef %8) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  tail call void @clk_unprepare(ptr noundef %8) #4
  br label %21

21:                                               ; preds = %20, %14
  %22 = phi i32 [ %18, %20 ], [ %15, %14 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef %22) #5
  br label %27

23:                                               ; preds = %17
  %24 = tail call i32 @devm_sunxi_ccu_probe(ptr noundef %7, ptr noundef %2, ptr noundef nonnull @sun9i_a80_usb_clk_desc) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @clk_disable(ptr noundef %8) #4
  tail call void @clk_unprepare(ptr noundef %8) #4
  br label %27

27:                                               ; preds = %26, %23, %21, %12, %10, %4
  %28 = phi i32 [ %5, %4 ], [ %22, %21 ], [ %24, %26 ], [ %13, %12 ], [ -517, %10 ], [ 0, %23 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_sunxi_ccu_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

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
