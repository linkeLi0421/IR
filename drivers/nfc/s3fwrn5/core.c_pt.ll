; ModuleID = '/llk/IR/drivers/nfc/s3fwrn5/core.c_pt.bc'
source_filename = "../drivers/nfc/s3fwrn5/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3fwrn5_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22s3fwrn5_probe\22\09\09\09\09\09"
module asm "__kstrtabns_s3fwrn5_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3fwrn5_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22s3fwrn5_remove\22\09\09\09\09\09"
module asm "__kstrtabns_s3fwrn5_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3fwrn5_recv_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22s3fwrn5_recv_frame\22\09\09\09\09\09"
module asm "__kstrtabns_s3fwrn5_recv_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.nci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nci_driver_ops = type { i16, ptr, ptr }
%struct.s3fwrn5_info = type { ptr, ptr, ptr, ptr, %struct.s3fwrn5_fw_info, %struct.mutex }
%struct.s3fwrn5_fw_info = type { ptr, %struct.s3fwrn5_fw_image, [33 x i8], ptr, i32, i32, i32, %struct.completion, ptr, i8 }
%struct.s3fwrn5_fw_image = type { ptr, [13 x i8], i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.s3fwrn5_phy_ops = type { ptr, ptr, ptr, ptr }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.sk_buff_head = type { %union.anon.87, i32, %struct.spinlock }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { ptr, ptr }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }

@s3fwrn5_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [13 x i8] c"&info->mutex\00", align 1
@s3fwrn5_nci_ops = internal constant %struct.nci_ops { ptr null, ptr @s3fwrn5_nci_open, ptr @s3fwrn5_nci_close, ptr @s3fwrn5_nci_send, ptr null, ptr @s3fwrn5_nci_post_setup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3fwrn5_nci_prop_ops, i32 4, ptr null, i32 0 }, align 4
@__kstrtab_s3fwrn5_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3fwrn5_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_s3fwrn5_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3fwrn5_probe to i32), ptr @__kstrtab_s3fwrn5_probe, ptr @__kstrtabns_s3fwrn5_probe }, section "___ksymtab+s3fwrn5_probe", align 4
@__kstrtab_s3fwrn5_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3fwrn5_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_s3fwrn5_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3fwrn5_remove to i32), ptr @__kstrtab_s3fwrn5_remove, ptr @__kstrtabns_s3fwrn5_remove }, section "___ksymtab+s3fwrn5_remove", align 4
@__kstrtab_s3fwrn5_recv_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3fwrn5_recv_frame = external dso_local constant [0 x i8], align 1
@__ksymtab_s3fwrn5_recv_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3fwrn5_recv_frame to i32), ptr @__kstrtab_s3fwrn5_recv_frame, ptr @__kstrtabns_s3fwrn5_recv_frame }, section "___ksymtab+s3fwrn5_recv_frame", align 4
@__UNIQUE_ID_license267 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description268 = internal constant [39 x i8] c"description=Samsung S3FWRN5 NFC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author269 = internal constant [46 x i8] c"author=Robert Baldyga <r.baldyga@samsung.com>\00", section ".modinfo", align 1
@s3fwrn5_nci_prop_ops = external dso_local constant [4 x %struct.nci_driver_ops], align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"sec_s3fwrn5_firmware.bin\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to get fw file, ret=%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Detected new firmware version\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"sec_s3fwrn5_rfreg.bin\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author269, ptr @__UNIQUE_ID_description268, ptr @__UNIQUE_ID_license267, ptr @__ksymtab_s3fwrn5_probe, ptr @__ksymtab_s3fwrn5_recv_frame, ptr @__ksymtab_s3fwrn5_remove], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s3fwrn5_probe(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 164, i32 noundef 3520) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.s3fwrn5_info, ptr %5, i32 0, i32 1
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.s3fwrn5_info, ptr %5, i32 0, i32 2
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.s3fwrn5_info, ptr %5, i32 0, i32 3
  store ptr %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.s3fwrn5_info, ptr %5, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef nonnull @s3fwrn5_probe.__key) #3
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = load ptr, ptr %8, align 4
  tail call void %14(ptr noundef %17, i32 noundef 0) #3
  br label %18

18:                                               ; preds = %16, %7
  %19 = tail call ptr @nci_allocate_device(ptr noundef nonnull @s3fwrn5_nci_ops, i32 noundef 222, i32 noundef 0, i32 noundef 0) #3
  store ptr %19, ptr %5, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.nfc_dev, ptr %22, i32 0, i32 5, i32 1
  store ptr %2, ptr %23, align 4
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr inbounds %struct.nci_dev, ptr %24, i32 0, i32 26
  store ptr %5, ptr %25, align 4
  %26 = load ptr, ptr %5, align 4
  %27 = tail call i32 @nci_register_device(ptr noundef %26) #3
  %28 = icmp slt i32 %27, 0
  %29 = load ptr, ptr %5, align 4
  br i1 %28, label %30, label %31

30:                                               ; preds = %21
  tail call void @nci_free_device(ptr noundef %29) #3
  br label %33

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.s3fwrn5_info, ptr %5, i32 0, i32 4
  store ptr %29, ptr %32, align 4
  store ptr %29, ptr %0, align 4
  br label %33

33:                                               ; preds = %31, %30, %18, %4
  %34 = phi i32 [ %27, %30 ], [ %27, %31 ], [ -12, %4 ], [ -12, %18 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nci_allocate_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s3fwrn5_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s3fwrn5_info, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.s3fwrn5_info, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %7(ptr noundef %11, i32 noundef 0) #3
  br label %12

12:                                               ; preds = %9, %1
  tail call void @nci_unregister_device(ptr noundef %0) #3
  tail call void @nci_free_device(ptr noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s3fwrn5_recv_frame(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  switch i32 %2, label %8 [
    i32 1, label %4
    i32 2, label %6
  ]

4:                                                ; preds = %3
  %5 = tail call i32 @nci_recv_frame(ptr noundef %0, ptr noundef %1) #3
  br label %9

6:                                                ; preds = %3
  %7 = tail call i32 @s3fwrn5_fw_recv_frame(ptr noundef %0, ptr noundef %1) #3
  br label %9

8:                                                ; preds = %3
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #3
  br label %9

9:                                                ; preds = %8, %6, %4
  %10 = phi i32 [ -19, %8 ], [ %7, %6 ], [ %5, %4 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3fwrn5_fw_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3fwrn5_nci_open(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s3fwrn5_info, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.s3fwrn5_info, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %7(ptr noundef %11) #3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %10, align 4
  tail call void %17(ptr noundef %20, i32 noundef 1) #3
  %21 = load ptr, ptr %4, align 4
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi ptr [ %15, %14 ], [ %21, %19 ]
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %10, align 4
  tail call void %24(ptr noundef %27, i1 noundef zeroext true) #3
  br label %28

28:                                               ; preds = %26, %22, %9, %1
  %29 = phi i32 [ -16, %9 ], [ 0, %22 ], [ 0, %26 ], [ -16, %1 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3fwrn5_nci_close(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s3fwrn5_info, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.s3fwrn5_info, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %6(ptr noundef %10, i1 noundef zeroext false) #3
  %11 = load ptr, ptr %4, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi ptr [ %5, %1 ], [ %11, %8 ]
  %14 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.s3fwrn5_info, ptr %3, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void %15(ptr noundef %19, i32 noundef 0) #3
  br label %20

20:                                               ; preds = %17, %12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3fwrn5_nci_send(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 26
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s3fwrn5_info, ptr %4, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %5) #3
  %6 = getelementptr inbounds %struct.s3fwrn5_info, ptr %4, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.s3fwrn5_info, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %9(ptr noundef %13) #3
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %12, align 4
  %23 = tail call i32 %19(ptr noundef %22, ptr noundef %1) #3
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %16
  %26 = phi i32 [ %23, %21 ], [ -95, %16 ]
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #3
  br label %27

27:                                               ; preds = %25, %21, %11, %2
  %28 = phi i32 [ -22, %2 ], [ -22, %11 ], [ %26, %25 ], [ %23, %21 ]
  tail call void @mutex_unlock(ptr noundef %5) #3
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3fwrn5_nci_post_setup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s3fwrn5_info, ptr %3, i32 0, i32 4
  tail call void @s3fwrn5_fw_init(ptr noundef %4, ptr noundef nonnull @.str.1) #3
  %5 = tail call i32 @s3fwrn5_fw_request_firmware(ptr noundef %4) #3
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load ptr, ptr %4, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfc_dev, ptr %9, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.2, i32 noundef %5) #4
  br label %102

11:                                               ; preds = %1
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %13, label %102

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.s3fwrn5_info, ptr %3, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.s3fwrn5_info, ptr %3, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void %16(ptr noundef %20, i1 noundef zeroext false) #3
  %21 = load ptr, ptr %14, align 4
  br label %22

22:                                               ; preds = %18, %13
  %23 = phi ptr [ %15, %13 ], [ %21, %18 ]
  %24 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.s3fwrn5_info, ptr %3, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void %25(ptr noundef %29, i32 noundef 2) #3
  br label %30

30:                                               ; preds = %27, %22
  %31 = tail call i32 @s3fwrn5_fw_setup(ptr noundef %4) #3
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %102, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr inbounds %struct.nci_dev, ptr %34, i32 0, i32 40
  %36 = load i32, ptr %35, align 4
  %37 = tail call zeroext i1 @s3fwrn5_fw_check_version(ptr noundef %4, i32 noundef %36) #3
  br i1 %37, label %38, label %68

38:                                               ; preds = %33
  %39 = load ptr, ptr %3, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nfc_dev, ptr %40, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.3) #4
  %42 = tail call i32 @s3fwrn5_fw_download(ptr noundef %4) #3
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %68, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %14, align 4
  %46 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.s3fwrn5_info, ptr %3, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  tail call void %47(ptr noundef %51, i32 noundef 1) #3
  %52 = load ptr, ptr %14, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = phi ptr [ %45, %44 ], [ %52, %49 ]
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.s3fwrn5_info, ptr %3, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  tail call void %55(ptr noundef %59, i1 noundef zeroext true) #3
  br label %60

60:                                               ; preds = %57, %53
  %61 = tail call i32 @s3fwrn5_nci_rf_configure(ptr noundef %3, ptr noundef nonnull @.str.4) #3
  %62 = load ptr, ptr %14, align 4
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.s3fwrn5_info, ptr %3, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  tail call void %63(ptr noundef %67, i1 noundef zeroext false) #3
  br label %68

68:                                               ; preds = %65, %60, %38, %33
  %69 = phi i32 [ %42, %38 ], [ %31, %33 ], [ %61, %60 ], [ %61, %65 ]
  %70 = load ptr, ptr %14, align 4
  %71 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.s3fwrn5_info, ptr %3, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  tail call void %72(ptr noundef %76, i32 noundef 0) #3
  br label %77

77:                                               ; preds = %74, %68
  tail call void @s3fwrn5_fw_cleanup(ptr noundef %4) #3
  %78 = icmp slt i32 %69, 0
  br i1 %78, label %102, label %79

79:                                               ; preds = %77
  %80 = load ptr, ptr %14, align 4
  %81 = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %80, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.s3fwrn5_info, ptr %3, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  tail call void %82(ptr noundef %86, i32 noundef 1) #3
  %87 = load ptr, ptr %14, align 4
  br label %88

88:                                               ; preds = %84, %79
  %89 = phi ptr [ %80, %79 ], [ %87, %84 ]
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.s3fwrn5_info, ptr %3, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  tail call void %90(ptr noundef %94, i1 noundef zeroext true) #3
  br label %95

95:                                               ; preds = %92, %88
  %96 = load ptr, ptr %3, align 4
  %97 = tail call i32 @nci_core_reset(ptr noundef %96) #3
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %3, align 4
  %101 = tail call i32 @nci_core_init(ptr noundef %100) #3
  br label %102

102:                                              ; preds = %99, %95, %77, %30, %11, %7
  %103 = phi i32 [ %101, %99 ], [ 0, %11 ], [ %69, %77 ], [ %97, %95 ], [ 0, %7 ], [ %31, %30 ]
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_core_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_core_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3fwrn5_fw_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3fwrn5_fw_request_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3fwrn5_fw_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @s3fwrn5_fw_check_version(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3fwrn5_fw_download(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3fwrn5_nci_rf_configure(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3fwrn5_fw_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

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
