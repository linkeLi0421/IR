; ModuleID = '/llk/IR/drivers/char/ipmi/kcs_bmc.c_pt.bc'
source_filename = "../drivers/char/ipmi/kcs_bmc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_read_data:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_read_data\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_read_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_write_data:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_write_data\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_write_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_read_status:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_read_status\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_read_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_write_status:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_write_status\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_write_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_update_status:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_update_status\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_update_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_handle_event:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_handle_event\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_handle_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_enable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_enable_device\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_enable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_disable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_disable_device\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_disable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_add_device\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_remove_device\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_update_event_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_update_event_mask\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_update_event_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kcs_bmc_device = type { %struct.list_head, ptr, i32, %struct.kcs_ioreg, ptr, %struct.spinlock, ptr }
%struct.kcs_ioreg = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.kcs_bmc_device_ops = type { ptr, ptr, ptr, ptr }
%struct.kcs_bmc_driver = type { %struct.list_head, ptr }
%struct.kcs_bmc_driver_ops = type { ptr, ptr }

@__kstrtab_kcs_bmc_read_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_read_data = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_read_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_read_data to i32), ptr @__kstrtab_kcs_bmc_read_data, ptr @__kstrtabns_kcs_bmc_read_data }, section "___ksymtab+kcs_bmc_read_data", align 4
@__kstrtab_kcs_bmc_write_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_write_data = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_write_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_write_data to i32), ptr @__kstrtab_kcs_bmc_write_data, ptr @__kstrtabns_kcs_bmc_write_data }, section "___ksymtab+kcs_bmc_write_data", align 4
@__kstrtab_kcs_bmc_read_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_read_status = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_read_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_read_status to i32), ptr @__kstrtab_kcs_bmc_read_status, ptr @__kstrtabns_kcs_bmc_read_status }, section "___ksymtab+kcs_bmc_read_status", align 4
@__kstrtab_kcs_bmc_write_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_write_status = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_write_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_write_status to i32), ptr @__kstrtab_kcs_bmc_write_status, ptr @__kstrtabns_kcs_bmc_write_status }, section "___ksymtab+kcs_bmc_write_status", align 4
@__kstrtab_kcs_bmc_update_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_update_status = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_update_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_update_status to i32), ptr @__kstrtab_kcs_bmc_update_status, ptr @__kstrtabns_kcs_bmc_update_status }, section "___ksymtab+kcs_bmc_update_status", align 4
@__kstrtab_kcs_bmc_handle_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_handle_event = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_handle_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_handle_event to i32), ptr @__kstrtab_kcs_bmc_handle_event, ptr @__kstrtabns_kcs_bmc_handle_event }, section "___ksymtab+kcs_bmc_handle_event", align 4
@__kstrtab_kcs_bmc_enable_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_enable_device = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_enable_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_enable_device to i32), ptr @__kstrtab_kcs_bmc_enable_device, ptr @__kstrtabns_kcs_bmc_enable_device }, section "___ksymtab+kcs_bmc_enable_device", align 4
@__kstrtab_kcs_bmc_disable_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_disable_device = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_disable_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_disable_device to i32), ptr @__kstrtab_kcs_bmc_disable_device, ptr @__kstrtabns_kcs_bmc_disable_device }, section "___ksymtab+kcs_bmc_disable_device", align 4
@kcs_bmc_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @kcs_bmc_lock, i64 12), ptr getelementptr (i8, ptr @kcs_bmc_lock, i64 12) } }, align 4
@kcs_bmc_devices = internal global %struct.list_head { ptr @kcs_bmc_devices, ptr @kcs_bmc_devices }, align 4
@kcs_bmc_drivers = internal global %struct.list_head { ptr @kcs_bmc_drivers, ptr @kcs_bmc_drivers }, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to add chardev for KCS channel %d: %d\00", align 1
@__kstrtab_kcs_bmc_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_add_device to i32), ptr @__kstrtab_kcs_bmc_add_device, ptr @__kstrtabns_kcs_bmc_add_device }, section "___ksymtab+kcs_bmc_add_device", align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to remove chardev for KCS channel %d: %d\00", align 1
@__kstrtab_kcs_bmc_remove_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_remove_device = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_remove_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_remove_device to i32), ptr @__kstrtab_kcs_bmc_remove_device, ptr @__kstrtabns_kcs_bmc_remove_device }, section "___ksymtab+kcs_bmc_remove_device", align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to add driver for KCS channel %d: %d\00", align 1
@__kstrtab_kcs_bmc_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_register_driver to i32), ptr @__kstrtab_kcs_bmc_register_driver, ptr @__kstrtabns_kcs_bmc_register_driver }, section "___ksymtab+kcs_bmc_register_driver", align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Failed to remove driver for KCS channel %d: %d\00", align 1
@__kstrtab_kcs_bmc_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_unregister_driver to i32), ptr @__kstrtab_kcs_bmc_unregister_driver, ptr @__kstrtabns_kcs_bmc_unregister_driver }, section "___ksymtab+kcs_bmc_unregister_driver", align 4
@__kstrtab_kcs_bmc_update_event_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_update_event_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_update_event_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_update_event_mask to i32), ptr @__kstrtab_kcs_bmc_update_event_mask, ptr @__kstrtabns_kcs_bmc_update_event_mask }, section "___ksymtab+kcs_bmc_update_event_mask", align 4
@__UNIQUE_ID_license162 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author163 = internal constant [49 x i8] c"author=Haiyue Wang <haiyue.wang@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author164 = internal constant [40 x i8] c"author=Andrew Jeffery <andrew@aj.id.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_description165 = internal constant [68 x i8] c"description=KCS BMC to handle the IPMI request from system software\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_author164, ptr @__UNIQUE_ID_description165, ptr @__UNIQUE_ID_license162, ptr @__ksymtab_kcs_bmc_add_device, ptr @__ksymtab_kcs_bmc_disable_device, ptr @__ksymtab_kcs_bmc_enable_device, ptr @__ksymtab_kcs_bmc_handle_event, ptr @__ksymtab_kcs_bmc_read_data, ptr @__ksymtab_kcs_bmc_read_status, ptr @__ksymtab_kcs_bmc_register_driver, ptr @__ksymtab_kcs_bmc_remove_device, ptr @__ksymtab_kcs_bmc_unregister_driver, ptr @__ksymtab_kcs_bmc_update_event_mask, ptr @__ksymtab_kcs_bmc_update_status, ptr @__ksymtab_kcs_bmc_write_data, ptr @__ksymtab_kcs_bmc_write_status], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @kcs_bmc_read_data(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.kcs_bmc_device_ops, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call zeroext i8 %5(ptr noundef %0, i32 noundef %7) #3
  ret i8 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kcs_bmc_write_data(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.kcs_bmc_device_ops, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 3, i32 1
  %8 = load i32, ptr %7, align 4
  tail call void %6(ptr noundef %0, i32 noundef %8, i8 noundef zeroext %1) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @kcs_bmc_read_status(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.kcs_bmc_device_ops, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 3, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call zeroext i8 %5(ptr noundef %0, i32 noundef %7) #3
  ret i8 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kcs_bmc_write_status(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.kcs_bmc_device_ops, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 3, i32 2
  %8 = load i32, ptr %7, align 4
  tail call void %6(ptr noundef %0, i32 noundef %8, i8 noundef zeroext %1) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kcs_bmc_update_status(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kcs_bmc_device_ops, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 3, i32 2
  %9 = load i32, ptr %8, align 4
  tail call void %7(ptr noundef %0, i32 noundef %9, i8 noundef zeroext %1, i8 noundef zeroext %2) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kcs_bmc_handle_event(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %2) #3
  %3 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef nonnull %4) #3
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ %9, %6 ], [ 0, %1 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  %12 = load i16, ptr %2, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kcs_bmc_enable_device(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #3
  %4 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  store ptr %1, ptr %4, align 4
  %8 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %0, i8 noundef zeroext 2, i8 noundef zeroext 2) #3
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ 0, %7 ], [ -16, %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  %13 = load i16, ptr %3, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #3, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !13
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kcs_bmc_update_event_mask(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kcs_bmc_disable_device(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #3
  %4 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %0, i8 noundef zeroext 3, i8 noundef zeroext 0) #3
  store ptr null, ptr %4, align 4
  br label %11

11:                                               ; preds = %7, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  %12 = load i16, ptr %3, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #3, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kcs_bmc_add_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 5
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 6
  store ptr null, ptr %3, align 4
  tail call void @mutex_lock(ptr noundef nonnull @kcs_bmc_lock) #3
  %4 = load ptr, ptr @kcs_bmc_devices, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %0, ptr %5, align 4
  store ptr %4, ptr %0, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr @kcs_bmc_devices, ptr %6, align 4
  store volatile ptr %0, ptr @kcs_bmc_devices, align 4
  %7 = load ptr, ptr @kcs_bmc_drivers, align 4
  %8 = icmp eq ptr %7, @kcs_bmc_drivers
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 2
  br label %12

12:                                               ; preds = %23, %9
  %13 = phi ptr [ %7, %9 ], [ %25, %23 ]
  %14 = phi i32 [ 0, %9 ], [ %24, %23 ]
  %15 = getelementptr inbounds %struct.kcs_bmc_driver, ptr %13, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %0) #3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = load ptr, ptr %10, align 4
  %22 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %22, i32 noundef %18) #4
  br label %23

23:                                               ; preds = %20, %12
  %24 = phi i32 [ %18, %20 ], [ %14, %12 ]
  %25 = load ptr, ptr %13, align 4
  %26 = icmp eq ptr %25, @kcs_bmc_drivers
  br i1 %26, label %27, label %12

27:                                               ; preds = %23, %1
  %28 = phi i32 [ 0, %1 ], [ %24, %23 ]
  tail call void @mutex_unlock(ptr noundef nonnull @kcs_bmc_lock) #3
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kcs_bmc_remove_device(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @kcs_bmc_lock) #3
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  %6 = load ptr, ptr @kcs_bmc_drivers, align 4
  %7 = icmp eq ptr %6, @kcs_bmc_drivers
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.kcs_bmc_device, ptr %0, i32 0, i32 2
  br label %11

11:                                               ; preds = %22, %8
  %12 = phi ptr [ %6, %8 ], [ %23, %22 ]
  %13 = getelementptr inbounds %struct.kcs_bmc_driver, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.kcs_bmc_driver_ops, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %0) #3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = load ptr, ptr %9, align 4
  %21 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.1, i32 noundef %21, i32 noundef %17) #4
  br label %22

22:                                               ; preds = %19, %11
  %23 = load ptr, ptr %12, align 4
  %24 = icmp eq ptr %23, @kcs_bmc_drivers
  br i1 %24, label %25, label %11

25:                                               ; preds = %22, %1
  tail call void @mutex_unlock(ptr noundef nonnull @kcs_bmc_lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kcs_bmc_register_driver(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @kcs_bmc_lock) #3
  %2 = load ptr, ptr @kcs_bmc_drivers, align 4
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %0, ptr %3, align 4
  store ptr %2, ptr %0, align 4
  %4 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr @kcs_bmc_drivers, ptr %4, align 4
  store volatile ptr %0, ptr @kcs_bmc_drivers, align 4
  %5 = load ptr, ptr @kcs_bmc_devices, align 4
  %6 = icmp eq ptr %5, @kcs_bmc_devices
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.kcs_bmc_driver, ptr %0, i32 0, i32 1
  br label %9

9:                                                ; preds = %20, %7
  %10 = phi ptr [ %5, %7 ], [ %21, %20 ]
  %11 = load ptr, ptr %8, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %10) #3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.kcs_bmc_device, ptr %10, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.kcs_bmc_device, ptr %10, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.2, i32 noundef %19, i32 noundef %13) #4
  br label %20

20:                                               ; preds = %15, %9
  %21 = load ptr, ptr %10, align 4
  %22 = icmp eq ptr %21, @kcs_bmc_devices
  br i1 %22, label %23, label %9

23:                                               ; preds = %20, %1
  tail call void @mutex_unlock(ptr noundef nonnull @kcs_bmc_lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kcs_bmc_unregister_driver(ptr nocapture noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @kcs_bmc_lock) #3
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  %6 = load ptr, ptr @kcs_bmc_devices, align 4
  %7 = icmp eq ptr %6, @kcs_bmc_devices
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.kcs_bmc_driver, ptr %0, i32 0, i32 1
  br label %10

10:                                               ; preds = %22, %8
  %11 = phi ptr [ %6, %8 ], [ %23, %22 ]
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.kcs_bmc_driver_ops, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %11) #3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.kcs_bmc_device, ptr %11, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.kcs_bmc_device, ptr %11, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.3, i32 noundef %21, i32 noundef %15) #4
  br label %22

22:                                               ; preds = %17, %10
  %23 = load ptr, ptr %11, align 4
  %24 = icmp eq ptr %23, @kcs_bmc_devices
  br i1 %24, label %25, label %10

25:                                               ; preds = %22, %1
  tail call void @mutex_unlock(ptr noundef nonnull @kcs_bmc_lock) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 2149212135}
!9 = !{i64 2149207959}
!10 = !{i64 2149208034, i64 2149208061, i64 2149208108, i64 2149208130, i64 2149208158, i64 2149208178}
!11 = !{i64 2149235138}
!12 = !{i64 604570}
!13 = !{i64 2149236279}
