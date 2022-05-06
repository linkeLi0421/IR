; ModuleID = '/llk/IR/drivers/usb/typec/stusb160x.c_pt.bc'
source_filename = "../drivers/usb/typec/stusb160x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.stusb160x = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.typec_capability, ptr, i32, i32, i8, ptr }
%struct.typec_capability = type { i32, i32, i16, i16, i32, i32, [3 x i32], i8, ptr, ptr, ptr }
%struct.typec_partner_desc = type { i8, i32, ptr, i16 }

@stusb160x_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stusb1600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stusb1600_regmap_config }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author277 = internal constant [48 x i8] c"author=Amelie Delaunay <amelie.delaunay@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description278 = internal constant [66 x i8] c"description=STMicroelectronics STUSB160x Type-C controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license279 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@stusb1600_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 1, i32 0, i32 8, ptr @stusb160x_reg_writeable, ptr @stusb160x_reg_readable, ptr @stusb160x_reg_volatile, ptr @stusb160x_reg_precious, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 47, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@stusb160x_driver = internal global %struct.i2c_driver { i32 0, ptr null, ptr @stusb160x_remove, ptr @stusb160x_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stusb160x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stusb160x_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [10 x i8] c"stusb160x\00", align 1
@stusb160x_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stusb160x_suspend, ptr @stusb160x_resume, ptr @stusb160x_suspend, ptr @stusb160x_resume, ptr @stusb160x_suspend, ptr @stusb160x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to get Vconn status: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to enable vconn supply: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to allocate register map:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"vsys\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"vconn\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"connector\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Failed to enable main supply: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Failed to get port caps: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Failed to get connector caps: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Failed to init port: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Failed to get usb role switch: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Failed to enable VDD supply: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Unable to get pwr opmode: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"power-role\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"typec-power-opmode\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"bad power operation mode: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"attach failed: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Failed to enable Vbus supply: %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author277, ptr @__UNIQUE_ID_description278, ptr @__UNIQUE_ID_license279], section "llvm.metadata"

@__mod_of__stusb160x_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @stusb160x_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @stusb160x_driver) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @stusb160x_driver) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stusb160x_reg_writeable(ptr nocapture noundef readnone %0, i32 noundef %1) #1 {
  switch i32 %1, label %3 [
    i32 12, label %4
    i32 24, label %4
    i32 30, label %4
    i32 32, label %4
    i32 34, label %4
    i32 35, label %4
    i32 37, label %4
    i32 40, label %4
    i32 46, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stusb160x_reg_readable(ptr nocapture noundef readnone %0, i32 noundef %1) #1 {
  %3 = icmp ult i32 %1, 11
  %4 = and i32 %1, -4
  %5 = icmp eq i32 %4, 20
  %6 = or i1 %3, %5
  %7 = add i32 %1, -25
  %8 = icmp ult i32 %7, 5
  %9 = or i1 %8, %6
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = add i32 %1, -31
  %12 = icmp ult i32 %11, 17
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = trunc i32 %11 to i17
  %15 = lshr i17 33754, %14
  %16 = and i17 %15, 1
  %17 = icmp ne i17 %16, 0
  br label %18

18:                                               ; preds = %13, %10, %2
  %19 = phi i1 [ false, %2 ], [ %17, %13 ], [ true, %10 ]
  ret i1 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stusb160x_reg_volatile(ptr nocapture noundef readnone %0, i32 noundef %1) #1 {
  %3 = add i32 %1, -11
  %4 = icmp ult i32 %3, 29
  %5 = trunc i32 %3 to i29
  %6 = lshr i29 -134217219, %5
  %7 = and i29 %6, 1
  %8 = icmp ne i29 %7, 0
  %9 = select i1 %4, i1 %8, i1 false
  ret i1 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stusb160x_reg_precious(ptr nocapture noundef readnone %0, i32 noundef %1) #1 {
  %3 = add i32 %1, -11
  %4 = icmp ult i32 %3, 8
  %5 = trunc i32 %3 to i8
  %6 = lshr i8 -107, %5
  %7 = and i8 %6, 1
  %8 = icmp ne i8 %7, 0
  %9 = select i1 %4, i1 %8, i1 false
  ret i1 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stusb160x_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stusb160x, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @typec_unregister_partner(ptr noundef nonnull %6) #7
  store ptr null, ptr %5, align 4
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.stusb160x, ptr %4, i32 0, i32 11
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stusb160x, ptr %4, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regulator_disable(ptr noundef %15) #7
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.stusb160x, ptr %4, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @usb_role_switch_put(ptr noundef nonnull %19) #7
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.stusb160x, ptr %4, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  tail call void @typec_unregister_port(ptr noundef %24) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  %25 = getelementptr inbounds %struct.stusb160x, ptr %4, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @regmap_read(ptr noundef %26, i32 noundef 24, ptr noundef nonnull %2) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.1, i32 noundef %27) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %44

31:                                               ; preds = %22
  %32 = load i32, ptr %2, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.stusb160x, ptr %4, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 @regulator_disable(ptr noundef nonnull %37) #7
  br label %41

41:                                               ; preds = %39, %35
  %42 = load ptr, ptr %25, align 4
  %43 = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 32, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %44

44:                                               ; preds = %41, %31, %29
  %45 = getelementptr inbounds %struct.stusb160x, ptr %4, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = call i32 @regulator_disable(ptr noundef nonnull %46) #7
  br label %50

50:                                               ; preds = %48, %44
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stusb160x_probe(ptr noundef %0) #3 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 96, i32 noundef 3520) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %273, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %9, ptr %12, align 8
  %13 = tail call ptr @i2c_of_match_device(ptr noundef nonnull @stusb160x_of_match, ptr noundef %0) #7
  %14 = getelementptr inbounds %struct.of_device_id, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef %15, ptr noundef null, ptr noundef null) #7
  %17 = getelementptr inbounds %struct.stusb160x, ptr %9, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = ptrtoint ptr %16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef %20) #8
  br label %273

21:                                               ; preds = %11
  store ptr %8, ptr %9, align 4
  %22 = tail call ptr @devm_regulator_get_optional(ptr noundef %8, ptr noundef nonnull @.str.4) #7
  %23 = getelementptr inbounds %struct.stusb160x, ptr %9, i32 0, i32 3
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = ptrtoint ptr %22 to i32
  %27 = icmp eq ptr %22, inttoptr (i32 -19 to ptr)
  br i1 %27, label %28, label %273

28:                                               ; preds = %25
  store ptr null, ptr %23, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load ptr, ptr %9, align 4
  %31 = tail call ptr @devm_regulator_get_optional(ptr noundef %30, ptr noundef nonnull @.str.5) #7
  %32 = getelementptr inbounds %struct.stusb160x, ptr %9, i32 0, i32 2
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = ptrtoint ptr %31 to i32
  %36 = icmp eq ptr %31, inttoptr (i32 -19 to ptr)
  br i1 %36, label %37, label %273

37:                                               ; preds = %34
  store ptr null, ptr %32, align 4
  br label %38

38:                                               ; preds = %37, %29
  %39 = load ptr, ptr %9, align 4
  %40 = tail call ptr @devm_regulator_get_optional(ptr noundef %39, ptr noundef nonnull @.str.6) #7
  %41 = getelementptr inbounds %struct.stusb160x, ptr %9, i32 0, i32 4
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = ptrtoint ptr %40 to i32
  %45 = icmp eq ptr %40, inttoptr (i32 -19 to ptr)
  br i1 %45, label %46, label %273

46:                                               ; preds = %43
  store ptr null, ptr %41, align 4
  br label %47

47:                                               ; preds = %46, %38
  %48 = load ptr, ptr %9, align 4
  %49 = tail call ptr @device_get_named_child_node(ptr noundef %48, ptr noundef nonnull @.str.7) #7
  %50 = icmp eq ptr %49, null
  br i1 %50, label %273, label %51

51:                                               ; preds = %47
  tail call void @fw_devlink_purge_absent_suppliers(ptr noundef nonnull %49) #7
  %52 = load ptr, ptr %32, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %23, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = tail call i32 @regulator_get_voltage(ptr noundef nonnull %55) #7
  %59 = icmp slt i32 %58, 3100001
  br i1 %59, label %61, label %60

60:                                               ; preds = %57, %51
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi ptr [ %23, %60 ], [ %32, %57 ]
  %63 = load ptr, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %54
  %65 = phi ptr [ %52, %54 ], [ %63, %61 ]
  %66 = getelementptr inbounds %struct.stusb160x, ptr %9, i32 0, i32 5
  store ptr %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.stusb160x, ptr %9, i32 0, i32 5
  %68 = icmp eq ptr %65, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = tail call i32 @regulator_enable(ptr noundef nonnull %65) #7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.8, i32 noundef %70) #8
  br label %271

74:                                               ; preds = %69, %64
  %75 = getelementptr inbounds %struct.stusb160x, ptr %9, i32 0, i32 7
  %76 = getelementptr inbounds %struct.stusb160x, ptr %9, i32 0, i32 7, i32 1
  %77 = getelementptr inbounds %struct.stusb160x, ptr %9, i32 0, i32 7, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !9
  %78 = getelementptr inbounds %struct.stusb160x, ptr %9, i32 0, i32 7, i32 2
  store i16 288, ptr %78, align 4
  %79 = load ptr, ptr %17, align 4
  %80 = call i32 @regmap_read(ptr noundef %79, i32 noundef 40, ptr noundef nonnull %7) #7
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %74
  %83 = load i32, ptr %7, align 4
  %84 = and i32 %83, 7
  switch i32 %84, label %104 [
    i32 0, label %85
    i32 1, label %87
    i32 2, label %89
    i32 3, label %90
    i32 4, label %90
    i32 5, label %90
  ]

85:                                               ; preds = %82
  store i32 0, ptr %75, align 4
  store i32 0, ptr %76, align 4
  %86 = getelementptr %struct.stusb160x, ptr %9, i32 0, i32 7, i32 6, i32 1
  store i32 1, ptr %77, align 4
  store i32 2, ptr %86, align 4
  br label %92

87:                                               ; preds = %82
  store i32 1, ptr %75, align 4
  store i32 1, ptr %76, align 4
  %88 = getelementptr %struct.stusb160x, ptr %9, i32 0, i32 7, i32 6, i32 1
  store i32 1, ptr %77, align 4
  store i32 2, ptr %88, align 4
  br label %92

89:                                               ; preds = %82
  store i32 1, ptr %75, align 4
  store i32 1, ptr %76, align 4
  br label %92

90:                                               ; preds = %82, %82, %82
  store i32 2, ptr %75, align 4
  store i32 2, ptr %76, align 4
  %91 = getelementptr %struct.stusb160x, ptr %9, i32 0, i32 7, i32 6, i32 1
  store i32 1, ptr %77, align 4
  store i32 2, ptr %91, align 4
  br label %92

92:                                               ; preds = %90, %89, %87, %85
  %93 = phi i32 [ 2, %90 ], [ 1, %89 ], [ 1, %87 ], [ 0, %85 ]
  %94 = getelementptr inbounds %struct.stusb160x, ptr %9, i32 0, i32 9
  store i32 %93, ptr %94, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !9
  %95 = load ptr, ptr %17, align 4
  %96 = call i32 @regmap_read(ptr noundef %95, i32 noundef 24, ptr noundef nonnull %6) #7
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %92
  %99 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.14, i32 noundef %96) #8
  br label %107

100:                                              ; preds = %92
  %101 = load i32, ptr %6, align 4
  %102 = lshr i32 %101, 6
  %103 = and i32 %102, 3
  br label %107

104:                                              ; preds = %82, %74
  %105 = phi i32 [ -22, %82 ], [ %80, %74 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  %106 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.9, i32 noundef %105) #8
  br label %265

107:                                              ; preds = %100, %98
  %108 = phi i32 [ 0, %98 ], [ %103, %100 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  %109 = getelementptr inbounds %struct.stusb160x, ptr %9, i32 0, i32 10
  store i32 %108, ptr %109, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store ptr null, ptr %5, align 4, !annotation !9
  %110 = getelementptr inbounds %struct.stusb160x, ptr %9, i32 0, i32 7, i32 8
  store ptr %49, ptr %110, align 4
  %111 = call i32 @fwnode_property_read_string(ptr noundef nonnull %49, ptr noundef nonnull @.str.15, ptr noundef nonnull %5) #7
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %107
  %114 = load i32, ptr %94, align 4
  br label %120

115:                                              ; preds = %107
  %116 = load ptr, ptr %5, align 4
  %117 = call i32 @typec_find_port_power_role(ptr noundef %116) #7
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %136, label %119

119:                                              ; preds = %115
  store i32 %117, ptr %94, align 4
  br label %120

120:                                              ; preds = %119, %113
  %121 = phi i32 [ %114, %113 ], [ %117, %119 ]
  store i32 %121, ptr %75, align 4
  switch i32 %121, label %124 [
    i32 1, label %139
    i32 2, label %122
  ]

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.stusb160x, ptr %9, i32 0, i32 7, i32 5
  store i32 0, ptr %123, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = call i32 @fwnode_property_read_string(ptr noundef nonnull %49, ptr noundef nonnull @.str.16, ptr noundef nonnull %5) #7
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = load ptr, ptr %5, align 4
  %129 = call i32 @typec_find_pwr_opmode(ptr noundef %128) #7
  %130 = icmp slt i32 %129, 0
  %131 = icmp eq i32 %129, 3
  %132 = or i1 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.17, i32 noundef %129) #8
  br label %136

135:                                              ; preds = %127
  store i32 %129, ptr %109, align 4
  br label %139

136:                                              ; preds = %133, %115
  %137 = phi i32 [ -22, %133 ], [ %117, %115 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %138 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.10, i32 noundef %137) #8
  br label %265

139:                                              ; preds = %135, %124, %120
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !9
  %140 = load i32, ptr %94, align 4
  %141 = icmp eq i32 %140, 1
  %142 = select i1 %141, i32 1, i32 3
  %143 = icmp eq i32 %140, 0
  %144 = select i1 %143, i32 0, i32 %142
  %145 = load ptr, ptr %17, align 4
  %146 = call i32 @regmap_update_bits_base(ptr noundef %145, i32 noundef 40, i32 noundef 7, i32 noundef %144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %189

148:                                              ; preds = %139
  %149 = load i32, ptr %94, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %185, label %151

151:                                              ; preds = %148
  %152 = load i32, ptr %109, align 4
  %153 = load ptr, ptr %17, align 4
  %154 = shl i32 %152, 6
  %155 = and i32 %154, 192
  %156 = call i32 @regmap_update_bits_base(ptr noundef %153, i32 noundef 24, i32 noundef 192, i32 noundef %155, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %189

158:                                              ; preds = %151
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  %159 = load ptr, ptr %17, align 4
  %160 = call i32 @regmap_read(ptr noundef %159, i32 noundef 24, ptr noundef nonnull %3) #7
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %158
  %163 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull @.str.1, i32 noundef %160) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %185

164:                                              ; preds = %158
  %165 = load i32, ptr %3, align 4
  %166 = and i32 %165, 1
  %167 = icmp eq i32 %166, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br i1 %167, label %185, label %168

168:                                              ; preds = %164
  %169 = load ptr, ptr %41, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %176, label %171

171:                                              ; preds = %168
  %172 = call i32 @regulator_enable(ptr noundef nonnull %169) #7
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %171
  %175 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.2, i32 noundef %172) #8
  br label %189

176:                                              ; preds = %171, %168
  %177 = load ptr, ptr %17, align 4
  %178 = call i32 @regmap_update_bits_base(ptr noundef %177, i32 noundef 32, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %176
  %181 = load ptr, ptr %41, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %189, label %183

183:                                              ; preds = %180
  %184 = call i32 @regulator_disable(ptr noundef nonnull %181) #7
  br label %189

185:                                              ; preds = %176, %164, %162, %148
  %186 = load ptr, ptr %17, align 4
  %187 = call i32 @regmap_update_bits_base(ptr noundef %186, i32 noundef 12, i32 noundef 112, i32 noundef 112, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %185, %183, %180, %174, %151, %139
  %190 = phi i32 [ %172, %174 ], [ %178, %180 ], [ %178, %183 ], [ %187, %185 ], [ %156, %151 ], [ %146, %139 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %191 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %191, ptr noundef nonnull @.str.11, i32 noundef %190) #8
  br label %265

192:                                              ; preds = %185
  %193 = load ptr, ptr %17, align 4
  %194 = call i32 @regmap_read(ptr noundef %193, i32 noundef 11, ptr noundef nonnull %4) #7
  %195 = load ptr, ptr %17, align 4
  %196 = call i32 @regmap_read(ptr noundef %195, i32 noundef 13, ptr noundef nonnull %4) #7
  %197 = load ptr, ptr %17, align 4
  %198 = call i32 @regmap_read(ptr noundef %197, i32 noundef 15, ptr noundef nonnull %4) #7
  %199 = load ptr, ptr %17, align 4
  %200 = call i32 @regmap_read(ptr noundef %199, i32 noundef 18, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %201 = load ptr, ptr %9, align 4
  %202 = call ptr @typec_register_port(ptr noundef %201, ptr noundef %75) #7
  %203 = getelementptr inbounds %struct.stusb160x, ptr %9, i32 0, i32 6
  store ptr %202, ptr %203, align 4
  %204 = icmp ugt ptr %202, inttoptr (i32 -4096 to ptr)
  br i1 %204, label %205, label %207

205:                                              ; preds = %192
  %206 = ptrtoint ptr %202 to i32
  br label %246

207:                                              ; preds = %192
  %208 = load i32, ptr %109, align 4
  call void @typec_set_pwr_opmode(ptr noundef %202, i32 noundef %208) #7
  %209 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %210 = load i32, ptr %209, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %225, label %212

212:                                              ; preds = %207
  %213 = call ptr @fwnode_usb_role_switch_get(ptr noundef nonnull %49) #7
  %214 = getelementptr inbounds %struct.stusb160x, ptr %9, i32 0, i32 12
  store ptr %213, ptr %214, align 4
  %215 = icmp ugt ptr %213, inttoptr (i32 -4096 to ptr)
  br i1 %215, label %216, label %221

216:                                              ; preds = %212
  %217 = icmp eq ptr %213, inttoptr (i32 -517 to ptr)
  br i1 %217, label %243, label %218

218:                                              ; preds = %216
  %219 = ptrtoint ptr %213 to i32
  %220 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %220, ptr noundef nonnull @.str.12, i32 noundef %219) #8
  br label %243

221:                                              ; preds = %212
  %222 = load i32, ptr %209, align 4
  %223 = call fastcc i32 @stusb160x_irq_init(ptr noundef nonnull %9, i32 noundef %222)
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %238, label %239

225:                                              ; preds = %207
  %226 = load i32, ptr %94, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %238, label %228

228:                                              ; preds = %225
  %229 = load ptr, ptr %32, align 4
  %230 = icmp eq ptr %229, null
  br i1 %230, label %238, label %231

231:                                              ; preds = %228
  %232 = call i32 @regulator_enable(ptr noundef nonnull %229) #7
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %231
  %235 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %235, ptr noundef nonnull @.str.13, i32 noundef %232) #8
  br label %243

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.stusb160x, ptr %9, i32 0, i32 11
  store i8 1, ptr %237, align 4
  br label %238

238:                                              ; preds = %236, %228, %225, %221
  call void @fwnode_handle_put(ptr noundef nonnull %49) #7
  br label %273

239:                                              ; preds = %221
  %240 = load ptr, ptr %214, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %243, label %242

242:                                              ; preds = %239
  call void @usb_role_switch_put(ptr noundef nonnull %240) #7
  br label %243

243:                                              ; preds = %242, %239, %234, %218, %216
  %244 = phi i32 [ %219, %218 ], [ -517, %216 ], [ %223, %242 ], [ %223, %239 ], [ %232, %234 ]
  %245 = load ptr, ptr %203, align 4
  call void @typec_unregister_port(ptr noundef %245) #7
  br label %246

246:                                              ; preds = %243, %205
  %247 = phi i32 [ %206, %205 ], [ %244, %243 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  %248 = load ptr, ptr %17, align 4
  %249 = call i32 @regmap_read(ptr noundef %248, i32 noundef 24, ptr noundef nonnull %2) #7
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %246
  %252 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %252, ptr noundef nonnull @.str.1, i32 noundef %249) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %265

253:                                              ; preds = %246
  %254 = load i32, ptr %2, align 4
  %255 = and i32 %254, 1
  %256 = icmp eq i32 %255, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br i1 %256, label %265, label %257

257:                                              ; preds = %253
  %258 = load ptr, ptr %41, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %262, label %260

260:                                              ; preds = %257
  %261 = call i32 @regulator_disable(ptr noundef nonnull %258) #7
  br label %262

262:                                              ; preds = %260, %257
  %263 = load ptr, ptr %17, align 4
  %264 = call i32 @regmap_update_bits_base(ptr noundef %263, i32 noundef 32, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %265

265:                                              ; preds = %262, %253, %251, %189, %136, %104
  %266 = phi i32 [ %105, %104 ], [ %137, %136 ], [ %190, %189 ], [ %247, %253 ], [ %247, %251 ], [ %247, %262 ]
  %267 = load ptr, ptr %67, align 4
  %268 = icmp eq ptr %267, null
  br i1 %268, label %271, label %269

269:                                              ; preds = %265
  %270 = call i32 @regulator_disable(ptr noundef nonnull %267) #7
  br label %271

271:                                              ; preds = %269, %265, %72
  %272 = phi i32 [ %70, %72 ], [ %266, %269 ], [ %266, %265 ]
  call void @fwnode_handle_put(ptr noundef nonnull %49) #7
  br label %273

273:                                              ; preds = %271, %238, %47, %43, %34, %25, %19, %1
  %274 = phi i32 [ %20, %19 ], [ %272, %271 ], [ 0, %238 ], [ -12, %1 ], [ %26, %25 ], [ %35, %34 ], [ %44, %43 ], [ -19, %47 ]
  ret i32 %274
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_unregister_partner(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_unregister_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_devlink_purge_absent_suppliers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_register_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_pwr_opmode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_usb_role_switch_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stusb160x_irq_init(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = getelementptr inbounds %struct.stusb160x, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 14, ptr noundef nonnull %3) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = call fastcc i32 @stusb160x_attach(ptr noundef %0, i32 noundef %9)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.18, i32 noundef %13) #8
  br label %17

17:                                               ; preds = %15, %12, %8
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load ptr, ptr %18, align 4
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ %23, %22 ], [ %20, %17 ]
  %26 = call i32 @devm_request_threaded_irq(ptr noundef %18, i32 noundef %1, ptr noundef null, ptr noundef nonnull @stusb160x_irq_handler, i32 noundef 8192, ptr noundef %25, ptr noundef %0) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load ptr, ptr %4, align 4
  %30 = call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 12, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28, %24
  %33 = phi i32 [ %26, %24 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.stusb160x, ptr %0, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  call void @typec_unregister_partner(ptr noundef nonnull %35) #7
  store ptr null, ptr %34, align 4
  br label %38

38:                                               ; preds = %37, %32, %28, %2
  %39 = phi i32 [ %6, %2 ], [ 0, %28 ], [ %33, %37 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_find_port_power_role(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_find_pwr_opmode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stusb160x_attach(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.typec_partner_desc, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !9
  %5 = and i32 %1, 8
  %6 = icmp eq i32 %5, 0
  %7 = lshr exact i32 %5, 3
  br i1 %6, label %19, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stusb160x, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @regulator_enable(ptr noundef nonnull %10) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.19, i32 noundef %13) #8
  br label %68

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.stusb160x, ptr %0, i32 0, i32 11
  store i8 1, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %8, %2
  store i8 0, ptr %4, align 4
  %20 = lshr i32 %1, 5
  %21 = and i32 %20, 7
  %22 = icmp eq i32 %21, 4
  %23 = zext i1 %22 to i32
  %24 = icmp eq i32 %21, 3
  %25 = select i1 %24, i32 2, i32 %23
  %26 = getelementptr inbounds %struct.typec_partner_desc, ptr %4, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.typec_partner_desc, ptr %4, i32 0, i32 2
  store ptr null, ptr %27, align 4
  %28 = getelementptr inbounds %struct.stusb160x, ptr %0, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = call ptr @typec_register_partner(ptr noundef %29, ptr noundef nonnull %4) #7
  %31 = getelementptr inbounds %struct.stusb160x, ptr %0, i32 0, i32 8
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = ptrtoint ptr %30 to i32
  %35 = getelementptr inbounds %struct.stusb160x, ptr %0, i32 0, i32 11
  %36 = load i8, ptr %35, align 4, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %68, label %64

38:                                               ; preds = %19
  %39 = load ptr, ptr %28, align 4
  call void @typec_set_pwr_role(ptr noundef %39, i32 noundef %7) #7
  %40 = load ptr, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  %41 = getelementptr inbounds %struct.stusb160x, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 @regmap_read(ptr noundef %42, i32 noundef 24, ptr noundef nonnull %3) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.14, i32 noundef %43) #8
  br label %51

47:                                               ; preds = %38
  %48 = load i32, ptr %3, align 4
  %49 = lshr i32 %48, 6
  %50 = and i32 %49, 3
  br label %51

51:                                               ; preds = %47, %45
  %52 = phi i32 [ 0, %45 ], [ %50, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @typec_set_pwr_opmode(ptr noundef %40, i32 noundef %52) #7
  %53 = load ptr, ptr %28, align 4
  %54 = lshr i32 %1, 1
  %55 = and i32 %54, 1
  call void @typec_set_vconn_role(ptr noundef %53, i32 noundef %55) #7
  %56 = lshr i32 %1, 2
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 2, i32 1
  %60 = getelementptr inbounds %struct.stusb160x, ptr %0, i32 0, i32 12
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 @usb_role_switch_set_role(ptr noundef %61, i32 noundef %59) #7
  %63 = load ptr, ptr %28, align 4
  call void @typec_set_data_role(ptr noundef %63, i32 noundef %57) #7
  br label %68

64:                                               ; preds = %33
  %65 = getelementptr inbounds %struct.stusb160x, ptr %0, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = call i32 @regulator_disable(ptr noundef %66) #7
  store i8 0, ptr %35, align 4
  br label %68

68:                                               ; preds = %64, %51, %33, %15
  %69 = phi i32 [ %13, %15 ], [ 0, %51 ], [ %34, %64 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stusb160x_irq_handler(i32 noundef %0, ptr nocapture noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.stusb160x, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 11, ptr noundef nonnull %3) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %6, align 4
  %16 = call i32 @regmap_read(ptr noundef %15, i32 noundef 13, ptr noundef nonnull %4) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load ptr, ptr %6, align 4
  %20 = call i32 @regmap_read(ptr noundef %19, i32 noundef 14, ptr noundef nonnull %5) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i32, ptr %4, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %5, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = call fastcc i32 @stusb160x_attach(ptr noundef %1, i32 noundef %27)
  br label %33

32:                                               ; preds = %26
  call fastcc void @stusb160x_detach(ptr noundef %1, i32 noundef %27)
  br label %33

33:                                               ; preds = %32, %30, %22, %18, %14, %10, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 1
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_register_partner(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_pwr_role(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_vconn_role(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_role_switch_set_role(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_data_role(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stusb160x_detach(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.stusb160x, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  tail call void @typec_unregister_partner(ptr noundef %4) #7
  store ptr null, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stusb160x, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = lshr i32 %1, 3
  %8 = and i32 %7, 1
  tail call void @typec_set_pwr_role(ptr noundef %6, i32 noundef %8) #7
  %9 = load ptr, ptr %5, align 4
  tail call void @typec_set_pwr_opmode(ptr noundef %9, i32 noundef 0) #7
  %10 = load ptr, ptr %5, align 4
  %11 = lshr i32 %1, 1
  %12 = and i32 %11, 1
  tail call void @typec_set_vconn_role(ptr noundef %10, i32 noundef %12) #7
  %13 = lshr i32 %1, 2
  %14 = and i32 %13, 1
  %15 = getelementptr inbounds %struct.stusb160x, ptr %0, i32 0, i32 12
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @usb_role_switch_set_role(ptr noundef %16, i32 noundef 0) #7
  %18 = load ptr, ptr %5, align 4
  tail call void @typec_set_data_role(ptr noundef %18, i32 noundef %14) #7
  %19 = getelementptr inbounds %struct.stusb160x, ptr %0, i32 0, i32 11
  %20 = load i8, ptr %19, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.stusb160x, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @regulator_disable(ptr noundef %24) #7
  store i8 0, ptr %19, align 4
  br label %26

26:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stusb160x_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stusb160x, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12, i32 noundef 112, i32 noundef 112, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stusb160x_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.stusb160x, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regcache_sync(ptr noundef %6) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 14, ptr noundef nonnull %2) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stusb160x, ptr %4, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %2, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  call fastcc void @stusb160x_detach(ptr noundef %4, i32 noundef %18)
  %22 = load ptr, ptr %14, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21, %13
  %25 = load i32, ptr %2, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = call fastcc i32 @stusb160x_attach(ptr noundef %4, i32 noundef %25)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.18, i32 noundef %29) #8
  br label %33

33:                                               ; preds = %31, %28, %24, %21, %17
  %34 = load ptr, ptr %5, align 4
  %35 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 12, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %36

36:                                               ; preds = %33, %9, %1
  %37 = phi i32 [ %35, %33 ], [ %7, %1 ], [ %11, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{!"auto-init"}
