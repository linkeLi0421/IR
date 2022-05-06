; ModuleID = '/llk/IR/drivers/i2c/i2c-slave-eeprom.c_pt.bc'
source_filename = "../drivers/i2c/i2c-slave-eeprom.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.eeprom_data = type { %struct.bin_attribute, %struct.spinlock, i16, i16, i8, i8, i8, [0 x i8] }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }

@__initcall__kmod_i2c_slave_eeprom__262_215_i2c_slave_eeprom_driver_init6 = internal global ptr @i2c_slave_eeprom_driver_init, section ".initcall6.init", align 4
@i2c_slave_eeprom_driver = internal global %struct.i2c_driver { i32 0, ptr @i2c_slave_eeprom_probe, ptr @i2c_slave_eeprom_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @i2c_slave_eeprom_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_i2c_slave_eeprom_driver_exit = internal global ptr @i2c_slave_eeprom_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author263 = internal constant [64 x i8] c"i2c_slave_eeprom.author=Wolfram Sang <wsa@sang-engineering.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description264 = internal constant [61 x i8] c"i2c_slave_eeprom.description=I2C slave mode EEPROM simulator\00", section ".modinfo", align 1
@__UNIQUE_ID_file265 = internal constant [51 x i8] c"i2c_slave_eeprom.file=drivers/i2c/i2c-slave-eeprom\00", section ".modinfo", align 1
@__UNIQUE_ID_license266 = internal constant [32 x i8] c"i2c_slave_eeprom.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"i2c-slave-eeprom\00", align 1
@i2c_slave_eeprom_id = internal constant [9 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"slave-24c02\00\00\00\00\00\00\00\00\00", i32 255 }, %struct.i2c_device_id { [20 x i8] c"slave-24c02ro\00\00\00\00\00\00\00", i32 131327 }, %struct.i2c_device_id { [20 x i8] c"slave-24c32\00\00\00\00\00\00\00\00\00", i32 69631 }, %struct.i2c_device_id { [20 x i8] c"slave-24c32ro\00\00\00\00\00\00\00", i32 200703 }, %struct.i2c_device_id { [20 x i8] c"slave-24c64\00\00\00\00\00\00\00\00\00", i32 73727 }, %struct.i2c_device_id { [20 x i8] c"slave-24c64ro\00\00\00\00\00\00\00", i32 204799 }, %struct.i2c_device_id { [20 x i8] c"slave-24c512\00\00\00\00\00\00\00\00", i32 131071 }, %struct.i2c_device_id { [20 x i8] c"slave-24c512ro\00\00\00\00\00\00", i32 262143 }, %struct.i2c_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"slave-eeprom\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"firmware-name\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author263, ptr @__UNIQUE_ID_description264, ptr @__UNIQUE_ID_file265, ptr @__UNIQUE_ID_license266, ptr @__exitcall_i2c_slave_eeprom_driver_exit, ptr @__initcall__kmod_i2c_slave_eeprom__262_215_i2c_slave_eeprom_driver_init6, ptr @i2c_slave_eeprom_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @i2c_slave_eeprom_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @i2c_slave_eeprom_driver) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @i2c_slave_eeprom_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @i2c_slave_eeprom_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_slave_eeprom_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 65535
  %8 = add nuw nsw i32 %7, 1
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %10 = add nuw nsw i32 %7, 45
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %10, i32 noundef 3520) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %50, label %13

13:                                               ; preds = %2
  %14 = and i32 %6, 65536
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i8 1, i8 2
  %17 = getelementptr inbounds %struct.eeprom_data, ptr %11, i32 0, i32 4
  store i8 %16, ptr %17, align 4
  %18 = trunc i32 %6 to i16
  %19 = getelementptr inbounds %struct.eeprom_data, ptr %11, i32 0, i32 3
  store i16 %18, ptr %19, align 2
  %20 = load i32, ptr %5, align 4
  %21 = getelementptr inbounds %struct.eeprom_data, ptr %11, i32 0, i32 6
  %22 = lshr i32 %20, 17
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  store i8 %24, ptr %21, align 2
  %25 = getelementptr inbounds %struct.eeprom_data, ptr %11, i32 0, i32 1
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %11, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4, !annotation !8
  %27 = call i32 @device_property_read_string(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %13
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.eeprom_data, ptr %11, i32 0, i32 7
  %32 = call i32 @request_firmware_into_buf(ptr noundef nonnull %3, ptr noundef %30, ptr noundef %9, ptr noundef %31, i32 noundef %8) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load ptr, ptr %3, align 4
  call void @release_firmware(ptr noundef %35) #6
  br label %39

36:                                               ; preds = %13
  %37 = getelementptr inbounds %struct.eeprom_data, ptr %11, i32 0, i32 7
  call void @llvm.memset.p0.i32(ptr noundef align 1 %37, i8 -1, i32 %8, i1 false) #6
  br label %39

38:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %50

39:                                               ; preds = %36, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  store ptr @.str.1, ptr %11, align 4
  %40 = getelementptr inbounds %struct.attribute, ptr %11, i32 0, i32 1
  store i16 384, ptr %40, align 4
  %41 = getelementptr inbounds %struct.bin_attribute, ptr %11, i32 0, i32 4
  store ptr @i2c_slave_eeprom_bin_read, ptr %41, align 4
  %42 = getelementptr inbounds %struct.bin_attribute, ptr %11, i32 0, i32 5
  store ptr @i2c_slave_eeprom_bin_write, ptr %42, align 4
  %43 = getelementptr inbounds %struct.bin_attribute, ptr %11, i32 0, i32 1
  store i32 %8, ptr %43, align 4
  %44 = call i32 @sysfs_create_bin_file(ptr noundef %9, ptr noundef nonnull %11) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = call i32 @i2c_slave_register(ptr noundef %0, ptr noundef nonnull @i2c_slave_eeprom_slave_cb) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  call void @sysfs_remove_bin_file(ptr noundef %9, ptr noundef nonnull %11) #6
  br label %50

50:                                               ; preds = %49, %46, %39, %38, %2
  %51 = phi i32 [ %47, %49 ], [ -12, %2 ], [ %32, %38 ], [ %44, %39 ], [ 0, %46 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_slave_eeprom_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @i2c_slave_unregister(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void @sysfs_remove_bin_file(ptr noundef %5, ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_slave_eeprom_bin_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3, i64 noundef %4, i32 noundef returned %5) #2 {
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.eeprom_data, ptr %8, i32 0, i32 1
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #6
  %11 = trunc i64 %4 to i32
  %12 = getelementptr %struct.eeprom_data, ptr %8, i32 0, i32 7, i32 %11
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %12, i32 %5, i1 false)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_slave_eeprom_bin_write(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3, i64 noundef %4, i32 noundef returned %5) #2 {
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.eeprom_data, ptr %8, i32 0, i32 1
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #6
  %11 = trunc i64 %4 to i32
  %12 = getelementptr %struct.eeprom_data, ptr %8, i32 0, i32 7, i32 %11
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %12, ptr align 1 %3, i32 %5, i1 false)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_slave_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_slave_eeprom_slave_cb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %5 = load ptr, ptr %4, align 8
  switch i32 %1, label %61 [
    i32 3, label %6
    i32 2, label %43
    i32 0, label %47
    i32 4, label %59
    i32 1, label %59
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.eeprom_data, ptr %5, i32 0, i32 5
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.eeprom_data, ptr %5, i32 0, i32 4
  %10 = load i8, ptr %9, align 4
  %11 = icmp ult i8 %8, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %6
  %13 = icmp eq i8 %8, 0
  %14 = getelementptr inbounds %struct.eeprom_data, ptr %5, i32 0, i32 2
  br i1 %13, label %18, label %15

15:                                               ; preds = %12
  %16 = load i16, ptr %14, align 4
  %17 = shl i16 %16, 8
  br label %19

18:                                               ; preds = %12
  store i16 0, ptr %14, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = phi i16 [ %17, %15 ], [ 0, %18 ]
  %21 = load i8, ptr %2, align 1
  %22 = zext i8 %21 to i16
  %23 = getelementptr inbounds %struct.eeprom_data, ptr %5, i32 0, i32 2
  %24 = or i16 %20, %22
  store i16 %24, ptr %23, align 4
  %25 = add nuw i8 %8, 1
  store i8 %25, ptr %7, align 1
  br label %61

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.eeprom_data, ptr %5, i32 0, i32 6
  %28 = load i8, ptr %27, align 2, !range !9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.eeprom_data, ptr %5, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %31) #6
  %32 = load i8, ptr %2, align 1
  %33 = getelementptr inbounds %struct.eeprom_data, ptr %5, i32 0, i32 2
  %34 = load i16, ptr %33, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.eeprom_data, ptr %5, i32 0, i32 3
  %37 = load i16, ptr %36, align 2
  %38 = and i16 %37, %34
  %39 = zext i16 %38 to i32
  %40 = getelementptr %struct.eeprom_data, ptr %5, i32 0, i32 7, i32 %39
  store i8 %32, ptr %40, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %41 = load i16, ptr %31, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  br label %61

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.eeprom_data, ptr %5, i32 0, i32 2
  %45 = load i16, ptr %44, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %44, align 4
  br label %47

47:                                               ; preds = %43, %3
  %48 = getelementptr inbounds %struct.eeprom_data, ptr %5, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %48) #6
  %49 = getelementptr inbounds %struct.eeprom_data, ptr %5, i32 0, i32 2
  %50 = load i16, ptr %49, align 4
  %51 = getelementptr inbounds %struct.eeprom_data, ptr %5, i32 0, i32 3
  %52 = load i16, ptr %51, align 2
  %53 = and i16 %52, %50
  %54 = zext i16 %53 to i32
  %55 = getelementptr %struct.eeprom_data, ptr %5, i32 0, i32 7, i32 %54
  %56 = load i8, ptr %55, align 1
  store i8 %56, ptr %2, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %57 = load i16, ptr %48, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %48, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  br label %61

59:                                               ; preds = %3, %3
  %60 = getelementptr inbounds %struct.eeprom_data, ptr %5, i32 0, i32 5
  store i8 0, ptr %60, align 1
  br label %61

61:                                               ; preds = %59, %47, %30, %26, %19, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_into_buf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_slave_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 2148935181}
!11 = !{i64 2148931005}
!12 = !{i64 2148931080, i64 2148931107, i64 2148931154, i64 2148931176, i64 2148931204, i64 2148931224}
!13 = !{i64 2148958184}
