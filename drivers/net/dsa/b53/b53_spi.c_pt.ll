; ModuleID = '/llk/IR/drivers/net/dsa/b53/b53_spi.c_pt.bc'
source_filename = "../drivers/net/dsa/b53/b53_spi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
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
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.b53_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.b53_device = type { ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, ptr, i32, i8, [3 x i8], i8, i8, i8, i32, i8, i16, i32, i16, i32, i8, ptr, i8, ptr, ptr, i8, i32, ptr, i8, i32, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@b53_spi_of_match = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5325\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5365\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5395\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5397\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5398\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm53115\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm53125\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm53128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@b53_spi_ids = internal constant [9 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"bcm5325\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"bcm5365\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"bcm5395\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"bcm5397\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"bcm5398\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"bcm53115\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"bcm53125\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"bcm53128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], align 4
@__UNIQUE_ID_author455 = internal constant [39 x i8] c"author=Jonas Gorski <jogo@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description456 = internal constant [34 x i8] c"description=B53 SPI access driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license457 = internal constant [21 x i8] c"license=Dual BSD/GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@b53_spi_driver = internal global %struct.spi_driver { ptr @b53_spi_ids, ptr @b53_spi_probe, ptr @b53_spi_remove, ptr @b53_spi_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @b53_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, align 4
@.str = private unnamed_addr constant [11 x i8] c"b53-switch\00", align 1
@b53_spi_ops = internal constant %struct.b53_io_ops { ptr @b53_spi_read8, ptr @b53_spi_read16, ptr @b53_spi_read32, ptr @b53_spi_read48, ptr @b53_spi_read64, ptr @b53_spi_write8, ptr @b53_spi_write16, ptr @b53_spi_write32, ptr @b53_spi_write48, ptr @b53_spi_write64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author455, ptr @__UNIQUE_ID_description456, ptr @__UNIQUE_ID_license457], section "llvm.metadata"

@__mod_of__b53_spi_of_match_device_table = dso_local alias [9 x %struct.of_device_id], ptr @b53_spi_of_match
@__mod_spi__b53_spi_ids_device_table = dso_local alias [9 x %struct.spi_device_id], ptr @b53_spi_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__spi_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @b53_spi_driver) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @b53_spi_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_spi_probe(ptr noundef %0) #2 {
  %2 = tail call ptr @b53_switch_alloc(ptr noundef %0, ptr noundef nonnull @b53_spi_ops, ptr noundef %0) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.b53_device, ptr %2, i32 0, i32 1
  store ptr %6, ptr %9, align 4
  br label %10

10:                                               ; preds = %8, %4
  %11 = tail call i32 @b53_switch_register(ptr noundef nonnull %2) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %2, ptr %14, align 8
  br label %15

15:                                               ; preds = %13, %10, %1
  %16 = phi i32 [ 0, %13 ], [ -12, %1 ], [ %11, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_spi_remove(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  tail call void @dsa_unregister_switch(ptr noundef %6) #5
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @b53_spi_shutdown(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  tail call void @dsa_switch_shutdown(ptr noundef %6) #5
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @b53_switch_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_switch_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_spi_read8(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) #2 {
  %5 = tail call fastcc i32 @b53_spi_read(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef 1)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_spi_read16(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #5
  store i16 0, ptr %5, align 2, !annotation !8
  %6 = call fastcc i32 @b53_spi_read(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef nonnull %5, i32 noundef 2)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load i16, ptr %5, align 2
  store i16 %9, ptr %3, align 2
  br label %10

10:                                               ; preds = %8, %4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #5
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_spi_read32(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call fastcc i32 @b53_spi_read(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef nonnull %5, i32 noundef 4)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  store i32 %9, ptr %3, align 4
  br label %10

10:                                               ; preds = %8, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_spi_read48(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  store i64 0, ptr %5, align 8, !annotation !8
  store i64 0, ptr %3, align 8
  %6 = call fastcc i32 @b53_spi_read(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef nonnull %5, i32 noundef 6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load i64, ptr %5, align 8
  store i64 %9, ptr %3, align 8
  br label %10

10:                                               ; preds = %8, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_spi_read64(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  store i64 0, ptr %5, align 8, !annotation !8
  %6 = call fastcc i32 @b53_spi_read(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef nonnull %5, i32 noundef 8)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load i64, ptr %5, align 8
  store i64 %9, ptr %3, align 8
  br label %10

10:                                               ; preds = %8, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_spi_write8(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #2 {
  %5 = alloca %struct.spi_message, align 4
  %6 = alloca %struct.spi_transfer, align 4
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca %struct.spi_transfer, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca [2 x i8], align 2
  %11 = alloca i8, align 1
  %12 = alloca [3 x i8], align 1
  %13 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %12, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #5
  store i8 0, ptr %11, align 1, !annotation !8
  br label %15

15:                                               ; preds = %22, %4
  %16 = phi i32 [ 0, %4 ], [ %24, %22 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #5
  store i16 -416, ptr %10, align 2, !annotation !8
  %17 = call i32 @spi_write_then_read(ptr noundef %14, ptr noundef nonnull %10, i32 noundef 2, ptr noundef nonnull %11, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i8, ptr %11, align 1
  %21 = icmp sgt i8 %20, -1
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #5
  %24 = add nuw nsw i32 %16, 1
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %28, label %15

26:                                               ; preds = %19
  %27 = icmp eq i32 %16, 10
  br i1 %27, label %28, label %30

28:                                               ; preds = %26, %22, %15
  %29 = phi i32 [ -5, %26 ], [ %17, %15 ], [ -5, %22 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #5
  br label %55

30:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #5
  store i8 97, ptr %9, align 1
  %31 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 1
  store i8 -1, ptr %31, align 1
  %32 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 2
  store i8 %1, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #5
  %33 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %33, i8 0, i64 92, i1 false) #5
  store ptr %9, ptr %8, align 4
  %34 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 2
  store i32 3, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #5
  %35 = getelementptr inbounds i8, ptr %7, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %35, i8 0, i64 40, i1 false) #5
  store volatile ptr %7, ptr %7, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %37 = getelementptr inbounds %struct.spi_message, ptr %7, i32 0, i32 10
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.spi_message, ptr %7, i32 0, i32 10, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 18
  store ptr %39, ptr %36, align 4
  store ptr %7, ptr %39, align 4
  %40 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 18, i32 1
  store ptr %7, ptr %40, align 4
  store volatile ptr %39, ptr %7, align 4
  %41 = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %30
  store i8 97, ptr %12, align 1
  %44 = getelementptr inbounds [3 x i8], ptr %12, i32 0, i32 1
  store i8 %2, ptr %44, align 1
  %45 = getelementptr inbounds [3 x i8], ptr %12, i32 0, i32 2
  store i8 %3, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #5
  %46 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %46, i8 0, i64 92, i1 false) #5
  store ptr %12, ptr %6, align 4
  %47 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 2
  store i32 3, ptr %47, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #5
  %48 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %48, i8 0, i64 40, i1 false) #5
  store volatile ptr %5, ptr %5, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %50 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10
  store volatile ptr %50, ptr %50, align 4
  %51 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10, i32 1
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18
  store ptr %52, ptr %49, align 4
  store ptr %5, ptr %52, align 4
  %53 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18, i32 1
  store ptr %5, ptr %53, align 4
  store volatile ptr %52, ptr %5, align 4
  %54 = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #5
  br label %55

55:                                               ; preds = %43, %30, %28
  %56 = phi i32 [ %54, %43 ], [ %41, %30 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #5
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_spi_write16(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.spi_message, align 4
  %6 = alloca %struct.spi_transfer, align 4
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca %struct.spi_transfer, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca [2 x i8], align 2
  %11 = alloca i8, align 1
  %12 = alloca [4 x i8], align 4
  %13 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #5
  store i32 0, ptr %12, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #5
  store i8 0, ptr %11, align 1, !annotation !8
  br label %15

15:                                               ; preds = %22, %4
  %16 = phi i32 [ 0, %4 ], [ %24, %22 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #5
  store i16 -416, ptr %10, align 2, !annotation !8
  %17 = call i32 @spi_write_then_read(ptr noundef %14, ptr noundef nonnull %10, i32 noundef 2, ptr noundef nonnull %11, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i8, ptr %11, align 1
  %21 = icmp sgt i8 %20, -1
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #5
  %24 = add nuw nsw i32 %16, 1
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %28, label %15

26:                                               ; preds = %19
  %27 = icmp eq i32 %16, 10
  br i1 %27, label %28, label %30

28:                                               ; preds = %26, %22, %15
  %29 = phi i32 [ -5, %26 ], [ %17, %15 ], [ -5, %22 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #5
  br label %55

30:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #5
  store i8 97, ptr %9, align 1
  %31 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 1
  store i8 -1, ptr %31, align 1
  %32 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 2
  store i8 %1, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #5
  %33 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %33, i8 0, i64 92, i1 false) #5
  store ptr %9, ptr %8, align 4
  %34 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 2
  store i32 3, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #5
  %35 = getelementptr inbounds i8, ptr %7, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %35, i8 0, i64 40, i1 false) #5
  store volatile ptr %7, ptr %7, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %37 = getelementptr inbounds %struct.spi_message, ptr %7, i32 0, i32 10
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.spi_message, ptr %7, i32 0, i32 10, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 18
  store ptr %39, ptr %36, align 4
  store ptr %7, ptr %39, align 4
  %40 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 18, i32 1
  store ptr %7, ptr %40, align 4
  store volatile ptr %39, ptr %7, align 4
  %41 = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %30
  store i8 97, ptr %12, align 4
  %44 = getelementptr inbounds [4 x i8], ptr %12, i32 0, i32 1
  store i8 %2, ptr %44, align 1
  %45 = getelementptr inbounds [4 x i8], ptr %12, i32 0, i32 2
  store i16 %3, ptr %45, align 2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #5
  %46 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %46, i8 0, i64 92, i1 false) #5
  store ptr %12, ptr %6, align 4
  %47 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 2
  store i32 4, ptr %47, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #5
  %48 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %48, i8 0, i64 40, i1 false) #5
  store volatile ptr %5, ptr %5, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %50 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10
  store volatile ptr %50, ptr %50, align 4
  %51 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10, i32 1
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18
  store ptr %52, ptr %49, align 4
  store ptr %5, ptr %52, align 4
  %53 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18, i32 1
  store ptr %5, ptr %53, align 4
  store volatile ptr %52, ptr %5, align 4
  %54 = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #5
  br label %55

55:                                               ; preds = %43, %30, %28
  %56 = phi i32 [ %54, %43 ], [ %41, %30 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #5
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_spi_write32(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3) #2 {
  %5 = alloca %struct.spi_message, align 4
  %6 = alloca %struct.spi_transfer, align 4
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca %struct.spi_transfer, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca [2 x i8], align 2
  %11 = alloca i8, align 1
  %12 = alloca [6 x i8], align 1
  %13 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %12) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %12, i8 0, i32 6, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #5
  store i8 0, ptr %11, align 1, !annotation !8
  br label %15

15:                                               ; preds = %22, %4
  %16 = phi i32 [ 0, %4 ], [ %24, %22 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #5
  store i16 -416, ptr %10, align 2, !annotation !8
  %17 = call i32 @spi_write_then_read(ptr noundef %14, ptr noundef nonnull %10, i32 noundef 2, ptr noundef nonnull %11, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i8, ptr %11, align 1
  %21 = icmp sgt i8 %20, -1
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #5
  %24 = add nuw nsw i32 %16, 1
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %28, label %15

26:                                               ; preds = %19
  %27 = icmp eq i32 %16, 10
  br i1 %27, label %28, label %30

28:                                               ; preds = %26, %22, %15
  %29 = phi i32 [ -5, %26 ], [ %17, %15 ], [ -5, %22 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #5
  br label %55

30:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #5
  store i8 97, ptr %9, align 1
  %31 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 1
  store i8 -1, ptr %31, align 1
  %32 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 2
  store i8 %1, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #5
  %33 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %33, i8 0, i64 92, i1 false) #5
  store ptr %9, ptr %8, align 4
  %34 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 2
  store i32 3, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #5
  %35 = getelementptr inbounds i8, ptr %7, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %35, i8 0, i64 40, i1 false) #5
  store volatile ptr %7, ptr %7, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %37 = getelementptr inbounds %struct.spi_message, ptr %7, i32 0, i32 10
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.spi_message, ptr %7, i32 0, i32 10, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 18
  store ptr %39, ptr %36, align 4
  store ptr %7, ptr %39, align 4
  %40 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 18, i32 1
  store ptr %7, ptr %40, align 4
  store volatile ptr %39, ptr %7, align 4
  %41 = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %30
  store i8 97, ptr %12, align 1
  %44 = getelementptr inbounds [6 x i8], ptr %12, i32 0, i32 1
  store i8 %2, ptr %44, align 1
  %45 = getelementptr inbounds [6 x i8], ptr %12, i32 0, i32 2
  store i32 %3, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #5
  %46 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %46, i8 0, i64 92, i1 false) #5
  store ptr %12, ptr %6, align 4
  %47 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 2
  store i32 6, ptr %47, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #5
  %48 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %48, i8 0, i64 40, i1 false) #5
  store volatile ptr %5, ptr %5, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %50 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10
  store volatile ptr %50, ptr %50, align 4
  %51 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10, i32 1
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18
  store ptr %52, ptr %49, align 4
  store ptr %5, ptr %52, align 4
  %53 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18, i32 1
  store ptr %5, ptr %53, align 4
  store volatile ptr %52, ptr %5, align 4
  %54 = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #5
  br label %55

55:                                               ; preds = %43, %30, %28
  %56 = phi i32 [ %54, %43 ], [ %41, %30 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %12) #5
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_spi_write48(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i64 noundef %3) #2 {
  %5 = alloca %struct.spi_message, align 4
  %6 = alloca %struct.spi_transfer, align 4
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca %struct.spi_transfer, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca [2 x i8], align 2
  %11 = alloca i8, align 1
  %12 = alloca [10 x i8], align 1
  %13 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %12) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %12, i8 0, i32 10, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #5
  store i8 0, ptr %11, align 1, !annotation !8
  br label %15

15:                                               ; preds = %22, %4
  %16 = phi i32 [ 0, %4 ], [ %24, %22 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #5
  store i16 -416, ptr %10, align 2, !annotation !8
  %17 = call i32 @spi_write_then_read(ptr noundef %14, ptr noundef nonnull %10, i32 noundef 2, ptr noundef nonnull %11, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i8, ptr %11, align 1
  %21 = icmp sgt i8 %20, -1
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #5
  %24 = add nuw nsw i32 %16, 1
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %28, label %15

26:                                               ; preds = %19
  %27 = icmp eq i32 %16, 10
  br i1 %27, label %28, label %30

28:                                               ; preds = %26, %22, %15
  %29 = phi i32 [ -5, %26 ], [ %17, %15 ], [ -5, %22 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #5
  br label %55

30:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #5
  store i8 97, ptr %9, align 1
  %31 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 1
  store i8 -1, ptr %31, align 1
  %32 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 2
  store i8 %1, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #5
  %33 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %33, i8 0, i64 92, i1 false) #5
  store ptr %9, ptr %8, align 4
  %34 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 2
  store i32 3, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #5
  %35 = getelementptr inbounds i8, ptr %7, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %35, i8 0, i64 40, i1 false) #5
  store volatile ptr %7, ptr %7, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %37 = getelementptr inbounds %struct.spi_message, ptr %7, i32 0, i32 10
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.spi_message, ptr %7, i32 0, i32 10, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 18
  store ptr %39, ptr %36, align 4
  store ptr %7, ptr %39, align 4
  %40 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 18, i32 1
  store ptr %7, ptr %40, align 4
  store volatile ptr %39, ptr %7, align 4
  %41 = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %30
  store i8 97, ptr %12, align 1
  %44 = getelementptr inbounds [10 x i8], ptr %12, i32 0, i32 1
  store i8 %2, ptr %44, align 1
  %45 = getelementptr inbounds [10 x i8], ptr %12, i32 0, i32 2
  store i64 %3, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #5
  %46 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %46, i8 0, i64 92, i1 false) #5
  store ptr %12, ptr %6, align 4
  %47 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 2
  store i32 8, ptr %47, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #5
  %48 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %48, i8 0, i64 40, i1 false) #5
  store volatile ptr %5, ptr %5, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %50 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10
  store volatile ptr %50, ptr %50, align 4
  %51 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10, i32 1
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18
  store ptr %52, ptr %49, align 4
  store ptr %5, ptr %52, align 4
  %53 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18, i32 1
  store ptr %5, ptr %53, align 4
  store volatile ptr %52, ptr %5, align 4
  %54 = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #5
  br label %55

55:                                               ; preds = %43, %30, %28
  %56 = phi i32 [ %54, %43 ], [ %41, %30 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %12) #5
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_spi_write64(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i64 noundef %3) #2 {
  %5 = alloca %struct.spi_message, align 4
  %6 = alloca %struct.spi_transfer, align 4
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca %struct.spi_transfer, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca [2 x i8], align 2
  %11 = alloca i8, align 1
  %12 = alloca [10 x i8], align 1
  %13 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %12) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %12, i8 0, i32 10, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #5
  store i8 0, ptr %11, align 1, !annotation !8
  br label %15

15:                                               ; preds = %22, %4
  %16 = phi i32 [ 0, %4 ], [ %24, %22 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #5
  store i16 -416, ptr %10, align 2, !annotation !8
  %17 = call i32 @spi_write_then_read(ptr noundef %14, ptr noundef nonnull %10, i32 noundef 2, ptr noundef nonnull %11, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i8, ptr %11, align 1
  %21 = icmp sgt i8 %20, -1
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #5
  %24 = add nuw nsw i32 %16, 1
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %28, label %15

26:                                               ; preds = %19
  %27 = icmp eq i32 %16, 10
  br i1 %27, label %28, label %30

28:                                               ; preds = %26, %22, %15
  %29 = phi i32 [ -5, %26 ], [ %17, %15 ], [ -5, %22 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #5
  br label %55

30:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #5
  store i8 97, ptr %9, align 1
  %31 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 1
  store i8 -1, ptr %31, align 1
  %32 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 2
  store i8 %1, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #5
  %33 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %33, i8 0, i64 92, i1 false) #5
  store ptr %9, ptr %8, align 4
  %34 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 2
  store i32 3, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #5
  %35 = getelementptr inbounds i8, ptr %7, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %35, i8 0, i64 40, i1 false) #5
  store volatile ptr %7, ptr %7, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %37 = getelementptr inbounds %struct.spi_message, ptr %7, i32 0, i32 10
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.spi_message, ptr %7, i32 0, i32 10, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 18
  store ptr %39, ptr %36, align 4
  store ptr %7, ptr %39, align 4
  %40 = getelementptr inbounds %struct.spi_transfer, ptr %8, i32 0, i32 18, i32 1
  store ptr %7, ptr %40, align 4
  store volatile ptr %39, ptr %7, align 4
  %41 = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %30
  store i8 97, ptr %12, align 1
  %44 = getelementptr inbounds [10 x i8], ptr %12, i32 0, i32 1
  store i8 %2, ptr %44, align 1
  %45 = getelementptr inbounds [10 x i8], ptr %12, i32 0, i32 2
  store i64 %3, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #5
  %46 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %46, i8 0, i64 92, i1 false) #5
  store ptr %12, ptr %6, align 4
  %47 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 2
  store i32 10, ptr %47, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #5
  %48 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %48, i8 0, i64 40, i1 false) #5
  store volatile ptr %5, ptr %5, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %50 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10
  store volatile ptr %50, ptr %50, align 4
  %51 = getelementptr inbounds %struct.spi_message, ptr %5, i32 0, i32 10, i32 1
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18
  store ptr %52, ptr %49, align 4
  store ptr %5, ptr %52, align 4
  %53 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18, i32 1
  store ptr %5, ptr %53, align 4
  store volatile ptr %52, ptr %5, align 4
  %54 = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #5
  br label %55

55:                                               ; preds = %43, %30, %28
  %56 = phi i32 [ %54, %43 ], [ %41, %30 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %12) #5
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @b53_spi_read(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca i8, align 1
  %10 = alloca %struct.spi_message, align 4
  %11 = alloca %struct.spi_transfer, align 4
  %12 = alloca [3 x i8], align 1
  %13 = alloca [2 x i8], align 2
  %14 = alloca i8, align 1
  %15 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #5
  store i8 0, ptr %14, align 1, !annotation !8
  br label %17

17:                                               ; preds = %24, %5
  %18 = phi i32 [ 0, %5 ], [ %26, %24 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #5
  store i16 -416, ptr %13, align 2, !annotation !8
  %19 = call i32 @spi_write_then_read(ptr noundef %16, ptr noundef nonnull %13, i32 noundef 2, ptr noundef nonnull %14, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i8, ptr %14, align 1
  %23 = icmp sgt i8 %22, -1
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748000) #5
  %26 = add nuw nsw i32 %18, 1
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %30, label %17

28:                                               ; preds = %21
  %29 = icmp eq i32 %18, 10
  br i1 %29, label %30, label %32

30:                                               ; preds = %28, %24, %17
  %31 = phi i32 [ -5, %28 ], [ %19, %17 ], [ -5, %24 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #5
  br label %67

32:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #5
  store i8 97, ptr %12, align 1
  %33 = getelementptr inbounds [3 x i8], ptr %12, i32 0, i32 1
  store i8 -1, ptr %33, align 1
  %34 = getelementptr inbounds [3 x i8], ptr %12, i32 0, i32 2
  store i8 %1, ptr %34, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %11) #5
  %35 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %35, i8 0, i64 92, i1 false) #5
  store ptr %12, ptr %11, align 4
  %36 = getelementptr inbounds %struct.spi_transfer, ptr %11, i32 0, i32 2
  store i32 3, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #5
  %37 = getelementptr inbounds i8, ptr %10, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %37, i8 0, i64 40, i1 false) #5
  store volatile ptr %10, ptr %10, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %39 = getelementptr inbounds %struct.spi_message, ptr %10, i32 0, i32 10
  store volatile ptr %39, ptr %39, align 4
  %40 = getelementptr inbounds %struct.spi_message, ptr %10, i32 0, i32 10, i32 1
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.spi_transfer, ptr %11, i32 0, i32 18
  store ptr %41, ptr %38, align 4
  store ptr %10, ptr %41, align 4
  %42 = getelementptr inbounds %struct.spi_transfer, ptr %11, i32 0, i32 18, i32 1
  store ptr %10, ptr %42, align 4
  store volatile ptr %41, ptr %10, align 4
  %43 = call i32 @spi_sync(ptr noundef %16, ptr noundef nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #5
  store i8 0, ptr %9, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #5
  store i16 96, ptr %8, align 2, !annotation !8
  %46 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 %2, ptr %46, align 1
  %47 = call i32 @spi_write_then_read(ptr noundef %16, ptr noundef nonnull %8, i32 noundef 2, ptr noundef nonnull %9, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %57, %45
  %50 = phi i32 [ %59, %57 ], [ 0, %45 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #5
  store i16 -416, ptr %7, align 2, !annotation !8
  %51 = call i32 @spi_write_then_read(ptr noundef %16, ptr noundef nonnull %7, i32 noundef 2, ptr noundef nonnull %9, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #5
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i8, ptr %9, align 1
  %55 = and i8 %54, 32
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %58(i32 noundef 214748000) #5
  %59 = add nuw nsw i32 %50, 1
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %63, label %49

61:                                               ; preds = %53
  %62 = icmp eq i32 %50, 10
  br i1 %62, label %63, label %65

63:                                               ; preds = %61, %57, %49, %45
  %64 = phi i32 [ %47, %45 ], [ -5, %61 ], [ -5, %57 ], [ %51, %49 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #5
  br label %67

65:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #5
  store i16 -4000, ptr %6, align 2, !annotation !8
  %66 = call i32 @spi_write_then_read(ptr noundef %16, ptr noundef nonnull %6, i32 noundef 2, ptr noundef %3, i32 noundef %4) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #5
  br label %67

67:                                               ; preds = %65, %63, %32, %30
  %68 = phi i32 [ %66, %65 ], [ %43, %32 ], [ %31, %30 ], [ %64, %63 ]
  ret i32 %68
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
