; ModuleID = '/llk/IR/drivers/firmware/raspberrypi.c_pt.bc'
source_filename = "../drivers/firmware/raspberrypi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpi_firmware_property_list:\09\09\09\09\09"
module asm "\09.asciz \09\22rpi_firmware_property_list\22\09\09\09\09\09"
module asm "__kstrtabns_rpi_firmware_property_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpi_firmware_property:\09\09\09\09\09"
module asm "\09.asciz \09\22rpi_firmware_property\22\09\09\09\09\09"
module asm "__kstrtabns_rpi_firmware_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpi_firmware_put:\09\09\09\09\09"
module asm "\09.asciz \09\22rpi_firmware_put\22\09\09\09\09\09"
module asm "__kstrtabns_rpi_firmware_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpi_firmware_get:\09\09\09\09\09"
module asm "\09.asciz \09\22rpi_firmware_get\22\09\09\09\09\09"
module asm "__kstrtabns_rpi_firmware_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_rpi_firmware_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_rpi_firmware_get\22\09\09\09\09\09"
module asm "__kstrtabns_devm_rpi_firmware_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
%struct.rpi_firmware = type { %struct.mbox_client, ptr, %struct.completion, i32, %struct.kref }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rpi_firmware_property_tag_header = type { i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }

@.str = private unnamed_addr constant [31 x i8] c"drivers/firmware/raspberrypi.c\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Request 0x%08x returned status 0x%08x\0A\00", align 1
@__kstrtab_rpi_firmware_property_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpi_firmware_property_list = external dso_local constant [0 x i8], align 1
@__ksymtab_rpi_firmware_property_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpi_firmware_property_list to i32), ptr @__kstrtab_rpi_firmware_property_list, ptr @__kstrtabns_rpi_firmware_property_list }, section "___ksymtab_gpl+rpi_firmware_property_list", align 4
@__kstrtab_rpi_firmware_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpi_firmware_property = external dso_local constant [0 x i8], align 1
@__ksymtab_rpi_firmware_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpi_firmware_property to i32), ptr @__kstrtab_rpi_firmware_property, ptr @__kstrtabns_rpi_firmware_property }, section "___ksymtab_gpl+rpi_firmware_property", align 4
@__kstrtab_rpi_firmware_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpi_firmware_put = external dso_local constant [0 x i8], align 1
@__ksymtab_rpi_firmware_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpi_firmware_put to i32), ptr @__kstrtab_rpi_firmware_put, ptr @__kstrtabns_rpi_firmware_put }, section "___ksymtab_gpl+rpi_firmware_put", align 4
@__kstrtab_rpi_firmware_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpi_firmware_get = external dso_local constant [0 x i8], align 1
@__ksymtab_rpi_firmware_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpi_firmware_get to i32), ptr @__kstrtab_rpi_firmware_get, ptr @__kstrtabns_rpi_firmware_get }, section "___ksymtab_gpl+rpi_firmware_get", align 4
@__kstrtab_devm_rpi_firmware_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_rpi_firmware_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_rpi_firmware_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_rpi_firmware_get to i32), ptr @__kstrtab_devm_rpi_firmware_get, ptr @__kstrtabns_devm_rpi_firmware_get }, section "___ksymtab_gpl+devm_rpi_firmware_get", align 4
@__initcall__kmod_raspberrypi__222_384_rpi_firmware_driver_init6 = internal global ptr @rpi_firmware_driver_init, section ".initcall6.init", align 4
@rpi_firmware_driver = internal global %struct.platform_driver { ptr @rpi_firmware_probe, ptr @rpi_firmware_remove, ptr @rpi_firmware_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rpi_firmware_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rpi_firmware_driver_exit = internal global ptr @rpi_firmware_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author223 = internal constant [49 x i8] c"raspberrypi.author=Eric Anholt <eric@anholt.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [53 x i8] c"raspberrypi.description=Raspberry Pi firmware driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [46 x i8] c"raspberrypi.file=drivers/firmware/raspberrypi\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [27 x i8] c"raspberrypi.license=GPL v2\00", section ".modinfo", align 1
@transaction_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @transaction_lock, i64 12), ptr getelementptr (i8, ptr @transaction_lock, i64 12) } }, align 4
@rpi_firmware_transaction.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Firmware transaction timeout\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"mbox_send_message returned %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"raspberrypi-firmware\00", align 1
@rpi_firmware_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"raspberrypi,bcm2835-firmware\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to get mbox channel: %d\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Attached to firmware from %ptT\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"raspberrypi-hwmon\00", align 1
@rpi_hwmon = internal unnamed_addr global ptr null, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"raspberrypi,firmware-clocks\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"raspberrypi-clk\00", align 1
@rpi_clk = internal unnamed_addr global ptr null, align 4
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_rpi_firmware_driver_exit, ptr @__initcall__kmod_raspberrypi__222_384_rpi_firmware_driver_init6, ptr @__ksymtab_devm_rpi_firmware_get, ptr @__ksymtab_rpi_firmware_get, ptr @__ksymtab_rpi_firmware_property, ptr @__ksymtab_rpi_firmware_property_list, ptr @__ksymtab_rpi_firmware_put, ptr @rpi_firmware_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpi_firmware_property_list(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = add i32 %2, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = and i32 %2, 3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %57

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 4
  %11 = add i32 %2, 4107
  %12 = and i32 %11, -4096
  %13 = call ptr @dma_alloc_attrs(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %5, i32 noundef 2592, i32 noundef 0) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %57, label %15

15:                                               ; preds = %9
  %16 = icmp ugt i32 %6, 1048575
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 105, i32 noundef 9, ptr noundef null) #9
  br label %18

18:                                               ; preds = %17, %15
  store i32 %6, ptr %13, align 4
  %19 = getelementptr i32, ptr %13, i32 1
  store i32 0, ptr %19, align 4
  %20 = getelementptr i32, ptr %13, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %20, ptr align 1 %1, i32 %2, i1 false)
  %21 = lshr i32 %6, 2
  %22 = add nsw i32 %21, -1
  %23 = getelementptr i32, ptr %13, i32 %22
  store i32 0, ptr %23, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  %24 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %25 = and i32 %24, -16
  %26 = or i32 %25, 8
  store i32 %26, ptr %4, align 4
  %27 = and i32 %24, 15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29, !prof !11

29:                                               ; preds = %18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef null) #9
  br label %30

30:                                               ; preds = %29, %18
  call void @mutex_lock(ptr noundef nonnull @transaction_lock) #9
  %31 = getelementptr inbounds %struct.rpi_firmware, ptr %0, i32 0, i32 2
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.rpi_firmware, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 @mbox_send_message(ptr noundef %33, ptr noundef nonnull %4) #9
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = call i32 @wait_for_completion_timeout(ptr noundef %31, i32 noundef 100) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i1, ptr @rpi_firmware_transaction.__already_done, align 1
  br i1 %40, label %44, label %41, !prof !11

41:                                               ; preds = %39
  store i1 true, ptr @rpi_firmware_transaction.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.2) #9
  br label %44

42:                                               ; preds = %30
  %43 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.3, i32 noundef %34) #10
  br label %44

44:                                               ; preds = %42, %41, %39, %36
  %45 = phi i32 [ %34, %42 ], [ 0, %36 ], [ -110, %41 ], [ -110, %39 ]
  call void @mutex_unlock(ptr noundef nonnull @transaction_lock) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 4 %20, i32 %2, i1 false)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, ptr %19, align 4
  %49 = icmp eq i32 %48, -2147483648
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %0, align 4
  %52 = load i32, ptr %20, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.1, i32 noundef %52, i32 noundef %48) #10
  br label %53

53:                                               ; preds = %50, %47, %44
  %54 = phi i32 [ -22, %50 ], [ 0, %47 ], [ %45, %44 ]
  %55 = load ptr, ptr %0, align 4
  %56 = load i32, ptr %5, align 4
  call void @dma_free_attrs(ptr noundef %55, i32 noundef %12, ptr noundef nonnull %13, i32 noundef %56, i32 noundef 0) #9
  br label %57

57:                                               ; preds = %53, %9, %3
  %58 = phi i32 [ %54, %53 ], [ -22, %3 ], [ -12, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %58
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpi_firmware_property(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = add i32 %3, 12
  %6 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  store i32 %1, ptr %6, align 64
  %9 = getelementptr inbounds %struct.rpi_firmware_property_tag_header, ptr %6, i32 0, i32 1
  store i32 %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rpi_firmware_property_tag_header, ptr %6, i32 0, i32 2
  store i32 0, ptr %10, align 8
  %11 = getelementptr i8, ptr %6, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %11, ptr align 1 %2, i32 %3, i1 false)
  %12 = tail call i32 @rpi_firmware_property_list(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %5)
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 4 %11, i32 %3, i1 false)
  tail call void @kfree(ptr noundef nonnull %6) #9
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi i32 [ %12, %8 ], [ -12, %4 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpi_firmware_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpi_firmware, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #9, !srcloc !14
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #9, !srcloc !15
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %12, label %8, !prof !11

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #9
  br label %12

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %10 = getelementptr %struct.rpi_firmware, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void @mbox_free_channel(ptr noundef %11) #9
  tail call void @kfree(ptr noundef %0) #9
  br label %12

12:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rpi_firmware_get(ptr noundef %0) #0 {
  %2 = tail call ptr @of_find_device_by_node(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rpi_firmware, ptr %6, i32 0, i32 4
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %22, %8
  %13 = phi i32 [ %20, %22 ], [ %10, %8 ]
  %14 = add i32 %13, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #9, !srcloc !14
  br label %15

15:                                               ; preds = %15, %12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 %13, i32 %14, ptr elementtype(i32) %9) #9, !srcloc !17
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  %20 = extractvalue { i32, i32 } %16, 1
  %21 = icmp eq i32 %20, %13
  br i1 %21, label %24, label %22, !prof !11

22:                                               ; preds = %19
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %24, label %12

24:                                               ; preds = %22, %19, %8
  %25 = phi i32 [ 0, %8 ], [ %13, %19 ], [ 0, %22 ]
  %26 = add i32 %25, 1
  %27 = or i32 %26, %25
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %30, label %29, !prof !11

29:                                               ; preds = %24
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 0) #9
  br label %30

30:                                               ; preds = %29, %24
  %31 = icmp eq i32 %25, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %30, %4
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi ptr [ null, %32 ], [ %6, %30 ]
  %35 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  tail call void @put_device(ptr noundef %35) #9
  br label %36

36:                                               ; preds = %33, %1
  %37 = phi ptr [ null, %1 ], [ %34, %33 ]
  ret ptr %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_rpi_firmware_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @of_find_device_by_node(ptr noundef %1) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rpi_firmware, ptr %7, i32 0, i32 4
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %23, %9
  %14 = phi i32 [ %21, %23 ], [ %11, %9 ]
  %15 = add i32 %14, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #9, !srcloc !14
  br label %16

16:                                               ; preds = %16, %13
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 %14, i32 %15, ptr elementtype(i32) %10) #9, !srcloc !17
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %16

20:                                               ; preds = %16
  %21 = extractvalue { i32, i32 } %17, 1
  %22 = icmp eq i32 %21, %14
  br i1 %22, label %25, label %23, !prof !11

23:                                               ; preds = %20
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %25, label %13

25:                                               ; preds = %23, %20, %9
  %26 = phi i32 [ 0, %9 ], [ 0, %23 ], [ %14, %20 ]
  %27 = add i32 %26, 1
  %28 = or i32 %27, %26
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %31, label %30, !prof !11

30:                                               ; preds = %25
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 0) #9
  br label %31

31:                                               ; preds = %30, %25
  %32 = icmp eq i32 %26, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %31, %5
  %34 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void @put_device(ptr noundef %34) #9
  br label %49

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void @put_device(ptr noundef %36) #9
  %37 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_rpi_firmware_put, ptr noundef nonnull %7) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #9, !srcloc !14
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #9, !srcloc !15
  %41 = extractvalue { i32, i32, i32 } %40, 0
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = icmp sgt i32 %41, 0
  br i1 %44, label %49, label %45, !prof !11

45:                                               ; preds = %43
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 3) #9
  br label %49

46:                                               ; preds = %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %47 = getelementptr %struct.rpi_firmware, ptr %7, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void @mbox_free_channel(ptr noundef %48) #9
  tail call void @kfree(ptr noundef nonnull %7) #9
  br label %49

49:                                               ; preds = %46, %45, %43, %35, %33, %2
  %50 = phi ptr [ null, %33 ], [ null, %2 ], [ %7, %35 ], [ null, %43 ], [ null, %45 ], [ null, %46 ]
  ret ptr %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_rpi_firmware_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpi_firmware, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #9, !srcloc !14
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #9, !srcloc !15
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %12, label %8, !prof !11

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #9
  br label %12

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %10 = getelementptr %struct.rpi_firmware, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void @mbox_free_channel(ptr noundef %11) #9
  tail call void @kfree(ptr noundef %0) #9
  br label %12

12:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rpi_firmware_driver_init() #5 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpi_firmware_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rpi_firmware_driver_exit() #5 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rpi_firmware_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpi_firmware_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.platform_device_info, align 8
  %3 = alloca %struct.platform_device_info, align 8
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 56) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %67, label %9

9:                                                ; preds = %1
  store ptr %5, ptr %7, align 8
  %10 = getelementptr inbounds %struct.mbox_client, ptr %7, i32 0, i32 4
  store ptr @response_callback, ptr %10, align 8
  %11 = getelementptr inbounds %struct.mbox_client, ptr %7, i32 0, i32 1
  store i8 1, ptr %11, align 4
  %12 = tail call ptr @mbox_request_channel(ptr noundef nonnull %7, i32 noundef 0) #9
  %13 = getelementptr inbounds %struct.rpi_firmware, ptr %7, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = icmp eq ptr %12, inttoptr (i32 -517 to ptr)
  br i1 %16, label %67, label %17

17:                                               ; preds = %15
  %18 = ptrtoint ptr %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %18) #10
  br label %67

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.rpi_firmware, ptr %7, i32 0, i32 2
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.rpi_firmware, ptr %7, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %21, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #9
  %22 = getelementptr inbounds %struct.rpi_firmware, ptr %7, i32 0, i32 4
  store volatile i32 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %23, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 16) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %19
  store i32 1, ptr %25, align 8
  %28 = getelementptr inbounds %struct.rpi_firmware_property_tag_header, ptr %25, i32 0, i32 1
  store i32 4, ptr %28, align 4
  %29 = getelementptr inbounds %struct.rpi_firmware_property_tag_header, ptr %25, i32 0, i32 2
  store i32 0, ptr %29, align 8
  %30 = getelementptr i8, ptr %25, i32 12
  store i32 0, ptr %30, align 4
  %31 = tail call i32 @rpi_firmware_property_list(ptr noundef nonnull %7, ptr noundef nonnull %25, i32 noundef 16) #9
  %32 = load i32, ptr %30, align 4
  tail call void @kfree(ptr noundef nonnull %25) #9
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = zext i32 %32 to i64
  store i64 %35, ptr %4, align 8
  %36 = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.7, ptr noundef nonnull %4) #10
  br label %37

37:                                               ; preds = %34, %27, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %39 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3264, i32 noundef 16) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %37
  store i32 196678, ptr %39, align 8
  %42 = getelementptr inbounds %struct.rpi_firmware_property_tag_header, ptr %39, i32 0, i32 1
  store i32 4, ptr %42, align 4
  %43 = getelementptr inbounds %struct.rpi_firmware_property_tag_header, ptr %39, i32 0, i32 2
  store i32 0, ptr %43, align 8
  %44 = getelementptr i8, ptr %39, i32 12
  store i32 0, ptr %44, align 4
  %45 = call i32 @rpi_firmware_property_list(ptr noundef nonnull %7, ptr noundef nonnull %39, i32 noundef 16) #9
  call void @kfree(ptr noundef nonnull %39) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #9
  %48 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %48, i8 0, i32 48, i1 false) #9, !annotation !8
  store ptr %5, ptr %3, align 8
  %49 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 1
  store ptr null, ptr %49, align 4
  %50 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 3
  store ptr @.str.8, ptr %50, align 4
  %51 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 4
  store i32 -1, ptr %51, align 8
  %52 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %52, i8 0, i64 16, i1 false) #9
  %53 = call ptr @platform_device_register_full(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #9
  store ptr %53, ptr @rpi_hwmon, align 4
  br label %54

54:                                               ; preds = %47, %41, %37
  %55 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %56 = load ptr, ptr %55, align 8
  %57 = call ptr @of_get_compatible_child(ptr noundef %56, ptr noundef nonnull @.str.9) #9
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  call void @of_node_put(ptr noundef nonnull %57) #9
  br label %67

60:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #9
  %61 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %61, i8 0, i32 48, i1 false) #9, !annotation !8
  store ptr %5, ptr %2, align 8
  %62 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 1
  store ptr null, ptr %62, align 4
  %63 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 3
  store ptr @.str.10, ptr %63, align 4
  %64 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 4
  store i32 -1, ptr %64, align 8
  %65 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %65, i8 0, i64 16, i1 false) #9
  %66 = call ptr @platform_device_register_full(ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #9
  store ptr %66, ptr @rpi_clk, align 4
  br label %67

67:                                               ; preds = %60, %59, %17, %15, %1
  %68 = phi i32 [ -12, %1 ], [ %18, %17 ], [ -517, %15 ], [ 0, %59 ], [ 0, %60 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpi_firmware_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @rpi_hwmon, align 4
  tail call void @platform_device_unregister(ptr noundef %4) #9
  store ptr null, ptr @rpi_hwmon, align 4
  %5 = load ptr, ptr @rpi_clk, align 4
  tail call void @platform_device_unregister(ptr noundef %5) #9
  store ptr null, ptr @rpi_clk, align 4
  %6 = getelementptr inbounds %struct.rpi_firmware, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #9, !srcloc !14
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #9, !srcloc !15
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %16, label %12, !prof !11

12:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #9
  br label %16

13:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %14 = getelementptr %struct.rpi_firmware, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @mbox_free_channel(ptr noundef %15) #9
  tail call void @kfree(ptr noundef %3) #9
  br label %16

16:                                               ; preds = %13, %12, %10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpi_firmware_shutdown(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 12) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  store i32 196680, ptr %7, align 8
  %10 = getelementptr inbounds %struct.rpi_firmware_property_tag_header, ptr %7, i32 0, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rpi_firmware_property_tag_header, ptr %7, i32 0, i32 2
  store i32 0, ptr %11, align 8
  %12 = tail call i32 @rpi_firmware_property_list(ptr noundef nonnull %3, ptr noundef nonnull %7, i32 noundef 12) #9
  tail call void @kfree(ptr noundef nonnull %7) #9
  br label %13

13:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @response_callback(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.rpi_firmware, ptr %0, i32 0, i32 2
  tail call void @complete(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

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
!10 = !{i64 2152756195}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2152756261}
!13 = !{i64 2148284217}
!14 = !{i64 617709, i64 2148119275, i64 2148119301, i64 2148119348, i64 2148119370, i64 2148119398, i64 2148119418}
!15 = !{i64 2148186352, i64 2148186384, i64 2148186413, i64 2148186447, i64 2148186478, i64 2148186501}
!16 = !{i64 2149311596}
!17 = !{i64 603772, i64 603796, i64 603817, i64 603834, i64 603851}
