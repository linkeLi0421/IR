; ModuleID = '/llk/IR/drivers/fsi/fsi-sbefifo.c_pt.bc'
source_filename = "../drivers/fsi/fsi-sbefifo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbefifo_parse_status:\09\09\09\09\09"
module asm "\09.asciz \09\22sbefifo_parse_status\22\09\09\09\09\09"
module asm "__kstrtabns_sbefifo_parse_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbefifo_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22sbefifo_submit\22\09\09\09\09\09"
module asm "__kstrtabns_sbefifo_submit:\09\09\09\09\09"
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
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.fsi_driver = type { %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.fsi_device_id = type { i8, i8 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.54, %union.anon.55 }
%union.anon.54 = type { ptr }
%union.anon.55 = type { i64 }
%struct.kvec = type { ptr, i32 }
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
%struct.sbefifo = type { i32, ptr, %struct.device, %struct.cdev, %struct.mutex, i8, i8, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.fsi_device = type { %struct.device, i8, i8, i8, ptr, i32, i32 }
%struct.iovec = type { ptr, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.sbefifo_user = type { ptr, %struct.mutex, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@.str = private unnamed_addr constant [54 x i8] c"SBE cmd %02x:%02x status offset out of range: %d/%zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"SBE cmd %02x:%02x, status signature invalid: 0x%08x 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"SBE error cmd %02x:%02x status=%04x:%04x\0A\00", align 1
@__kstrtab_sbefifo_parse_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbefifo_parse_status = external dso_local constant [0 x i8], align 1
@__ksymtab_sbefifo_parse_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbefifo_parse_status to i32), ptr @__kstrtab_sbefifo_parse_status, ptr @__kstrtabns_sbefifo_parse_status }, section "___ksymtab_gpl+sbefifo_parse_status", align 4
@sbefifo_submit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"drivers/fsi/fsi-sbefifo.c\00", align 1
@__kstrtab_sbefifo_submit = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbefifo_submit = external dso_local constant [0 x i8], align 1
@__ksymtab_sbefifo_submit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbefifo_submit to i32), ptr @__kstrtab_sbefifo_submit, ptr @__kstrtabns_sbefifo_submit }, section "___ksymtab_gpl+sbefifo_submit", align 4
@__UNIQUE_ID_license224 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author225 = internal constant [49 x i8] c"author=Brad Bishop <bradleyb@fuzziesquirrel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author226 = internal constant [48 x i8] c"author=Eddie James <eajames@linux.vnet.ibm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author227 = internal constant [40 x i8] c"author=Andrew Jeffery <andrew@aj.id.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_author228 = internal constant [57 x i8] c"author=Benjamin Herrenschmidt <benh@kernel.crashing.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [65 x i8] c"description=Linux device interface to the POWER Self Boot Engine\00", section ".modinfo", align 1
@sbefifo_ffdc_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sbefifo_ffdc_mutex, i64 12), ptr getelementptr (i8, ptr @sbefifo_ffdc_mutex, i64 12) } }, align 4
@__sbefifo_dump_ffdc.ffdc_line = internal global [60 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"SBE invalid FFDC package size %zd\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"SBE invalid FFDC package signature %08x %08x %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"SBE FFDC package len %d words but only %zd remaining\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"+---- SBE FFDC package %d for async err -----+\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"+---- SBE FFDC package %d for cmd %02x:%02x -----+\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"| Response code: %08x                   |\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"|-------------------------------------------|\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"| %04x:\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c" %08x\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"         \00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%s |\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"+-------------------------------------------+\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Cleanup: Reading UP status failed, rc=%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"Cleanup: Reading DOWN status failed, rc=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"Cleanup: FIFO reset request set, resetting\0A\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"Cleanup: Reset reg write failed, rc=%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"Cleanup: FIFO not clean (up=0x%08x down=0x%08x)\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"Failed to allocate SBE FFDC buffer\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"Error %d retrieving SBE FFDC\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"Error %d decoding SBE FFDC\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"FSI error %d writing UP FIFO\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"FSI error %d writing EOT\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.26 = private unnamed_addr constant [38 x i8] c"FSI error %d reading status register\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Parity error in DOWN FIFO\0A\00", align 1
@dev_attr_timeout = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292 }, ptr @timeout_show, ptr null }, align 4
@.str.28 = private unnamed_addr constant [31 x i8] c"%s FIFO Timeout ! status=%08x\0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"FIFO read hit EOT with still %zd data\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"FSI error %d ack'ing EOT\0A\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"Sending reset request failed, rc=%d\0A\00", align 1
@.str.38 = private unnamed_addr constant [52 x i8] c"Failed to read UP fifo status during reset , rc=%d\0A\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"FIFO reset timed out\0A\00", align 1
@sbefifo_drv = internal global %struct.fsi_driver { %struct.device_driver { ptr @.str.40, ptr @fsi_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @sbefifo_probe, ptr null, ptr @sbefifo_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sbefifo_ids }, align 4
@.str.40 = private unnamed_addr constant [8 x i8] c"sbefifo\00", align 1
@fsi_bus_type = external dso_local global %struct.bus_type, align 4
@sbefifo_ids = internal constant [2 x %struct.fsi_device_id] [%struct.fsi_device_id { i8 34, i8 0 }, %struct.fsi_device_id zeroinitializer], align 1
@sbefifo_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"&sbefifo->lock\00", align 1
@.str.42 = private unnamed_addr constant [45 x i8] c"Initial HW cleanup failed, will retry later\0A\00", align 1
@fsi_cdev_type = external dso_local constant %struct.device_type, align 4
@.str.43 = private unnamed_addr constant [10 x i8] c"sbefifo%d\00", align 1
@sbefifo_fops = internal constant %struct.file_operations { ptr @__this_module, ptr null, ptr @sbefifo_user_read, ptr @sbefifo_user_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sbefifo_user_open, ptr null, ptr @sbefifo_user_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.44 = private unnamed_addr constant [34 x i8] c"Error %d creating char device %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"failed to create child %s dev\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__this_module = external dso_local global %struct.module, align 64
@sbefifo_user_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"&user->file_lock\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_license224, ptr @__ksymtab_sbefifo_parse_status, ptr @__ksymtab_sbefifo_submit], section "llvm.metadata"
@switch.table.sbefifo_cleanup_hw = private unnamed_addr constant [9 x i32] [i32 -108, i32 -108, i32 -108, i32 -108, i32 -108, i32 -16, i32 -108, i32 -108, i32 -108], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sbefifo_parse_status(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef writeonly %4) #0 {
  %6 = icmp ult i32 %3, 3
  br i1 %6, label %55, label %7

7:                                                ; preds = %5
  %8 = add i32 %3, -1
  %9 = getelementptr i32, ptr %2, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = icmp ugt i32 %11, %3
  %13 = icmp ult i32 %11, 3
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = zext i16 %1 to i32
  %17 = lshr i32 %16, 8
  %18 = and i32 %16, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %17, i32 noundef %18, i32 noundef %11, i32 noundef %3) #11
  br label %55

19:                                               ; preds = %7
  %20 = sub i32 %3, %11
  %21 = getelementptr i32, ptr %2, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = add i32 %20, 1
  %25 = getelementptr i32, ptr %2, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = and i32 %23, -65536
  %29 = icmp eq i32 %28, -1059192832
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  %31 = zext i16 %1 to i32
  br label %36

32:                                               ; preds = %19
  %33 = and i32 %23, 65535
  %34 = zext i16 %1 to i32
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32, %30
  %37 = phi i32 [ %31, %30 ], [ %34, %32 ]
  %38 = lshr i32 %37, 8
  %39 = and i32 %37, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %38, i32 noundef %39, i32 noundef %23, i32 noundef %27) #11
  br label %55

40:                                               ; preds = %32
  %41 = icmp eq i32 %26, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %40
  %43 = add i32 %11, -3
  %44 = lshr i32 %33, 8
  %45 = and i32 %23, 255
  %46 = lshr i32 %27, 16
  %47 = and i32 %27, 65535
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %44, i32 noundef %45, i32 noundef %46, i32 noundef %47) #11
  %48 = icmp eq i32 %43, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = add i32 %20, 2
  %51 = getelementptr i32, ptr %2, i32 %50
  tail call fastcc void @sbefifo_dump_ffdc(ptr noundef %0, ptr noundef %51, i32 noundef %43, i1 noundef zeroext false)
  br label %52

52:                                               ; preds = %49, %42, %40
  %53 = icmp eq ptr %4, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %52
  store i32 %20, ptr %4, align 4
  br label %55

55:                                               ; preds = %54, %52, %36, %15, %5
  %56 = phi i32 [ -6, %15 ], [ -6, %36 ], [ -6, %5 ], [ %27, %54 ], [ %27, %52 ]
  ret i32 %56
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sbefifo_dump_ffdc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @sbefifo_ffdc_mutex) #12
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %85, label %6

6:                                                ; preds = %80, %4
  %7 = phi ptr [ %83, %80 ], [ @__sbefifo_dump_ffdc.ffdc_line, %4 ]
  %8 = phi i32 [ %38, %80 ], [ 0, %4 ]
  %9 = phi ptr [ %82, %80 ], [ %1, %4 ]
  %10 = phi i32 [ %81, %80 ], [ %2, %4 ]
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %10) #11
  br label %85

13:                                               ; preds = %6
  %14 = getelementptr i32, ptr %9, i32 1
  %15 = load i32, ptr %9, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  %17 = getelementptr i32, ptr %9, i32 2
  %18 = load i32, ptr %14, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  %20 = getelementptr i32, ptr %9, i32 3
  %21 = load i32, ptr %17, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  %23 = add i32 %10, -3
  %24 = and i32 %16, -65536
  %25 = icmp eq i32 %24, -2359296
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %16, i32 noundef %19, i32 noundef %22) #11
  br label %85

27:                                               ; preds = %13
  %28 = and i32 %16, 65535
  %29 = icmp ugt i32 %28, %23
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %28, i32 noundef %23) #11
  br label %85

31:                                               ; preds = %27
  br i1 %3, label %32, label %33

32:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %8) #11
  br label %37

33:                                               ; preds = %31
  %34 = lshr i32 %19, 8
  %35 = and i32 %34, 255
  %36 = and i32 %19, 255
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %8, i32 noundef %35, i32 noundef %36) #11
  br label %37

37:                                               ; preds = %33, %32
  %38 = add i32 %8, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %22) #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.10) #11
  %39 = icmp eq i32 %28, 0
  br i1 %39, label %80, label %40

40:                                               ; preds = %37
  %41 = add nsw i32 %28, -1
  br label %42

42:                                               ; preds = %75, %40
  %43 = phi i32 [ 0, %40 ], [ %78, %75 ]
  %44 = phi ptr [ %7, %40 ], [ %76, %75 ]
  %45 = phi ptr [ %20, %40 ], [ %55, %75 ]
  %46 = phi i32 [ %23, %40 ], [ %60, %75 ]
  %47 = and i32 %43, 3
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = shl i32 %43, 4
  %51 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @__sbefifo_dump_ffdc.ffdc_line, ptr noundef nonnull @.str.11, i32 noundef %50) #12
  %52 = getelementptr i8, ptr @__sbefifo_dump_ffdc.ffdc_line, i32 %51
  br label %53

53:                                               ; preds = %49, %42
  %54 = phi ptr [ %52, %49 ], [ %44, %42 ]
  %55 = getelementptr i32, ptr %45, i32 1
  %56 = load i32, ptr %45, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #12
  %58 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %54, ptr noundef nonnull @.str.12, i32 noundef %57) #12
  %59 = getelementptr i8, ptr %54, i32 %58
  %60 = add i32 %46, -1
  %61 = icmp eq i32 %47, 3
  %62 = icmp eq i32 %43, %41
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %53
  br i1 %61, label %72, label %65

65:                                               ; preds = %65, %64
  %66 = phi i32 [ %69, %65 ], [ %43, %64 ]
  %67 = phi ptr [ %68, %65 ], [ %59, %64 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %67, ptr noundef nonnull align 1 dereferenceable(10) @.str.13, i32 10, i1 false) #12
  %68 = getelementptr i8, ptr %67, i32 9
  %69 = add i32 %66, 1
  %70 = and i32 %69, 3
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %72, label %65

72:                                               ; preds = %65, %64
  %73 = phi ptr [ %59, %64 ], [ %68, %65 ]
  %74 = phi i32 [ %43, %64 ], [ %69, %65 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @__sbefifo_dump_ffdc.ffdc_line) #11
  br label %75

75:                                               ; preds = %72, %53
  %76 = phi ptr [ %73, %72 ], [ %59, %53 ]
  %77 = phi i32 [ %74, %72 ], [ %43, %53 ]
  %78 = add i32 %77, 1
  %79 = icmp ult i32 %78, %28
  br i1 %79, label %42, label %80

80:                                               ; preds = %75, %37
  %81 = phi i32 [ %23, %37 ], [ %60, %75 ]
  %82 = phi ptr [ %20, %37 ], [ %55, %75 ]
  %83 = phi ptr [ %7, %37 ], [ %76, %75 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.15) #11
  %84 = icmp eq i32 %81, 0
  br i1 %84, label %85, label %6

85:                                               ; preds = %80, %30, %26, %12, %4
  tail call void @mutex_unlock(ptr noundef nonnull @sbefifo_ffdc_mutex) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sbefifo_submit(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.iov_iter, align 8
  %7 = alloca %struct.kvec, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  %8 = icmp eq ptr %0, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 8
  %15 = icmp ne i32 %14, 1396852038
  %16 = load i1, ptr @sbefifo_submit.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !9

19:                                               ; preds = %13
  store i1 true, ptr @sbefifo_submit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 743, i32 noundef 9, ptr noundef null) #12
  br label %20

20:                                               ; preds = %19, %13
  br i1 %15, label %40, label %21

21:                                               ; preds = %20
  %22 = icmp ne ptr %4, null
  %23 = icmp ne ptr %1, null
  %24 = and i1 %23, %22
  %25 = icmp ne ptr %3, null
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load i32, ptr %4, align 4
  %29 = shl i32 %28, 2
  store ptr %3, ptr %7, align 8
  %30 = getelementptr inbounds %struct.kvec, ptr %7, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  call void @iov_iter_kvec(ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull %7, i32 noundef 1, i32 noundef %29) #12
  %31 = getelementptr inbounds %struct.sbefifo, ptr %11, i32 0, i32 4
  %32 = call i32 @mutex_lock_interruptible(ptr noundef %31) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = call fastcc i32 @__sbefifo_submit(ptr noundef nonnull %11, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %6)
  call void @mutex_unlock(ptr noundef %31) #12
  %36 = getelementptr inbounds %struct.iov_iter, ptr %6, i32 0, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = sub i32 %29, %37
  %39 = lshr i32 %38, 2
  store i32 %39, ptr %4, align 4
  br label %40

40:                                               ; preds = %34, %27, %21, %20, %9, %5
  %41 = phi i32 [ %35, %34 ], [ -19, %5 ], [ -19, %9 ], [ -19, %20 ], [ -22, %21 ], [ %32, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  ret i32 %41
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__sbefifo_submit(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.iov_iter, align 8
  %6 = alloca %struct.kvec, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 8
  %9 = getelementptr inbounds %struct.sbefifo, ptr %0, i32 0, i32 6
  %10 = load i8, ptr %9, align 1, !range !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %4
  %13 = icmp ult i32 %2, 2
  br i1 %13, label %54, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr %1, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %54

18:                                               ; preds = %14
  %19 = tail call fastcc i32 @sbefifo_cleanup_hw(ptr noundef %0)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.sbefifo, ptr %0, i32 0, i32 7
  %23 = load i8, ptr %22, align 2, !range !10
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %50, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.sbefifo, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  store i64 119345390158872576, ptr %8, align 8, !annotation !8
  store i8 0, ptr %22, align 2
  %28 = tail call noalias ptr @vmalloc(i32 noundef 8192) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.21) #11
  br label %49

31:                                               ; preds = %25
  store ptr %28, ptr %6, align 8
  %32 = getelementptr inbounds %struct.kvec, ptr %6, i32 0, i32 1
  store i32 8192, ptr %32, align 4
  call void @iov_iter_kvec(ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 8192) #12
  %33 = call fastcc i32 @sbefifo_do_command(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 2, ptr noundef nonnull %5) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.22, i32 noundef %33) #11
  br label %48

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.iov_iter, ptr %5, i32 0, i32 4
  %38 = load i32, ptr %37, align 8
  %39 = sub i32 8192, %38
  %40 = lshr i32 %39, 2
  store i32 %40, ptr %7, align 4
  %41 = call i32 @sbefifo_parse_status(ptr noundef %27, i16 noundef zeroext -22527, ptr noundef nonnull %28, i32 noundef %40, ptr noundef nonnull %7) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.23, i32 noundef %41) #11
  br label %48

44:                                               ; preds = %36
  %45 = load i32, ptr %7, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  call fastcc void @sbefifo_dump_ffdc(ptr noundef %27, ptr noundef nonnull %28, i32 noundef %45, i1 noundef zeroext true) #12
  br label %48

48:                                               ; preds = %47, %44, %43, %35
  call void @vfree(ptr noundef nonnull %28) #12
  br label %49

49:                                               ; preds = %48, %30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  br label %50

50:                                               ; preds = %49, %21
  %51 = call fastcc i32 @sbefifo_do_command(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  switch i32 %51, label %52 [
    i32 -75, label %54
    i32 0, label %54
  ]

52:                                               ; preds = %50
  %53 = call fastcc i32 @sbefifo_request_reset(ptr noundef %0)
  br label %54

54:                                               ; preds = %52, %50, %50, %18, %14, %12, %4
  %55 = phi i32 [ %51, %52 ], [ -19, %4 ], [ -22, %14 ], [ -22, %12 ], [ %19, %18 ], [ %51, %50 ], [ %51, %50 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 {
  %1 = tail call i32 @fsi_driver_register(ptr noundef nonnull @sbefifo_drv) #12
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 {
  tail call void @fsi_driver_unregister(ptr noundef nonnull @sbefifo_drv) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sbefifo_cleanup_hw(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.sbefifo, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.fsi_device, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @fsi_slave_read(ptr noundef %9, i32 noundef 10276, ptr noundef nonnull %5, i32 noundef 4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = load i32, ptr %5, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13) #12
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %33, label %16

16:                                               ; preds = %12
  %17 = lshr i32 %14, 20
  %18 = and i32 %17, 15
  %19 = icmp ult i32 %18, 9
  br i1 %19, label %25, label %20

20:                                               ; preds = %25, %16
  %21 = and i32 %14, 1073741824
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.sbefifo, ptr %0, i32 0, i32 7
  store i8 1, ptr %24, align 2
  br label %35

25:                                               ; preds = %16
  %26 = trunc i32 %18 to i16
  %27 = lshr i16 417, %26
  %28 = and i16 %27, 1
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %20, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds [9 x i32], ptr @switch.table.sbefifo_cleanup_hw, i32 0, i32 %18
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %30, %12, %1
  %34 = phi i32 [ -108, %12 ], [ %10, %1 ], [ %32, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %73

35:                                               ; preds = %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %36 = getelementptr inbounds %struct.sbefifo, ptr %0, i32 0, i32 5
  %37 = load i8, ptr %36, align 8, !range !10
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %40 = load ptr, ptr %6, align 4
  %41 = call i32 @fsi_device_read(ptr noundef %40, i32 noundef 4, ptr noundef nonnull %4, i32 noundef 4) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.16, i32 noundef %41) #11
  store i8 1, ptr %36, align 8
  br label %73

44:                                               ; preds = %39
  %45 = load i32, ptr %4, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %47 = load ptr, ptr %6, align 4
  %48 = call i32 @fsi_device_read(ptr noundef %47, i32 noundef 68, ptr noundef nonnull %3, i32 noundef 4) #12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17, i32 noundef %48) #11
  store i8 1, ptr %36, align 8
  br label %73

51:                                               ; preds = %44
  %52 = load i32, ptr %3, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %54 = and i32 %53, 33554432
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.18) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 268435456, ptr %2, align 4
  %57 = load ptr, ptr %6, align 4
  %58 = call i32 @fsi_device_write(ptr noundef %57, i32 noundef 64, ptr noundef nonnull %2, i32 noundef 4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store i8 1, ptr %36, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19, i32 noundef %58) #11
  br label %73

61:                                               ; preds = %56
  store i8 0, ptr %36, align 8
  br label %73

62:                                               ; preds = %51
  %63 = or i32 %53, %46
  %64 = and i32 %63, 536870912
  %65 = icmp ne i32 %64, 0
  %66 = and i32 %46, 1048576
  %67 = and i32 %66, %53
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, i1 true, i1 %65
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.20, i32 noundef %46, i32 noundef %53) #11
  br label %71

71:                                               ; preds = %70, %35
  %72 = call fastcc i32 @sbefifo_request_reset(ptr noundef %0)
  br label %73

73:                                               ; preds = %71, %62, %61, %60, %50, %43, %33
  %74 = phi i32 [ %72, %71 ], [ %41, %43 ], [ %48, %50 ], [ %58, %60 ], [ 0, %61 ], [ 0, %62 ], [ %34, %33 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sbefifo_do_command(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.sbefifo, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  store i32 0, ptr %10, align 4, !annotation !8
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %43, label %14

14:                                               ; preds = %38, %4
  %15 = phi ptr [ %28, %38 ], [ %1, %4 ]
  %16 = phi i32 [ 100, %38 ], [ 1000, %4 ]
  %17 = phi i32 [ %39, %38 ], [ %2, %4 ]
  %18 = call fastcc i32 @sbefifo_wait(ptr noundef %0, i1 noundef zeroext true, ptr noundef nonnull %10, i32 noundef %16) #12
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %52, label %20

20:                                               ; preds = %14
  %21 = load i32, ptr %10, align 4
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 15
  %24 = sub nsw i32 8, %23
  %25 = call i32 @llvm.umin.i32(i32 %24, i32 %17) #12
  br label %26

26:                                               ; preds = %30, %20
  %27 = phi i32 [ %25, %20 ], [ %31, %30 ]
  %28 = phi ptr [ %15, %20 ], [ %32, %30 ]
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = add i32 %27, -1
  %32 = getelementptr i32, ptr %28, i32 1
  %33 = load i32, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store i32 %33, ptr %9, align 4
  %34 = load ptr, ptr %11, align 4
  %35 = call i32 @fsi_device_write(ptr noundef %34, i32 noundef 0, ptr noundef nonnull %9, i32 noundef 4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %26, label %37

37:                                               ; preds = %30
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.24, i32 noundef %35) #11
  br label %52

38:                                               ; preds = %26
  %39 = sub i32 %17, %25
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %14

41:                                               ; preds = %38
  %42 = icmp ugt i32 %24, %17
  br i1 %42, label %47, label %43

43:                                               ; preds = %41, %4
  %44 = phi i32 [ 100, %41 ], [ 1000, %4 ]
  %45 = call fastcc i32 @sbefifo_wait(ptr noundef %0, i1 noundef zeroext true, ptr noundef nonnull %10, i32 noundef %44) #12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43, %41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4
  %48 = load ptr, ptr %11, align 4
  %49 = call i32 @fsi_device_write(ptr noundef %48, i32 noundef 8, ptr noundef nonnull %8, i32 noundef 4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.25, i32 noundef %49) #11
  br label %52

52:                                               ; preds = %51, %43, %37, %14
  %53 = phi i32 [ %49, %51 ], [ %45, %43 ], [ %35, %37 ], [ %18, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  br label %107

54:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  %55 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !8
  %56 = call fastcc i32 @sbefifo_wait(ptr noundef %0, i1 noundef zeroext false, ptr noundef nonnull %6, i32 noundef 1000) #12
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %105, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 4
  br label %64

60:                                               ; preds = %101, %64
  %61 = phi i1 [ %65, %64 ], [ %102, %101 ]
  %62 = call fastcc i32 @sbefifo_wait(ptr noundef %0, i1 noundef zeroext false, ptr noundef nonnull %6, i32 noundef 100) #12
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %105, label %64

64:                                               ; preds = %60, %58
  %65 = phi i1 [ false, %58 ], [ %61, %60 ]
  %66 = load i32, ptr %6, align 4
  %67 = lshr i32 %66, 16
  %68 = and i32 %67, 15
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %60, label %70

70:                                               ; preds = %64
  %71 = and i32 %66, 255
  br label %72

72:                                               ; preds = %101, %70
  %73 = phi i32 [ %76, %101 ], [ %68, %70 ]
  %74 = phi i1 [ %102, %101 ], [ %65, %70 ]
  %75 = phi i32 [ %103, %101 ], [ %71, %70 ]
  %76 = add nsw i32 %73, -1
  %77 = load ptr, ptr %11, align 4
  %78 = call i32 @fsi_device_read(ptr noundef %77, i32 noundef 64, ptr noundef nonnull %7, i32 noundef 4) #12
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %105, label %80

80:                                               ; preds = %72
  %81 = and i32 %75, 128
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %80
  %84 = icmp eq i32 %76, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %83
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.33, i32 noundef %76) #11
  %86 = getelementptr inbounds %struct.sbefifo, ptr %0, i32 0, i32 5
  store i8 1, ptr %86, align 8
  br label %87

87:                                               ; preds = %85, %83
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4
  %88 = load ptr, ptr %11, align 4
  %89 = call i32 @fsi_device_write(ptr noundef %88, i32 noundef 84, ptr noundef nonnull %5, i32 noundef 4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.34, i32 noundef %89) #11
  %92 = getelementptr inbounds %struct.sbefifo, ptr %0, i32 0, i32 5
  store i8 1, ptr %92, align 8
  br label %93

93:                                               ; preds = %91, %87
  %94 = select i1 %74, i32 -75, i32 0
  br label %105

95:                                               ; preds = %80
  %96 = load i32, ptr %59, align 8
  %97 = icmp ugt i32 %96, 3
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = call i32 @_copy_to_iter(ptr noundef nonnull %7, i32 noundef 4, ptr noundef %3) #12
  %100 = icmp ult i32 %99, 4
  br i1 %100, label %105, label %101

101:                                              ; preds = %98, %95
  %102 = phi i1 [ %74, %98 ], [ true, %95 ]
  %103 = shl i32 %75, 1
  %104 = icmp eq i32 %76, 0
  br i1 %104, label %60, label %72

105:                                              ; preds = %98, %93, %72, %60, %54
  %106 = phi i32 [ %94, %93 ], [ %56, %54 ], [ %78, %72 ], [ -14, %98 ], [ %62, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %107

107:                                              ; preds = %105, %52
  %108 = phi i32 [ %106, %105 ], [ %53, %52 ]
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sbefifo_request_reset(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.sbefifo, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sbefifo, ptr %0, i32 0, i32 5
  store i8 1, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 16777216, ptr %3, align 4
  %7 = call i32 @fsi_device_write(ptr noundef %5, i32 noundef 12, ptr noundef nonnull %3, i32 noundef 4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.37, i32 noundef %7) #11
  br label %32

10:                                               ; preds = %1
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = add i32 %11, 1000
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = sub i32 %12, %13
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %31

16:                                               ; preds = %26, %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !8
  %17 = load ptr, ptr %4, align 4
  %18 = call i32 @fsi_device_read(ptr noundef %17, i32 noundef 4, ptr noundef nonnull %2, i32 noundef 4) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef %18) #11
  br label %32

21:                                               ; preds = %16
  %22 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8 0, ptr %6, align 8
  br label %32

26:                                               ; preds = %21
  %27 = call i32 @__cond_resched() #12
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = sub i32 %12, %28
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %16, label %31

31:                                               ; preds = %26, %10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.39) #11
  br label %32

32:                                               ; preds = %31, %25, %20, %9
  %33 = phi i32 [ %7, %9 ], [ %18, %20 ], [ 0, %25 ], [ -110, %31 ]
  ret i32 %33
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_slave_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_device_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_device_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sbefifo_wait(ptr noundef %0, i1 noundef zeroext %1, ptr nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.sbefifo, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = select i1 %1, i32 4, i32 68
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = add i32 %9, %3
  br label %11

11:                                               ; preds = %33, %4
  %12 = phi i32 [ 0, %4 ], [ %28, %33 ]
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = sub i32 %10, %13
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = call i32 @__cond_resched() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !8
  %18 = load ptr, ptr %6, align 4
  %19 = call i32 @fsi_device_read(ptr noundef %18, i32 noundef %8, ptr noundef nonnull %5, i32 noundef 4) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, ptr %5, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %27

24:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %25 = icmp slt i32 %19, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.26, i32 noundef %19) #11
  br label %44

27:                                               ; preds = %24, %21
  %28 = phi i32 [ %23, %21 ], [ %12, %24 ]
  br i1 %1, label %33, label %29

29:                                               ; preds = %27
  %30 = and i32 %28, 536870912
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.27) #11
  br label %44

33:                                               ; preds = %29, %27
  %34 = phi i32 [ 1048576, %29 ], [ 2097152, %27 ]
  %35 = and i32 %34, %28
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %11

37:                                               ; preds = %11
  %38 = getelementptr inbounds %struct.sbefifo, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr @dev_attr_timeout, align 4
  call void @sysfs_notify(ptr noundef %38, ptr noundef null, ptr noundef %39) #12
  %40 = getelementptr inbounds %struct.sbefifo, ptr %0, i32 0, i32 8
  store i8 1, ptr %40, align 1
  %41 = select i1 %1, ptr @.str.29, ptr @.str.30
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.28, ptr noundef nonnull %41, i32 noundef %12) #11
  br label %44

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.sbefifo, ptr %0, i32 0, i32 8
  store i8 0, ptr %43, align 1
  store i32 %28, ptr %2, align 4
  br label %44

44:                                               ; preds = %42, %37, %32, %26
  %45 = phi i32 [ %19, %26 ], [ 0, %42 ], [ -110, %37 ], [ -6, %32 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @timeout_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 555
  %5 = load i8, ptr %4, align 1, !range !10
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %6) #12
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_driver_register(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sbefifo_probe(ptr noundef %0) #0 {
  %2 = alloca [32 x i8], align 1
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 568) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %69, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @get_device(ptr noundef %0) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #12
  br label %69

11:                                               ; preds = %7
  store i32 1396852038, ptr %5, align 8
  %12 = getelementptr inbounds %struct.sbefifo, ptr %5, i32 0, i32 1
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %5, ptr %13, align 8
  %14 = getelementptr inbounds %struct.sbefifo, ptr %5, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %14, ptr noundef nonnull @.str.41, ptr noundef nonnull @sbefifo_probe.__key) #12
  %15 = tail call fastcc i32 @sbefifo_cleanup_hw(ptr noundef nonnull %5)
  switch i32 %15, label %16 [
    i32 -108, label %17
    i32 0, label %17
  ]

16:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.42) #11
  br label %17

17:                                               ; preds = %16, %11, %11
  %18 = getelementptr inbounds %struct.sbefifo, ptr %5, i32 0, i32 2
  %19 = getelementptr inbounds %struct.sbefifo, ptr %5, i32 0, i32 2, i32 4
  store ptr @fsi_cdev_type, ptr %19, align 8
  %20 = getelementptr inbounds %struct.sbefifo, ptr %5, i32 0, i32 2, i32 1
  store ptr %0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.sbefifo, ptr %5, i32 0, i32 2, i32 33
  store ptr @sbefifo_free, ptr %21, align 4
  tail call void @device_initialize(ptr noundef %18) #12
  %22 = getelementptr inbounds %struct.sbefifo, ptr %5, i32 0, i32 2, i32 27
  %23 = call i32 @fsi_get_new_minor(ptr noundef %0, i32 noundef 1, ptr noundef %22, ptr noundef nonnull %3) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %17
  %26 = load i32, ptr %3, align 4
  %27 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %18, ptr noundef nonnull @.str.43, i32 noundef %26) #12
  %28 = getelementptr inbounds %struct.sbefifo, ptr %5, i32 0, i32 3
  call void @cdev_init(ptr noundef %28, ptr noundef nonnull @sbefifo_fops) #12
  %29 = call i32 @cdev_device_add(ptr noundef %28, ptr noundef %18) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.sbefifo, ptr %5, i32 0, i32 2, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load ptr, ptr %18, align 8
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi ptr [ %36, %35 ], [ %33, %31 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %29, ptr noundef %38) #11
  %39 = load i32, ptr %22, align 8
  call void @fsi_free_minor(i32 noundef %39) #12
  br label %67

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %42 = load ptr, ptr %41, align 8
  %43 = call ptr @of_get_next_available_child(ptr noundef %42, ptr noundef null) #12
  %44 = icmp eq ptr %43, null
  br i1 %44, label %65, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.sbefifo, ptr %5, i32 0, i32 2, i32 3
  br label %47

47:                                               ; preds = %61, %45
  %48 = phi i32 [ 0, %45 ], [ %56, %61 ]
  %49 = phi ptr [ %43, %45 ], [ %63, %61 ]
  %50 = load ptr, ptr %46, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load ptr, ptr %18, align 8
  br label %54

54:                                               ; preds = %52, %47
  %55 = phi ptr [ %53, %52 ], [ %50, %47 ]
  %56 = add i32 %48, 1
  %57 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.45, ptr noundef %55, i32 noundef %48)
  %58 = call ptr @of_platform_device_create(ptr noundef nonnull %49, ptr noundef nonnull %2, ptr noundef %0) #12
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef nonnull %2) #11
  br label %61

61:                                               ; preds = %60, %54
  %62 = load ptr, ptr %41, align 8
  %63 = call ptr @of_get_next_available_child(ptr noundef %62, ptr noundef nonnull %49) #12
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %47

65:                                               ; preds = %61, %40
  %66 = call i32 @device_create_file(ptr noundef %18, ptr noundef nonnull @dev_attr_timeout) #12
  br label %69

67:                                               ; preds = %37, %17
  %68 = phi i32 [ %23, %17 ], [ %29, %37 ]
  call void @put_device(ptr noundef %18) #12
  br label %69

69:                                               ; preds = %67, %65, %10, %1
  %70 = phi i32 [ %68, %67 ], [ 0, %65 ], [ -19, %10 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sbefifo_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sbefifo, ptr %3, i32 0, i32 2
  tail call void @device_remove_file(ptr noundef %4, ptr noundef nonnull @dev_attr_timeout) #12
  %5 = getelementptr inbounds %struct.sbefifo, ptr %3, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.sbefifo, ptr %3, i32 0, i32 6
  store i8 1, ptr %6, align 1
  tail call void @mutex_unlock(ptr noundef %5) #12
  %7 = getelementptr inbounds %struct.sbefifo, ptr %3, i32 0, i32 3
  tail call void @cdev_device_del(ptr noundef %7, ptr noundef %4) #12
  %8 = getelementptr inbounds %struct.sbefifo, ptr %3, i32 0, i32 2, i32 27
  %9 = load i32, ptr %8, align 8
  tail call void @fsi_free_minor(i32 noundef %9) #12
  %10 = tail call i32 @device_for_each_child(ptr noundef %0, ptr noundef null, ptr noundef nonnull @sbefifo_unregister_child) #12
  tail call void @put_device(ptr noundef %4) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sbefifo_free(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  tail call void @put_device(ptr noundef %4) #12
  tail call void @kfree(ptr noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_get_new_minor(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_platform_device_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_free_minor(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sbefifo_user_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.iov_iter, align 8
  %6 = alloca %struct.iovec, align 8
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store i64 0, ptr %6, align 8, !annotation !8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %8, align 4
  %12 = and i32 %2, 3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sbefifo_user, ptr %8, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %15) #12
  %16 = getelementptr inbounds %struct.sbefifo_user, ptr %8, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %14
  %20 = icmp ult i32 %17, 8
  br i1 %20, label %36, label %21

21:                                               ; preds = %19
  store ptr %1, ptr %6, align 8
  %22 = getelementptr inbounds %struct.iovec, ptr %6, i32 0, i32 1
  store i32 %2, ptr %22, align 4
  call void @iov_iter_init(ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull %6, i32 noundef 1, i32 noundef %2) #12
  %23 = getelementptr inbounds %struct.sbefifo, ptr %11, i32 0, i32 4
  %24 = call i32 @mutex_lock_interruptible(ptr noundef %23) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = lshr i32 %17, 2
  %28 = getelementptr inbounds %struct.sbefifo_user, ptr %8, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = call fastcc i32 @__sbefifo_submit(ptr noundef %11, ptr noundef %29, i32 noundef %27, ptr noundef nonnull %5)
  call void @mutex_unlock(ptr noundef %23) #12
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.iov_iter, ptr %5, i32 0, i32 4
  %34 = load i32, ptr %33, align 8
  %35 = sub i32 %2, %34
  br label %36

36:                                               ; preds = %32, %26, %21, %19, %14
  %37 = phi i32 [ %24, %21 ], [ %30, %26 ], [ %35, %32 ], [ -11, %14 ], [ -22, %19 ]
  %38 = getelementptr inbounds %struct.sbefifo_user, ptr %8, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = call zeroext i1 @is_vmalloc_addr(ptr noundef %39) #12
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load ptr, ptr %38, align 4
  call void @vfree(ptr noundef %42) #12
  br label %43

43:                                               ; preds = %41, %36
  store ptr null, ptr %38, align 4
  store i32 0, ptr %16, align 4
  call void @mutex_unlock(ptr noundef %15) #12
  br label %44

44:                                               ; preds = %43, %10, %4
  %45 = phi i32 [ %37, %43 ], [ -22, %4 ], [ -22, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sbefifo_user_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %73, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 4
  %10 = icmp ult i32 %2, 1052673
  %11 = and i32 %2, 3
  %12 = icmp eq i32 %11, 0
  %13 = and i1 %10, %12
  br i1 %13, label %14, label %73

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.sbefifo_user, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %15) #12
  %16 = icmp ult i32 %2, 4097
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.sbefifo_user, ptr %6, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  br label %22

20:                                               ; preds = %14
  %21 = tail call noalias ptr @vmalloc(i32 noundef %2) #13
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi ptr [ %19, %17 ], [ %21, %20 ]
  %24 = getelementptr inbounds %struct.sbefifo_user, ptr %6, i32 0, i32 3
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %61, label %26

26:                                               ; preds = %22
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #15, !srcloc !11
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37, !prof !12

30:                                               ; preds = %26
  %31 = tail call ptr @llvm.thread.pointer() #12
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %32) #16, !srcloc !13
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  %36 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %23, ptr noundef %1, i32 noundef %2) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #12, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !15
  br label %37

37:                                               ; preds = %30, %26
  %38 = phi i32 [ %36, %30 ], [ %2, %26 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40, !prof !12

40:                                               ; preds = %37
  %41 = sub i32 %2, %38
  %42 = getelementptr i8, ptr %23, i32 %41
  tail call void @llvm.memset.p0.i32(ptr align 1 %42, i8 0, i32 %38, i1 false) #12
  br label %61

43:                                               ; preds = %37
  %44 = icmp eq i32 %2, 4
  br i1 %44, label %45, label %59

45:                                               ; preds = %43
  %46 = load ptr, ptr %24, align 4
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 1413829458
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.sbefifo_user, ptr %6, i32 0, i32 4
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.sbefifo, ptr %9, i32 0, i32 4
  %52 = tail call i32 @mutex_lock_interruptible(ptr noundef %51) #12
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load ptr, ptr %6, align 4
  %56 = tail call fastcc i32 @sbefifo_request_reset(ptr noundef %55)
  tail call void @mutex_unlock(ptr noundef %51) #12
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 4, i32 %56
  br label %61

59:                                               ; preds = %45, %43
  %60 = getelementptr inbounds %struct.sbefifo_user, ptr %6, i32 0, i32 4
  store i32 %2, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %54, %49, %40, %22
  %62 = phi i32 [ %52, %49 ], [ %58, %54 ], [ %2, %59 ], [ -12, %22 ], [ -14, %40 ]
  %63 = getelementptr inbounds %struct.sbefifo_user, ptr %6, i32 0, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load ptr, ptr %24, align 4
  %68 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %67) #12
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load ptr, ptr %24, align 4
  tail call void @vfree(ptr noundef %70) #12
  br label %71

71:                                               ; preds = %69, %66
  store ptr null, ptr %24, align 4
  store i32 0, ptr %63, align 4
  br label %72

72:                                               ; preds = %71, %61
  tail call void @mutex_unlock(ptr noundef %15) #12
  br label %73

73:                                               ; preds = %72, %8, %4
  %74 = phi i32 [ %62, %72 ], [ -22, %4 ], [ -22, %8 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sbefifo_user_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 36) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %4, i32 -480
  %10 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %6, ptr %10, align 8
  store ptr %9, ptr %6, align 8
  %11 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #12
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.sbefifo_user, ptr %6, i32 0, i32 2
  store ptr %12, ptr %13, align 8
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #12
  br label %18

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.sbefifo_user, ptr %6, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str.47, ptr noundef nonnull @sbefifo_user_open.__key) #12
  br label %18

18:                                               ; preds = %16, %15, %2
  %19 = phi i32 [ 0, %16 ], [ -12, %15 ], [ -12, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sbefifo_user_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sbefifo_user, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %8) #12
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load ptr, ptr %7, align 4
  tail call void @vfree(ptr noundef %11) #12
  br label %12

12:                                               ; preds = %10, %6
  store ptr null, ptr %7, align 4
  %13 = getelementptr inbounds %struct.sbefifo_user, ptr %4, i32 0, i32 4
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sbefifo_user, ptr %4, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  tail call void @free_pages(i32 noundef %16, i32 noundef 0) #12
  tail call void @kfree(ptr noundef nonnull %4) #12
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi i32 [ 0, %12 ], [ -22, %2 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sbefifo_unregister_child(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -16
  tail call void @of_device_unregister(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %8) #12
  br label %9

9:                                                ; preds = %7, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_device_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_driver_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly }

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
!10 = !{i8 0, i8 2}
!11 = !{i64 2151490633, i64 2151490658}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 3986745}
!14 = !{i64 3986942}
!15 = !{i64 2151472221}
