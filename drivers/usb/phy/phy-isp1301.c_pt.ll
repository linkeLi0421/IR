; ModuleID = '/llk/IR/drivers/usb/phy/phy-isp1301.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-isp1301.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_isp1301_get_client:\09\09\09\09\09"
module asm "\09.asciz \09\22isp1301_get_client\22\09\09\09\09\09"
module asm "__kstrtabns_isp1301_get_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type {}
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.isp1301 = type { %struct.usb_phy, %struct.mutex, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }

@__initcall__kmod_phy_isp1301__252_143_isp1301_driver_init6 = internal global ptr @isp1301_driver_init, section ".initcall6.init", align 4
@isp1301_driver = internal global %struct.i2c_driver { i32 0, ptr @isp1301_probe, ptr @isp1301_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @isp1301_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @isp1301_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_isp1301_driver_exit = internal global ptr @isp1301_driver_exit, section ".exitcall.exit", align 4
@isp1301_i2c_client = internal unnamed_addr global ptr null, align 4
@__kstrtab_isp1301_get_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_isp1301_get_client = external dso_local constant [0 x i8], align 1
@__ksymtab_isp1301_get_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @isp1301_get_client to i32), ptr @__kstrtab_isp1301_get_client, ptr @__kstrtabns_isp1301_get_client }, section "___ksymtab_gpl+isp1301_get_client", align 4
@__UNIQUE_ID_author253 = internal constant [52 x i8] c"phy_isp1301.author=Roland Stigge <stigge@antcom.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [59 x i8] c"phy_isp1301.description=NXP ISP1301 USB transceiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [45 x i8] c"phy_isp1301.file=drivers/usb/phy/phy-isp1301\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [24 x i8] c"phy_isp1301.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"isp1301\00", align 1
@isp1301_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,isp1301\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@isp1301_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"isp1301\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@isp1301_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&isp->mutex\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_isp1301_driver_exit, ptr @__initcall__kmod_phy_isp1301__252_143_isp1301_driver_init6, ptr @__ksymtab_isp1301_get_client, ptr @isp1301_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @isp1301_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @isp1301_driver) #3
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @isp1301_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @isp1301_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @isp1301_get_client(ptr noundef %0) #2 {
  %2 = tail call ptr @of_find_i2c_device_by_node(ptr noundef %0) #3
  %3 = icmp eq ptr %2, null
  %4 = load ptr, ptr @isp1301_i2c_client, align 4
  %5 = select i1 %3, ptr %4, ptr %2
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1301_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 216, i32 noundef 3520) #3
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.isp1301, ptr %4, i32 0, i32 2
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.isp1301, ptr %4, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @isp1301_probe.__key) #3
  store ptr %3, ptr %4, align 4
  %9 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 1
  store ptr @.str, ptr %9, align 4
  %10 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 22
  store ptr @isp1301_phy_init, ptr %10, align 4
  %11 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 24
  store ptr @isp1301_phy_set_vbus, ptr %11, align 4
  %12 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 3
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %4, ptr %13, align 8
  %14 = tail call i32 @usb_add_phy_dev(ptr noundef nonnull %4) #3
  store ptr %0, ptr @isp1301_i2c_client, align 4
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1301_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @usb_remove_phy(ptr noundef %3) #3
  store ptr null, ptr @isp1301_i2c_client, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1301_phy_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.isp1301, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 5, i8 noundef zeroext 64) #3
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 5, i8 noundef zeroext -2) #3
  %7 = load ptr, ptr %2, align 4
  %8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 4, i8 noundef zeroext 1) #3
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 19, i8 noundef zeroext -1) #3
  %11 = load ptr, ptr %2, align 4
  %12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 18, i8 noundef zeroext 70) #3
  %13 = load ptr, ptr %2, align 4
  %14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 7, i8 noundef zeroext -1) #3
  %15 = load ptr, ptr %2, align 4
  %16 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 4, i8 noundef zeroext 4) #3
  %17 = load ptr, ptr %2, align 4
  %18 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 6, i8 noundef zeroext 12) #3
  %19 = load ptr, ptr %2, align 4
  %20 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 7, i8 noundef zeroext 3) #3
  %21 = load ptr, ptr %2, align 4
  %22 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 11, i8 noundef zeroext -1) #3
  %23 = load ptr, ptr %2, align 4
  %24 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 13, i8 noundef zeroext -1) #3
  %25 = load ptr, ptr %2, align 4
  %26 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 15, i8 noundef zeroext -1) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1301_phy_set_vbus(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.isp1301, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = select i1 %3, i8 7, i8 6
  %7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext 32) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
