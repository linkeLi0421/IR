; ModuleID = '/llk/IR/drivers/usb/chipidea/debug.c_pt.bc'
source_filename = "../drivers/usb/chipidea/debug.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.67 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.69 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ci_hdrc = type { ptr, %struct.spinlock, %struct.hw_bank, i32, [2 x ptr], i32, i8, %struct.usb_otg, %struct.otg_fsm, %struct.hrtimer, [12 x i64], i32, i32, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.usb_gadget, ptr, i32, i32, [32 x %struct.ci_hw_ep], i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, ptr, %struct.ulpi_ops, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i32 }
%struct.hw_bank = type { i32, i32, ptr, ptr, ptr, i32, [38 x ptr] }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.mutex, ptr, %struct.delayed_work, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.65, i32, ptr, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.anon.65 = type { %struct.list_head, ptr, i32 }
%struct.ulpi_ops = type { ptr, ptr }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.td_node = type { %struct.list_head, i32, ptr, i32 }
%struct.ci_role_driver = type { ptr, ptr, ptr, ptr }

@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1
@ci_device_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ci_device_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"port_test\00", align 1
@ci_port_test_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ci_port_test_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ci_port_test_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"qheads\00", align 1
@ci_qheads_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ci_qheads_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"requests\00", align 1
@ci_requests_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ci_requests_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@ci_role_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ci_role_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ci_role_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@ci_registers_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ci_registers_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"speed             = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"max_speed         = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"is_otg            = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"is_a_peripheral   = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"b_hnp_enable      = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"a_hnp_support     = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"a_alt_hnp_support = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"name              = %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"gadget function   = %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"gadget max speed  = %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"mode = %u\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"not in gadget mode\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"EP=%02i: RX=%08X TX=%08X\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c" %04X:    %08X    %08X\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"EP=%02i: TD=%08X %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c" %04X:    %08X\0A\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"USBINTR reg: %08x\0A\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"USBSTS reg: %08x\0A\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"USBMODE reg: %08x\0A\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"USBCMD reg: %08x\0A\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"PORTSC reg: %08x\0A\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"OTGSC reg: %08x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dbg_create_files(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ %4, %1 ]
  %10 = load ptr, ptr @usb_debug_root, align 4
  %11 = tail call ptr @debugfs_create_dir(ptr noundef %9, ptr noundef %10) #8
  %12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %11, ptr noundef %0, ptr noundef nonnull @ci_device_fops) #8
  %13 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 420, ptr noundef %11, ptr noundef %0, ptr noundef nonnull @ci_port_test_fops) #8
  %14 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %11, ptr noundef %0, ptr noundef nonnull @ci_qheads_fops) #8
  %15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %11, ptr noundef %0, ptr noundef nonnull @ci_requests_fops) #8
  %16 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 420, ptr noundef %11, ptr noundef %0, ptr noundef nonnull @ci_role_fops) #8
  %17 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %11, ptr noundef %0, ptr noundef nonnull @ci_registers_fops) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dbg_remove_files(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ %4, %1 ]
  %10 = load ptr, ptr @usb_debug_root, align 4
  %11 = tail call ptr @debugfs_lookup(ptr noundef %9, ptr noundef %10) #8
  tail call void @debugfs_remove(ptr noundef %11) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_device_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ci_device_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_device_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 18, i32 5
  %6 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %6) #8
  %7 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 18, i32 6
  %8 = load i32, ptr %7, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %8) #8
  %9 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 18, i32 17
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 1
  %12 = and i32 %11, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %12) #8
  %13 = load i32, ptr %9, align 4
  %14 = lshr i32 %13, 2
  %15 = and i32 %14, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %15) #8
  %16 = load i32, ptr %9, align 4
  %17 = lshr i32 %16, 3
  %18 = and i32 %17, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %18) #8
  %19 = load i32, ptr %9, align 4
  %20 = lshr i32 %19, 4
  %21 = and i32 %20, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %21) #8
  %22 = load i32, ptr %9, align 4
  %23 = lshr i32 %22, 5
  %24 = and i32 %23, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %24) #8
  %25 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 18, i32 10
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr @.str.15, ptr %26
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %28) #8
  %29 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 19
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %2
  %33 = load ptr, ptr %30, align 4
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr @.str.15, ptr %33
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %35) #8
  %36 = load ptr, ptr %29, align 8
  %37 = getelementptr inbounds %struct.usb_gadget_driver, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %38) #8
  br label %39

39:                                               ; preds = %32, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_port_test_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 1
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.seq_file, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !8
  %11 = tail call i32 @llvm.umin.i32(i32 %2, i32 31)
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %11, i32 -1090519040) #9, !srcloc !9
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22, !prof !10

15:                                               ; preds = %4
  %16 = tail call ptr @llvm.thread.pointer() #8
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %17) #10, !srcloc !11
  %19 = and i32 %18, -13
  %20 = or i32 %19, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #8, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !13
  %21 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %11) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #8, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !13
  br label %22

22:                                               ; preds = %15, %4
  %23 = phi i32 [ %21, %15 ], [ %11, %4 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25, !prof !10

25:                                               ; preds = %22
  %26 = sub i32 %11, %23
  %27 = getelementptr i8, ptr %6, i32 %26
  call void @llvm.memset.p0.i32(ptr align 1 %27, i8 0, i32 %23, i1 false) #8
  br label %47

28:                                               ; preds = %22
  %29 = getelementptr [32 x i8], ptr %6, i32 0, i32 %11
  store i8 0, ptr %29, align 1
  %30 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %6, ptr noundef nonnull @.str.18, ptr noundef nonnull %5)
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i32, ptr %5, align 4
  %34 = icmp ugt i32 %33, 255
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %10, align 8
  %37 = call i32 @__pm_runtime_resume(ptr noundef %36, i32 noundef 4) #8
  %38 = getelementptr inbounds %struct.ci_hdrc, ptr %10, i32 0, i32 1
  %39 = call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #8
  %40 = load i32, ptr %5, align 4
  %41 = trunc i32 %40 to i8
  %42 = call i32 @hw_port_test_set(ptr noundef %10, i8 noundef zeroext %41) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %39) #8
  %43 = load ptr, ptr %10, align 8
  %44 = call i32 @__pm_runtime_idle(ptr noundef %43, i32 noundef 4) #8
  %45 = icmp eq i32 %42, 0
  %46 = select i1 %45, i32 %11, i32 %42
  br label %47

47:                                               ; preds = %35, %32, %28, %25
  %48 = phi i32 [ %46, %35 ], [ -22, %28 ], [ -56, %32 ], [ -14, %25 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_port_test_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ci_port_test_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_port_test_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_port_test_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #8
  %7 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 1
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  %9 = tail call zeroext i8 @hw_port_test_get(ptr noundef %4) #8
  %10 = zext i8 %9 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #8
  %11 = load ptr, ptr %4, align 8
  %12 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %10) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @hw_port_test_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_qheads_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ci_qheads_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_qheads_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22) #8
  br label %102

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 1
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #8
  %12 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 21
  %13 = load i32, ptr %12, align 8
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %101, label %15

15:                                               ; preds = %9
  %16 = lshr i32 %13, 1
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i32 [ %99, %17 ], [ %16, %15 ]
  %19 = phi i32 [ %97, %17 ], [ 0, %15 ]
  %20 = add nuw i32 %18, %19
  %21 = getelementptr %struct.ci_hdrc, ptr %4, i32 0, i32 22, i32 %19, i32 5, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.ci_hdrc, ptr %4, i32 0, i32 22, i32 %20, i32 5, i32 2
  %24 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %19, i32 noundef %22, i32 noundef %24) #8
  %25 = getelementptr %struct.ci_hdrc, ptr %4, i32 0, i32 22, i32 %19, i32 5, i32 1
  %26 = getelementptr %struct.ci_hdrc, ptr %4, i32 0, i32 22, i32 %20, i32 5, i32 1
  %27 = load ptr, ptr %25, align 4
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %26, align 4
  %30 = load i32, ptr %29, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef %28, i32 noundef %30) #8
  %31 = load ptr, ptr %25, align 4
  %32 = getelementptr i32, ptr %31, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %26, align 4
  %35 = getelementptr i32, ptr %34, i32 1
  %36 = load i32, ptr %35, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 1, i32 noundef %33, i32 noundef %36) #8
  %37 = load ptr, ptr %25, align 4
  %38 = getelementptr i32, ptr %37, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %26, align 4
  %41 = getelementptr i32, ptr %40, i32 2
  %42 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 2, i32 noundef %39, i32 noundef %42) #8
  %43 = load ptr, ptr %25, align 4
  %44 = getelementptr i32, ptr %43, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %26, align 4
  %47 = getelementptr i32, ptr %46, i32 3
  %48 = load i32, ptr %47, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 3, i32 noundef %45, i32 noundef %48) #8
  %49 = load ptr, ptr %25, align 4
  %50 = getelementptr i32, ptr %49, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %26, align 4
  %53 = getelementptr i32, ptr %52, i32 4
  %54 = load i32, ptr %53, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 4, i32 noundef %51, i32 noundef %54) #8
  %55 = load ptr, ptr %25, align 4
  %56 = getelementptr i32, ptr %55, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %26, align 4
  %59 = getelementptr i32, ptr %58, i32 5
  %60 = load i32, ptr %59, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 5, i32 noundef %57, i32 noundef %60) #8
  %61 = load ptr, ptr %25, align 4
  %62 = getelementptr i32, ptr %61, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = load ptr, ptr %26, align 4
  %65 = getelementptr i32, ptr %64, i32 6
  %66 = load i32, ptr %65, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 6, i32 noundef %63, i32 noundef %66) #8
  %67 = load ptr, ptr %25, align 4
  %68 = getelementptr i32, ptr %67, i32 7
  %69 = load i32, ptr %68, align 4
  %70 = load ptr, ptr %26, align 4
  %71 = getelementptr i32, ptr %70, i32 7
  %72 = load i32, ptr %71, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 7, i32 noundef %69, i32 noundef %72) #8
  %73 = load ptr, ptr %25, align 4
  %74 = getelementptr i32, ptr %73, i32 8
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %26, align 4
  %77 = getelementptr i32, ptr %76, i32 8
  %78 = load i32, ptr %77, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 8, i32 noundef %75, i32 noundef %78) #8
  %79 = load ptr, ptr %25, align 4
  %80 = getelementptr i32, ptr %79, i32 9
  %81 = load i32, ptr %80, align 4
  %82 = load ptr, ptr %26, align 4
  %83 = getelementptr i32, ptr %82, i32 9
  %84 = load i32, ptr %83, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 9, i32 noundef %81, i32 noundef %84) #8
  %85 = load ptr, ptr %25, align 4
  %86 = getelementptr i32, ptr %85, i32 10
  %87 = load i32, ptr %86, align 4
  %88 = load ptr, ptr %26, align 4
  %89 = getelementptr i32, ptr %88, i32 10
  %90 = load i32, ptr %89, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 10, i32 noundef %87, i32 noundef %90) #8
  %91 = load ptr, ptr %25, align 4
  %92 = getelementptr i32, ptr %91, i32 11
  %93 = load i32, ptr %92, align 4
  %94 = load ptr, ptr %26, align 4
  %95 = getelementptr i32, ptr %94, i32 11
  %96 = load i32, ptr %95, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 11, i32 noundef %93, i32 noundef %96) #8
  %97 = add nuw nsw i32 %19, 1
  %98 = load i32, ptr %12, align 8
  %99 = lshr i32 %98, 1
  %100 = icmp ult i32 %97, %99
  br i1 %100, label %17, label %101

101:                                              ; preds = %17, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #8
  br label %102

102:                                              ; preds = %101, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_requests_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ci_requests_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_requests_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22) #8
  br label %68

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 1
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #8
  %12 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 21
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %67, label %15

15:                                               ; preds = %63, %9
  %16 = phi i32 [ %64, %63 ], [ %13, %9 ]
  %17 = phi i32 [ %65, %63 ], [ 0, %9 ]
  %18 = getelementptr %struct.ci_hdrc, ptr %4, i32 0, i32 22, i32 %17, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %63, label %24

21:                                               ; preds = %29, %24
  %22 = load ptr, ptr %25, align 4
  %23 = icmp eq ptr %22, %18
  br i1 %23, label %61, label %24

24:                                               ; preds = %21, %15
  %25 = phi ptr [ %22, %21 ], [ %19, %15 ]
  %26 = getelementptr i8, ptr %25, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %21, label %29

29:                                               ; preds = %29, %24
  %30 = phi ptr [ %31, %29 ], [ %27, %24 ]
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %12, align 8
  %33 = lshr i32 %32, 1
  %34 = urem i32 %17, %33
  %35 = getelementptr inbounds %struct.td_node, ptr %30, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp ult i32 %17, %33
  %38 = select i1 %37, ptr @.str.26, ptr @.str.27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %34, i32 noundef %36, ptr noundef nonnull %38) #8
  %39 = getelementptr inbounds %struct.td_node, ptr %30, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = load i32, ptr %40, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef 0, i32 noundef %41) #8
  %42 = load ptr, ptr %39, align 4
  %43 = getelementptr i32, ptr %42, i32 1
  %44 = load i32, ptr %43, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef 1, i32 noundef %44) #8
  %45 = load ptr, ptr %39, align 4
  %46 = getelementptr i32, ptr %45, i32 2
  %47 = load i32, ptr %46, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef 2, i32 noundef %47) #8
  %48 = load ptr, ptr %39, align 4
  %49 = getelementptr i32, ptr %48, i32 3
  %50 = load i32, ptr %49, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef 3, i32 noundef %50) #8
  %51 = load ptr, ptr %39, align 4
  %52 = getelementptr i32, ptr %51, i32 4
  %53 = load i32, ptr %52, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef 4, i32 noundef %53) #8
  %54 = load ptr, ptr %39, align 4
  %55 = getelementptr i32, ptr %54, i32 5
  %56 = load i32, ptr %55, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef 5, i32 noundef %56) #8
  %57 = load ptr, ptr %39, align 4
  %58 = getelementptr i32, ptr %57, i32 6
  %59 = load i32, ptr %58, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef 6, i32 noundef %59) #8
  %60 = icmp eq ptr %31, %26
  br i1 %60, label %21, label %29

61:                                               ; preds = %21
  %62 = load i32, ptr %12, align 8
  br label %63

63:                                               ; preds = %61, %15
  %64 = phi i32 [ %62, %61 ], [ %16, %15 ]
  %65 = add nuw i32 %17, 1
  %66 = icmp ult i32 %65, %64
  br i1 %66, label %15, label %67

67:                                               ; preds = %63, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #8
  br label %68

68:                                               ; preds = %67, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_role_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [8 x i8], align 8
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 0, ptr %5, align 8, !annotation !8
  %10 = tail call i32 @llvm.umin.i32(i32 %2, i32 7)
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %10, i32 -1090519040) #9, !srcloc !9
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21, !prof !10

14:                                               ; preds = %4
  %15 = tail call ptr @llvm.thread.pointer() #8
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #10, !srcloc !11
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #8, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !13
  %20 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %10) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #8, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !13
  br label %21

21:                                               ; preds = %14, %4
  %22 = phi i32 [ %20, %14 ], [ %10, %4 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28, !prof !10

24:                                               ; preds = %21
  %25 = getelementptr %struct.ci_hdrc, ptr %9, i32 0, i32 4, i32 0
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %31

28:                                               ; preds = %21
  %29 = sub i32 %10, %22
  %30 = getelementptr i8, ptr %5, i32 %29
  call void @llvm.memset.p0.i32(ptr align 1 %30, i8 0, i32 %22, i1 false) #8
  br label %80

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.ci_role_driver, ptr %26, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 @strlen(ptr noundef %33)
  %35 = call i32 @strncmp(ptr noundef nonnull %5, ptr noundef %33, i32 noundef %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %31, %24
  %38 = getelementptr %struct.ci_hdrc, ptr %9, i32 0, i32 4, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %80, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ci_role_driver, ptr %39, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 @strlen(ptr noundef %43)
  %45 = call i32 @strncmp(ptr noundef nonnull %5, ptr noundef %43, i32 noundef %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %80

47:                                               ; preds = %41, %31
  %48 = phi i32 [ 0, %31 ], [ 1, %41 ]
  %49 = getelementptr inbounds %struct.ci_hdrc, ptr %9, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %80, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %9, align 8
  %54 = call i32 @__pm_runtime_resume(ptr noundef %53, i32 noundef 4) #8
  %55 = getelementptr inbounds %struct.ci_hdrc, ptr %9, i32 0, i32 3
  %56 = load i32, ptr %55, align 8
  call void @disable_irq(i32 noundef %56) #8
  %57 = load i32, ptr %49, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %64, label %59

59:                                               ; preds = %52
  store i32 2, ptr %49, align 4
  %60 = getelementptr %struct.ci_hdrc, ptr %9, i32 0, i32 4, i32 %57
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.ci_role_driver, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  call void %63(ptr noundef %9) #8
  br label %64

64:                                               ; preds = %59, %52
  %65 = getelementptr %struct.ci_hdrc, ptr %9, i32 0, i32 4, i32 %48
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %66, align 4
  %70 = call i32 %69(ptr noundef %9) #8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 %48, ptr %49, align 4
  br label %73

73:                                               ; preds = %72, %68, %64
  %74 = phi i32 [ -6, %64 ], [ 0, %72 ], [ %70, %68 ]
  %75 = load i32, ptr %55, align 8
  call void @enable_irq(i32 noundef %75) #8
  %76 = load ptr, ptr %9, align 8
  %77 = call i32 @__pm_runtime_idle(ptr noundef %76, i32 noundef 4) #8
  %78 = icmp eq i32 %74, 0
  %79 = select i1 %78, i32 %2, i32 %74
  br label %80

80:                                               ; preds = %73, %47, %41, %37, %28
  %81 = phi i32 [ -22, %47 ], [ -14, %28 ], [ -22, %41 ], [ -22, %37 ], [ %79, %73 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_role_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ci_role_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_role_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = icmp ugt i32 %6, 1
  br i1 %9, label %14, label %10, !prof !14

10:                                               ; preds = %8
  %11 = getelementptr %struct.ci_hdrc, ptr %4, i32 0, i32 4, i32 %6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !14

14:                                               ; preds = %10, %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/chipidea/ci.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 262, 0\0A.popsection", ""() #8, !srcloc !15
  unreachable

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ci_role_driver, ptr %12, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef %17) #8
  br label %18

18:                                               ; preds = %15, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_registers_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ci_registers_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_registers_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 43
  %8 = load i8, ptr %7, align 8, !range !16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = tail call i32 @hw_read_intr_enable(ptr noundef nonnull %4) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef %11) #8
  %12 = tail call i32 @hw_read_intr_status(ptr noundef nonnull %4) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %12) #8
  %13 = getelementptr %struct.ci_hdrc, ptr %4, i32 0, i32 2, i32 6, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.55, i32 noundef %15) #8
  %16 = getelementptr %struct.ci_hdrc, ptr %4, i32 0, i32 2, i32 6, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef %18) #8
  %19 = getelementptr %struct.ci_hdrc, ptr %4, i32 0, i32 2, i32 6, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %21) #8
  %22 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 6
  %23 = load i8, ptr %22, align 8, !range !16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %10
  %26 = tail call i32 @hw_read_otgsc(ptr noundef nonnull %4, i32 noundef -1) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %26) #8
  br label %27

27:                                               ; preds = %25, %10, %6, %2
  %28 = phi i32 [ -1, %6 ], [ -1, %2 ], [ 0, %25 ], [ 0, %10 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_read_intr_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_read_intr_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_read_otgsc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

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
!9 = !{i64 2151484008, i64 2151484033}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 3980120}
!12 = !{i64 3980317}
!13 = !{i64 2151465596}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2153813380, i64 2153813870, i64 2153813417, i64 2153813473, i64 2153813507, i64 2153813531, i64 2153813572, i64 2153813593, i64 2153813621, i64 2153813655}
!16 = !{i8 0, i8 2}
!17 = !{i64 5099654}
!18 = !{i64 2152639107}
