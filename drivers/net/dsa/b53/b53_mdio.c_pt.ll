; ModuleID = '/llk/IR/drivers/net/dsa/b53/b53_mdio.c_pt.bc'
source_filename = "../drivers/net/dsa/b53/b53_mdio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mdio_driver = type { %struct.mdio_driver_common, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.b53_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.b53_device = type { ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, ptr, i32, i8, [3 x i8], i8, i8, i8, i32, i8, i16, i32, i16, i32, i8, ptr, i8, ptr, ptr, i8, i32, ptr, i8, i32, ptr }

@b53_of_match = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5325\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm53115\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm53125\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm53128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5365\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5389\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5395\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5397\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5398\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description453 = internal constant [35 x i8] c"description=B53 MDIO access driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license454 = internal constant [21 x i8] c"license=Dual BSD/GPL\00", section ".modinfo", align 1
@b53_mdio_driver = internal global %struct.mdio_driver { %struct.mdio_driver_common { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @b53_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 0 }, ptr @b53_mdio_probe, ptr @b53_mdio_remove, ptr @b53_mdio_shutdown }, align 4
@.str = private unnamed_addr constant [8 x i8] c"bcm53xx\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"leaving address %d to PHY\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unsupported device: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"brcm,bcm7445d0\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"sf2 slave mii\00", align 1
@b53_mdio_ops = internal constant %struct.b53_io_ops { ptr @b53_mdio_read8, ptr @b53_mdio_read16, ptr @b53_mdio_read32, ptr @b53_mdio_read48, ptr @b53_mdio_read64, ptr @b53_mdio_write8, ptr @b53_mdio_write16, ptr @b53_mdio_write32, ptr @b53_mdio_write48, ptr @b53_mdio_write64, ptr @b53_mdio_phy_read16, ptr @b53_mdio_phy_write16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to register switch: %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"drivers/net/dsa/b53/b53_mdio.c\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_description453, ptr @__UNIQUE_ID_license454], section "llvm.metadata"

@__mod_of__b53_of_match_device_table = dso_local alias [10 x %struct.of_device_id], ptr @b53_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @mdio_driver_register(ptr noundef nonnull @b53_mdio_driver) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @mdio_driver_unregister(ptr noundef nonnull @b53_mdio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mdio_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %4 [
    i32 30, label %5
    i32 0, label %5
  ]

4:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %3) #6
  br label %35

5:                                                ; preds = %1, %1
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef 0, i32 noundef 2) #5
  %9 = shl i32 %8, 16
  %10 = load ptr, ptr %6, align 8
  %11 = tail call i32 @mdiobus_read(ptr noundef %10, i32 noundef 0, i32 noundef 3) #5
  %12 = or i32 %11, %9
  %13 = and i32 %12, -1024
  switch i32 %13, label %14 [
    i32 21216256, label %15
    i32 56777728, label %15
    i32 4218880, label %15
    i32 21040128, label %15
  ]

14:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %12) #6
  br label %35

15:                                               ; preds = %5, %5, %5, %5
  %16 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #5
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %6, align 8
  br i1 %17, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.mii_bus, ptr %18, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @strcmp(ptr noundef %21, ptr noundef nonnull dereferenceable(14) @.str.4)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19, %15
  %25 = tail call ptr @b53_switch_alloc(ptr noundef %0, ptr noundef nonnull @b53_mdio_ops, ptr noundef %18) #5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.b53_device, ptr %25, i32 0, i32 19
  store i8 -1, ptr %28, align 4
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds %struct.b53_device, ptr %25, i32 0, i32 22
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %25, ptr %31, align 8
  %32 = tail call i32 @b53_switch_register(ptr noundef nonnull %25) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %32) #6
  br label %35

35:                                               ; preds = %34, %27, %24, %19, %14, %4
  %36 = phi i32 [ -19, %4 ], [ -19, %14 ], [ %32, %34 ], [ -517, %19 ], [ -12, %24 ], [ 0, %27 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @b53_mdio_remove(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  tail call void @dsa_unregister_switch(ptr noundef %6) #5
  store ptr null, ptr %2, align 8
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @b53_mdio_shutdown(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  tail call void @dsa_switch_shutdown(ptr noundef %6) #5
  store ptr null, ptr %2, align 8
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @b53_switch_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_switch_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mdio_read8(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc i32 @b53_mdio_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext 2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = tail call i32 @mdiobus_read_nested(ptr noundef %6, i32 noundef 30, i32 noundef 24) #5
  %11 = trunc i32 %10 to i8
  store i8 %11, ptr %3, align 1
  br label %12

12:                                               ; preds = %9, %4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mdio_read16(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc i32 @b53_mdio_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext 2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = tail call i32 @mdiobus_read_nested(ptr noundef %6, i32 noundef 30, i32 noundef 24) #5
  %11 = trunc i32 %10 to i16
  store i16 %11, ptr %3, align 2
  br label %12

12:                                               ; preds = %9, %4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mdio_read32(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc i32 @b53_mdio_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext 2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = tail call i32 @mdiobus_read_nested(ptr noundef %6, i32 noundef 30, i32 noundef 24) #5
  store i32 %10, ptr %3, align 4
  %11 = tail call i32 @mdiobus_read_nested(ptr noundef %6, i32 noundef 30, i32 noundef 25) #5
  %12 = shl i32 %11, 16
  %13 = load i32, ptr %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, ptr %3, align 4
  br label %15

15:                                               ; preds = %9, %4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mdio_read48(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc i32 @b53_mdio_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext 2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = tail call i32 @mdiobus_read_nested(ptr noundef %6, i32 noundef 30, i32 noundef 26) #5
  %11 = zext i32 %10 to i64
  %12 = tail call i32 @mdiobus_read_nested(ptr noundef %6, i32 noundef 30, i32 noundef 25) #5
  %13 = sext i32 %12 to i64
  %14 = shl nuw i64 %11, 32
  %15 = shl nsw i64 %13, 16
  %16 = or i64 %14, %15
  %17 = tail call i32 @mdiobus_read_nested(ptr noundef %6, i32 noundef 30, i32 noundef 24) #5
  %18 = sext i32 %17 to i64
  %19 = or i64 %16, %18
  store i64 %19, ptr %3, align 8
  br label %20

20:                                               ; preds = %9, %4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mdio_read64(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc i32 @b53_mdio_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext 2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = tail call i32 @mdiobus_read_nested(ptr noundef %6, i32 noundef 30, i32 noundef 27) #5
  %11 = zext i32 %10 to i64
  %12 = tail call i32 @mdiobus_read_nested(ptr noundef %6, i32 noundef 30, i32 noundef 26) #5
  %13 = zext i32 %12 to i64
  %14 = shl nuw i64 %11, 32
  %15 = shl nuw nsw i64 %13, 16
  %16 = or i64 %14, %15
  %17 = tail call i32 @mdiobus_read_nested(ptr noundef %6, i32 noundef 30, i32 noundef 25) #5
  %18 = sext i32 %17 to i64
  %19 = or i64 %16, %18
  %20 = shl i64 %19, 16
  %21 = tail call i32 @mdiobus_read_nested(ptr noundef %6, i32 noundef 30, i32 noundef 24) #5
  %22 = sext i32 %21 to i64
  %23 = or i64 %20, %22
  store i64 %23, ptr %3, align 8
  br label %24

24:                                               ; preds = %9, %4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mdio_write8(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = zext i8 %3 to i16
  %8 = tail call i32 @mdiobus_write_nested(ptr noundef %6, i32 noundef 30, i32 noundef 24, i16 noundef zeroext %7) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call fastcc i32 @b53_mdio_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext 1)
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ %8, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mdio_write16(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @mdiobus_write_nested(ptr noundef %6, i32 noundef 30, i32 noundef 24, i16 noundef zeroext %3) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @b53_mdio_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext 1)
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ %10, %9 ], [ %7, %4 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mdio_write32(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = trunc i32 %3 to i16
  %8 = tail call i32 @mdiobus_write_nested(ptr noundef %6, i32 noundef 30, i32 noundef 24, i16 noundef zeroext %7) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = lshr i32 %3, 16
  %12 = trunc i32 %11 to i16
  %13 = tail call i32 @mdiobus_write_nested(ptr noundef %6, i32 noundef 30, i32 noundef 25, i16 noundef zeroext %12) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = tail call fastcc i32 @b53_mdio_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext 1)
  br label %17

17:                                               ; preds = %15, %10, %4
  %18 = phi i32 [ %16, %15 ], [ %8, %4 ], [ %13, %10 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mdio_write48(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i64 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = trunc i64 %3 to i16
  %8 = tail call i32 @mdiobus_write_nested(ptr noundef %6, i32 noundef 30, i32 noundef 24, i16 noundef zeroext %7) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %4
  %11 = lshr i64 %3, 16
  %12 = trunc i64 %11 to i16
  %13 = tail call i32 @mdiobus_write_nested(ptr noundef %6, i32 noundef 30, i32 noundef 25, i16 noundef zeroext %12) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = lshr i64 %3, 32
  %17 = trunc i64 %16 to i16
  %18 = tail call i32 @mdiobus_write_nested(ptr noundef %6, i32 noundef 30, i32 noundef 26, i16 noundef zeroext %17) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = tail call fastcc i32 @b53_mdio_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext 1)
  br label %22

22:                                               ; preds = %20, %15, %10, %4
  %23 = phi i32 [ %21, %20 ], [ %8, %4 ], [ %13, %10 ], [ %18, %15 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mdio_write64(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i64 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = trunc i64 %3 to i16
  %8 = tail call i32 @mdiobus_write_nested(ptr noundef %6, i32 noundef 30, i32 noundef 24, i16 noundef zeroext %7) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %4
  %11 = lshr i64 %3, 16
  %12 = trunc i64 %11 to i16
  %13 = tail call i32 @mdiobus_write_nested(ptr noundef %6, i32 noundef 30, i32 noundef 25, i16 noundef zeroext %12) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = lshr i64 %3, 32
  %17 = trunc i64 %16 to i16
  %18 = tail call i32 @mdiobus_write_nested(ptr noundef %6, i32 noundef 30, i32 noundef 26, i16 noundef zeroext %17) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = lshr i64 %3, 48
  %22 = trunc i64 %21 to i16
  %23 = tail call i32 @mdiobus_write_nested(ptr noundef %6, i32 noundef 30, i32 noundef 27, i16 noundef zeroext %22) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @b53_mdio_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext 1)
  br label %27

27:                                               ; preds = %25, %20, %15, %10, %4
  %28 = phi i32 [ %26, %25 ], [ %8, %4 ], [ %13, %10 ], [ %18, %15 ], [ %23, %20 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mdio_phy_read16(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @mdiobus_read_nested(ptr noundef %6, i32 noundef %1, i32 noundef %2) #5
  %8 = trunc i32 %7 to i16
  store i16 %8, ptr %3, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mdio_phy_write16(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @mdiobus_write_nested(ptr noundef %6, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #5
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @b53_mdio_op(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 19
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, %1
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = zext i8 %1 to i16
  %12 = shl nuw i16 %11, 8
  %13 = or i16 %12, 1
  %14 = tail call i32 @mdiobus_write_nested(ptr noundef %6, i32 noundef 30, i32 noundef 16, i16 noundef zeroext %13) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %10
  store i8 %1, ptr %7, align 4
  br label %17

17:                                               ; preds = %16, %4
  %18 = zext i8 %2 to i16
  %19 = shl nuw i16 %18, 8
  %20 = or i16 %19, %3
  %21 = tail call i32 @mdiobus_write_nested(ptr noundef %6, i32 noundef 30, i32 noundef 17, i16 noundef zeroext %20) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  %24 = tail call i32 @mdiobus_read_nested(ptr noundef %6, i32 noundef 30, i32 noundef 17) #5
  %25 = and i32 %24, 3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %23
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %28 = tail call i32 @mdiobus_read_nested(ptr noundef %6, i32 noundef 30, i32 noundef 17) #5
  %29 = and i32 %28, 3
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %27
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %32 = tail call i32 @mdiobus_read_nested(ptr noundef %6, i32 noundef 30, i32 noundef 17) #5
  %33 = and i32 %32, 3
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %36 = tail call i32 @mdiobus_read_nested(ptr noundef %6, i32 noundef 30, i32 noundef 17) #5
  %37 = and i32 %36, 3
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %40 = tail call i32 @mdiobus_read_nested(ptr noundef %6, i32 noundef 30, i32 noundef 17) #5
  %41 = and i32 %40, 3
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 73, i32 noundef 9, ptr noundef null) #5
  br label %44

44:                                               ; preds = %43, %39, %35, %31, %27, %23, %17, %10
  %45 = phi i32 [ %14, %10 ], [ %21, %17 ], [ -5, %43 ], [ 0, %39 ], [ 0, %35 ], [ 0, %31 ], [ 0, %27 ], [ 0, %23 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read_nested(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write_nested(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
